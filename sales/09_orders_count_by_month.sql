
SELECT 
    strftime('%Y', order_purchase_timestamp) AS year,
    strftime('%m', order_purchase_timestamp) AS month,
    COUNT(order_id) AS orders
FROM orders
GROUP BY year, month
ORDER BY year, month;
