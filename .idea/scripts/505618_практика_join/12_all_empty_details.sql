SELECT 
    'body' AS detail_type,
    cb.id AS detail_id,
    cb.name AS detail_name
FROM car_bodies AS cb
LEFT JOIN cars AS c ON cb.id = c.body_id
WHERE c.id IS NULL

UNION ALL

SELECT 
    'engine' AS detail_type,
    ce.id AS detail_id,
    ce.name AS detail_name
FROM car_engines AS ce
LEFT JOIN cars AS c ON ce.id = c.engine_id
WHERE c.id IS NULL

UNION ALL

SELECT 
    'transmission' AS detail_type,
    ct.id AS detail_id,
    ct.name AS detail_name
FROM car_transmissions AS ct
LEFT JOIN cars AS c ON ct.id = c.transmission_id
WHERE c.id IS NULL