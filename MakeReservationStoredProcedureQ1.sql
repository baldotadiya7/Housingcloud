USE RoomReservationSystem;
GO

CREATE PROCEDURE MakeReservation
    @CustomerID INT,
    @RoomID INT,
    @StartDate DATE,
    @EndDate DATE,
    @PaymentAmount DECIMAL(10, 2),
    @PaymentMethod NVARCHAR(50),
    @Status NVARCHAR(50) = 'Pending'
AS
BEGIN
    SET NOCOUNT ON;

    -- Check for availability of the room for the requested dates
    IF NOT EXISTS (
        SELECT 1 FROM Reservations
        WHERE room_id = @RoomID AND
        (start_date <= @EndDate AND end_date >= @StartDate)
    )
    BEGIN
        -- Insert the reservation
        DECLARE @ReservationID INT;
        INSERT INTO Reservations (customer_id, room_id, start_date, end_date, status)
        VALUES (@CustomerID, @RoomID, @StartDate, @EndDate, @Status);
        
        SELECT @ReservationID = SCOPE_IDENTITY();

        -- Insert payment details
        INSERT INTO Payments (reservation_id, amount, currency, payment_date, payment_method)
        VALUES (@ReservationID, @PaymentAmount, (SELECT currency FROM Rooms WHERE room_id = @RoomID), GETDATE(), @PaymentMethod);

        -- Update room availability (if necessary, based on your application logic)
        -- UPDATE Rooms SET availability = 0 WHERE room_id = @RoomID;
        
        -- Return the new Reservation ID
        SELECT @ReservationID AS NewReservationID;
    END
    ELSE
    BEGIN
        -- If the room is not available, return an error message
        SELECT -1 AS NewReservationID, 'Room is not available for the selected dates.' AS ErrorMessage;
    END
END;
GO
