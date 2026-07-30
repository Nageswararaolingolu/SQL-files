create database joins;
use joins;
CREATE TABLE Customers
(
    Customer_ID   VARCHAR(10) ,
    Customer_Name VARCHAR(50) ,
    City          VARCHAR(50)
);
INSERT INTO Customers
VALUES
('C101','Aarav','Hyderabad'),
('C102','Priya','Bangalore'),
('C103','Rahul','Chennai'),
('C104','Sneha','Pune'),
('C105','Kiran','Delhi'),
('C106','Anjali','Mumbai'),
('C107','Varun','Kolkata'),
('C108','Meera','Vizag');


CREATE TABLE Products
(
    Product_ID   VARCHAR(10) ,
    Product_Name VARCHAR(100) ,
    Category     VARCHAR(50)
);

INSERT INTO Products
VALUES
('P101','Vitamin C Serum','Skincare'),
('P102','Face Wash','Skincare'),
('P103','Night Cream','Skincare'),
('P104','Lipstick','Makeup'),
('P105','Compact Powder','Makeup'),
('P106','Sunscreen SPF50','Skincare'),
('P107','Hair Oil','Hair Care'),
('P108','Shampoo','Hair Care'),
('P110','Moisturizer','Skincare');

CREATE TABLE Orders
(
    Order_ID    VARCHAR(10) ,
    Customer_ID VARCHAR(10),
    Product_ID  VARCHAR(10),
    Qty         INT
);

INSERT INTO Orders
VALUES
('O1001','C101','P101',1),
('O1002','C101','P102',1),
('O1003','C101','P103',1),
('O1004','C102','P101',2),
('O1005','C103','P101',1),
('O1006','C103','P102',1),
('O1007','C104','P104',1),
('O1008','C104','P105',1),
('O1009','C105','P101',1),
('O1010','C105','P102',1),
('O1011','C105','P106',1),
('O1012','C106','P107',2),
('O1013','C106','P108',1),
('O1014','C107','P101',1),
('O1015','C107','P104',1),
('O1016','C110','P109',1);

/*
GROUP_CONCAT() in MySQL
GROUP_CONCAT() is an aggregate function that combines multiple row values into a single string. 
It is commonly used with GROUP BY.
SYTAX: GROUP_CONCAT(column_name)
Syntax with Separator: GROUP_CONCAT(column_name SEPARATOR ', ')
Syntax with ORDER BY: GROUP_CONCAT(column_name ORDER BY column_name)
Syntax with DISTINCT: GROUP_CONCAT(DISTINCT column_name)
*/

INSERT INTO Orders
VALUES
('O1017','C101','P101',2),   -- Aarav purchased Vitamin C Serum again
('O1018','C101','P102',1),   -- Aarav purchased Face Wash again

('O1019','C102','P101',1),   -- Priya purchased Vitamin C Serum again
('O1020','C102','P104',2),   -- Priya purchased Lipstick

('O1021','C103','P102',3),   -- Rahul purchased Face Wash again
('O1022','C103','P106',1),   -- Rahul purchased Sunscreen

('O1023','C104','P104',2),   -- Sneha purchased Lipstick again
('O1024','C104','P105',1),   -- Sneha purchased Compact Powder again

('O1025','C105','P101',2),   -- Kiran purchased Vitamin C Serum again
('O1026','C105','P102',2),   -- Kiran purchased Face Wash again

('O1027','C106','P107',1),   -- Anjali purchased Hair Oil again
('O1028','C106','P108',2),   -- Anjali purchased Shampoo again

('O1029','C107','P104',1),   -- Varun purchased Lipstick again
('O1030','C107','P101',3),   -- Varun purchased Vitamin C Serum again

('O1031','C108','P110',1),   -- Meera purchased Moisturizer
('O1032','C108','P101',1),   -- Meera purchased Vitamin C Serum
('O1033','C108','P110',2);   -- Meera purchased Moisturizer again

INSERT INTO Customers
VALUES
('C109','Rohit','Jaipur'),
('C111','Pooja','Lucknow'),
('C112','Vikram','Indore'),
('C113','Neha','Ahmedabad'),
('C114','Manoj','Nagpur');

INSERT INTO Products
VALUES
('P111','Body Lotion','Skincare'),
('P112','Conditioner','Hair Care'),
('P113','Perfume','Fragrance'),
('P114','Face Mask','Skincare'),
('P115','Eye Liner','Makeup');

INSERT INTO Orders
VALUES
('O1034','C115','P101',1),
('O1035','C116','P104',2);

INSERT INTO Orders
VALUES
('O1036','C101','P116',1),
('O1037','C102','P117',2);

INSERT INTO Customers
VALUES
('C115','Nikhil','Surat'),
('C116','Divya','Bhopal'),
('C117','Akash','Mysore'),
('C118','Lavanya','Coimbatore');

INSERT INTO Orders
VALUES

-- Purchased ONLY one product
('O1038','C115','P105',1),

-- Purchased ONLY one product
('O1039','C116','P107',2),

-- Purchased every category EXCEPT Hair Care
('O1040','C117','P101',1),   -- Skincare
('O1041','C117','P104',1),   -- Makeup
('O1042','C117','P106',2),   -- Skincare
('O1043','C117','P105',1),   -- Makeup

-- Purchased all three categories
('O1044','C118','P101',1),   -- Skincare
('O1045','C118','P104',1),   -- Makeup
('O1046','C118','P107',1);   -- Hair Care

INSERT INTO Customers
VALUES
('C119','Ramesh','Warangal'),
('C120','Sita','Nellore'),
('C121','Ajay','Guntur'),
('C122','Deepa','Mangalore'),
('C123','Kavya','Vijayawada');

INSERT INTO Orders
VALUES
-- Purchased ONLY Vitamin C Serum
('O1047','C119','P101',1),
('O1048','C119','P101',2),

-- Purchased ONLY Face Wash
('O1049','C120','P102',1),
('O1050','C120','P102',3),

-- Purchased ONLY Lipstick
('O1051','C121','P104',1),
('O1052','C121','P104',2),

-- Purchased ONLY Hair Oil
('O1053','C122','P107',1),
('O1054','C122','P107',1),

-- Purchased ONLY Compact Powder
('O1055','C123','P105',2),
('O1056','C123','P105',1);


INSERT INTO Customers
VALUES
('C124','Rohan','Hyderabad'),
('C125','Aisha','Bangalore'),
('C126','Manish','Chennai'),
('C127','Keerthi','Pune'),
('C128','Suresh','Mumbai'),
('C129','Nandhini','Vizag');

INSERT INTO Orders
VALUES

-- ===========================================
-- Purchased ONLY Vitamin C Serum & Face Wash
-- ===========================================

('O1057','C124','P101',1),
('O1058','C124','P102',2),

('O1059','C125','P101',2),
('O1060','C125','P102',1),
('O1061','C125','P101',1),   -- Purchased Vitamin C Serum again

('O1062','C126','P102',1),
('O1063','C126','P101',1),
('O1064','C126','P102',2),   -- Purchased Face Wash again


-- ===========================================
-- Purchased Vitamin C Serum + Face Wash
-- + Other Products
-- ===========================================

('O1065','C127','P101',1),
('O1066','C127','P102',1),
('O1067','C127','P104',1),   -- Lipstick
('O1068','C127','P105',1),   -- Compact Powder

('O1069','C128','P101',2),
('O1070','C128','P102',1),
('O1071','C128','P107',1),   -- Hair Oil

('O1072','C129','P101',1),
('O1073','C129','P102',1),
('O1074','C129','P103',1),   -- Night Cream
('O1075','C129','P106',1);   -- Sunscreen



ALTER TABLE Products
ADD COLUMN Category_ID VARCHAR(10);

SET SQL_SAFE_UPDATES=0;
UPDATE Products SET Category_ID = 'CAT1' WHERE Category = 'Skincare';
UPDATE Products SET Category_ID = 'CAT2' WHERE Category = 'Makeup';
UPDATE Products SET Category_ID = 'CAT3' WHERE Category = 'Hair Care';
UPDATE Products SET Category_ID = 'CAT4' WHERE Category = 'Fragrance';

SELECT * FROM PRODUCTS;

CREATE TABLE Categories (
    Category_ID VARCHAR(10),
    Category_Name VARCHAR(50)
);

INSERT INTO Categories VALUES
('CAT1','Skincare'),
('CAT2','Makeup'),
('CAT3','Hair Care'),
('CAT4','Fragrance');

SET SQL_SAFE_UPDATES=1;

INSERT INTO Categories VALUES
('CAT5','Bath & Body'),
('CAT6','Men Grooming'),
('CAT7','Baby Care'),
('CAT8','Wellness'),
('CAT9','Nail Care');

select * from orders;
select * from categories;
select * from customers;
select * from products;

select order_id,c.customer_id,c.customer_name
from orders O
inner join customers c 
on O.customer_id = C.customer_id;

select c.customer_id,c.customer_name,
group_concat(o.order_id) as order_ids
from orders o 
inner join customers c 
on O.customer_id = C.customer_id
group by c.customer_id,c.customer_name;

select customer_name,
group_concat(distinct product_id order by product_id desc) as product_IDS
from orders o 
inner join  customers C
on o.customer_id = C.customer_id
group by customer_name;

# display customer_name,product_id
select customer_name,
group_concat(distinct product_name) as products,
group_concat(distinct category_name) as category
from orders o 
inner join customers c on o.customer_id = c.customer_id
inner join products p on o.product_id = p.product_id
inner join categories cg on p.category_id = cg.category_id
group by customer_name;

# display customer names who didnt place any orders
select customer_name,order_id
from customers c 
left join orders o 
on c.customer_id = o.customer_id
where o.order_id is null;

#display products names where there is no sale 
select product_name,order_id
from products p 
left join orders o 
on p.product_id = o.product_id
where order_id is null;

#display customer names who purcahsed product_id "p101"(vitamin c serum)
select customer_name,product_id,order_id
from orders o 
left join customers C 
on o.customer_id = c.customer_id
where o.product_id = "p101" ;

# display customer_names who purchased vitamin c serum and facewash only
select customer_name,
group_concat(product_id) as products
from customers c 
left join orders o  
on c.customer_id = o.customer_id
group by customer_name
having sum(o.product_id="p1o1")>0
and sum(o.product_id="p102")>0
and count(distinct product_id)>2;
