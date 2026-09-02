 create database restaunrantdb

 use restaunrantdb 

 create table customers (

 cusmtomers_id int primary key,
 name varchar (50),
 age int,
 address varchar (50)
 );

 insert into customers 
 values
 (1,'riya',22,'ahmedabad'),
 (2,'rohan',23,'bombay'),
 (3,'hiya',24,'jaipur'),
 (4,'het',25,'surat');

 select *
 from customers


 create table orders (
order_id int,
item varchar(50),
customers_id int,
amount int
);

insert into orders(order_id,item,customers_id,amount)
values
(01,'pizza', 1,230),
(02,'dosa',2,180),
(03,'wrap',5,250),
(04,'burger',7,270);

select* 
from orders;

select* 
from customers
join orders
on customers.cusmtomers_id = orders.customers_id;

select *
from customers
left join orders
on customers.cusmtomers_id = orders.customers_id;

select *
from customers
right join orders
on customers.cusmtomers_id = orders.customers_id;

select *
from customers
left join orders
on customers.cusmtomers_id = orders.customers_id;

select *
from customers
full join orders
on customers.cusmtomers_id = orders.customers_id;


