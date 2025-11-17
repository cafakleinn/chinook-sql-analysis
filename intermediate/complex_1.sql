---
--- your work goes here
---
SELECT a.name AS artist_name,
       COALESCE(COUNT(al.album_id), 0) AS album_count
FROM artist a
LEFT JOIN album al
  ON a.artist_id = al.artist_id
GROUP BY a.artist_id, a.name
ORDER BY album_count ASC, artist_name ASC;