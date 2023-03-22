create database physician_availability_db;
drop database physician_availability_db;
use physician_availability_db;

create table physician_availability
(
physician_email varchar(50) primary key,
from_date varchar(10),
to_date varchar(10),
availability boolean
);

select * from physician_availability;

insert into physician_availability values 
("p1@gmail.com","13-03-2023","15-03-2023",False),
("p2@gmail.com","12-03-2023","16-03-2023",True),
("p3@gmail.com","14-03-2023","17-03-2023",True);