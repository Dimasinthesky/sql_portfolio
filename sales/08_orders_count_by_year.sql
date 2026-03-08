--orders by year
SELECT 
    strftime('%Y', order_purchase_timestamp) AS year,
    COUNT(order_id) AS orders
FROM orders
GROUP BY year
ORDER BY year;
