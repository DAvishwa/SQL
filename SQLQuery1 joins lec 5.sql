
Create DATABASE JoinPracticeDB;



USE JoinPracticeDB;



-- CREATE CUSTOMERS TABLE

CREATE TABLE Customer
(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    country VARCHAR(50)
);


-- INSERT CUSTOMERS

INSERT INTO Customer
(customer_id, customer_name, city, country)
VALUES
(1, 'Rahul Sharma', 'Ahmedabad', 'India'),
(2, 'Priya Patel', 'Mumbai', 'India'),
(3, 'Amit Shah', 'Delhi', 'India'),
(4, 'Neha Mehta', 'Pune', 'India'),
(5, 'Rohan Desai', 'Surat', 'India'),
(6, 'Karan Joshi', 'Jaipur', 'India'),
(7, 'Sneha Patel', 'Bangalore', 'India'),
(8, 'Vikas Shah', 'Vadodara', 'India'),
(9, 'Anjali Singh', 'Delhi', 'India'),
(10, 'Raj Malhotra', 'Chennai', 'India');

SELECT *
FROM Customer;

CREATE TABLE Orders
(
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(50),
    quantity INT,
    amount DECIMAL(10,2)
);

INSERT INTO Orders
(order_id, customer_id, product_name, quantity, amount)
VALUES
(101, 1, 'Laptop', 1, 55000.00),
(102, 2, 'Mobile', 2, 30000.00),
(103, 3, 'Keyboard', 3, 4500.00),
(104, 4, 'Monitor', 1, 18000.00),
(105, 5, 'Mouse', 5, 2500.00),
(106, 6, 'Printer', 1, 12000.00),
(107, 7, 'Laptop Bag', 2, 3000.00),
(108, 11, 'Tablet', 1, 25000.00),
(109, 12, 'Headphones', 2, 6000.00),
(110, 13, 'Smart Watch', 1, 8000.00);

SELECT *
FROM Orders


--T1
SELECT 
c.customer_id,c.customer_name,c.city,
o.order_id,o.product_name,o.amount
from customer as c
join orders as o
on c.customer_id = o.customer_id;

--T2

SELECT
c.customer_name,c.city,
o.product_name,o.amount
from customer as c
join orders as o
on c.customer_id = o.customer_id;

--T3

SELECT
c.customer_id,c.customer_name,
o.order_id,o.product_name,o.amount
from customer as c
LEFT JOIN Orders AS o
on c.customer_id = o.customer_id;

--T4


SELECT
c.customer_id,c.customer_name,c.city
from customer as c
LEFT JOIN Orders AS o
on c.customer_id = o.customer_id;

--T5

SELECT
c.customer_id,c.customer_name,
o.order_id,o.product_name,o.amount
from customer as c
RIGHT join orders as o
on c.customer_id = o.customer_id;

--T6
SELECT
c.customer_id,
o.order_id, o.product_name,o.amount
from customer as c
RIGHT join orders as o
on c.customer_id = o.customer_id;

--T7

SELECT
c.customer_id,c.customer_name,
o.order_id,o.product_name,o.amount
from customer as c
FULL join orders as o
on c.customer_id = o.customer_id;

--T8
SELECT
c.customer_id,
o.order_id,o.product_name,o.amount
from customer as c
join orders as o
on c.customer_id = o.customer_id
where o.amount>10000;


--T9

SELECT
c.customer_name,c.city,
o.order_id,o.product_name,o.amount
from customer as c
join orders as o
on c.customer_id = o.customer_id
WHERE c.city = 'Delhi';

--t10
select
c.customer_name,
o.quantity,o.product_name,o.amount
from customer as c
join orders as o
on c.customer_id = o.customer_id
where o.quantity>2
order by o.quantity desc;

--T11
SELECT
C.customer_id,
C.customer_name,
SUM(o.amount) as total_amount 
FROM Customer AS c 
left join
Orders as o
on c.customer_id=o.customer_id
group by c.customer_id , c.customer_name;






