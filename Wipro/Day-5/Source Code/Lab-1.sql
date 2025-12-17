Lab session 1
 
 
CREATE DATABASE funcDB;

USE funcDB;
 
CREATE TABLE employees (

    emp_id INT,

    emp_name VARCHAR(50),

    salary INT,

    join_date DATE,

    dept VARCHAR(20)

);
 
INSERT INTO employees VALUES

(1, 'Amit', 30000, '2021-05-10', 'HR'),

(2, 'Ravi', 50000, '2020-03-15', 'IT'),

(3, 'Neha', 70000, '2019-07-20', 'Finance'),

(4, 'Meena', 60000, '2022-01-12', 'IT');
 
SCALAR FUNCTIONS


 1. Display employee names in uppercase
 
SELECT UPPER(emp_name) AS employee_name_upper
FROM employees;

 2. Show employee name and length of name
 
SELECT emp_name, LENGTH(emp_name) AS name_length
FROM employees;

 3. Display current date
SELECT CURRENT_DATE AS today_date;

 4. Calculate years of experience using join date
 
SELECT emp_name,
       TIMESTAMPDIFF(YEAR, join_date, CURDATE()) AS years_of_experience
FROM employees;



   AGGREGATE FUNCTIONS


 5. Count total number of employees
 
SELECT COUNT(*) AS total_employees
FROM employees;

 6. Find average salary
SELECT AVG(salary) AS average_salary
FROM employees;

 7. Display department-wise total salary
SELECT dept,
       SUM(salary) AS total_salary
FROM employees
GROUP BY dept;

 8. Find maximum salary in IT department
SELECT MAX(salary) AS max_salary_IT
FROM employees
WHERE dept = 'IT';


/* =======================
   EXPRESSIONS & CASE
   ======================= */

-- 9. Display salary category using CASE
SELECT emp_name,
       salary,
       CASE
           WHEN salary < 40000 THEN 'Low'
           WHEN salary BETWEEN 40000 AND 60000 THEN 'Medium'
           ELSE 'High'
       END AS salary_category
FROM employees;

-- 10. Show bonus amount using CASE
SELECT emp_name,
       salary,
       CASe
           WHEN salary >= 60000 THEN salary * 0.10
           ELSE salary * 0.05
       END AS bonus_amount
FROM employees;
