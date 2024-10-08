﻿CREATE TABLE [dbo].[Transactions]
(
	[Id]				INT				IDENTITY(1,1) NOT NULL,
	[Name]				NVARCHAR(100)	NOT NULL,
	[Date]				DATETIMEOFFSET  NOT NULL,
	[CreationDate]		DATETIMEOFFSET	NOT NULL CONSTRAINT [CreationDate] DEFAULT SYSDATETIMEOFFSET(),
	[CategoryId]		INT				CONSTRAINT [CategoryId] DEFAULT NULL,
	[IsDeleted]			BIT				NOT NULL CONSTRAINT [DF_Transactions_IsDeleted] DEFAULT 0,
	[Amount]			DECIMAL(8,2)    NOT NULL,
	[AccountId]			INT				NOT NULL,
	CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED ([Id]),
	CONSTRAINT [FK_Transactions_Categories] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Categories] ([Id]) ON DELETE SET DEFAULT,
	CONSTRAINT [FK_Transactions_Accounts] FOREIGN KEY ([AccountId]) REFERENCES [dbo].[Accounts] ([Id]) ON DELETE CASCADE
);

GO
CREATE INDEX [IX_Transactions_IsDeleted]
ON [dbo].[Transactions] ([IsDeleted]);

GO
CREATE INDEX [IX_Transactions_AccountId] 
ON [dbo].[AccountUsers] ([AccountId]);

GO
CREATE INDEX [IX_Transactions_Date]
ON [dbo].[Transactions] ([Date]);

GO
CREATE INDEX [IX_Transactions_CreationDate]
ON [dbo].[Transactions] ([CreationDate]);

GO
CREATE INDEX [IX_Transactions_CategoryId]
ON [dbo].[Transactions] ([CategoryId]);

GO
CREATE INDEX [IX_Transactions_Amount]
ON [dbo].[Transactions] ([Amount]);