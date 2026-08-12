SELECT
	cb.id AS car_body_id,
	cb.name AS car_body_name,
	c.id AS car_id,
	c.name AS car_name
FROM car_bodies AS cb
LEFT JOIN cars AS c ON cb.id = c.body_id
ORDER BY cb.name;