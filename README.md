📊 Sales Trend Analysis Using Aggregations
📁 Project Overview
This project analyses monthly revenue and order volume using transactional data from train.csv. The analysis is done using Mysql, 
Applying SQL aggregation techniques to extract business insights from order-level data.

🎯 Objectives
Analyse monthly total sales (revenue).

Count distinct orders per month (order volume).

Learn how to use SQL for time-based grouping and aggregation.

🛠 Tools Used
Database: MySQL

Language: SQL

Data Source: train.csv (contains order-level sales data)

📂 Dataset Columns Used

Column	Description
Order ID: Unique ID for each order
Order Date: Date the order was placed
Sales: Total sales value of the order item
🧠 Key SQL Concepts Used
EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date)

GROUP BY for year and month

SUM() for total revenue

COUNT(DISTINCT order_id) for total orders

ORDER BY for chronological sorting

WHERE clause to limit periods

