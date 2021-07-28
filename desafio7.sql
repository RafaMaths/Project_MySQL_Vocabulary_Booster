SELECT
  UCASE(CONCAT(first_name, ' ', last_name)) AS 'Nome completo',
  start_date AS 'Data de início',
  salary AS 'Salário'
FROM employees e
INNER JOIN job_history jh
  ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE MONTH(start_date) BETWEEN 1 AND 3
ORDER BY CONCAT(first_name, ' ', last_name), start_date;
