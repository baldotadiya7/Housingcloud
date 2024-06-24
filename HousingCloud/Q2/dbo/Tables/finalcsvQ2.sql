CREATE TABLE [dbo].[finalcsvQ2] (
    [personId] NVARCHAR (MAX)  NOT NULL,
    [name]     NVARCHAR (MAX)  NOT NULL,
    [email]    NVARCHAR (50)   NOT NULL,
    [dob]      DATE            NOT NULL,
    [address1] NVARCHAR (50)   NOT NULL,
    [address2] NVARCHAR (50)   NULL,
    [city]     NVARCHAR (50)   NULL,
    [state]    NVARCHAR (2)    NULL,
    [zip]      INT             NULL,
    [majorIds] NVARCHAR (4000) NULL,
    [bedId]    NVARCHAR (50)   NOT NULL
);


GO

