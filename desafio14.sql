SELECT Country from suppliers
UNION
SELECT Country from customers
ORDER BY Country
LIMIT 5;
