CREATE DATABASE companyDB2;

USE companyDB2;
 
CREATE TABLE employees (

    emp_id INT,

    emp_name VARCHAR(50),

    dept VARCHAR(20),

    salary INT

);
 
select * from employees;
 
INSERT INTO employees VALUES

(1, 'Amit', 'HR', 30000),

(2, 'Ravi', 'IT', 50000),

(3, 'Neha', 'IT', 70000),

(4, 'Meena', 'HR', 40000),

(5, 'Arjun', 'Finance', 60000);
 
select COUNT(*) as total_employees

from employees;
 
select COUNT(*) as IT_COUNT

from employees

where dept = 'IT';
 
select SUM(salary) as total_salary

from employees;
 
select dept, SUM(salary) as dept_salary

from employees

GROUP BY dept;
 
select AVG(salary) as dept_salary

from employees;
 
 
select dept, AVG(salary) as avg_salary

from employees

GROUP BY dept;


select MIN(salary) as lowest_salary

from employees;
 


select MAX(salary) as lowest_salary

from employees;
 
select dept, MAX(salary) as max_salary

from employees

GROUP BY dept;

 