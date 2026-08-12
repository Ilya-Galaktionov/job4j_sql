SELECT
	p.id AS product_id,
	p.name AS product_name,
	COUNT(oi.id) AS order_items_count,
	COALESCE(SUM(oi.quantity), 0) AS total_quantity
FROM products AS p
LEFT JOIN order_items AS oi ON oi.id = p.id
GROUP BY p.id, p,name;