CREATE TABLE [dbo].[Reservations] (
    [reservation_id] INT           NOT NULL,
    [customer_id]    INT           NULL,
    [room_id]        INT           NULL,
    [start_date]     DATE          NULL,
    [end_date]       DATE          NULL,
    [status]         NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([reservation_id] ASC),
    FOREIGN KEY ([customer_id]) REFERENCES [dbo].[Customers] ([customer_id]),
    FOREIGN KEY ([room_id]) REFERENCES [dbo].[Rooms] ([room_id])
);


GO

