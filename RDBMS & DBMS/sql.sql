create table Dept_Master
(
    dept_id  int primary key , Auto_increment,
    dept_name varchar(20),
   
);

create table Emp_Master
(
    id int primary key , Auto_increment,
    first_name varchar(30),
    last_name varchar(30),
    contect varchar(30),
    email varchar(50),
    gender char(1),
    dept_no int FOREIGN KEY REFERENCES Dept_Master(dept_id)
);


insert into Dept_Master(1,'IT'),
insert into Dept_Master(2,'SALES'),
insert into Dept_Master(3,'MARKETING'),
insert into Dept_Master(4,'HR'),


insert into Emp_Master('viren','vaishnav','7874210462','vaishnavviren78@gmail.com','M',1);
insert into Emp_Master('sweta','jain','7359512230','swetaj631@gmail.com','F',2);
insert into Emp_Master('janvi','ashodiya','956717560','janvi.a009@gmail.com','F',1);
insert into Emp_Master('warish','kumar','7808688033','warish@@gmail.com','M',3);
insert into Emp_Master('gaurav','rajpurohit','7734806300','gaurav260@gmail.com','M',4);


select * from Emp_Master;
select first_name, last_name from Emp_Master;
select first_name, last_name from Emp_Master where id=1;

update Emp_Master set first_name='bhautik' and last_name='dobariya' where id=4;

delete * from Emp_Master;
delete from Emp_Master where id=4;
truncate table Emp_Master;
drop table Emp_Master;


alter table Emp_Master
Add column salary int;

alter table Emp_Master
Drop column last_name;

alter table Emp_Master
modify contect to mobile_no;


-- INNER JOINS

select e.id,e.first_name,d.dept_name 
from Dept_Master AS d
inner join Emp_Master
on d.dept_id=e.dept_no;

-- LEFT JOIN

select e.id,e.first_name,d.dept_name 
from Dept_Master AS d
LEFT join Emp_Master
on d.dept_id=e.dept_no;


-- RIGHT JOIN

select e.id,e.first_name,d.dept_name 
from Dept_Master AS d
RIGHT join Emp_Master
on d.dept_id=e.dept_no;

-- FULL JOIN

select e.id,e.first_name,d.dept_name 
from Dept_Master AS d
FULL join Emp_Master
on d.dept_id=e.dept_no;