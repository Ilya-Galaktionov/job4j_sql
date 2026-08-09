SELECT id,
    name,
    price,
    CASE
        WHEN price < 5000 THEN 'cheap'
        WHEN price BETWEEN 5000 AND 50000 THEN 'regular'
        ELSE 'premium'
    END AS price_label
FROM products;