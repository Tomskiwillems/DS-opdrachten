SELECT name, straat, huisnr, postcode FROM mhl_suppliers
WHERE city_id = (SELECT id FROM mhl_cities WHERE name = 'Amsterdam')
OR p_city_ID = (SELECT id FROM mhl_cities WHERE name = 'Den Haag')