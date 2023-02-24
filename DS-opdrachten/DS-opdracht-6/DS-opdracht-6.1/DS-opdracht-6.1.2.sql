SELECT subgroup.name AS gemeente, mhl_suppliers.name AS leverancier, SUM(hitcount) AS total, average
FROM ( SELECT com1.id AS id, com1.name AS name, AVG(hitcount) AS average
FROM mhl_suppliers LEFT JOIN mhl_cities ON (mhl_suppliers.city_id=mhl_cities.id)
LEFT JOIN mhl_communes AS com1 ON (com1.id=mhl_cities.commune_id)
LEFT JOIN mhl_hitcount ON (mhl_hitcount.supplier_id=mhl_suppliers.id)
GROUP BY com1.name) AS subgroup
LEFT JOIN mhl_cities ON (subgroup.id=mhl_cities.commune_id)
LEFT JOIN mhl_suppliers ON (mhl_cities.id=mhl_suppliers.city_id)
LEFT JOIN mhl_hitcount ON (mhl_hitcount.supplier_id=mhl_suppliers.id)
GROUP BY mhl_suppliers.name
HAVING SUM(hitcount) > average AND mhl_suppliers.name IS NOT NULL 
ORDER BY subgroup.name, SUM(hitcount) DESC;