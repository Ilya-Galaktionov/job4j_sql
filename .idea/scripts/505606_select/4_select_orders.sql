SELECT
    oi.id AS item_id,
    oi.order_id AS order_id,
    oi.product_id AS product_id,
    oi.quantity,
    unit_price,
    quantity * unit_price AS line_total
FROM order_items AS oi;