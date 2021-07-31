DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(selectedEmail VARCHAR(25))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobCount INT;
SELECT COUNT(jh.JOB_ID) 
FROM job_history jh
INNER JOIN employees e
ON jh.employee_id = e.employee_id
WHERE email = selectedEmail
INTO jobCount;
RETURN jobCount;
END $$
DELIMITER ;
SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR') INTO @AVG_Job;
