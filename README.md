# SQL Database Project in Visual Studio

This project demonstrates the configuration and management of a SQL database using Visual Studio and MS SQL Server. It includes setting up and managing various tables that handle different aspects of home budget application.

## How to Run

1. Clone this project to your local environment.
2. Open the project in Visual Studio.
3. Ensure that MS SQL Server is installed and that the database connection is properly configured.
4. Use the "Publish" option in Visual Studio to deploy the database schema.
5. Run the project to initialize the database with the defined schema.

## Features

Currently, the project has the following features:

- **Database Table Setup**:
  - `accounts` - Stores information about home budget accounts.
  - `accountUsers` - A junction table that facilitates a many-to-many relationship between `accounts` and `users`.
  - `categories` - Contains information about available categories that users can utilize in the application.
  - `monthlyBudgetCategories` - Used to assign categories to a specific monthly budget.
  - `monthlyBudgetCategoriesTracking` - Tracks the total amount of transactions within each category for a given month.
  - `monthlyBudgets` - Manages the available monthly budgets.
  - `notifications` - Logs notifications related to user activities, including alerts about exceeding category limits.
  - `transactions` - Records all financial transactions conducted by the user.
  - `users` - Contains information about users.
  - `yearBudgets` - Manages yearly budget information.

- **Easy Deployment**:
  - Using Visual Studio's "Publish" option makes deploying and updating the database schema straightforward. This allows for seamless integration and updates to the MS SQL database.
