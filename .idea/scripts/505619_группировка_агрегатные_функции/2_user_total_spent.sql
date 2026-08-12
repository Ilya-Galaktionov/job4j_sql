SELECT
	u.id AS user_id,
	u.name AS user_name,
	COALESCE(SUM(oi.quantity * oi.unit_price), 0) AS total_spent
FROM users AS u
LEFT JOIN orders AS o ON o.user_id = u.id
LEFT JOIN order_items AS oi ON oi.order_id = o.id
GROUP BY u.id, u.name;