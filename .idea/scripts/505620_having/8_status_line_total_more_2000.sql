SELECT
	o.status AS status,
	AVG(oi.quantity * oi.unit_price) AS avg_line_total
FROM orders AS o
JOIN order_items AS oi ON oi.order_id = o.id
WHERE o.created_at >= '2025-01-01'
GROUP BY o.status
HAVING AVG(oi.quantity * oi.unit_price) > 2000;