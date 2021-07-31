DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50)) 
BEGIN  
  SELECT round(AVG(e.salary),2) AS 'Média salarial' 
  FROM employees e
  INNER JOIN jobs j
  ON e.job_id = j.job_id
  WHERE cargo = j.JOB_TITLE;  
END $$
DELIMITER ;
CALL buscar_media_por_cargo('Programmer');
