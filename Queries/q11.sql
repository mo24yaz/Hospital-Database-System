SELECT patient_id, SUM(amount) as total_payments
FROM payment
GROUP BY patient_id;