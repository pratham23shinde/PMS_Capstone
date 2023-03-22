create database patient_info_db;
drop database patient_info_db;
use patient_info_db;

create table patient
(
patient_id int primary key auto_increment,
email varchar(50) not null unique key,
title varchar(3),
first_name varchar(20),
last_name varchar(20),
age varchar(10),
contact_number varchar(10),
password varchar(50),
gender varchar(10),
address varchar(150)
);
insert into patient (email,title,first_name,last_name,age,contact_number,password,gender,address) values 
("pratham@gmail","Mr","Prathamesh","Shinde","23","7894561780","prathamesh@23","M","Kopargoan"),
("p@gmail","Mr","Pranit","Shinde","24","7418529630","prathames@23","M","Pune"),
("pr@gmail","Mr","Rushikesh","Shinde","25","7898945235","prathame@23","M","Hinjewadi"),
("pra@gmail","Mr","Krunal","Shinde","26","9517538524","pratham@23","M","Mumbai");


select * from patient;
drop table visit_details;
create table visit_details
(
visit_id int primary key auto_increment,
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
key_notes_by_nurse varchar(255),
diagnosis_by_doctor varchar(255),FOREIGN KEY (patient_id) REFERENCES patient(patient_id)

);
drop table visit_details;
insert into visit_details 
(patient_id,height,weight,blood_pressure_systolic,blood_pressure_diastolic,body_temperature,respiration_rate,blood_group,nurse_email,physician_email,appointment_id,key_notes_by_nurse,diagnosis_by_doctor) 
values 
(1,165.3,89.1,180,90,27.2,72,"A+","n1@gmail.com","p1@gmail.com",7,"key note 1","a"),
(2,168.3,70.1,170,80,28.2,72,"O-","n2@gmail.com","p2@gmail.com",8,"key note 2","b"),
(3,162.3,67.1,195,70,25.2,72,"B+","n3@gmail.com","p3@gmail.com",9,"key note 3","c");

truncate table visit_details;
select * from visit_details;

create table test
(
test_id int primary key auto_increment,
test_name varchar(100),
result varchar(100),
test_notes varchar(100),
visit_id int,
FOREIGN KEY (visit_id) REFERENCES visit_details(visit_id)
);

drop table test;

insert into test (test_name,result,test_notes,visit_id) values 
("Blood","Good","Blood test is good",1),
("Urine","Bad","Blood test was negative",2),
("Urine","Bad","Blood test is bad",1),
("Blood","Good","Blood test is good",2);



select * from test;

drop table prescription;
create table prescription
(
prescription_id int primary key auto_increment,
prescription_name varchar(100),
dosage varchar(10),
prescription_notes varchar(100),
visit_id int,
FOREIGN KEY (visit_id) REFERENCES visit_details(visit_id) 
);

select * from prescription;


insert into prescription (prescription_name,dosage,prescription_notes,visit_id) values
("paracetamol","1-1-1","after food",1),
("rantac","1-1-1","after 1 hr of food",1),
("panD","1-1-1","before food",2),
("azithromycin","1-1-1","before sleep",3),
("batadin","1-1-1","after bath",2);