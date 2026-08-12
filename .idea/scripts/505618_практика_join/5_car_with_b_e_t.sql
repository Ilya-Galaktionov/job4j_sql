SELECT
	c.id AS car_id,
	c.name AS car_name,
	cb.name AS car_body_name,
	ce.name AS car_engine_name,
	ct.name AS car_transmission_name
FROM cars AS c
INNER JOIN car_bodies AS cb ON cb.id = c.body_id
INNER JOIN car_engines AS ce ON ce.id = c.engine_id
INNER JOIN car_transmissions AS ct ON ct.id = c.transmission_id;