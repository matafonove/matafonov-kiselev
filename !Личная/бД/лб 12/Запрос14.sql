Select *
From заказы inner join товары
On заказы.Код_товара = товары.Код_товара
Where группа BETWEEN 1 AND 2 and MONTH (дата_выполнения) = 4