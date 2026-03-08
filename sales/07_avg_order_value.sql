--AOV
WITH sum_order AS (
    SELECT 
        o.order_id,
        SUM(oi.price) AS revenue
    FROM order_items oi
    JOIN orders o 
        ON oi.order_id = o.order_id
    GROUP BY o.order_id
)
SELECT 
    AVG(revenue) AS avg_order_value
FROM sum_order;
