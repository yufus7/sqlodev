--1
create table employee (
	id integer, 
	name varchar(50),
	birthday date,
	email varchar(100)
);
	
  
--2
insert into employee (id, name, birthday, email) values (1, 'Loella', '2022-03-01', 'lleving0@ihg.com');
insert into employee (id, name, birthday, email) values (2, 'Salomo', '2022-05-04', 'sexell1@kickstarter.com');
insert into employee (id, name, birthday, email) values (3, 'Louie', '2021-05-30', 'lgurko2@usnews.com');

--3
update employee
set name = 'Yusuf'
where id = 1
returning *;

update employee
set name = 'Lollelia'
where name = 'Yusuf'
returning *;


--4
delete from employee
where id = 3
returning *;
