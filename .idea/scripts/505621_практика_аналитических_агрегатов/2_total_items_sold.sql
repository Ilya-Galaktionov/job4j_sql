SELECT
	p.category,
	SUM(oi.quantity) AS total_items_sold,
	SUM(oi.quantity * p.price) AS category_revenue
FROM order_items AS oi
JOIN products AS p ON oi.product_id = p.product_id
JOIN orders AS o ON o.order_id = oi.order_id
WHERE o.status = 'completed'
GROUP BY p.category
HAVING SUM(oi.quantity * p.price) > 30000;