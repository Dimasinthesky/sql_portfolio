SELECT 
    op.payment_type,
    SUM(oi.price) AS revenue
FROM order_payments op
JOIN orders o 
    ON op.order_id = o.order_id
JOIN order_items oi 
    ON o.order_id = oi.order_id
GROUP BY op.payment_type;
