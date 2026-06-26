SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM payments;

select count(*)
as total_customers
from customers;

select payment_mode,
count(*) as total
from payments
group by payment_mode;

SELECT
MONTH(payment_date) AS Month,
SUM(amount_paid) AS Monthly_Revenue
FROM payments
GROUP BY MONTH(payment_date)
ORDER BY Month;

SELECT
p.product_name,
SUM(o.quantity) AS Total_Quantity_Sold
FROM orders o
JOIN products p
ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY Total_Quantity_Sold DESC
LIMIT 5;

ALTER TABLE products
ADD cost_price DECIMAL(10,2);

UPDATE products
SET cost_price = 80000
WHERE product_id = 101;


UPDATE products
SET cost_price = 2000
WHERE product_id = 103;


UPDATE products
SET cost_price = 25000
WHERE product_id = 104;

SELECT
product_name,
price AS Selling_Price,
cost_price,
ROUND(
((price - cost_price)/price)*100,
2
) AS Profit_Margin_Percentage
FROM products;

