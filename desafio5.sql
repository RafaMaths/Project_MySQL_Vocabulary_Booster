SELECT
  job_title AS 'Cargo',
  (MAX_SALARY - MIN_SALARY) AS 'Variação Salarial',
  ROUND(AVG(MIN_SALARY / 12), 2) AS 'Média mínima mensal',
  ROUND(AVG(MAX_SALARY / 12), 2) AS 'Média máxima mensal'
FROM jobs
GROUP BY 
          MAX_SALARY,
          MIN_SALARY,
          JOB_TITLE
ORDER BY (MAX_SALARY - MIN_SALARY), job_title;
