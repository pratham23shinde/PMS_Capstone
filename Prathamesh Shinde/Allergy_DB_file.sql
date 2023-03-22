create database allergy_database;
drop database allergy_database;
use allergy_database;
create table allergy 
(
allergy_id int primary key auto_increment,
allergy_name varchar(50),
allergy_notes varchar (200)
);

select * from allergy;

insert into allergy (allergy_name,allergy_notes)values ("dust","very sensitive to dust");
insert into allergy (allergy_name,allergy_notes)values("Allergy2","Description2"),
("Allergy3","Description3");