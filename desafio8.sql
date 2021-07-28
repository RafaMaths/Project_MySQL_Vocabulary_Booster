SELECT
  ContactName AS 'Nome de contato',
  ShipperName AS 'Empresa que fez o envio',
  OrderDate AS 'Data do pedido'
FROM orders o
INNER JOIN customers c
  ON o.customerID = c.customerID
INNER JOIN shippers s
  ON o.shipperID = s.shipperID
WHERE ShipperName = 'Speedy Express'
OR ShipperName = 'United Package'
ORDER BY ContactName, ShipperName, OrderDate;
