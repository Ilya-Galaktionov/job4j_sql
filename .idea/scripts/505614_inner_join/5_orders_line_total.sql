SELECT
	oi.id AS order_item_id,
	p.name AS product_name,
	oi.quantity,
	oi.quantity * oi.unit_price AS line_total
FROM order_items AS oi
INNER JOIN products AS p ON oi.product_id = p.id
