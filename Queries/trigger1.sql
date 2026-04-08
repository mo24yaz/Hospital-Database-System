DELIMITER //
CREATE TRIGGER default_physician_fee
BEFORE INSERT ON physician_order
FOR EACH ROW
BEGIN
SET NEW.fee = IF(NEW.fee IS NULL, '0', NEW.fee);
END;//
DELIMITER ;