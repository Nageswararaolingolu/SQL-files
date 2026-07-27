use pda_90;
CREATE TABLE new_Departments (
    Dept_ID VARCHAR(5) ,
    Department VARCHAR(50) 
    
);

INSERT INTO new_Departments
VALUES
('D1','HR'),
('D2','Finance'),
('D4','IT'),
('D6','Marketing');

CREATE TABLE Employees (
    Emp_ID INT ,
    Employee VARCHAR(50) ,
    Dept_ID VARCHAR(5)
);

INSERT INTO Employees
VALUES
(101,'Rahul','D1'),
(102,'Priya','D2'),
(103,'Amit','D3'),
(104,'Sneha','D4'),
(105,'Kiran','D5');

select * from new_departments;
select * from employees;

select emp_id,employee,d.dept_id,department
from employees E 
inner join new_departments D 
on E.dept_id = D.dept_id;

select emp_id,employee,E.dept_id,department
from employees E 
left join new_departments D 
on E.dept_id = D.dept_id;

select emp_id,employee,E.dept_id,department
from employees E 
right join new_departments D 
on E.dept_id = D.dept_id;

select emp_id,employee,E.dept_id,department
from employees E 
left join new_departments D 
on E.dept_id = D.dept_id
union
select emp_id,employee,E.dept_id,department
from employees E 
right join new_departments D 
on E.dept_id = D.dept_id;