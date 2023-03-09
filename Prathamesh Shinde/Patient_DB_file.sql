create database patient_info_db;
drop database patient_info_db;
use patient_info_db;

create table patient
(
patient_id int primary key,
email varchar(50) not null unique key,
title varchar(3),
first_name varchar(20),
last_name varchar(20),
dob varchar(10),
contact_number varchar(10),
password varchar(50),
gender varchar(10),
address varchar(150)
);

create table visit_details
(
visit_id int primary key,
patient_id int,
height float,
weight float,
blood_pressure_systolic int,
blood_pressure_diastolic int,
body_temperature float,
respiration_rate int,
blood_group varchar(5),
nurse_email varchar(50),
physician_email varchar(50),
appointment_id int,
key_notes varchar(50),
FOREIGN KEY (patient_id) REFERENCES patient(patient_id)
);

create table test
(
test_id int,
test_name varchar(100),
result varchar(100),
test_notes varchar(100),
visit_id int,
FOREIGN KEY (visit_id) REFERENCES visit_details(visit_id)
);

create table prescription
(
prescription_id int,
prescription_name varchar(100),
dosage varchar(10),
prescription_notes varchar(100),
visit_id int,
FOREIGN KEY (visit_id) REFERENCES visit_details(visit_id) 
);