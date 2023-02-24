SELECT EXTRACT(YEAR FROM joindate) AS jaar, v_monthsofyear.name AS maand, COUNT(mhl_suppliers.id) AS aantal
FROM mhl_suppliers JOIN v_monthsofyear ON (MONTH(joindate)=v_monthsofyear.id)
GROUP BY jaar, maand
ORDER BY jaar, MONTH(joindate)