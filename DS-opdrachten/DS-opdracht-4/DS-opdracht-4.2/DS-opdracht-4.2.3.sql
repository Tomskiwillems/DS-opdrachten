SELECT a.id, IF(a.parent=0, a.name, b.name) AS hoofdrubriek, IF(a.parent=0, '', a.name) AS subrubriek
FROM mhl_rubrieken a LEFT JOIN mhl_rubrieken b ON (a.parent=b.id)
WHERE a.parent = 0 AND b.name IS NULL
OR a.parent <> 0 AND b.name IS NOT NULL
ORDER BY hoofdrubriek