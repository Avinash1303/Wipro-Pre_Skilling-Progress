use labsession;

CREATE TABLE customers (

    customer_id INT PRIMARY KEY,

    customer_name VARCHAR(50),

    city VARCHAR(30),

    status VARCHAR(20)

);
 
CREATE TABLE orders (

    order_id INT PRIMARY KEY,

    customer_id INT,

    order_date DATE,

    order_amount INT

);
 
CREATE TABLE payments (

    payment_id INT PRIMARY KEY,

    customer_id INT,

    payment_date DATE,

    amount INT

);
 
 
INSERT INTO customers VALUES

(1, 'Amit', 'Delhi', 'Active'),

(2, 'Bala', 'Chennai', 'Active'),

(3, 'Charan', 'Mumbai', 'Inactive'),

(4, 'Deepa', 'Delhi', 'Active'),

(5, 'Esha', 'Mumbai', 'Active');
 
INSERT INTO orders VALUES

(101, 1, '2024-01-05', 5000),

(102, 1, '2024-02-10', 7000),

(103, 2, '2024-01-15', 3000),

(104, 2, '2024-03-20', 8000),

(105, 4, '2024-02-25', 6000);
 
INSERT INTO payments VALUES

(201, 1, '2024-01-07', 5000),

(202, 1, '2024-02-12', 4000),

(203, 2, '2024-01-17', 3000),

(204, 4, '2024-03-01', 6000);
 
Customers who have placed more orders than the average number of orders per customer

SELECT customer_id, customer_name
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
    GROUP BY customer_id
    HAVING COUNT(*) >
    (
        SELECT COUNT(*) / COUNT(DISTINCT customer_id)
        FROM orders
    )
);



Customers whose total order amount is greater than the average order amount of all customers

SELECT c.customer_id, c.customer_name
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING SUM(o.order_amount) >
(
    SELECT AVG(order_amount)
    FROM orders
);

Customers who live in cities where at least one inactive customer exists

SELECT DISTINCT c.customer_id, c.customer_name, c.city
FROM customers c
WHERE c.city IN (
    SELECT city
    FROM customers
    WHERE status = 'Inactive'
);

Customers who have never made any payment

SELECT c.customer_id, c.customer_name
FROM customers c
LEFT JOIN payments p ON c.customer_id = p.customer_id
WHERE p.payment_id IS NULL;

Customers whose total payments are less than their total order amount

SELECT customer_id
FROM customers
GROUP BY customer_id
HAVING
  (SELECT IFNULL(SUM(amount),0) FROM payments p WHERE p.customer_id = customers.customer_id)
<
  (SELECT IFNULL(SUM(order_amount),0) FROM orders o WHERE o.customer_id = customers.customer_id);

Customers who have made more payments than orders

SELECT c.customer_id, c.customer_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN payments p ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(DISTINCT p.payment_id) > COUNT(DISTINCT o.order_id);

Customers who have only one order

SELECT c.customer_id, c.customer_name
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(o.order_id) = 1;

Customers whose order amount is higher than at least one order placed by another customer in the same city

SELECT DISTINCT c.customer_id, c.customer_name
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_amount >
(
    SELECT MIN(o2.order_amount)
    FROM customers c2
    JOIN orders o2 ON c2.customer_id = o2.customer_id
    WHERE c2.city = c.city
      AND c2.customer_id <> c.customer_id
);


Customers who have not placed any orders but have made payments

 SELECT c.customer_id, c.customer_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON c.customer_id = p.customer_id
WHERE o.order_id IS NULL;
