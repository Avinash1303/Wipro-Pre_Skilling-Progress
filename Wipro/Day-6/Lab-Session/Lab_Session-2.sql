use labsession;

CREATE TABLE sales (
    sale_id INT,
    customer_id INT,
    product VARCHAR(30),
    category VARCHAR(30),
    sale_amount INT,
    sale_date DATE
);
INSERT INTO sales VALUES
(1, 101, 'Laptop', 'Electronics', 50000, '2024-01-10'),
(2, 101, 'Mouse', 'Electronics', 1500, '2024-01-15'),
(3, 102, 'Chair', 'Furniture', 7000, '2024-02-05'),
(4, 102, 'Table', 'Furniture', 12000, '2024-02-20'),
(5, 103, 'Phone', 'Electronics', 30000, '2024-01-25'),
(6, 104, 'Desk', 'Furniture', 10000, '2024-03-05'),
(7, 101, 'Keyboard', 'Electronics', 3000, '2024-03-10'),
(8, 105, 'Tablet', 'Electronics', 25000, '2024-02-15');
 
Customers who made more than 2 purchases

SELECT customer_id
FROM sales
GROUP BY customer_id
HAVING COUNT(*) > 2;

Products with total sales amount greater than 30,000

SELECT product
FROM sales
GROUP BY product
HAVING SUM(sale_amount) > 30000;

Categories with more than 3 sales transactions

SELECT category
FROM sales
GROUP BY category
HAVING COUNT(*) > 3;

Customers whose average purchase amount is greater than 20,000

SELECT customer_id
FROM sales
GROUP BY customer_id
HAVING AVG(sale_amount) > 20000;

Months having total sales greater than 50,000
 

SELECT MONTHNAME(sale_date) AS month
FROM sales
GROUP BY MONTHNAME(sale_date)
HAVING SUM(sale_amount) > 50000;


Categories where minimum sale amount is greater than 2,000


Customers whose total sales amount is between 20,000 and 80,000