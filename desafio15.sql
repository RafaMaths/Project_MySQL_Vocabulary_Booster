DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(
  IN cargo VARCHAR(50),
  OUT media_salario DECIMAL(8,2)
)
BEGIN  
  SELECT AVG(e.salary) AS 'Média salarial' 
  FROM employees e
  INNER JOIN jobs j
  ON e.job_id = j.job_id
  WHERE j.JOB_TITLE = cargo
  INTO media_salario;

END $$
DELIMITER ;
