SELECT
  CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
  j.job_title AS 'Cargo',
  jh.start_date AS 'Data de início do cargo',
  d.department_name AS 'Departamento'
FROM employees e
INNER JOIN job_history jh
  ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN jobs j
  ON jh.JOB_ID = j.JOB_ID
INNER JOIN departments d
  ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY CONCAT(e.first_name, ' ', e.last_name) DESC, j.JOB_TITLE;
