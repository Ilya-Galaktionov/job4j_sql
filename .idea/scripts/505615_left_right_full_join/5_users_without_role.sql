SELECT
	u.id AS user_id,
	u.name AS user_name
FROM users AS u
LEFT JOIN user_roles AS ur ON ur.role_id = u.id
WHERE ur.role_id IS NULL;