CREATE TABLE employees_2023 (
    emp_id INT,
    emp_name VARCHAR(50)
);
 
CREATE TABLE employees_2024 (
    emp_id INT,
    emp_name VARCHAR(50)
);
 
INSERT INTO employees_2023 VALUES
(1, 'Arun'),
(2, 'Bala'),
(3, 'Chitra');
 
INSERT INTO employees_2024 VALUES
(2, 'Bala'),
(3, 'Chitra'),
(4, 'Divya');
 
-- Intersect Returns only common rows from both queries.
 
select e1.emp_id, e1.emp_name
from employees_2023 e1
inner join employees_2024 e2
ON e1.emp_id = e2.emp_id;
 
select * from employees_2023;
 
select * from employees_2024;
 
-- Combines rows from both queries and removes duplicates.
 
select emp_id , emp_name from employees_2023
UNION
select emp_id , emp_name from employees_2024;
 
-- UNION ALL (keeps duplicates)
 
select emp_id , emp_name from employees_2023
UNION ALL
select emp_id , emp_name from employees_2024;
 
-- except - Returns rows from the first table only, excluding common rows.
 
select e1.emp_id, e1.emp_name
from employees_2023 e1
left join employees_2024 e2
ON e1.emp_id = e2.emp_id
where e2.emp_id is null;
 
 