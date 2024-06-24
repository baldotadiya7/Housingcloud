CREATE TABLE [dbo].[Customers] (
    [customer_id]  INT            NOT NULL,
    [name]         NVARCHAR (255) NULL,
    [email]        NVARCHAR (255) NULL,
    [phone_number] NVARCHAR (20)  NULL,
    PRIMARY KEY CLUSTERED ([customer_id] ASC),
    UNIQUE NONCLUSTERED ([email] ASC)
);


GO

