SELECT patient.name, health_record.disease_details
FROM patient
JOIN health_record ON patient.patient_id = health_record.patient_id
WHERE health_record.status = 'Ongoing';