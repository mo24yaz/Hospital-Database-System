CREATE VIEW patient_meds as
SELECT p.patient_id,
		p.name as patient_name,
		m.name as medication_name,
		a.administer_date,
		a.dose
FROM administers a
JOIN patient p ON a.patient_id = p.patient_id
JOIN medication m ON a.meds_id = m.meds_id;


SELECT * FROM hospital.patient_meds;