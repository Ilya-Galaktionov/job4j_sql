SELECT
	ce.id AS car_engine_id,
	ce.name AS car_engine_name
FROM car_engines AS ce
LEFT JOIN cars AS c ON ce.id = c.engine_id
WHERE c.id IS NULL;