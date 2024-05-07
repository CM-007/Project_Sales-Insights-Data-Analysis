use sales;
drop database sales;
show tables;
select * from customers;
select * from date;
select * from markets;
select * from products;
select * from transactions limit 150000;
select * from transactions;
select count(*) from transactions;
select count(*) from customers;
select count(*) from markets;

-- fetch records for chennai
select * from transactions where market_code = 'Mark001';
select count(*) from transactions where market_code = 'Mark001';

-- fetch records whos currency is USD
select * from transactions where currency = 'USD';
select * from transactions where year(order_date) = 2020;

select * from date;

-- Record for year 2020
select * from transactions as t inner join
date as d
on t.order_date = d.date
where d.year = 2020;

-- Total sales in year 2020
select sum(t.sales_amount) as Total from transactions as t inner join
date as d
on t.order_date = d.date
where d.year = 2020;

-- total sales in year 2019
select sum(t.sales_amount) as Total from transactions as t inner join
date as d
on t.order_date = d.date
where d.year = 2019;

-- Total sales in year 2020 and market is chennai
select sum(t.sales_amount) as Total from transactions as t inner join
date as d
on t.order_date = d.date
where year = 2020 and market_code = 'Mark001';

select distinct( product_code ) from transactions where market_code = 'Mark001';

select distinct currency from transactions;

select count(*) from transactions where currency = 'INR\r';
select count(*) from transactions where currency = 'INR';
select distinct *  from transactions where currency = 'USD\r' or currency = 'USD';
select distinct * from transactions where currency = 'INR\r' or currency = 'INR';


drop database sales;
select sum( sales_amount) from transactions;

SELECT SUM(sales_amount) FROM transactions INNER JOIN date ON 
transactions.order_date=date.date 
where date.year=2020 and 
transactions.currency='INR\r' or transactions.currency = 'USD\r';

SELECT SUM(sales_amount) FROM transactions INNER JOIN date ON 
transactions.order_date=date.date 
where date.year=2020 and monthname(cy_date) = 'January' and
transactions.currency='INR\r' or transactions.currency = 'USD\r';

