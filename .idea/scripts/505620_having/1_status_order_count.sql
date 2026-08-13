SELECT
    o.status,
    COUNT(o.id) AS order_count
FROM orders AS o
GROUP BY o.status
HAVING COUNT(o.id) > 2;