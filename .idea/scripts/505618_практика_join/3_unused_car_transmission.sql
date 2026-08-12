SELECT
	ct.id AS car_transmission_id,
	ct.name AS car_transmission_name
FROM car_transmissions AS ct
LEFT JOIN cars AS c ON ct.id = c.transmission_id
WHERE c.id IS NULL;