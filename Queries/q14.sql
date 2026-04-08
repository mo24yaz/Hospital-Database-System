SELECT p.name, pay.amount
FROM payment pay
JOIN patient p ON pay.patient_id = p.patient_id
WHERE pay.amount > 200;