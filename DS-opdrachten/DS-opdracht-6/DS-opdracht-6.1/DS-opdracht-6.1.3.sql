SELECT IF(parent.name IS NULL, mhl_rubrieken.name, CONCAT(parent.name, ' - ', mhl_rubrieken.name)) AS name,
COUNT(mhl_suppliers_id) AS numsup
FROM mhl_rubrieken LEFT JOIN mhl_rubrieken parent ON (mhl_rubrieken.parent=parent.id)
LEFT JOIN  mhl_suppliers_mhl_rubriek_view ON (mhl_rubrieken.id=mhl_rubriek_view_ID)
GROUP BY name
ORDER BY name