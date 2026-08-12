SELECT
	oi.id AS order_item_id,
	oi.order_id,
	p.name AS product_name,
	oi.quantity
FROM order_items AS oi
INNER JOIN products AS p ON oi.product_id = p.id
WHERE oi.quantity >1;