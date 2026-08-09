SELECT id, name, phone
FROM users
WHERE phone IS NULL OR phone = '';