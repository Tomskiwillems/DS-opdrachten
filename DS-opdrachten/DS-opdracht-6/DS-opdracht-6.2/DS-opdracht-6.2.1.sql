SELECT DATE_FORMAT(joindate, '%d.%m.%Y') AS joindate, id
FROM mhl_suppliers
WHERE DATEDIFF(LAST_DAY(joindate), joindate) < 7