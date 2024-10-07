CREATE TABLE [dbo].[Notifications]
(
	[Id]				INT					NOT NULL IDENTITY(1,1),
	[UserId]			INT					NOT NULL,
	[AccountId]			INT					NOT NULL,
	[Date]				DATETIMEOFFSET		NOT NULL,
	[Content]			NVARCHAR(100)		NOT NULL,
	[IsRead]			BIT					NOT NULL CONSTRAINT [IsRead] DEFAULT 0,
	[NotificationType]	INT					NOT NULL,
	[CategoryName]			NVARCHAR(50)		NOT NULL,
	
	CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_Notifications_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]) ON DELETE CASCADE,
	CONSTRAINT [FK_Notifications_Accounts] FOREIGN KEY ([AccountId]) REFERENCES [dbo].[Accounts] ([Id]) ON DELETE CASCADE
);

GO
CREATE INDEX [IX_Notifications_UserId] ON [dbo].[Users] ([Id]);

GO
CREATE INDEX [IX_Notifications_AccountId] ON [dbo].[Accounts] ([Id]);

