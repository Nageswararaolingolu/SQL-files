use siddu;

select curdate() as crdatee;
select * from ecommerce_data;
select current_date() as curdatee;
select current_timestamp() as curnttmstmp;
select current_time() as curntime;

select * from ecommerce_data;

select day("2026-01-01") as dayyy,
dayname("2026-01-01") as dayname,
month("2026-01-01") as monthh,
monthname("2026-01-01") as monthnamee,
dayofweek("2026-01-01") as dayofweekk;

select date_sub("2026-07-27", interval 5 day),
date_sub("2026-07-27", interval 5 month),
date_sub("2026-01-01", interval 5 year);

select str_to_date("01-01-2026", "%d-%m-%Y") as datee,
str_to_date("01/01/2026","%d/%m/%Y") as datee,
str_to_date("01-01-25","%d-%m-%y") as datee;

update ecommerce_data
set order_date = str_to_date(order_date,"%d-%m-%Y");
set sql_safe_updates=0;

alter table ecommerce_data
modify order_date date;
desc ecommerce_data;

select month(order_date) as monthh,
round(sum(sales)) as total_sales
from ecommerce_data
group by month(order_date);

select date_format(order_date,"%b") as month_name,
round(sum(sales)) as total_sales
from ecommerce_data
group by date_format(order_date,"%b");

select date_format(order_date,"%b-%Y") as yearr,
round(sum(sales)) as total_sales
from ecommerce_data
group by date_format(order_date,"%b-%Y");