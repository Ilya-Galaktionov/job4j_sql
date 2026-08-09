SELECT
    id,
    name,
    phone
    CASE
        WHEN phone IS NULL THEN 'not specified'
        ELSE 'not specified'
    END AS phone_status
FROM users;