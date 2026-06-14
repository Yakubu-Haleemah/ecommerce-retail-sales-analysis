SELECT DATE_TRUNC('month', invoicedate) AS month, ROUND(SUM(quantity * unitprice)::numeric,2) AS revenue 
FROM ecommerce 
WHERE quantity > 0 AND unitprice > 0 
GROUP BY month ORDER BY month;

SELECT ROUND(SUM(quantity * unitprice)::numeric,2) AS total_revenue 
FROM ecommerce 
WHERE quantity > 0 AND unitprice > 0;

SELECT description, SUM(quantity) AS total_quantity_sold 
FROM ecommerce 
WHERE quantity > 0
 GROUP BY description ORDER BY total_quantity_sold DESC 
LIMIT 10;

SELECT country, COUNT(*) AS total_orders 
FROM ecommerce 
GROUP BY country 
ORDER BY total_orders DESC 
LIMIT 10;

SELECT * FROM ecommerce 
WHERE unitprice <= 0 
LIMIT 20;

SELECT * FROM ecommerce WHERE quantity <= 0 LIMIT 20;

SELECT * FROM ecommerce WHERE description IS NULL LIMIT 20;

SELECT * FROM ecommerce WHERE customerid IS NULL LIMIT 20;

SELECT * FROM ecommerce WHERE customerid IS NULL LIMIT 20;

SELECT COUNT(*) FROM ecommerce WHERE unitprice <= 0;

SELECT COUNT(*) 
FROM ecommerce 
WHERE quantity <= 0;

SELECT invoicedate 
FROM ecommerce 
LIMIT 10;

SELECT *, COUNT(*) 
FROM ecommerce 
GROUP BY invoiceno, stockcode, description, quantity, invoicedate, unitprice, customerid, country 
HAVING COUNT(*) > 1;

SELECT COUNT(*) AS total_rows,
 COUNT(invoiceno) AS invoiceno_count,
 COUNT(stockcode) AS stockcode_count,
 COUNT(description) AS description_count,
 COUNT(quantity) AS quantity_count,
 COUNT(invoicedate) AS invoicedate_count,
 COUNT(unitprice) AS unitprice_count,
 COUNT(customerid) AS customerid_count,
 COUNT(country) AS country_count 
FROM ecommerce;

SELECT column_name, data_type 
FROM information_schema.columns 
WHERE table_name = 'ecommerce' AND column_name = 'invoicedate';

ALTER TABLE ecommerce ALTER COLUMN invoicedate 
TYPE TIMESTAMP USING TO_TIMESTAMP(invoicedate, 'MM/DD/YYYY HH24:MI');

SELECT invoicedate 
FROM ecommerce 
LIMIT 10;

SELECT column_name, data_type 
FROM information_schema.columns 
WHERE table_name = 'ecommerce';

SELECT * 
FROM ecommerce 
LIMIT 10;

SELECT 
DATE_TRUNC('month', invoicedate) AS month,
ROUND(SUM(quantity * unitprice)::numeric,2) AS revenue
FROM ecommerce
WHERE quantity > 0
AND unitprice > 0
GROUP BY month
ORDER BY month;