SELECT mhl_suppliers.name, straat, huisnr, postcode FROM mhl_suppliers JOIN mhl_cities ON (city_ID=mhl_cities.id)
JOIN mhl_communes ON (commune_ID=mhl_communes.id)
WHERE mhl_communes.name = 'Steenwijkerland'