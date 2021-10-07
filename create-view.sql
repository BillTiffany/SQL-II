CREATE VIEW classical_count AS
SELECT track
FROM track t
JOIN album a ON a.album_id = t.album_id
JOIN genre g ON t.genre_id = g.genre_id
JOIN playlist pl on pl.playlist_id = t.track_id
WHERE g.name = 'Classical'

CREATE VIEW classical_music AS
SELECT t.name, t.album_id, t.genre_id
FROM track t
JOIN playlist_track pt on pt.track_id = t.track_id
JOIN playlist pl on pl.playlist_id = pt.playlist_id
WHERE pl.name = 'Classical'