INSERT INTO [testquerydb].[dbo].[categories](name)
VALUES ('�����'), ('������'), ('�����'), ('������');

INSERT INTO  [testquerydb].[dbo].[products](name)
VALUES ('������'), ('�������'), ('���'), ('������'),
       ('������'), ('���������'), ('������'), ('������'),
	   ('��������'), ('�����'), ('�����'), ('��������');

INSERT INTO [testquerydb].[dbo].[product_category] (product_id, category_id)
SELECT [testquerydb].[dbo].[products].[id], [testquerydb].[dbo].[categories].[id]
FROM [testquerydb].[dbo].[products], [testquerydb].[dbo].[categories]
WHERE [testquerydb].[dbo].[products].[name] = '������' 
      AND [testquerydb].[dbo].[categories].[name] ='�����'
UNION ALL
SELECT [testquerydb].[dbo].[products].[id], [testquerydb].[dbo].[categories].[id]
FROM [testquerydb].[dbo].[products], [testquerydb].[dbo].[categories]
WHERE [testquerydb].[dbo].[products].[name] = '���' 
      AND [testquerydb].[dbo].[categories].[name] ='�����'
UNION ALL
SELECT [testquerydb].[dbo].[products].[id], [testquerydb].[dbo].[categories].[id]
FROM [testquerydb].[dbo].[products], [testquerydb].[dbo].[categories]
WHERE [testquerydb].[dbo].[products].[name] = '������' 
      AND [testquerydb].[dbo].[categories].[name] ='������'
UNION ALL
SELECT [testquerydb].[dbo].[products].[id], [testquerydb].[dbo].[categories].[id]
FROM [testquerydb].[dbo].[products], [testquerydb].[dbo].[categories]
WHERE [testquerydb].[dbo].[products].[name] = '������' 
      AND [testquerydb].[dbo].[categories].[name] ='������'
UNION ALL
SELECT [testquerydb].[dbo].[products].[id], [testquerydb].[dbo].[categories].[id]
FROM [testquerydb].[dbo].[products], [testquerydb].[dbo].[categories]
WHERE [testquerydb].[dbo].[products].[name] = '������' 
      AND [testquerydb].[dbo].[categories].[name] ='�����'
UNION ALL
SELECT [testquerydb].[dbo].[products].[id], [testquerydb].[dbo].[categories].[id]
FROM [testquerydb].[dbo].[products], [testquerydb].[dbo].[categories]
WHERE [testquerydb].[dbo].[products].[name] = '��������' 
      AND [testquerydb].[dbo].[categories].[name] ='�����'
UNION ALL
SELECT [testquerydb].[dbo].[products].[id], [testquerydb].[dbo].[categories].[id]
FROM [testquerydb].[dbo].[products], [testquerydb].[dbo].[categories]
WHERE [testquerydb].[dbo].[products].[name] = '�����' 
      AND [testquerydb].[dbo].[categories].[name] ='������'
UNION ALL
SELECT [testquerydb].[dbo].[products].[id], [testquerydb].[dbo].[categories].[id]
FROM [testquerydb].[dbo].[products], [testquerydb].[dbo].[categories]
WHERE [testquerydb].[dbo].[products].[name] = '��������' 
      AND [testquerydb].[dbo].[categories].[name] ='������'
UNION ALL
SELECT [testquerydb].[dbo].[products].[id], [testquerydb].[dbo].[categories].[id]
FROM [testquerydb].[dbo].[products], [testquerydb].[dbo].[categories]
WHERE [testquerydb].[dbo].[products].[name] = '���' 
      AND [testquerydb].[dbo].[categories].[name] ='������'