DROP DATABASE IF EXISTS hospital;
CREATE DATABASE hospital;
USE hospital;

CREATE TABLE room (
	room_number INT NOT NULL,
	capacity INT,
	nightly_fee VARCHAR(10),
	PRIMARY KEY (room_number)
);

CREATE TABLE patient (
	patient_id INT NOT NULL,
	name VARCHAR(50),
	address VARCHAR(255),
	phone VARCHAR(13),
	PRIMARY KEY (patient_id)
);

CREATE TABLE health_record (
	record_id INT NOT NULL,
	disease_details VARCHAR(500),
	diagnosis_dates DATE,
	status VARCHAR(50),
	description VARCHAR(500),
	patient_id INT,
	PRIMARY KEY (record_id),
	FOREIGN KEY (patient_id) REFERENCES patient(patient_id)
);

CREATE TABLE assigned_to_room (
	patient_id INT NOT NULL,
	room_number INT NOT NULL,
	check_in DATE NOT NULL,
	check_out DATE,
	PRIMARY KEY (patient_id, room_number, check_in),
	FOREIGN KEY (patient_id) REFERENCES patient(patient_id),
	FOREIGN KEY (room_number) REFERENCES room(room_number)
);

CREATE TABLE physician (
	doctor_id INT NOT NULL,
	name VARCHAR(50),
	cert_number VARCHAR(50),
	specialization VARCHAR(100),
	address VARCHAR(255),
	phone VARCHAR(13),
	PRIMARY KEY (doctor_id)
);

CREATE TABLE monitors (
	doctor_id INT NOT NULL,
	patient_id INT NOT NULL,
	start_time DATETIME NOT NULL,
	end_time DATETIME,
	PRIMARY KEY (doctor_id, patient_id, start_time),
	FOREIGN KEY (doctor_id) REFERENCES physician(doctor_id),
	FOREIGN KEY (patient_id) REFERENCES patient(patient_id)
);

CREATE TABLE nurse (
	nurse_id INT NOT NULL,
	name VARCHAR(50),
	cert_number VARCHAR(50),
	address VARCHAR(255),
	phone VARCHAR(13),
	PRIMARY KEY (nurse_id)
);

CREATE TABLE physician_order (
	order_id INT NOT NULL,
	description VARCHAR(500),
	fee VARCHAR(10),
	PRIMARY KEY (order_id)
);

CREATE TABLE execute_order (
	nurse_id INT NOT NULL,
	order_id INT NOT NULL,
	execution DATETIME,
	status VARCHAR(50),
	PRIMARY KEY (nurse_id, order_id),
	FOREIGN KEY (nurse_id) REFERENCES nurse(nurse_id),
	FOREIGN KEY (order_id) REFERENCES physician_order(order_id)
);

CREATE TABLE medication (
	meds_id INT NOT NULL,
	name VARCHAR(50),
	PRIMARY KEY (meds_id)
);

CREATE TABLE administers (
	nurse_id INT NOT NULL,
	patient_id INT NOT NULL,
	meds_id INT NOT NULL,
	administer_date DATE NOT NULL,
	dose VARCHAR(50),
	PRIMARY KEY (nurse_id, patient_id, meds_id, administer_date),
	FOREIGN KEY (nurse_id) REFERENCES nurse(nurse_id),
	FOREIGN KEY (patient_id) REFERENCES patient(patient_id),
	FOREIGN KEY (meds_id) REFERENCES medication(meds_id)
);

CREATE TABLE invoice (
	account_num INT NOT NULL,
	issue_date DATE NOT NULL,
	start_date DATE,
	end_date DATE,
	patient_id INT,
	PRIMARY KEY (account_num, issue_date),
	FOREIGN KEY (patient_id) REFERENCES patient(patient_id)
);

CREATE TABLE payable (
	id INT NOT NULL,
	amount VARCHAR(10),
	date DATE,
	description VARCHAR(500),
	PRIMARY KEY (id)
);

CREATE TABLE billed_item (
	account_num INT NOT NULL,
	issue_date DATE NOT NULL,
	payable_id INT NOT NULL,
	PRIMARY KEY (account_num, issue_date, payable_id),
	FOREIGN KEY (account_num, issue_date) REFERENCES invoice(account_num, issue_date),
	FOREIGN KEY (payable_id) REFERENCES payable(id)
);

CREATE TABLE payment (
	payment_id INT NOT NULL,
	date DATE,
	amount VARCHAR(10),
	patient_id INT,
	PRIMARY KEY (payment_id),
	FOREIGN KEY (patient_id) REFERENCES patient(patient_id)
);


