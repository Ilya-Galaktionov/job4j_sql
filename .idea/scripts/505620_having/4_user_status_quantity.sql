SELECT
	u.id AS user_id,
	u.name AS user_name,
	o.status,
	COUNT(o.id) AS orders_count
FROM users AS u
JOIN orders AS o ON u.id = o.user_id
GROUP BY u.id, u.name, o.status
HAVING COUNT(o.id) > 1;