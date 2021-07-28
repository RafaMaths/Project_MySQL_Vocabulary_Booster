SELECT
  CONCAT(FirstName, ' ', LastName) AS 'Nome completo',
  COUNT(OrderDate) AS 'Total de pedidos'
FROM employees e
INNER JOIN orders o
  ON e.EmployeeID = o.EmployeeID
GROUP BY CONCAT(FirstName, ' ', LastName)
ORDER BY COUNT(OrderDate);
