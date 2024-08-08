CREATE TABLE [dbo].[MonthlyBudgets]
(
	[Id]				INT				IDENTITY(1,1) NOT NULL,
	[YearBudgetId]		INT				NOT NULL,
	[Month]				INT				NOT NULL,
	[TotalAmount]		DECIMAL(8,2)	NOT NULL,
	CONSTRAINT [PK_MonthlyBudgets] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_MonthlyBudgets_YearBudgets] FOREIGN KEY ([YearBudgetId]) REFERENCES [dbo].[YearBudgets] ([Id]) ON DELETE CASCADE
);

GO
CREATE INDEX [IX_MonthlyBudgets_YearBudgetId] ON [dbo].[MonthlyBudgets] ([YearBudgetId]);

GO
CREATE INDEX [IX_MonthlyBudgets_Month] ON [dbo].[MonthlyBudgets] ([Month]);
