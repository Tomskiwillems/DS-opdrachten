SELECT mhl_suppliers.name, straat, huisnr, postcode FROM mhl_suppliers JOIN mhl_cities ON (city_ID=mhl_cities.id)
WHERE mhl_cities.name = 'Amsterdam'