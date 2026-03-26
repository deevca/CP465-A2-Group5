-- Total sales per product
SELECT p.product_name, SUM(s.amount) AS total_sales
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name;

-- Most valuble customers
SELECT c.customer_name, SUM(s.amount) AS total_spent
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;

-- Monthly sales trends
SELECT t.year, t.month_name, SUM(s.amount) AS monthly_sales
FROM sales s
JOIN time t ON s.date_id = t.date_id
GROUP BY t.year, t.month, t.month_name
ORDER BY t.year, t.month;