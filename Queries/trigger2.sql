DELIMITER //
CREATE TRIGGER default_medication_dose
BEFORE INSERT ON administers
FOR EACH ROW
BEGIN
SET NEW.dose = IF(NEW.dose IS NULL, '1 unit', NEW.dose);
END;//
DELIMITER ;