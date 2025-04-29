
CREATE TABLE online_sales (
    order_id VARCHAR(20),
    order_date DATE,
    sales DECIMAL(10,2)
);

-- Step 2: Insert data (sample shown; full dataset should be inserted similarly)
INSERT INTO online_sales (order_id, order_date, sales) VALUES
('CA-2017-152156', STR_TO_DATE('08/11/2017', '%d/%m/%Y'), 261.96),
('CA-2017-152156', STR_TO_DATE('08/11/2017', '%d/%m/%Y'), 731.94),
('CA-2017-138688', STR_TO_DATE('12/06/2017', '%d/%m/%Y'), 14.62),
('US-2016-108966', STR_TO_DATE('11/10/2016', '%d/%m/%Y'), 957.58),
('US-2016-108966', STR_TO_DATE('11/10/2016', '%d/%m/%Y'), 22.37);


#- Step 3: Monthly Revenue & Order Volume Analysis
SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(sales) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM
    online_sales
WHERE
    order_date BETWEEN '2016-01-01' AND '2017-12-31'  
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY
    order_year,
    order_month;