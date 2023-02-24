SELECT hitcount, mhl_suppliers.name, mhl_cities.name, mhl_communes.name, mhl_districts.name  FROM mhl_suppliers
JOIN mhl_cities ON (mhl_suppliers.city_ID=mhl_cities.id)
JOIN mhl_communes ON (mhl_cities.commune_ID=mhl_communes.id)
JOIN mhl_districts ON (mhl_communes.district_ID=mhl_districts.id)
JOIN mhl_hitcount ON (mhl_suppliers.id=mhl_hitcount.supplier_ID)
WHERE mhl_hitcount.year = 2014 AND mhl_hitcount.month = 1
AND mhl_districts.name IN ('Zeeland', 'Noord-Brabant', 'Limburg')