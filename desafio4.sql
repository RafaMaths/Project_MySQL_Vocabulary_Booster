SELECT
  j.job_title AS 'Cargo',
  AVG(e.salary) AS 'Média salarial',
  CASE
    WHEN ROUND(AVG(e.salary), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
    WHEN ROUND(AVG(e.salary), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
    WHEN ROUND(AVG(e.salary), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
    ELSE 'CEO'
  END
  AS 'Senioridade'
FROM jobs j
INNER JOIN employees e
  ON j.job_id = e.job_id
GROUP BY j.job_title
ORDER BY AVG(e.salary), j.job_title;
