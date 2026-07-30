create database sub_queries;
use sub_queries;
CREATE TABLE Employees
(
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    Experience INT,
    Manager_ID INT,
    City VARCHAR(50)
);

INSERT INTO Employees VALUES
(101,'John','IT',75000,5,201,'New York'),
(102,'Smith','HR',55000,3,202,'Chicago'),
(103,'David','IT',90000,8,201,'New York'),
(104,'Emma','Finance',65000,6,203,'Boston'),
(105,'Olivia','HR',48000,2,202,'Chicago'),
(106,'James','Finance',72000,5,203,'Boston'),
(107,'William','IT',60000,4,201,'Dallas'),
(108,'Sophia','Marketing',85000,7,204,'New York'),
(109,'Daniel','Marketing',50000,2,204,'Dallas'),
(110,'Mia','Finance',95000,10,203,'Boston');

INSERT INTO Employees VALUES
(111,'Ava','IT',68000,4,201,'Boston'),
(112,'Liam','Marketing',62000,5,204,'Boston'),
(113,'Noah','HR',53000,3,202,'Boston');

INSERT INTO Employees VALUES
(114,'Ethan','Finance',78000,6,203,'Chicago'),
(115,'Charlotte','Finance',82000,7,203,'New York');

select * from employees;
select emp_name,salary,
(select round(avg(salary))
from employees) as avg_salary
from employees
where salary > (select round(avg(salary))
from employees);

select emp_name,city,department
from employees
where department = "finance";

select emp_name,city,department
from employees
where city in
(select city
from employees
where department = "finance");

select salary 
from employees 
where department = "hr";

select emp_name,salary,department
from employees 
where salary > any
(select salary 
from employees 
where department = "hr")
order by salary;

select emp_name,salary,department
from employees 
where salary > all
(select salary 
from employees 
where department = "hr")
order by salary;

select department,round(avg(salary))
from employees 
group by department;

select *
from (select department,round(avg(salary)) as avg_salary
from employees 
group by department) as T
where avg_salary > 70000;

select *
from (select department,round(avg(salary)) as avg_salary
from employees 
group by department
having avg_salary > 70000
order by avg_salary) as T;