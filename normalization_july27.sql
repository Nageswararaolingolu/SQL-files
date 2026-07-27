use pda_90;
create table departments
(
dept_id int auto_increment primary key,
dept_name varchar(50)
);

insert into departments(dept_name) values
("sales"),
("It"),
("Finance"),
("HR");
insert into departments(dept_name) values
("Tech support");
select * from departments;

create table emp_new
( 
emp_ID int auto_increment not null primary key,
emp_name varchar(50),
dept_id int,
email varchar(50) unique,
age int check (age>=18),
salary decimal(10,2),
country varchar(20) default("INDIA"),
foreign key(dept_id) references departments(dept_id)
);

insert into emp_new(emp_name,dept_id,email,age,salary) values
("priyanka",1,"priyanka@gmail.com",25,250000);
select * from emp_new; 
