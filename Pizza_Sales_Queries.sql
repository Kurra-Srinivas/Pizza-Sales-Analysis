USE pizza_sales_db;
SHOW TABLES;
DESCRIBE pizza_sales;

SELECT * FROM pizza_sales LIMIT 50;
SELECT COUNT(*) FROM pizza_sales;

-- PROBLEM STATEMENT :-
-- KPI'S REQUIREMENT
-- We need to analyze key indicators for our pizza performance. Specifically, we want to calculate:

-- 1.Total Revenue: The sum of the total price of all pizzas sold.
SELECT SUM(total_price) AS total_revenue
FROM pizza_sales;

-- 2.Average Order Value: The average amount spent per order, calculated by dividing the total revenue by the total number of orders.
SELECT SUM(total_price) / COUNT(DISTINCT order_id) AS average_order_value
FROM pizza_sales;

-- 3.Total Pizzas Sold: The sum of the quantities of all pizzas sold.
SELECT SUM(quantity) AS total_pizzas_sold
FROM pizza_sales;

-- 4.Total Orders: The total number of orders placed.
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales;

-- 5.Average Pizzas Per Order: The average number of pizzas sold per order, calculated by dividing the total number of pizzas sold by the total number of orders
SELECT SUM(quantity) / COUNT(DISTINCT order_id) AS avg_pizzas_per_order
FROM pizza_sales;

-- COMBINING ALL IMP KPI QUERIES AT ONCE
SELECT 
  ROUND(SUM(total_price), 2) AS total_revenue,
  ROUND(SUM(total_price) / COUNT(DISTINCT order_id), 2) AS average_order_value,
  SUM(quantity) AS total_pizzas_sold,
  COUNT(DISTINCT order_id) AS total_orders,
  ROUND(SUM(quantity) / COUNT(DISTINCT order_id), 2) AS avg_pizzas_per_order
FROM pizza_sales;



-- 1: Daily Trend for Total Orders
SELECT 
  DAYNAME(STR_TO_DATE(order_date, '%d-%m-%Y')) AS day_of_week,
  COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY day_of_week
ORDER BY 
  FIELD(day_of_week, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');
  
-- 2. Hourly Trend for Total Orders 
SELECT 
  HOUR(STR_TO_DATE(order_time, '%H:%i:%s')) AS order_hour,
  COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY order_hour
ORDER BY order_hour;

-- 3. % of Sales by Pizza Category
SELECT 
  pizza_category,
  ROUND(SUM(total_price), 2) AS revenue
FROM pizza_sales
GROUP BY pizza_category
ORDER BY revenue DESC;

-- 4. Percentage of Sales by Pizza Size
SELECT 
  pizza_size, 
  ROUND(SUM(total_price), 2) AS total_revenue
FROM pizza_sales
GROUP BY pizza_size
ORDER BY total_revenue DESC;

-- 5. Total Pizzas Sold by Pizza Category
SELECT 
  pizza_category, 
  SUM(quantity) AS total_pizzas_sold
FROM pizza_sales
GROUP BY pizza_category
ORDER BY total_pizzas_sold DESC;

-- 6. Top 5 Best Sellers by Total Pizzas Sold
SELECT 
  pizza_name, 
  SUM(quantity) AS total_pizzas_sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_pizzas_sold DESC
LIMIT 5;

-- 7. Bottom 5 Worst Sellers by Total Pizzas Sold
SELECT 
  pizza_name, 
  SUM(quantity) AS total_pizzas_sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_pizzas_sold ASC
LIMIT 5;


-- *****************************--

-- 1.Monthly Sales Trend
SELECT 
  DATE_FORMAT(STR_TO_DATE(order_date, '%d-%m-%Y'), '%Y-%m') AS month,
  SUM(total_price) AS total_revenue
FROM pizza_sales
GROUP BY month
ORDER BY month;

-- 2.Top Pizza in Each Category
SELECT 
  pizza_category,
  pizza_name,
  SUM(quantity) AS total_sold
FROM pizza_sales
GROUP BY pizza_category, pizza_name
ORDER BY pizza_category, total_sold DESC;

-- 3.Peak Order Time by Day
SELECT 
  DAYNAME(STR_TO_DATE(order_date, '%d-%m-%Y')) AS day,
  HOUR(STR_TO_DATE(order_time, '%H:%i:%s')) AS hour,
  COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY day, hour
ORDER BY day, total_orders DESC;











