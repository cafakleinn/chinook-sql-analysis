---
--- your work goes here
---

WITH album_sales AS (
    SELECT g.name AS genre_name,
           al.album_id,
           al.title,
           SUM(il.quantity) AS quantity_sold
    FROM invoice_line AS il
    JOIN track AS t ON il.track_id = t.track_id
    JOIN album AS al ON t.album_id = al.album_id
    JOIN genre AS g ON t.genre_id = g.genre_id
    GROUP BY g.name, al.album_id, al.title
),
ranked AS (
    SELECT genre_name,
           title,
           quantity_sold,
           ROW_NUMBER() OVER (
               PARTITION BY genre_name
               ORDER BY quantity_sold DESC, title
           ) AS rank_in_genre
    FROM album_sales
)
SELECT genre_name,
       rank_in_genre,
       title,
       quantity_sold
FROM ranked
WHERE rank_in_genre <= 3
ORDER BY genre_name, rank_in_genre, title;