-- Insert sample data into Hotels
INSERT INTO Hotels (hotel_id, name, address, phone_number, email, rating, currency)
VALUES
(1, 'Marriot', '123 Main St, Anytown, USA', '123-456-7890', 'info@marriot.com', 5, 'USD'),
(2, 'Westin', '25 Ocean View Rd, Beachtown, USA', '123-456-7980', 'contact@westin.com', 4, 'USD');

-- Insert sample data into Rooms
INSERT INTO Rooms (room_id, hotel_id, type, number, price, currency)
VALUES
(101, 1, 'Single', '101', 100.00, 'USD'),
(102, 1, 'Double', '102', 250.00, 'USD'),
(201, 2, 'Suite', '201', 300.00, 'USD');

-- Insert sample data into RoomFeatures
INSERT INTO RoomFeatures (feature_id, description)
VALUES
(1, 'Wi-Fi'),
(2, 'TV'),
(3, 'Minibar');

-- Link rooms to features
INSERT INTO RoomFeatureLinks (room_id, feature_id)
VALUES
(101, 1),
(101, 2),
(102, 1),
(102, 2),
(102, 3),
(201, 1),
(201, 2),
(201, 3);

-- Insert sample data into Customers
INSERT INTO Customers (customer_id, name, email, phone_number)
VALUES
(1, 'Diya Babldota', 'dbaldota@email.com', '123-555-4567');

-- Insert sample data into Reservations
INSERT INTO Reservations (reservation_id, customer_id, room_id, start_date, end_date, status)
VALUES
(1, 1, 102, '2024-07-01', '2024-07-05', 'Confirmed');

-- Insert sample data into Payments
INSERT INTO Payments (payment_id, reservation_id, amount, currency, payment_date, payment_method)
VALUES
(1, 1, 750.00, 'USD', '2024-06-30', 'Credit Card');
