SELECT
  ProductName AS 'Produto',
  MIN(Quantity) AS 'Mínima',
  MAX(Quantity) AS 'Máxima',
  ROUND(AVG(Quantity), 2) AS 'Média'
FROM products p
INNER JOIN order_details od
  ON p.ProductID = od.ProductID
GROUP BY ProductName
HAVING AVG(Quantity) > 20.00
ORDER BY AVG(quantity), ProductName;
