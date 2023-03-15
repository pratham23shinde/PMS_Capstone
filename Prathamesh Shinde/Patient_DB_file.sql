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
insert into patient values (3,"pra@gmail","Ms","Shubhangi","Shinde","20/3/2000","7894561780","shubh@23","F","Pune");


select * from patient;

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
drop table visit_details;
insert into visit_details  values 
(1,1,165.3,89.1,180,90,27.2,72,"A+","n1@gmail.com","p1@gmail.com",7,"key note 1"),
(2,2,168.3,70.1,170,80,28.2,72,"O-","n2@gmail.com","p2@gmail.com",8,"key note 2"),
(3,3,162.3,67.1,195,70,25.2,72,"B+","n3@gmail.com","p3@gmail.com",9,"key note 3");

select * from visit_details;

create table test
(
test_id int primary key,
test_name varchar(100),
result varchar(100),
test_notes varchar(100),
visit_id int,
FOREIGN KEY (visit_id) REFERENCES visit_details(visit_id)
);

drop table test;

insert into test values 
(1,"Blood","Good","Blood test is good",1),
(2,"Urine","Bad","Blood test was negative",2),
(3,"Urine","Bad","Blood test is bad",1),
(4,"Blood","Good","Blood test is good",2);



select * from test;

drop table prescription;
create table prescription
(
diagnosis varchar(100),
prescription_id int primary key,
prescription_name varchar(100),
dosage varchar(10),
prescription_notes varchar(100),
visit_id int,
FOREIGN KEY (visit_id) REFERENCES visit_details(visit_id) 
);

select * from prescription;


insert into prescription values
("Covid",1,"paracetamol","1-1-1","after food",1),
("high bp",2,"rantac","1-1-1","after 1 hr of food",1),
("Diabetes",3,"panD","1-1-1","before food",2),
("Common cold",4,"azithromycin","1-1-1","before sleep",3),
("Minor bruises",5,"batadin","1-1-1","after bath",2);