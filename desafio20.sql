DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(selectedEmail VARCHAR(25))
BEGIN  
  SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome Completo', d.department_name AS 'Departamento', j.job_title AS 'Cargo'
FROM employees e
INNER JOIN  departments d
ON e.department_id = d.department_id
INNER JOIN jobs j
ON e.job_id = j.job_id
WHERE selectedEmail = e.email
ORDER BY d.department_name, j.job_title;
END $$
DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');



DELIMITER $$
CREATE FUNCTION exibir_historico_completo_por_funcionario(EMAIL VARCHAR(25))
RETURNS VARCHAR(25) READS SQL DATA
BEGIN
DECLARE historyJob VARCHAR(25);
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome Completo', d.department_name AS 'Departamento', j.job_title AS 'Cargo'
FROM employees e
INNER JOIN  departments d
ON e.department_id = d.department_id
INNER JOIN jobs j
ON e.job_id = j.job_id
ORDER BY de.department_name, j.job_title
INTO historyJob;
RETURN historyJob;

END $$
DELIMITER ;