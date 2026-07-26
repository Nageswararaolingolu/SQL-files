CREATE TABLE NULL_customer_orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(50),
    phone VARCHAR(15),
    city VARCHAR(30),
    product VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2),
    discount DECIMAL(10,2),  -- fixed
    order_date DATE
);
INSERT INTO NULL_customer_orders VALUES
(1, 'Amit Sharma', 'amit@gmail.com', NULL, 'Hyderabad', 'Laptop', 1, 55000, NULL, '2024-01-10'),

(2, 'Neha Kapoor', NULL, '9876543210', 'Delhi', 'Mobile', 2, 20000, 500, '2024-01-12'),

(3, 'Rahul Verma', 'rahul@gmail.com', '9123456780', 'Mumbai', 'Tablet', 1, 15000, NULL, '2024-01-15'),

(4, 'Sneha Reddy', NULL, NULL, 'Bangalore', 'Headphones', 3, 3000, 200, '2024-01-18'),

(5, 'Vikram Singh', 'vikram@gmail.com', '9988776655', 'Mumbai', 'Camera', 1, 45000, NULL, '2024-01-20'),

(6, 'Pooja Mehta', NULL, '9876501234', 'Chennai', 'Laptop', 2, 60000, 1000, '2024-01-22'),

(7, 'Arjun Nair', 'arjun@gmail.com', NULL, 'Kochi', 'Mobile', 1, 25000, NULL, '2024-01-25'),

(8, 'Kiran Kumar', NULL, NULL, 'Hyderabad', 'Tablet', 1, 18000, 300, '2024-01-28'),

(9, 'Meera Iyer', 'meera@gmail.com', '9000011111', 'Hyderabad', 'Mobile', 2, 22000, NULL, '2024-02-01'),

(10, 'Rohit Gupta', NULL, '9111222233', 'Pune', 'Laptop', 1, 58000, 500, '2024-02-03');
