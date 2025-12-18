CREATE DATABASE joinLabDB;

USE joinLabDB;
 
 
CREATE TABLE customers (

    customer_id INT PRIMARY KEY,

    customer_name VARCHAR(50),

    city VARCHAR(30)

);
 
 
CREATE TABLE orders (

    order_id INT PRIMARY KEY,

    customer_id INT,

    order_amount INT,

    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)

);
 
 
INSERT INTO customers VALUES

(1, 'Amit', 'Delhi'),

(2, 'Ravi', 'Mumbai'),

(3, 'Neha', 'Chennai'),

(4, 'Meena', 'Bangalore');
 
INSERT INTO customers VALUES(5, 'John', 'Hyderabad');
 
select * from customers;
 
INSERT INTO orders VALUES

(101, 1, 5000),

(102, 2, 8000),

(103, 3, 6000),

(104, 4, 4000);
 
 
select * from orders;
 
-- Inner join
 
select c.customer_name , o.order_amount , c.customer_id

from customers c

INNER JOIN orders o

on c.customer_id = o.customer_id;
 
 
-- right join
 
select c.customer_name , o.order_amount , c.customer_id , o.order_id

from customers c

RIGHT JOIN orders o

on c.customer_id = o.customer_id;
 
-- left join
 
 
select c.customer_name , o.order_amount , c.customer_id , o.order_id

from customers c

LEFT JOIN orders o

on c.customer_id = o.customer_id;
 
 Full JOIN-
 
select c.customer_name , o.order_amount , c.customer_id , o.order_id

from customers c

RIGHT JOIN orders o

on c.customer_id = o.customer_id
 
UNION
 
select c.customer_name , o.order_amount , c.customer_id , o.order_id

from customers c

LEFT JOIN orders o

on c.customer_id = o.customer_id;

 CROSS JOIN-
 
select c.customer_name , o.order_id

from customers c

CROSS JOIN orders o;
----------------------------------------------------------



 