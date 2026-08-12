SELECT
	p.id AS product_id,
	p.name AS product_name,
	MIN(oi.unit_price) AS min_unit_price,
	MAX(oi.unit_price) AS max_unit_price,
	AVG(oi.unit_price) AS avg_unit_price
FROM products AS p
JOIN order_items AS oi ON oi.product_id = p.id
GROUP BY p.id, p.name;