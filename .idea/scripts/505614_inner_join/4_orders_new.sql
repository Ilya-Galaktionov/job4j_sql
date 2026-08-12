SELECT
	o.id AS order_id,
	o.status,
	u.name AS user_name
FROM orders AS o
INNER JOIN users AS u ON o.user_id = u.id
WHERE o.status = 'NEW';
