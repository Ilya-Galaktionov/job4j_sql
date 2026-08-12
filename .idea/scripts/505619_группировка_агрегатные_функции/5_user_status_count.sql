SELECT
	u.id AS user_id,
	u.name AS user_name,
	o.status AS order_status,
	COUNT(o.id) AS orders_count
FROM users AS u
JOIN orders AS o ON o.user_id = u.id
GROUP BY u.id, u.name, o.status;