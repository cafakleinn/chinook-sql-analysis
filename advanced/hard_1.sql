---
--- your work goes here
---

SELECT (c.first_name || ' ' || c.last_name) AS customer_name,
       i.invoice_date,
       i.total AS invoice_total,
       SUM(i.total) OVER (
           PARTITION BY c.customer_id
           ORDER BY i.invoice_date
           ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
       ) AS running_total,
       RANK() OVER (
           PARTITION BY c.customer_id
           ORDER BY i.total DESC
       ) AS rank_within_customer
FROM customer c
JOIN invoice i ON c.customer_id = i.customer_id
WHERE c.country = 'Canada'
ORDER BY customer_name, i.invoice_date;