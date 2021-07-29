SELECT
  a.ContactName AS 'Nome',
  a.Country AS 'País',
  COUNT(b.Country) - 1 AS 'Número de compatriotas'
FROM  customers AS a,
      customers AS b
WHERE a.Country = b.Country
GROUP BY 
          a.ContactName,
          a.Country
HAVING COUNT(b.Country) - 1 <> 0
ORDER BY a.ContactName;
