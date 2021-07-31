DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(hire_month INT, hire_year INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE counter_hire INT;
SELECT COUNT(HIRE_DATE)
FROM employees
WHERE hire_month= month(hire_date) AND hire_year = year(hire_date)
INTO counter_hire;
RETURN counter_hire;
END $$
DELIMITER ;
