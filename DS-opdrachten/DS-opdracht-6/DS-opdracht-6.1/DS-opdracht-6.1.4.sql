SELECT IF(parent.name IS NULL, mhl_rubrieken.name, CONCAT(parent.name, ' - ', mhl_rubrieken.name)) AS name,
IF(hitcount, SUM(hitcount), 'Geen hits') AS total
FROM mhl_suppliers JOIN  mhl_suppliers_mhl_rubriek_view ON (mhl_suppliers.id=mhl_suppliers_ID)
RIGHT JOIN mhl_rubrieken ON  (mhl_rubriek_view_ID=mhl_rubrieken.id)
LEFT JOIN mhl_rubrieken parent ON (mhl_rubrieken.parent=parent.id)
LEFT JOIN mhl_hitcount ON (mhl_suppliers.id=supplier_ID)
GROUP BY name
ORDER BY name