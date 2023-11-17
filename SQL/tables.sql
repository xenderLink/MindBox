IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='categories' and xtype='U')
    CREATE TABLE [categories] (
        id int NOT NULL IDENTITY(1,1) CONSTRAINT PK_category PRIMARY KEY CLUSTERED,
		name varchar(50) NOT NULL
    )
GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='product_category' and xtype='U')
    CREATE TABLE [product_category] (
        product_id bigint,
		category_id int,
    )
GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='products' and xtype='U')
    CREATE TABLE [products] (
        id bigint NOT NULL IDENTITY(1,1) CONSTRAINT PK_product PRIMARY KEY CLUSTERED,
		name varchar(50) NOT NULL 
    )
GO

ALTER TABLE [testquerydb].[dbo].[product_category]
ADD CONSTRAINT FK_product
    FOREIGN KEY (product_id) REFERENCES products (id)
	ON DELETE CASCADE,
    CONSTRAINT FK_category
    FOREIGN KEY (category_id) REFERENCES categories (id)
	ON DELETE CASCADE;