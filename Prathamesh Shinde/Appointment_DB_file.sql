create database appointment_db;
drop database appointment_db;
use appointment_db;

create table appointment
(
appointment_id int primary key auto_increment,
reason varchar(300),
date varchar(20),
acceptance varchar(10) default "Pending",
patient_id int,
physician_email varchar(50),
submission_date varchar(10)
);

insert into appointment values 
('Throat','14-03-2023','Accepted',1,'p1@gmail.com','fd'),
('Stomach','15-03-2023','Accepted',2,'p2@gmail.com','fd'),
('Heart','14-03-20223','Pending',3,'p2@gmail.com','fd'),
('Lungs','16-03-2023','Pending',4,'p2@gmail.com','fd');

insert into appointment (reason,date,patient_id,physician_email,submission_date) values 
('Legs','14-03-2023',4,'p1@gmail.com','fd');


select * from appointment;