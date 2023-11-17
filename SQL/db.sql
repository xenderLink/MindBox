IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'testquerydb')
BEGIN
  CREATE DATABASE testquerydb;
END;
GO