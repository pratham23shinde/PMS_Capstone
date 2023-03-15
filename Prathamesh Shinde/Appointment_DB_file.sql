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
(1,'Throat','14-03-2023','Accepted',1,'p1@gmail.com','fd'),
(2,'Stomach','15-03-2023','Accepted',2,'p2@gmail.com','fd'),
(3,'Heart','14-03-20223','Pending',3,'p2@gmail.com','fd'),
(4,'Lungs','16-03-2023','Pending',4,'p2@gmail.com','fd');

insert into appointment values 
(5,'Legs','14-03-2023','Accepted',4,'p1@gmail.com','fd');


select * from appointment;