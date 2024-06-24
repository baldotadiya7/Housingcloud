CREATE TABLE [dbo].[RoomFeatureLinks] (
    [room_id]    INT NOT NULL,
    [feature_id] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([room_id] ASC, [feature_id] ASC),
    FOREIGN KEY ([feature_id]) REFERENCES [dbo].[RoomFeatures] ([feature_id]),
    FOREIGN KEY ([room_id]) REFERENCES [dbo].[Rooms] ([room_id])
);


GO

