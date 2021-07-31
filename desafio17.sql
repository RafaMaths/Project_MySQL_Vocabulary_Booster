DELIMITER $$
CREATE TRIGGER new_date_insert
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN 
SET NEW.OrderDate = current_date();
END $$
DELIMITER ;
