CREATE TABLE [dbo].[Transactions]
(
	[Id]				INT				IDENTITY(1,1) NOT NULL,
	[Name]				NVARCHAR(100)	NOT NULL,
	[Date]				DATETIMEOFFSET  NOT NULL,
	[CategoryId]		INT				CONSTRAINT [CategoryId] DEFAULT NULL,
	[Amount]			DECIMAL(8,2)    NOT NULL,
	[AccountId]			INT				NOT NULL,
	CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED ([Id]),
	CONSTRAINT [FK_Transactions_Categories] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Categories] ([Id]) ON DELETE SET DEFAULT,
	CONSTRAINT [FK_Transactions_Accounts] FOREIGN KEY ([AccountId]) REFERENCES [dbo].[Accounts] ([Id]) ON DELETE CASCADE
);