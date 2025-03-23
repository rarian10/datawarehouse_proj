--Check for existing database first before creating. If exist then drop that databases
IF EXISTS (SELECT 1 FROM sys.databases where name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

--Create Database DataWarehouse
CREATE DATABASE DataWarehouse;
GO

--Use the DataWarehouse Database
USE DataWarehouse;
GO

--Create Scheme for Medallion Architecture
CREATE SCHEMA bronze
GO;
CREATE SCHEMA silver
GO
CREATE SCHEMA gold;
GO
