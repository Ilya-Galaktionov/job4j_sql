SELECT
	p.id AS product_id,
	p.name AS product_name,
	SUM(oi.quantity) AS total_quantity
FROM products AS p
JOIN order_items AS oi ON p.id = oi.product_id
WHERE oi.unit_price >= 1000
GROUP BY p.id, p.name
HAVING SUM(oi.quantity) >= 5;