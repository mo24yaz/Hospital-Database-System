DELIMITER //
CREATE TRIGGER default_payment_amount
BEFORE INSERT ON payment
FOR EACH ROW
BEGIN
SET NEW.amount = IF(NEW.amount IS NULL, '0', NEW.amount);
END;//
DELIMITER ;