use siddu;
SELECT * from new_orders;
alter table new_orders
add column sales decimal(10,2);

set sql_safe_updates = 0;
update new_orders
set sales = (unit_price)*(quantity);
SELECT * from new_orders;

select customer_name,sales
from new_orders
where sales between 50000 and 75000;

select customer_name
from new_orders
where customer_name like ("N%");

select customer_name
from new_orders
where customer_name like ("%HA");

select customer_name
from new_orders
where customer_name like ("%E%");

select customer_name
from new_orders
where customer_name like ("_E%");

select customer_name
from new_orders
where customer_name like ("__E%");

select customer_name,city
from new_orders
where city = "Hyedrabad" or city="Chennai" or city="Delhi";

select customer_name,city
from new_orders
where city in ("hyderabad","chennai","delhi","bangalore");

select customer_name,city
from new_orders
where city not in ("hyderabad","chennai","delhi","bangalore");

select round(sum(sales)) as Total_Sales,
round(avg(sales)) as Avg_Sales,
round(min(sales)) as Min_Sales,
round(max(sales)) as Max_Sales,
round(count(sales)) as Total_Orders
from new_orders;

select city, sum(sales) as Total_Sales,
round(avg(sales)) as Avg_sales
from new_orders
group by city;

select city, product_name,
sum(sales) as Total_sales, count(sales) as Total_Orders
from new_orders
group by city,product_name
order by city desc;

select city,
count(customer_name) as Total_Orders
from new_orders
group by city
having count(customer_name)>3;

select customer_name,
sum(sales) as Total_Sales
from new_orders
group by customer_name
having sum(sales)>50000;