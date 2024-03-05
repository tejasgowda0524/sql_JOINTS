create database joints;

use joints;

create table employee(id int identity(1,1),name varchar(66),salary bigint,age int,gender varchar(20),dept varchar(55));



insert into employee 
values('sam',9500,23,'M','MECH'),
('bob',8500,21,'M','ECE'),
('anne',2500,53,'F','CSE'),
('julia',900,19,'F','CSE'),
('matt',5800,28,'M','diploma'),
('jeff',1500,43,'M','MECH');



create table department(id int identity(1,1),d_name varchar(44),location varchar(43));

insert into department
values ('CIVIL','BANGALORE'),
('ECE','NEWYORK'),
('CSE','MANGALORE'),
('diploma','udupi'),
('PUC','NEW DELHI'),
('IS','JAMMU');

select * from employee;
select * from department;



----------INNER JOIN---------

select employee.name,employee.dept,department.d_name,department.location
from employee
inner join department
on employee.dept = department.d_name;


-------LEFT JOIN--------


select employee.name,employee.dept,department.d_name,department.location
from employee
left join department
on employee.dept = department.d_name;




-------RIGHT JOIN--------


select employee.name,employee.dept,department.d_name,department.location
from employee
right join department
on employee.dept = department.d_name;

-------CROSS JOIN--------


select * from employee
cross join department;






