SELECT
	o.id AS order_id,
	p.name AS product_name,
	oi.quantity,
	oi.unit_price
FROM orders AS o
INNER JOIN order_items AS oi ON oi.order_id = o.id
INNER JOIN products AS p ON oi.product_id = p.id
WHERE o.user_id = 1;