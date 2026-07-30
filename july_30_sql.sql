create database windows_function;
use windows_function;
select * from sales_data;

select customer_name,sales,
sum(sales) over (partition by customer_name) as sum_sales,
avg(sales) over (partition by customer_name) as avg_sales,
min(sales) over (partition by customer_name) as min_sales,
max(sales) over (partition by customer_name) as max_values,
count(sales) over (partition by customer_name) as no_of_sales
from sales_data;

select customer_name,sales,
row_number() over ( order by sales desc) as row_nm,
rank() over ( order by sales desc) as rnk,
dense_rank() over ( order by sales desc) as dns_rnk
from sales_data;

