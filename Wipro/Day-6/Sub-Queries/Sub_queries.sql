use wiprodb1612;
 
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);
 
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT
);
 
INSERT INTO departments VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');
 
INSERT INTO employees VALUES
(101, 'Arun', 50000, 1),
(102, 'Bala', 60000, 2),
(103, 'Chitra', 55000, 2),
(104, 'Divya', 45000, 1),
(105, 'Eshan', 70000, 3);
 
 
select * from departments;
 
select * from employees;
 
-- employee with the highest salary - returning one row  - scalar sub query
 
select emp_name , salary
from employees
where salary = (
select MAX(salary)
from employees
);
 
-- Employees Working in IT Department - return multiple rows
 
select emp_name ,dept_id
from employees
where dept_id  = (
    select dept_id 
    from departments
    where dept_name = 'IT'
 
);
-- Employees in HR or Finance - IN clause
 
select emp_name
from employees
where dept_id  IN (
 
	select dept_id 
    from departments
    where dept_name IN ('HR' , 'Finance')
 
);
 
-- average salary using group by clause  avearge salary per dept
 
select dept_id, AVG(salary) as avgsalary
from employees
group by dept_id;
 
 
select dept_id, salary
    from employees