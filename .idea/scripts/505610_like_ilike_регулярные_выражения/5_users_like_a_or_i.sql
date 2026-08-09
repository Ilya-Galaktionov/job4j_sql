SELECT id, name, email
FROM users
WHERE name ILIKE 'a%' OR ILIKE 'i%';