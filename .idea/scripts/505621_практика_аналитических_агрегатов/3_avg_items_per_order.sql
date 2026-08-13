WITH order_item_counts AS (
    SELECT
        o.order_id,
        SUM(oi.quantity) AS total_items
    FROM order_items AS  oi
    JOIN orders AS o ON oi.order_id = o.order_id
    WHERE o.status = 'completed'
    GROUP BY o.order_id
)
SELECT
    AVG(total_items) AS avg_items_per_order
FROM order_item_counts;