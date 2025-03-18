/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'SalesDataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'SalesDataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'SalesDataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'SalesDataWarehouse')
BEGIN
    ALTER DATABASE SalesDataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE SalesDataWarehousee;
END;
GO

-- Create the 'SalesDataWarehousee' database
CREATE DATABASE SalesDataWarehouse;
GO

USE SalesDataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
