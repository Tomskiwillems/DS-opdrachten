SELECT mhl_rubrieken.name, mhl_suppliers.name, straat, huisnr, postcode FROM mhl_suppliers 
JOIN mhl_suppliers_mhl_rubriek_view ON (mhl_suppliers.id=mhl_suppliers_ID)
JOIN mhl_rubrieken ON (mhl_rubriek_view_ID=mhl_rubrieken.id)
JOIN mhl_cities ON (city_ID=mhl_cities.id)
WHERE mhl_cities.name = 'Amsterdam' AND mhl_rubrieken.name = 'drank'
OR mhl_cities.name = 'Amsterdam' AND parent = (SELECT id FROM mhl_rubrieken WHERE name = 'drank' AND parent = 0)
ORDER BY mhl_rubrieken.name, mhl_suppliers.name