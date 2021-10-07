SELECT * 
from invoice_line
WHERE unit_price > .99;

SELECT i.invoice_date , c.first_name, c.last_name, i.total
from invoice i
JOIN customer c ON c.customer_id = i.customer_id;

SELECT c.first_name"customer first name", c.last_name "customer last name" , e.first_name "employee first name" , e.last_name "employee last name"
FROM employee e
Join customer c ON c.support_rep_id = e.employee_id;


select a.name, al.title
FROM artist a
JOIN album al on al.artist_id = a.artist_id;

SELECT p.name, pl.playlist_track_id
from playlist p
JOIN playlist_track pl on pl.playlist_id = p.playlist_id
WHERE  p.name = 'Music'

SELECT t.name
FROM track t
JOIN playlist_track pl ON pl.track_id = t.track_id
JOIN playlist p ON p.playlist_id = pl.playlist_id

-- Get all track name`s and the playlist `name that they’re on ( 2 joins ).
SELECT t.name, a.title, g.name
FROM track t
JOIN album a ON a.album_id = t.album_id
JOIN genre g ON t.genre_id = g.genre_id
WHERE genre.name = 'Alternative & Punk'

