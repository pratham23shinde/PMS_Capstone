create database allergy_database;
drop database allergy_database;
use allergy_database;
create table allergy 
(
allergy_id int primary key,
allergy_name varchar(50),
allergy_notes varchar (200)
);

select * from allergy;

insert into allergy values (2,"dust","very sensitive to dust");