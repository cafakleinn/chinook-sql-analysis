---
--- your work goes here
---

SELECT (last_name || ', ' || first_name) AS full_name,
       email,
       city
FROM customer
WHERE country = 'Canada'
ORDER BY last_name ASC;