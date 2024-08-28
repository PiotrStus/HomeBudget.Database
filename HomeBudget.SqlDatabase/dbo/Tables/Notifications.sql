CREATE TABLE [dbo].[Notifications]
(
	[Id]				INT					NOT NULL IDENTITY(1,1),
	[UserId]			INT					NOT NULL,
	[Date]				DATETIMEOFFSET		NOT NULL,
	[Content]			NVARCHAR(100)		NOT NULL,
	[IsRead]			BIT					NOT NULL CONSTRAINT [IsRead] DEFAULT 0,
	[NotificationType]	INT					NOT NULL,
	[Category]			NVARCHAR(50),
	
	CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_Notifications_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id])
);

GO
CREATE INDEX [IX_Notifications_AccountId] ON [dbo].[Users] ([Id]);

