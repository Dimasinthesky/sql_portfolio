-- Revenue by product category

SELECT 
    p.product_category_name AS category,
    SUM(oi.price) AS revenue
FROM products p
JOIN order_items oi 
    ON p.product_id = oi.product_id
WHERE p.product_category_name IS NOT NULL
GROUP BY category
ORDER BY revenue DESC;
