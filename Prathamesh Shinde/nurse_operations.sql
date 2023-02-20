create database capstone_project;
use capstone_project;
drop table nurses;
create table nurses
(
 nurse_login varchar(50),
 nurse_id varchar(10),
 nurse_name varchar(30),
 nurse_email varchar(50),
 nurse_phno varchar(10)
);

insert into nurses values
('N1@gmail.com','N1','Nurse1','N1@gmail.com','123456890'),
('N2@gmail.com','N2','Nurse2','N2@gmail.com','9876543210'),
('N3@gmail.com','N3','Nurse3','N3@gmail.com','7894561230'),
('N4@gmail.com','N4','Nurse4','N4@gmail.com','8796541230'),
('N5@gmail.com','N5','Nurse5','N5@gmail.com','6549873210');

select * from nurses;
/*JDBC Queries to copy for the operations*/
insert into nurses values('?','?','?','?','?');

delete from nurses where nurse_id="?";

update nurses set nurse_name="?" where nunrse_id="?"; 
update nurses set nurse_email="?" where nunrse_id="?"; 
update nurses set nurse_phno="?" where nunrse_id="?";  

update nurses set nurse_name="?", nurse_email="?", nurse_phno="?" where nunrse_id="?"; 