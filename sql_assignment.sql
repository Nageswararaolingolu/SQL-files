use pda_90;
CREATE TABLE customer_orders(
Order_ID INT,
Customer_Name VARCHAR(30),
Product VARCHAR(30),
Category VARCHAR(30),
Order_Date DATE,
Quantity INT,
Sales DECIMAL(10,2)
);

INSERT INTO customer_orders VALUES
(101,'Rahul','Laptop','Electronics','2024-01-05',1,65000),
(102,'Rahul','Mouse','Electronics','2024-01-05',2,1200),
(103,'Priya','Laptop','Electronics','2024-01-10',1,65000),
(104,'Priya','Keyboard','Electronics','2024-01-10',1,2500),
(105,'Arjun','Shoes','Fashion','2024-02-15',2,4000),
(106,'Sneha','Shoes','Fashion','2024-02-18',1,2000),
(107,'Sneha','Bag','Fashion','2024-02-18',1,2500),
(108,'Kiran','Laptop','Electronics','2024-03-01',1,65000),
(109,'Kiran','Laptop','Electronics','2024-03-15',1,65000),
(110,'Anjali','TV','Electronics','2024-03-20',1,45000),
(111,'Rahul','TV','Electronics','2024-04-01',1,45000),
(112,'Priya','Mouse','Electronics','2024-04-05',1,600);

select customer_name
from customer_orders
where product = "laptop";

select customer_name
from customer_orders
where product = "shoes";

select customer_name,count(*)
from customer_orders
where product = "laptop"
group by customer_name
having count(*)>1;

select product,count(*)
from customer_orders
group by product
having count(product)>2;

select customer_name,
round(sum(sales)) as total_sales
from customer_orders
group by customer_name
having round(sum(sales)) > 100000
order by round(sum(sales)) desc;

select product,count(*)
from customer_orders
group by product
having count(product)>2;

select product,
round(sum(sales)) as total_sales
from customer_orders
group by product
having round(sum(sales))>50000
order by round(sum(sales)) desc;

select customer_name
from customer_orders
where  monthname(order_date)="january";

select month(order_date) as monthly_sales,
round(sum(sales)) as total_sales
from customer_orders
group by monthly_sales;

select customer_name
from customer_orders
where quarter(order_date)=1
group by customer_name;

select year(order_date) as yearly_sales,
round(sum(sales)) as total_sales
from customer_orders
group by yearly_sales;

select order_id, weekday(order_date) as weekly_orders
from customer_orders
group by order_id, weekly_orders;

select sales,dayname(order_date)
from customer_orders
where dayname(order_date)="monday";

select sales, 
case
 when sales>="60000" then "high"
 when sales>="20000" then "medium"
 else "low"
 end as categorized_sales
from customer_orders
group by sales 
order by categorized_sales;

select customer_name,sum(sales),
case
when sum(sales)>=100000 then "premium"
when sum(sales)>=50000 then "gold"
else "silver"
end as categorized_sales
from customer_orders
group by customer_name;

select customer_name,product
from customer_orders
group by customer_name,product
having count(product)>1;

select product,
sum(sales) as total_sales
from customer_orders
group by product
order by total_sales desc
limit 1;

select monthname(order_date) as month_name,
sum(sales) as total_sales
from customer_orders
group by month_name
order by month_name,total_sales desc
limit 1;

select customer_name
from customer_orders
where day(order_date)=1;
