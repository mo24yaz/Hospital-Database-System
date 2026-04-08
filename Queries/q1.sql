SELECT patient.name as patient_name, room.room_number
FROM patient
JOIN assigned_to_room ON patient.patient_id = assigned_to_room.patient_id
JOIN room ON assigned_to_room.room_number = room.room_number
WHERE patient.patient_id = 1;