CREATE TABLE [dbo].[YearBudgets]
(
	[Id]				INT					IDENTITY(1,1) NOT NULL,
	[Year]				INT								  NOT NULL,								
	[Description]		NVARCHAR (100),
	[AccountId]			INT								  NOT NULL,
	CONSTRAINT [PK_YearBudgets] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_YearBudgets_Accounts] FOREIGN KEY ([AccountId]) REFERENCES [dbo].[Accounts] ([Id]) ON DELETE CASCADE
);


GO
CREATE INDEX [IX_YearBudgets_AccountId] ON [dbo].[YearBudgets] ([AccountId])

GO
CREATE UNIQUE INDEX [UX_YearBudgets_AccountId_Year] ON [dbo].[YearBudgets] ([AccountId], [Year])