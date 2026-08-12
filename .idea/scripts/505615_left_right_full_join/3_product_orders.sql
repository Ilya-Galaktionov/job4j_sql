SELECT
	p.id AS product_id,
	p.name AS product_name,
	COUNT(oi.id)
FROM products AS p
INNER JOIN order_items AS oi ON oi.product_id = p.id
GROUP BY p.id, p.name;