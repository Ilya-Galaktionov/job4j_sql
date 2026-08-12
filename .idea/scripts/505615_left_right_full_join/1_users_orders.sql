SELECT
    u.id AS user_id,
    u.name AS user_name,
    COUNT(o.id) AS "Количество заказов"
FROM users AS u
LEFT JOIN orders AS o ON u.id = o.user_id
GROUP BY u.id, u.name;
