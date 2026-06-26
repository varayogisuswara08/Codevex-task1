INSERT INTO customers(customer_id, customer_name, city, gender)
VALUES
(1,'priya','Hyderabad','Female'),
(2,'rajesh','banglore','Male'),
(3,'Sukanya','bombay','Female'),
(4,'krish','Chennai','Male'),
(5,'radhika','kolkata','Female');

SELECT * FROM customers;

INSERT INTO products(product_id,product_name,category,price)
VALUES
(101,'Imac','Electronics',100000),
(102,'Table','furniture',1000),
(103,'Sofa set','Furniture',5000),
(104,'fridge','Electronics',50000),
(105,'Chair','Furniture',3000);

select * from products;

INSERT INTO orders(order_id,customer_id,product_id,order_date,quantity)
VALUES
(1001,1,101,'2026-05-13',3),
(1002,2,103,'2026-02-12',1),
(1003,3,102,'2026-06-21',6),
(1004,4,104,'2026-02-08',2),
(1005,5,105,'2026-01-17',5);

select * from orders;

INSERT INTO payments(order_id,payment_date,amount_paid,payment_mode)
VALUES
(1001,'2026-05-13',100000,'cash'),
(1002,'2026-02-12',1000,'cash'),
(1003,'2026-06-21',5000,'UPI'),
(1004,'2026-02-08',50000,'credit card'),
(1005,'2026-01-17',3000,'UPI');

select * from payments;