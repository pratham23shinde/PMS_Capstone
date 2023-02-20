use capstone_project;
create table Admin
(
	admin_login_id varchar(50) primary key,
    admin_passwords varchar(20),
    admin_roles varchar(10)
);

insert into Admin values
('A1@gmail.com','A1@123','Admin'),
('A2@gmail.com','A2@123','Admin'),
('A3@gmail.com','A3@123','Admin'),
('A4@gmail.com','A4@123','Admin'),
('A5@gmail.com','A5@123','Admin');

/*jdbc operations in java code*/
insert into Admin values ('?','?','?');

delete from Admin where admin_login_id='?';

update Admin set admin_passwords='?' where admin_login_id='?';

/*code to remove the role as an admin*/
update Admmin set admin_roles='Normal User' where admin_login_id='?';