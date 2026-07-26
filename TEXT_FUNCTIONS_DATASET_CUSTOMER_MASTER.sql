use siddu;

CREATE TABLE Customer_Master (
    Customer_ID INT,
    Customer_Name VARCHAR(50),
    Email VARCHAR(80),
    Product_Code VARCHAR(20),
    Employee_ID VARCHAR(20),
    Tracking_No VARCHAR(25),
    Address VARCHAR(100),
    City VARCHAR(30),
    State VARCHAR(30),
    Product VARCHAR(40),
    Mobile VARCHAR(15),
    Gender VARCHAR(10)
);

INSERT INTO Customer_Master VALUES
(101,'  Rahul Sharma  ','rahul@gmail.com',
'ELE-LAP-001',
'EMP-HYD-101',
'IND-DEL-987654',
'Hyderabad, Telangana',
'Hyderabad','Telangana',
'Laptop','9876543210','Male'),

(102,'PRIYA REDDY','PRIYA@GMAIL.COM',
'ELE-MOB-002',
'EMP-VSK-102',
'IND-BLR-987655',
'Visakhapatnam, Andhra Pradesh',
'Visakhapatnam','Andhra Pradesh',
'Mobile','9123456789','Female'),

(103,'anil kumar','anil@yahoo.com',
'ELE-HDP-003',
'EMP-BLR-103',
'IND-HYD-987656',
'Bangalore, Karnataka',
'Bangalore','Karnataka',
'Headphones','9988776655','Male'),

(104,'SNEHA   VERMA','SNEHA@YAHOO.COM',
'ELE-KBD-004',
'EMP-MUM-104',
'IND-CHE-987657',
'Mumbai, Maharashtra',
'Mumbai','Maharashtra',
'Keyboard','9011223344','Female'),

(105,'Arjun Mehta','arjun@gmail.com',
'ELE-MON-005',
'EMP-DEL-105',
'IND-KOL-987658',
'Delhi, Delhi',
'Delhi','Delhi',
'Monitor','9876123456','Male'),

(106,'Meena Joshi','MEENA@GMAIL.COM',
'ELE-MSE-006',
'EMP-PUN-106',
'IND-PUN-987659',
'Pune, Maharashtra',
'Pune','Maharashtra',
'Mouse','9000011111','Female'),

(107,'RAVI KUMAR','ravi@gmail.com',
'ELE-PRN-007',
'EMP-CHE-107',
'IND-MUM-987660',
'Chennai, Tamil Nadu',
'Chennai','Tamil Nadu',
'Printer','9555544444','Male'),

(108,'pooja singh','pooja@gmail.com',
'ELE-TAB-008',
'EMP-LKO-108',
'IND-LKO-987661',
'Lucknow, Uttar Pradesh',
'Lucknow','Uttar Pradesh',
'Tablet','9444433333','Female'),

(109,' Kiran Rao ','kiran@gmail.com',
'ELE-LAP-009',
'EMP-HYD-109',
'IND-HYD-987662',
'Hyderabad, Telangana',
'Hyderabad','Telangana',
'Laptop','9333322222','Male'),

(110,'Vikram Patel','vikram@hotmail.com',
'ELE-CAM-010',
'EMP-AMD-110',
'IND-AMD-987663',
'Ahmedabad, Gujarat',
'Ahmedabad','Gujarat',
'Camera','9222211111','Male');

select customer_name,
trim(customer_name),
ltrim(customer_name),
rtrim(customer_name)
from customer_master;

select customer_name,
upper(customer_name),
lower(customer_name)
from customer_master;

select customer_name,
trim(upper(customer_name)),
trim(lower(customer_name))
from customer_master;

select customer_name,
left(customer_name,3) as left_customer,
right(customer_name,3) as right_customer,
length(customer_name) as length_customer
from customer_master;

select customer_id,city,
concat(customer_id," - ",city) as full_name
from customer_master;

select customer_id,city,mobile,
concat_ws(" - ",customer_id,city,mobile) as full_name
from customer_master;

select mobile,
lpad(mobile,20,"*"),
rpad(mobile,20,"*")
from customer_master;

select product_code,
replace(product_code,"-","&")
from customer_master;