-- Exiba a média salarial e o nível de senioridade de todas as pessoas empregadas, agrupadas pelo cargo

SELECT job_title AS 'Cargo', (MAX_SALARY - MIN_SALARY) AS 'Média salarial' FROM jobs, 
CASE
  WHEN MAX_SALARY BETWEEN 5000 AND 10000 THEN 'Baixo'
  WHEN MAX_SALARY BETWEEN 10001 AND 20000 THEN 'Médio'
  WHEN MAX_SALARY BETWEEN 20001 AND 30000 THEN 'Alto'
  ELSE 'Altíssimo'
END
AS 'Senioridade';