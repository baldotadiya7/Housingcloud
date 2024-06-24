CREATE TABLE [dbo].[Rooms] (
    [room_id]  INT             NOT NULL,
    [hotel_id] INT             NULL,
    [type]     NVARCHAR (50)   NULL,
    [number]   NVARCHAR (10)   NULL,
    [price]    DECIMAL (10, 2) NULL,
    [currency] NVARCHAR (3)    NULL,
    PRIMARY KEY CLUSTERED ([room_id] ASC),
    FOREIGN KEY ([hotel_id]) REFERENCES [dbo].[Hotels] ([hotel_id])
);


GO

