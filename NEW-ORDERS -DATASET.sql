CREATE TABLE NEW_Orders (
    Order_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50),
    City VARCHAR(30),
    Product_Category VARCHAR(30),
    Product_Name VARCHAR(50),
    Quantity INT,
    Unit_Price DECIMAL(10,2),
    Payment_Mode VARCHAR(20),
    Order_Status VARCHAR(20),
    Order_Date DATE
);

INSERT INTO NEW_Orders VALUES
(1001,'Rahul','Hyderabad','Electronics','Laptop',1,55000,'UPI','Delivered','2025-01-10'),
(1002,'Priya','Chennai','Furniture','Chair',2,3000,'Card','Delivered','2025-01-11'),
(1003,'Amit','Bangalore','Electronics','Mobile',2,18000,'Cash','Pending','2025-01-12'),
(1004,'Sneha','Mumbai','Clothing','Shirt',4,1200,'UPI','Delivered','2025-01-13'),
(1005,'Kiran','Hyderabad','Electronics','Keyboard',3,1500,'Card','Delivered','2025-01-15'),
(1006,'Anjali','Delhi','Furniture','Table',1,8000,'Cash','Cancelled','2025-01-18'),
(1007,'Rohit','Pune','Electronics','Monitor',2,12000,'UPI','Delivered','2025-01-19'),
(1008,'Neha','Hyderabad','Clothing','Jeans',3,2000,'Card','Pending','2025-01-20'),
(1009,'Suresh','Chennai','Electronics','Laptop',1,60000,'Card','Delivered','2025-01-21'),
(1010,'Divya','Delhi','Furniture','Sofa',1,25000,'UPI','Delivered','2025-01-22'),
(1011,'Vikram','Mumbai','Clothing','Jacket',2,3500,'Cash','Delivered','2025-01-23'),
(1012,'Pooja','Bangalore','Electronics','Tablet',2,22000,'Card','Delivered','2025-01-25'),
(1013,'Arjun','Hyderabad','Furniture','Bed',1,30000,'UPI','Pending','2025-01-26'),
(1014,'Nisha','Pune','Electronics','Mouse',5,800,'Cash','Delivered','2025-01-27'),
(1015,'Manoj','Delhi','Clothing','T-Shirt',6,700,'UPI','Delivered','2025-01-28'),
(1016,'Harsha','Mumbai','Furniture','Cupboard',1,18000,'Card','Delivered','2025-01-29'),
(1017,'Keerthi','Hyderabad','Electronics','Laptop',1,58000,'Cash','Delivered','2025-01-30'),
(1018,'Akash','Bangalore','Clothing','Shoes',2,2500,'UPI','Pending','2025-02-01'),
(1019,'Meena','Chennai','Furniture','Dining Table',1,22000,'Card','Delivered','2025-02-03'),
(1020,'Ramesh','Delhi','Electronics','Printer',2,9500,'Cash','Delivered','2025-02-05');


SELECT * from new_orders;
select City,Quantity,Unit_price from new_orders;

select Customer_Name, City
from new_orders
where City = "Hyderabad";

select Customer_Name,City,Product_Category
from new_orders
where Product_Category = "Electronics";

select Unit_Price
from new_orders
where Unit_Price > 55000;

select Unit_Price
from new_orders
where Unit_Price < 6000;

select * from new_orders
where city != "hyderabad";

select city, product_category
from new_orders
where city = "hyderabad" and Product_Category = "electronics";

select city, product_category
from new_orders
where city = "hyederabad" or Product_Category = "electronics";

select City,Customer_Name
from new_orders
where not City  = "Hyderabad";
