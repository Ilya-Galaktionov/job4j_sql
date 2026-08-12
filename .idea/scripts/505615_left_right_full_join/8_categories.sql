SELECT
    c.id AS category_id,
    p.name AS parent_category_name
FROM categories AS c
LEFT JOIN categories AS p ON c.parent_id = p.id;