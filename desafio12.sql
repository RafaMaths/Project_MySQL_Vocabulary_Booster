SELECT
  CONCAT(a.FIRST_NAME, ' ', a.LAST_NAME) AS 'Nome completo funcionario 1',
  a.salary AS 'Salário funcionário 1',
  a.phone_number AS 'Telefone funcionário 1',
  CONCAT(b.FIRST_NAME, ' ', b.LAST_NAME) AS 'Nome completo funcionário 2',
  b.salary AS 'Salário funcionário 2',
  b.phone_number AS 'Telefone funcionário 2'
FROM employees AS a,
     employees AS b
WHERE a.job_id = b.job_id
AND a.EMPLOYEE_ID <> b.EMPLOYEE_ID
ORDER BY CONCAT(a.FIRST_NAME, ' ', a.LAST_NAME), CONCAT(b.FIRST_NAME, ' ', b.LAST_NAME);
