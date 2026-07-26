use siddu;
select * from ecommerce_data;

select customer_name,sales,
case
when sales>80000 then "Platinum"
when sales>50000 then "Gold"
when sales>30000 then "Bronze"
when sales>10000 then "Silver"
else
"no regular"
end as customer_type
from ecommerce_data
order by sales desc;

select category,
round(sum(sales)) as total_sales
from ecommerce_data
group by category;

select
round(sum(case when category="Electronics" then sales else 0 end)) as ELECTRONICS_SALES,
round(sum(case when category="Home appliances" then sales else 0 end)) as HOME_APPLIANCES_SALES,
round(sum(case when category="fashion" then sales else 0 end)) as Fashion_SALES,
round(sum(case when category="furniture" then sales else 0 end)) as furniture_SALES

from ecommerce_data;
select
round(sum(case when category="electronics" then 1 else 0 end)) as no_of_orders,
round(sum(case when category="home appliances" then 1 else 0 end)) as no_of_orders,
round(sum(case when category="fashion" then 1 else 0 end)) as no_of_orders,
round(sum(case when category="furniture" then 1 else 0 end)) as no_of_orders
from ecommerce_data;

select shipping_days,
case
when shipping_days>5 then"Late_Delivery"
when shipping_days>3 then "Moderate_Delivery"
else
"Regular"
end as delivery_type
from ecommerce_data
order by shipping_days desc;

select payment_mode,
case
when payment_mode = "card" then "online"
when payment_mode = "upi" then "online"
when payment_mode = "cash" then "offline"
else
"irregular"
end as payment_type
from ecommerce_data
order by payment_mode desc;

select distinct region from ecommerce_data;

select region,shipping_days,
case
when region="north" and shipping_days>3 then "Regular"
when region="south" and shipping_days>3 then "premium"
else
"standard delivery"
end as region_type
from ecommerce_data
order by region,shipping_days;

select 
case
when sales>80000 then "Platinum"
when sales>50000 then "Gold"
when sales>30000 then "Bronze"
when sales>10000 then "Silver"
else
"no regular"
end as customer_type,
count(*) as no_of_customers
from ecommerce_data
group by  customer_type
order by no_of_customers desc;

select payment_mode,
case
when payment_mode = "card" then "online"
when payment_mode = "upi" then "online"
when payment_mode = "cash" then "offline"
else
"irregular"
end as payment_type,
count(*) as no_of_payments
from ecommerce_data
group by payment_mode,payment_type
order by no_of_payments desc;

select 
round(sum(case when order_status = "delivered" then 1 else 0 end)) as delivered_satus,
round(sum(case when order_status = "cancelled" then 1 else 0 end)) as cancelled_satus,
round(sum(case when order_status = "returned" then 1 else 0 end)) as returned_satus
from ecommerce_data;


