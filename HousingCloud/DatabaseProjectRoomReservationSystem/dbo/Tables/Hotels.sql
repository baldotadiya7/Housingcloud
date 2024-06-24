CREATE TABLE [dbo].[Hotels] (
    [hotel_id]     INT            NOT NULL,
    [name]         NVARCHAR (255) NULL,
    [address]      NVARCHAR (255) NULL,
    [phone_number] NVARCHAR (20)  NULL,
    [email]        NVARCHAR (100) NULL,
    [rating]       INT            NULL,
    [currency]     NVARCHAR (3)   NULL,
    PRIMARY KEY CLUSTERED ([hotel_id] ASC)
);


GO

