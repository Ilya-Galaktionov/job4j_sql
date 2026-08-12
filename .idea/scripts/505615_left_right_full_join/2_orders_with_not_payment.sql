SELECT
    o.id as order_id,
	o.status AS order_status,
	o.created_at AS order_created_at
FROM orders AS o
LEFT JOIN payments AS p ON p.order_id = o.id
WHERE p.id IS NULL;