SELECT n.name, n.phone
FROM nurse n
JOIN administers a ON n.nurse_id = a.nurse_id
WHERE a.patient_id = 1;