CREATE TABLE [dbo].[persons_data] (
    [personId]  NVARCHAR (MAX) NOT NULL,
    [firstName] NVARCHAR (MAX) NOT NULL,
    [lastName]  NVARCHAR (50)  NOT NULL,
    [email]     NVARCHAR (50)  NOT NULL,
    [dob]       DATE           NOT NULL,
    [address]   NVARCHAR (50)  NOT NULL,
    [majors]    NVARCHAR (MAX) NULL
);


GO

