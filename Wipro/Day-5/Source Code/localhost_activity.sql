CREATE DATABASE companydb;
USE companydb;
 
 
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT
);
 
INSERT INTO employees VALUES
(1, 'Amit', 50000),
(2, 'Ravi', 45000),
(3, 'Neha', 60000);
 
CREATE USER 'testuser'@'localhost' IDENTIFIED BY 'test123';
 
SELECT user, host FROM mysql.user;
 
GRANT SELECT
ON companydb.employees
TO 'testuser'@'localhost';
 
GRANT INSERT, UPDATE
ON companydb.employees
TO 'testuser'@'localhost';
 
GRANT ALL PRIVILEGES
ON companydb.*
TO 'testuser'@'localhost';
 
FLUSH PRIVILEGES;
 
SHOW GRANTS FOR 'testuser'@'localhost';
 
 
REVOKE UPDATE
ON companydb.employees
FROM 'testuser'@'localhost';
 
REVOKE ALL PRIVILEGES
ON companydb. * FROM 'testuser'@'localhost';
 
FLUSH PRIVILEGES;
 
DROP USER 'testuser'@'localhost';
 