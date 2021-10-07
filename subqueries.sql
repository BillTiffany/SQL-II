SELECT *
FROM invoice
WHERE invoice_id IN
(Select invoice_id FROM invoice_line 
WHERE unit_price >.99)

SELECT *
FROM playlist_track
WHERE playlist_id IN
(SELECT playlist_id from playlist
WHERE name = 'Music');
-- Get all track names for playlist_id 5.
SELECT name FROM track
WHERE track_id IN
(SELECT track_id from playlist_track
 Where playlist_id IN (
   Select playlist_id from playlist
WHERE playlist_id = 5));

SELECT * from track
WHERE genre_id IN (
    SELECT genre_id from genre WHERE name = 'Comedy'
)

SELECT * from track
WHERE album_id IN (
    SELECT album_id from album WHERE title = 'Fireball'
)

SELECT * from track
WHERE album_id IN (
    SELECT album_id from album 
    WHERE artist_id IN (
        SELECT artist_id from artist
        Where name = 'Queen'
    )
)