SELECT p.name, c.name AS category
FROM [testquerydb].[dbo].[products] as p LEFT JOIN [testquerydb].[dbo].[product_category] AS pc
ON p.id=pc.product_id  LEFT JOIN [testquerydb].[dbo].[categories] as c
ON pc.category_id=c.id