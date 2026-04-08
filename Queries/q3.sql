SELECT physician.name as doctor_name, patient.name AS patient_name
FROM monitors
JOIN physician ON monitors.doctor_id = physician.doctor_id
JOIN patient ON monitors.patient_id = patient.patient_id
WHERE patient.patient_id = 2;