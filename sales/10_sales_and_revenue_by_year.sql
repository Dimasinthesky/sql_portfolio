SELECT 
	p.product_category_name,
	strftime("%Y",order_purchase_timestamp) as year,
	strftime("%m",order_purchase_timestamp) as month,
	SUM(oi.price) as revenue,
	COUNT(*) AS order_count
		FROM products p 
		JOIN order_items oi ON p.product_id = oi.product_id 
		JOIN orders o ON oi.order_id = o.order_id 
			GROUP BY year,month,p.product_category_name 
ORDER BY year,month asc
