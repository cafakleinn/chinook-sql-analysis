---
--- your work goes here
---

SELECT ar.name AS artist_name,
       al.title AS album_title,
       t.name AS track_name
FROM track t
JOIN album al ON t.album_id = al.album_id
JOIN artist ar ON al.artist_id = ar.artist_id
JOIN genre g ON t.genre_id = g.genre_id
WHERE g.name = 'Jazz'
  AND t.track_id NOT IN (
      SELECT il.track_id
      FROM invoice_line il
      WHERE il.track_id IS NOT NULL
  )
ORDER BY artist_name, album_title, track_name;