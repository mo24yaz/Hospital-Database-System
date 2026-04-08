SELECT DISTINCT p.name, p.address
FROM administers a
JOIN patient p ON a.patient_id = p.patient_id
WHERE a.nurse_id = 5;