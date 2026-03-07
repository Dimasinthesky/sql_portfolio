-- Revenue by month

SELECT 
    STRFTIME('%Y', o.order_purchase_timestamp) AS year,
    STRFTIME('%m', o.order_purchase_timestamp) AS month,
    SUM(oi.price) AS revenue
FROM order_items oi
JOIN orders o 
    ON oi.order_id = o.order_id
GROUP BY year, month
ORDER BY year, month;
