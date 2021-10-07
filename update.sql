UPDATE customer
SET fax = NULL
WHERE fax IS NOT NULL

UPDATE customer
SET company = 'SELF'
WHERE company = NULL

UPDATE customer
SET company = 'SELF'
WHERE company is NULL

UPDATE customer
set last_name = 'Thompson'
where last_name = 'Barnett'

UPDATE customer 
SET support_rep_id = 4
where email = 'luisrojas@yahoo.cl'

UPDATE track
SET composer = 'The darkness around us'
WHERE genre_id = ( SELECT genre_id FROM genre WHERE name = 'Metal' )
AND composer IS null;