--EXTRACT THE FOLLOWING DATA ON SQL:
--Total Revenue
SELECT SUM(total_price) AS total_revenue
FROM [dbo].[pizza_sales$]

--Total Pizzas Sold
SELECT SUM(quantity) AS total_pizzas_sold
FROM [dbo].[pizza_sales$]

--Total number of Orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM [dbo].[pizza_sales$]

--How many order Veggie pizza category was sold
SELECT SUM(quantity) AS veggie_pizzas_sold
FROM [dbo].[pizza_sales$]
WHERE pizza_category = 'Veggie'

--How many  The Hawaiian Pizza and  The Greek Pizza  was sold
SELECT pizza_name, SUM(quantity) AS total_sold
FROM [dbo].[pizza_sales$]
WHERE pizza_name IN ('The Hawaiian Pizza', 'The Greek Pizza')
GROUP BY pizza_name

--List of pizza ordered in January 2015
SELECT DISTINCT pizza_name
FROM [dbo].[pizza_sales$]
WHERE order_date >= '2015-01-01' AND order_date < '2015-02-01'

--List of pizza ordered between 1st of November till 31st December 2015
SELECT DISTINCT pizza_name
FROM [dbo].[pizza_sales$]
WHERE order_date BETWEEN '2015-11-01' AND '2015-12-31'


--What is the quantity of The Spinach Supreme Pizza sold in March 2015
SELECT SUM(quantity) AS total_quantity
FROM [dbo].[pizza_sales$]
WHERE pizza_name = 'The Spinach Supreme Pizza'
  AND order_date >= '2015-03-01' AND order_date < '2015-04-01'

--List of Medium pizza sold

SELECT DISTINCT pizza_name
FROM [dbo].[pizza_sales$]
WHERE pizza_size = 'M'

--List of pizza that sold for more than 12.5
SELECT DISTINCT pizza_name
FROM [dbo].[pizza_sales$]
WHERE unit_price > 12.5

