create database siddu; 
use siddu;

create table Employees
(
Emp_ID smallint,
Emp_Name varchar(50),
Postal_code Char(6),
D0b date,
Doj timestamp,
Salary decimal(10,0)
);
show tables;
desc employees;


alter table Employees rename column Emp_Name to Employee_name;

alter table Employees add column Department varchar(40);
alter table Employees
add column age smallint,
add column mobile_num int,
add column Perfomance_Rating tinyint;

alter table Employees
modify salary int;

alter table Employees
rename Employee;
desc Employee;

alter table Employee
drop column Perfomance_Rating;


create table orders
(
orderID int,
orderDate date,
cust_name varchar(50),
sale_amount decimal(20,0),
city varchar(50),
signupdate timestamp
);
show tables;
desc orders;

insert into orders values
(1001,"2026-06-26","siddu","20000","Amalapurm","2026-06-26"),
(1002,"2026-01-01","surya","3000","rjy","2026-01-01");
select * from orders;


#insert using column names
insert into 
orders (orderID, orderDate, cust_name, sale_amount, city, signupdate)
values
(1004,"2025-01-01","satish","30000","vizag","2025-01-01");
insert into
orders (orderID,orderDate,cust_name)
values
(1005,"2025-02-02","akshay");

