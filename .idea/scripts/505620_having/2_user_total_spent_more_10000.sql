SELECT
	u.id AS  user_id,
	u.name AS user_name,
	SUM(oi.quantity * oi.unit_price) AS total_spent
FROM users AS u
JOIN orders AS o ON u.id = o.user_id
JOIN order_items AS oi ON o.id = oi.id
GROUP BY u.id, u.name
HAVING SUM(oi.quantity * oi.unit_price) > 10000;