SELECT
	o.status,
	COUNT(*) AS order_count
FROM orders AS o
GROUP BY o.status;