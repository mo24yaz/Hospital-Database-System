SELECT name
FROM patient
WHERE patient_id IN (
	SELECT patient_id
	FROM administers
	WHERE meds_id = 1
);