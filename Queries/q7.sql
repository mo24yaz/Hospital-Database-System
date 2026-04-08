SELECT name
FROM patient
WHERE patient_id IN (
	SELECT patient_id
	FROM assigned_to_room
);