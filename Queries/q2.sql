SELECT patient.name as patient_name, medication.name as medication_name
FROM administers
JOIN patient ON administers.patient_id = patient.patient_id
JOIN medication ON administers.meds_id = medication.meds_id
WHERE medication.name = 'Ibuprofen';