SELECT
	r.id AS role_id,
	r.code AS role_code,
	r.name AS role_name,
	COUNT(ur.user_id) AS "Количество пользователей с ролями"
FROM roles AS r
LEFT JOIN user_roles AS ur ON ur.role_id = r.id
GROUP BY r.id, r.code, r.name
ORDER BY r.code;