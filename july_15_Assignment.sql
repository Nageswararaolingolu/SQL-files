create database RetailStore;
use RetailStore;
create table Customers
(
Customer_Id INT,
Customer_Name varchar(100),
Gender char(1),
Age int,
city varchar(50),
Phone varchar(15)
);
show tables;
desc Customers;

# Add a new column, Email varchar(100)
alter table Customers
add column Email varchar(100);

#Add another column, Registration_Date DATE
alter table Customers
add column Registration_Date date;

#Modify Increase Customer_Name size from VARCHAR(100) to VARCHAR(150)
alter table Customers
modify column Customer_Name varchar(150);

#Rename column Phone to Mobile_Numbe
alter table Customers
rename column Phone to Mobile_numbe;

#Add a new column Membership_Type VARCHAR(20)
alter table Customers
add column Membership_Type varchar(20);

#Drop the column Gender
alter table Customers
drop column Gender;

 #Add a new column Gender CHAR(1)
alter table Customers
add column Gender char(1);

desc customers;

insert into
Customers (Customer_ID,Customer_Name,Age,City,Mobile_numbe,Email,Registration_Date,Membership_Type,Gender)
values
 (101,"Rahul Sharma",28,"Hyderabad",9876543211,"sneha@gmail.commailto:sneha@gmail.com","2025-02-20","Silver","F"),
  (103,"Amit Verma",31,"Chennai",9876543212,"amit@gmail.commailto:amit@gmail.com","2025-03-15","Gold","M"),
 (104,"Priya Singh",29,"Pune",9876543213 ,"priya@gmail.commailto:priya@gmail.com","2025-01-08","Platinum","F"),
 (105,"Kiran Kumar",35,"Mumbai",9876543214 ,"kiran@gmail.commailto:kiran@gmail.com","2025-04-11","Silver","M"),
 (106,"Anjali Gupta",24,"Delhi",9876543215,"anjali@gmail.commailto:anjali@gmail.com","2025-05-06","Gold","F"),
 (107,"Rohit Patel",30,"Ahmedabad",9876543216,"rohit@gmail.commailto:rohit@gmail.com","2025-06-18","Bronze","M "),
 (108,"Megha Nair",27,"Kochi",9876543217,"megha@gmail.commailto:megha@gmail.com","2025-02-25","Gold","F"),
 (109,"Arjun Rao",32,"Hyderabad",9876543218,"arjun@gmail.commailto:arjun@gmail.com","2025-07-01","Platinum","M"),
 (110,"Pooja Mehta",26,"Jaipur",9876543219,"pooja@gmail.commailto:pooja@gmail.com","2025-04-19","Silver","F");


select * from Customers;
desc Customers;
select Customer_Name,City from Customers;

create table Products
(
Product_ID int,
product_Name varchar(100),
Category varchar(50),
Price decimal(10,2),
Stock int
);

#Add a column Brand.
alter table Products
add column Brand varchar(100);
desc Products;

#Modify Price to DECIMAL(12,2).
alter table Products
modify column price decimal(12,2);

#Rename Stock to Available_Stock.
alter table Products
rename column Stock to Available_Stock;

#Add a column Launch_Date.
alter table Products
add column Launch_Date int;

#Insert 10 product records of your choice.
insert into
Products (Product_ID,product_Name,Category,Price,Available_Stock,Launch_Date)
values
(101,"laptop","electronics",700000,"1","25"),
(102,"mobile_phone","electronics",20000,"10","24"),
(103,"washing_machine","electronics",30000,"30","23"),
(104,"Fridge","electronics",50000,"40","22");
select * from Products;
desc Products;
