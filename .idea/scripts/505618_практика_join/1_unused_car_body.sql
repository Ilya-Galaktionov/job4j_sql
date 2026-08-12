SELECT
	cb.id AS car_body_id,
	cb.name AS car_body_name
FROM car_bodies AS cb
LEFT JOIN cars AS c ON cb.id = c.body_id
WHERE c.id IS NULL;