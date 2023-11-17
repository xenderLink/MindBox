INSERT INTO [testquerydb].[dbo].[categories](name)
VALUES ('Овощи'), ('Фрукты'), ('Ягоды'), ('Зелень');

INSERT INTO  [testquerydb].[dbo].[products](name)
VALUES ('Огурцы'), ('Морковь'), ('Лук'), ('Бананы'),
       ('Яблоки'), ('Апельсины'), ('Арбузы'), ('Малина'),
	   ('Клубника'), ('Салат'), ('Укроп'), ('Петрушка');

INSERT INTO [testquerydb].[dbo].[product_category] (product_id, category_id)
SELECT [testquerydb].[dbo].[products].[id], [testquerydb].[dbo].[categories].[id]
FROM [testquerydb].[dbo].[products], [testquerydb].[dbo].[categories]
WHERE [testquerydb].[dbo].[products].[name] = 'Огурцы' 
      AND [testquerydb].[dbo].[categories].[name] ='Овощи'
UNION ALL
SELECT [testquerydb].[dbo].[products].[id], [testquerydb].[dbo].[categories].[id]
FROM [testquerydb].[dbo].[products], [testquerydb].[dbo].[categories]
WHERE [testquerydb].[dbo].[products].[name] = 'Лук' 
      AND [testquerydb].[dbo].[categories].[name] ='Овощи'
UNION ALL
SELECT [testquerydb].[dbo].[products].[id], [testquerydb].[dbo].[categories].[id]
FROM [testquerydb].[dbo].[products], [testquerydb].[dbo].[categories]
WHERE [testquerydb].[dbo].[products].[name] = 'Бананы' 
      AND [testquerydb].[dbo].[categories].[name] ='Фрукты'
UNION ALL
SELECT [testquerydb].[dbo].[products].[id], [testquerydb].[dbo].[categories].[id]
FROM [testquerydb].[dbo].[products], [testquerydb].[dbo].[categories]
WHERE [testquerydb].[dbo].[products].[name] = 'Яблоки' 
      AND [testquerydb].[dbo].[categories].[name] ='Фрукты'
UNION ALL
SELECT [testquerydb].[dbo].[products].[id], [testquerydb].[dbo].[categories].[id]
FROM [testquerydb].[dbo].[products], [testquerydb].[dbo].[categories]
WHERE [testquerydb].[dbo].[products].[name] = 'Арбузы' 
      AND [testquerydb].[dbo].[categories].[name] ='Ягоды'
UNION ALL
SELECT [testquerydb].[dbo].[products].[id], [testquerydb].[dbo].[categories].[id]
FROM [testquerydb].[dbo].[products], [testquerydb].[dbo].[categories]
WHERE [testquerydb].[dbo].[products].[name] = 'Клубника' 
      AND [testquerydb].[dbo].[categories].[name] ='Ягоды'
UNION ALL
SELECT [testquerydb].[dbo].[products].[id], [testquerydb].[dbo].[categories].[id]
FROM [testquerydb].[dbo].[products], [testquerydb].[dbo].[categories]
WHERE [testquerydb].[dbo].[products].[name] = 'Укроп' 
      AND [testquerydb].[dbo].[categories].[name] ='Зелень'
UNION ALL
SELECT [testquerydb].[dbo].[products].[id], [testquerydb].[dbo].[categories].[id]
FROM [testquerydb].[dbo].[products], [testquerydb].[dbo].[categories]
WHERE [testquerydb].[dbo].[products].[name] = 'Петрушка' 
      AND [testquerydb].[dbo].[categories].[name] ='Зелень'
UNION ALL
SELECT [testquerydb].[dbo].[products].[id], [testquerydb].[dbo].[categories].[id]
FROM [testquerydb].[dbo].[products], [testquerydb].[dbo].[categories]
WHERE [testquerydb].[dbo].[products].[name] = 'Лук' 
      AND [testquerydb].[dbo].[categories].[name] ='Зелень'