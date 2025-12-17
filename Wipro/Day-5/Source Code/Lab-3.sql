CREATE DATABASE customerDB;
USE customerDB;

CREATE TABLE customer(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(50),
    city VARCHAR(30),
    phone VARCHAR(15)
);

INSERT INTO customer VALUES
(1, 'Avinash', 'avinash@gmail.com', 'Chennai', '9876543210'),
(2, 'Yuva', 'yuva@gmail.com', 'Chennai', '9123456780'),
(3, 'AK', 'AKKkk@gmail.com', 'Bangalore', '9988776655'),
(4, 'AY', 'AYAK@gmail.com', 'Hyderabad', '9012345678');

select * from customer

SELECT customer_name, email
FROM customer
WHERE city = 'Chennai';

drop table customers;

---------------------------------------------------

CREATE DATABASE orderDB;
USE orderDB;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    amount INT
);


START TRANSACTION;

INSERT INTO orders VALUES (101, 'Amit', 5000);
SAVEPOINT sp1;

INSERT INTO orders VALUES (102, 'Neha', 8000);
SAVEPOINT sp2;

INSERT INTO orders VALUES (103, 'Ravi', 12000);
SAVEPOINT sp3;

select * from orders;

Rollback to sp2

commit;

SELECT * FROM orders;

