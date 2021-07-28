SELECT
  p.ProductName AS 'Produto',
  p.Price AS 'Preço'
FROM products p
INNER JOIN order_details od
  ON p.ProductID = od.ProductID
WHERE od.Quantity > 80
GROUP BY p.ProductID
ORDER BY p.ProductName;
