CREATE TABLE [dbo].[MonthlyBudgetCategoriesTracking]
(
	[Id]						INT		NOT NULL,
	[CategoryFilledLevel]		INT		NOT NULL,

	CONSTRAINT [PK_MonthlyBudgetCategoriesTracking] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_MonthlyBudgetCategoriesTracking_MonthlyBudgetCategories_Id] FOREIGN KEY ([Id]) REFERENCES [dbo].[MonthlyBudgetCategories] ([Id]) ON DELETE CASCADE
);
