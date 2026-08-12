SELECT
	c.id AS car_id,
	c.name AS car_name,
	cb.name AS car_body_name
FROM cars AS c
LEFT JOIN car_bodies AS cb ON cb.id = c.body_id;