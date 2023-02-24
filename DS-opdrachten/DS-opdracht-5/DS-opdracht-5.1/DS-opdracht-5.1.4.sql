SELECT name, SUM(hitcount) AS total_hits, COUNT(month) AS total_months, ROUND(SUM(hitcount)/COUNT(month),0) AS avg_per_month
FROM mhl_hitcount JOIN mhl_suppliers ON (supplier_ID=mhl_suppliers.id)
GROUP BY name ORDER BY total_hits DESC