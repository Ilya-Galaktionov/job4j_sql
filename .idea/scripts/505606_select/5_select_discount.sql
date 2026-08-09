SELECT
    p.id AS product_id,
    p.name AS product_name,
    price,
    price * 0.9 AS discount_price
FROM products AS p;