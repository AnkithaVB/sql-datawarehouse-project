
/*
==================================
Create database and schemas
==================================

This script creates a database named 'DataWarehouse' after checking if it already exists.
If the database exists, it is dropped and recreated. Additionally the script sets up three schemas within
the database : 'bronze' 'silver' 'gold'


WARNING:
Running this script will drop the entire database if it already exits.
All the data in the database will be permanently deleted.

*/





use master;
GO


-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databses WHERE name = 'DataWarehouse')
BEGIN 
	ALTER DATABASE DateWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

--Create the 'DataWarehouse' database 
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
Go

--Create Schemas
Create Schema bronze;
Go

Create Schema silver;
Go

Create schema gold;
Go
