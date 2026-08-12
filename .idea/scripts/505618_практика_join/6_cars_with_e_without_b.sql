SELECT
	c.id AS car_id,
	c.name AS car_name,
	cb.name AS car_body_name,
	ce.name AS car_engine_name
FROM cars AS c
LEFT JOIN car_bodies AS cb ON cb.id = c.body_id
INNER JOIN car_engines AS ce ON ce.id = c.engine_id
WHERE c.body_id IS NULL;