SELECT name
FROM physician
WHERE doctor_id IN (
	SELECT doctor_id
	FROM monitors
	WHERE patient_id = 1
);