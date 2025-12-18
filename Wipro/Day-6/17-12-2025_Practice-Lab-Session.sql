
 create database labsession;
 use labsession;
 
 CREATE TABLE salesman (
    salesman_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(30),
    commission DECIMAL(4,2)
);

CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    cust_name VARCHAR(50),
    city VARCHAR(30),
    salesman_id INT
);

INSERT INTO salesman VALUES
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11);

INSERT INTO customer VALUES
(3002, 'Nick Rimando', 'New York', 5001),
(3007, 'Brad Davis', 'New York', 5001),
(3008, 'Julian Green', 'London', 5005),
(3004, 'Fabian Johnson', 'Paris', 5002);

SELECT 
    c.cust_name,
    c.city,
    s.name AS salesman,
    s.commission
FROM customer c
inner JOIN 
salesman s
ON c.salesman_id = s.salesman_id;


SELECT 
    s.name AS salesman,
    c.cust_name,
    c.city
FROM salesman s
JOIN customer c
ON s.salesman_id = c.salesman_id
WHERE s.city = c.city;

Task:-
Salesman-Customer Representation
 
From the following tables write a SQL query to find the salesperson(s) and the customer(s) he represents. Return Customer Name, city, Salesman, commission.
 
Sample table: customer
 
customer_id |   cust_name    |    city    | grade | salesman_id 

-------------+----------------+------------+-------+-------------

        3002 | Nick Rimando   | New York   |   100 |        5001

        3007 | Brad Davis     | New York   |   200 |        5001

        3005 | Graham Zusi    | California |   200 |        5002

        3008 | Julian Green   | London     |   300 |        5002

        3004 | Fabian Johnson | Paris      |   300 |        5006

        3009 | Geoff Cameron  | Berlin     |   100 |        5003

        3003 | Jozy Altidor   | Moscow     |   200 |        5007

        3001 | Brad Guzan     | London     |       |        5005

Sample table: salesman
 
salesman_id |    name    |   city   | commission 

-------------+------------+----------+------------

        5001 | James Hoog | New York |       0.15

        5002 | Nail Knite | Paris    |       0.13

        5005 | Pit Alex   | London   |       0.1
 
Sales & City Matching
 
From the following tables write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman, cust_name and city.
 
Sample table: salesman
 
salesman_id |    name    |   city   | commission 

-------------+------------+----------+------------

        5001 | James Hoog | New York |       0.15

        5002 | Nail Knite | Paris    |       0.13

        5005 | Pit Alex   | London   |       0.11

        5006 | Mc Lyon    | Paris    |       0.14

        5007 | Paul Adam  | Rome     |       0.13

        5003 | Lauson Hen | San Jose |       0.12

Sample table: customer
 
customer_id |   cust_name    |    city    | grade | salesman_id 

-------------+----------------+------------+-------+-------------

        3002 | Nick Rimando   | New York   |   100 |        5001

        3007 | Brad Davis     | New York   |   200 |        5001

        3005 | Graham Zusi    | California |   200 |        5002

        3008 | Julian Green   | London     |   300 |        5002

        3004 | Fabian Johnson | Paris      |   300 |        5006

        3009 | Geoff Cameron  | Berlin     |   100 |        5003

        3003 | Jozy Altidor   | Moscow     |   200 |        5007

        3001 | Brad Guzan     | London     |       |        5005
 
 