CREATE DATABASE SalesAnalyticsDB;

use SalesAnalyticsDB;

create table customers (
id int primary key,
user_name varchar(50) not null,
age int,
country varchar(50),
amount_spend int
);

insert into customers ( id,user_name,age,country,amount_spend)
values
(1, 'rahul',25,'india',15000),
(2, 'priya',28,'usa',22000),
(3, 'neha',32, 'uk', 50000),
(4, 'pinky',49,'canada',45000),
(5, 'rohan',29,'australia',30000);

select* from customers

select user_name,age,country
from customers

select user_name,country,amount_spend
from customers

select*
from customers
where amount_spend > 50000

select*
from customers
where age < 30 

select*
from customers
where country = 'india';

select*
from customers
where amount_spend < 20000

select age, amount_spend from customers
where age < 30 and amount_spend > 20000;

select * from customers;

select *
from customers 
where country = 'india' and amount_spend > 10000;

select *
from customers
where country = 'india' or country = 'usa';

select *
from customers
where country = 'india' or country = 'usa' and amount_spend > 20000;

select *
from customers
where not country = 'india';

select *
from customers
order by amount_spend desc;

select *
from customers
order by amount_spend ASC;

select user_name,age,amount_spend,country
from customers
order by age asc;

select*
from customers
where age between 25 and 40 and amount_spend > 20000 and country = 'india' or country = 'usa'
order by amount_spend desc;

select * from customers
where age>=30 and amount_spend>40000 and country!='India' 
order by amount_spend desc;