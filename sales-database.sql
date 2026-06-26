CREATE DATABASE sales_analysis;
USE sales_analysis;
CREATE TABLE customers(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(50),
city VARCHAR(50),
gender VARCHAR(10)
);

CREATE TABLE products(
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
price DECIMAL(10,2)
);

CREATE TABLE orders (
order_id INT PRIMARY KEY,
customer_id INT,
product_id INT,
order_date DATE,
quantity INT,
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id),
FOREIGN KEY (product_id)
REFERENCES products(product_id)
);

CREATE TABLE payments (
payment_id INT PRIMARY KEY AUTO_INCREMENT,
order_id INT,
payment_date DATE,
amount_paid DECIMAL(10,2),
payment_mode VARCHAR(30),
FOREIGN KEY (order_id)
REFERENCES orders(order_id)
);