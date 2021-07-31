SELECT round(AVG(e.salary),2) AS 'Média salarial' 
  FROM employees e
  INNER JOIN jobs j
  ON e.job_id = j.job_id
  WHERE j.JOB_TITLE = cargo;