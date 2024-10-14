CREATE TABLE [dbo].[UserConfirmGuids]
(
    [Id]				INT				IDENTITY (1, 1) NOT NULL,
    [UserId]            INT                             NOT NULL, 
    [UserGuid]          UNIQUEIDENTIFIER                NOT NULL,
    [GuidType]          INT                             NOT NULL,
    CONSTRAINT [PK_UserConfirmGuids] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UserConfirmGuids_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]) ON DELETE CASCADE,
);


GO
CREATE INDEX [IX_UserConfirmGuids_UserId] ON [dbo].[UserConfirmGuids] ([UserId]);

GO
CREATE INDEX [IX_UserConfirmGuids_UserGuid] ON [dbo].[UserConfirmGuids] ([UserGuid]);

GO
CREATE INDEX [IX_UserConfirmGuids_GuidType] ON [dbo].[UserConfirmGuids] ([GuidType]);