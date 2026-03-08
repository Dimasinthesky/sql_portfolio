-- Revenue by customer state

SELECT 
    c.customer_state AS state,
    SUM(oi.price) AS revenue
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
JOIN order_items oi 
    ON o.order_id = oi.order_id
GROUP BY state
ORDER BY revenue DESC;
