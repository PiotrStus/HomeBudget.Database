CREATE TABLE [dbo].[Categories]
(
	[Id]					INT				 IDENTITY(1,1) NOT NULL,
	[Name]					NVARCHAR(50)	 NOT NULL,
	[CategoryType]			INT				 NOT NULL,
	[AccountId]				INT		    	 NOT NULL,
	[IsDeleted]				BIT				 NOT NULL DEFAULT 0,
	CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_Categories_Accounts] FOREIGN KEY ([AccountId]) REFERENCES [dbo].[Accounts] ([Id])
);


GO
CREATE INDEX [IX_Categories_AccountId] ON [dbo].[AccountUsers] ([AccountId]);

GO
CREATE UNIQUE INDEX [UQ_Categories_Name_AccountId] 
ON [dbo].[Categories] ([Name], [AccountId], [CategoryType])
WHERE [IsDeleted] = 0;

GO
CREATE INDEX [IX_Categories_IsDeleted]
ON [dbo].[Categories] ([IsDeleted]);