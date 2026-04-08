INSERT INTO room VALUES (101, 2, '250');
INSERT INTO room VALUES (102, 1, '150');
INSERT INTO room VALUES (103, 3, '250');
INSERT INTO room VALUES (104, 1, '150');
INSERT INTO room VALUES (105, 3, '350');

INSERT INTO physician VALUES (1, 'Dr. Perkins', 'CERT1', 'Cardiology', '525 Schoolhouse Rd', '121-214-7684');
INSERT INTO physician VALUES (2, 'Dr. Mitchell', 'CERT2', 'Neurology', '106 Buttonwood Lane', '798-374-3734');
INSERT INTO physician VALUES (3, 'Dr. Lyons', 'CERT3', 'General Medicine', '7623 Indian Summer Road', '947-365-3759');
INSERT INTO physician VALUES (4, 'Dr. Patel', 'CERT4', 'Orthopedics', '31 Cooper Lane', '837-678-8237');
INSERT INTO physician VALUES (5, 'Dr. Chen', 'CERT5', 'Pediatrics', '59 Sherwood Dr', '285-973-5674');

INSERT INTO nurse VALUES (1, 'Nurse Moon', 'N12', '61 Newport St', '567-829-3874');
INSERT INTO nurse VALUES (2, 'Nurse Finley', 'N23', '64 Academy St', '156-837-4983');
INSERT INTO nurse VALUES (3, 'Nurse Jones', 'N32', '27 North Walnut St', '389-457-8439');
INSERT INTO nurse VALUES (4, 'Nurse Dan', 'N45', '318 Cedarwood Ave', '389-443-4389');
INSERT INTO nurse VALUES (5, 'Nurse Chase', 'N54', '37 Redwood St', '827-589-2478');

INSERT INTO medication VALUES (1, 'Paracetamol');
INSERT INTO medication VALUES (2, 'Ibuprofen');
INSERT INTO medication VALUES (3, 'Aspirin');
INSERT INTO medication VALUES (4, 'Antibiotic');
INSERT INTO medication VALUES (5, 'Cough Syrup');

INSERT INTO patient VALUES (1, 'Hank Roberson', '667 Country Lane', '524-768-3678');
INSERT INTO patient VALUES (2, 'Aidan Fuentes', '8787 Annadale Street', '785-149-4368');
INSERT INTO patient VALUES (3, 'Aden Hunt', '6 Arlington Street', '561-734-8764');
INSERT INTO patient VALUES (4, 'Nevaeh Holloway', '9688 San Pablo Road', '179-628-4345');
INSERT INTO patient VALUES (5, 'Kenia Campbell', '24 Bank Street', '125-870-3825');

INSERT INTO assigned_to_room VALUES (1, 101, '2025-01-02', '2025-09-10');
INSERT INTO assigned_to_room VALUES (2, 102, '2025-03-04', '2025-09-11');
INSERT INTO assigned_to_room VALUES (3, 103, '2025-05-06', NULL);
INSERT INTO assigned_to_room VALUES (4, 104, '2025-07-08', NULL);
INSERT INTO assigned_to_room VALUES (5, 105, '2025-09-10', NULL);

INSERT INTO health_record VALUES (1, 'Diabetes', '2025-01-10', 'Ongoing', 'Type 2 diabetes with regular checkups', 1);
INSERT INTO health_record VALUES (2, 'Asthma', '2025-02-15', 'Resolved', 'Mild asthma during childhood', 4);
INSERT INTO health_record VALUES (3, 'Hypertension', '2025-03-05', 'Ongoing', 'High blood pressure managed with medication', 2);
INSERT INTO health_record VALUES (4, 'Flu', '2025-04-01', 'Resolved', 'Short-term influenza virus', 1);
INSERT INTO health_record VALUES (5, 'Anemia', '2025-05-20', 'Ongoing', 'Iron deficiency', 5);

INSERT INTO monitors VALUES (1, 1, '2025-01-02 09:08:07', '2025-01-02 12:00:00');
INSERT INTO monitors VALUES (2, 2, '2025-03-04 06:05:04', NULL);
INSERT INTO monitors VALUES (3, 3, '2025-05-06 02:01:00', NULL);
INSERT INTO monitors VALUES (4, 4, '2025-07-08 01:02:03', NULL);
INSERT INTO monitors VALUES (5, 5, '2025-09-10 14:05:07', NULL);

INSERT INTO physician_order VALUES (1, 'Administer medication X', '50');
INSERT INTO physician_order VALUES (2, 'Monitor blood pressure', '30');
INSERT INTO physician_order VALUES (3, 'Change dressing', '20');
INSERT INTO physician_order VALUES (4, 'Physiotherapy session', '70');
INSERT INTO physician_order VALUES (5, 'Order X-ray', '100');

INSERT INTO execute_order VALUES (1, 1, '2025-01-02 10:00:00', 'Completed');
INSERT INTO execute_order VALUES (2, 2, '2025-03-04 07:00:00', 'Completed');
INSERT INTO execute_order VALUES (3, 3, '2025-05-06 03:00:00', 'Pending');
INSERT INTO execute_order VALUES (4, 4, '2025-07-08 02:00:00', 'In Progress');
INSERT INTO execute_order VALUES (5, 5, '2025-09-10 15:00:00', 'Completed');

INSERT INTO administers VALUES (1, 1, 1, '2025-01-02', '500mg');
INSERT INTO administers VALUES (2, 2, 2, '2025-03-04', '200mg');
INSERT INTO administers VALUES (3, 3, 3, '2025-05-06', '100mg');
INSERT INTO administers VALUES (4, 4, 4, '2025-07-08', '250mg');
INSERT INTO administers VALUES (5, 5, 5, '2025-09-10', '2 tsp');

INSERT INTO invoice VALUES (1001, '2025-09-11', '2025-01-02', '2025-09-10', 1);
INSERT INTO invoice VALUES (1002, '2025-09-11', '2025-03-04', '2025-09-11', 2);
INSERT INTO invoice VALUES (1003, '2025-09-11', '2025-05-06', '2025-09-11', 3);
INSERT INTO invoice VALUES (1004, '2025-09-11', '2025-07-08', '2025-09-11', 4);
INSERT INTO invoice VALUES (1005, '2025-09-11', '2025-09-10', '2025-09-11', 5);

INSERT INTO payable VALUES (1, '250', '2025-01-02', 'Room charge for room 101');
INSERT INTO payable VALUES (2, '50', '2025-01-02', 'Medication A');
INSERT INTO payable VALUES (3, '150', '2025-03-04', 'Room charge for room 102');
INSERT INTO payable VALUES (4, '30', '2025-03-04', 'Blood pressure monitoring');
INSERT INTO payable VALUES (5, '70', '2025-05-06', 'Physiotherapy session');

INSERT INTO billed_item VALUES (1001, '2025-09-11', 1);
INSERT INTO billed_item VALUES (1001, '2025-09-11', 2);
INSERT INTO billed_item VALUES (1002, '2025-09-11', 3);
INSERT INTO billed_item VALUES (1002, '2025-09-11', 4);
INSERT INTO billed_item VALUES (1003, '2025-09-11', 5);

INSERT INTO payment VALUES (1, '2025-09-12', '300', 1);
INSERT INTO payment VALUES (2, '2025-09-12', '150', 2);
INSERT INTO payment VALUES (3, '2025-09-12', '200', 3);
INSERT INTO payment VALUES (4, '2025-09-12', '250', 4);
INSERT INTO payment VALUES (5, '2025-09-12', '300', 5);



