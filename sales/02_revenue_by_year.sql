-- Revenue by year

SELECT 
    STRFTIME('%Y', o.order_purchase_timestamp) AS year,
    SUM(oi.price) AS revenue
FROM order_items oi
JOIN orders o 
    ON oi.order_id = o.order_id
GROUP BY year
ORDER BY year DESC;
