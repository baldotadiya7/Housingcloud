CREATE TABLE [dbo].[Payments] (
    [payment_id]     INT             NOT NULL,
    [reservation_id] INT             NULL,
    [amount]         DECIMAL (10, 2) NULL,
    [currency]       NVARCHAR (3)    NULL,
    [payment_date]   DATE            NULL,
    [payment_method] NVARCHAR (50)   NULL,
    PRIMARY KEY CLUSTERED ([payment_id] ASC),
    FOREIGN KEY ([reservation_id]) REFERENCES [dbo].[Reservations] ([reservation_id])
);


GO

