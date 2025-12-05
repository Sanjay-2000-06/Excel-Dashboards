create database pizza_db;
use pizza_db;
select * from pizza_sales;

#Total revenue
select sum(total_price) Total_revenue from pizza_sales;

#Average order value
select sum(total_price)/count(distinct order_id) Avg_order_value
from pizza_sales;

#Total pizza sold
select sum(quantity) Total_pizza_sold from pizza_sales;

#Total orders
select count(distinct order_id) Total_orders from pizza_sales;

#Avg pizza per order
select sum(quantity)/count(distinct order_id) Avg_pizza_per_order 
from pizza_sales;

#updating the datatype of order_date from txt to date format
describe pizza_sales;
update pizza_sales set order_date = str_to_date(order_date,"%d-%m-%Y");
alter table pizza_sales modify column order_date date;

#Daily trends for total orders
select dayname(order_date)  order_day,
       count(distinct order_id)  total_orders
from pizza_sales
group by order_day;

#updating the datatype of order_time from txt to datetime format
update pizza_sales set order_time = str_to_date(order_time,'%Y-%m-%d%H:%i:%s');
alter table pizza_sales modify column order_time datetime;
#Hourly trend for total orders
select hour(order_time) order_hours ,
       count(distinct order_id)  total_orders
from pizza_sales
group by hour(order_time)
order by hour(order_time);


#percentage of sales by pizza category
select pizza_category,sum(total_price) total_revenue,
sum(total_price)*100/ (select sum(total_price) from pizza_sales ) pct
from pizza_sales
#where month(order_date) =1
group by pizza_category;

#Percentage of sales by pizza size
select pizza_size,sum(total_price) total_revenue,
sum(total_price)*100/ (select sum(total_price) from pizza_sales) pct
from pizza_sales
group by pizza_size;

#Total pizza sold by pizza category
select pizza_category,sum(quantity) Total_pizza_sold
from pizza_sales
group by pizza_category;

#Top 5 best sellers by total pizza sold
select pizza_name,sum(quantity) Total_pizza_sold
from pizza_sales
group by pizza_name
order by Total_pizza_sold desc
limit 5;

#Bottom 5 worst sellers by total pizza sold
select pizza_name,sum(quantity) Total_pizza_sold
from pizza_sales
group by pizza_name
order by Total_pizza_sold 
limit 5;














