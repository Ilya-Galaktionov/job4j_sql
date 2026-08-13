SELECT
	u.id AS user_id,
	u.name AS user_name,
	COUNT(o.id) AS paid_orders_count
FROM users AS u
JOIN orders AS o ON o.user_id = u.id
WHERE o.status = 'PAID'
GROUP BY u.id, u.name
HAVING COUNT(o.id) >= 2;