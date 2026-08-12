SELECT
	o.id AS order_id,
	COUNT(oi.id) AS items_count,
	COALESCE(SUM(oi.quantity * oi.unit_price), 0) AS order_total
FROM orders AS o
LEFT JOIN order_items AS oi ON oi.order_id = o.id
GROUP BY o.id;