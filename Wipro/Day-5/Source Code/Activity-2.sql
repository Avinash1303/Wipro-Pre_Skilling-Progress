CREATE DATABASE bankdb1;
USE bankdb1;
 
CREATE TABLE accounts (
    acc_id INT PRIMARY KEY,
    acc_name VARCHAR(50),
    balance INT
);
 
INSERT INTO accounts VALUES
(101, 'Amit', 10000),
(102, 'Ravi', 8000),
(103, 'Neha', 12000);
 
SELECT * FROM accounts;
 
START TRANSACTION;
 
UPDATE accounts
SET balance = balance - 2000
where acc_id = 101;
 
 
SET autocommit = 0;
 
SAVEPOINT sp1;
 
UPDATE accounts
SET balance = balance +  4000
where acc_id = 102;
 
 
ROLLBACK To sp1;
 
SET autocommit = 1;
commit;
 
SELECT * FROM accounts;
 