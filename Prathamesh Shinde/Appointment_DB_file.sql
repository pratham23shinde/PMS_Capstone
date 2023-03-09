create database appointment_db;
drop database appointment_db;
use appointment_db;

create table appointment
(
appointment_id int primary key,
reason varchar(300),
date varchar(10),
acceptance varchar(10),
patient_id int,
physician_email varchar(50),
submission_date varchar(10)
);