CREATE TABLE [dbo].[MonthlyBudgetCategories]
(
	[Id]				INT				IDENTITY(1,1) NOT NULL,
	[Amount]			DECIMAL(8,2)	NOT NULL,
	[MonthlyBudgetId]	INT				NOT NULL,
	[CategoryId]		INT				NOT NULL,
	CONSTRAINT [PK_MonthlyBudgetCategories] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_MonthlyBudgetCategories_MonthlyBudgets] FOREIGN KEY ([MonthlyBudgetId]) REFERENCES [dbo].[MonthlyBudgets] ([Id]) ON DELETE CASCADE,
	CONSTRAINT [FK_MonthlyBudgetCategories_Categories] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Categories] ([Id]) ON DELETE CASCADE
);

GO
CREATE INDEX [IX_MonthlyBudgetCategories_MonthlyBudgetId] ON [dbo].[MonthlyBudgetCategories] ([MonthlyBudgetId])

GO
CREATE INDEX [IX_MonthlyBudgetCategories_CategoryId] ON [dbo].[MonthlyBudgetCategories] ([CategoryId])