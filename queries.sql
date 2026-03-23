SELECT branch, ROUND(SUM(sales), 2) AS total_sales
FROM supermarket_sales
GROUP BY branch
ORDER BY total_sales DESC;

SELECT product_line, ROUND(SUM(sales), 2) AS total_sales
FROM supermarket_sales
GROUP BY product_line
ORDER BY total_sales DESC;

SELECT branch, ROUND(AVG(rating), 2) AS avg_rating
FROM supermarket_sales
GROUP BY branch
ORDER BY avg_rating DESC;

SELECT payment, ROUND(SUM(sales), 2) AS total_sales
FROM supermarket_sales
GROUP BY payment
ORDER BY total_sales DESC;

SELECT city, ROUND(SUM(sales), 2) AS total_sales
FROM supermarket_sales
GROUP BY city
ORDER BY total_sales DESC;

SELECT product_line, SUM(quantity) AS total_quantity
FROM supermarket_sales
GROUP BY product_line
ORDER BY total_quantity DESC;

SELECT 
DATE_FORMAT(STR_TO_DATE(date, '%m/%d/%Y'), '%Y-%m') AS month,
ROUND(SUM(sales), 2) AS total_sales
FROM supermarket_sales
GROUP BY month
ORDER BY month;

SELECT 
HOUR(STR_TO_DATE(time, '%H:%i:%s')) AS hour,
COUNT(*) AS total_transactions
FROM supermarket_sales
GROUP BY hour
ORDER BY total_transactions DESC;

SELECT product_line, ROUND(SUM(sales), 2) AS total_sales
FROM supermarket_sales
GROUP BY product_line
ORDER BY total_sales DESC
LIMIT 1;

SELECT product_line, ROUND(SUM(gross_income), 2) AS total_profit
FROM supermarket_sales
GROUP BY product_line
ORDER BY total_profit DESC;

SELECT customer_type, ROUND(SUM(sales), 2) AS total_sales
FROM supermarket_sales
GROUP BY customer_type
ORDER BY total_sales DESC;

SELECT gender, ROUND(SUM(sales), 2) AS total_sales
FROM supermarket_sales
GROUP BY gender
ORDER BY total_sales DESC;
