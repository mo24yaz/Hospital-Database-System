SELECT DISTINCT a1.patient_id
FROM administers a1
WHERE NOT EXISTS (
	SELECT meds_id
	FROM administers
	WHERE nurse_id = 1
	AND meds_id NOT IN (
		SELECT meds_id
		FROM administers a2
		WHERE a2.patient_id = a1.patient_id
	)
);