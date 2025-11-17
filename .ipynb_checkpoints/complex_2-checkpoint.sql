---
--- your work goes here
---

SELECT (c.first_name || ' ' || c.last_name) AS customer_name,
       c.email,
       SUM(i.total) AS total_spent
FROM customer AS c
JOIN invoice AS i
  ON c.customer_id = i.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name, c.email
HAVING SUM(i.total) >
  (
    SELECT AVG(total_spending)
    FROM (
      SELECT SUM(total) AS total_spending
      FROM invoice
      GROUP BY customer_id
    ) AS avg_table
  )
ORDER BY total_spent DESC;