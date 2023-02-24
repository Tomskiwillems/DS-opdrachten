SELECT mhl_suppliers.name, IFNULL(mhl_contacts.name, "t.a.v. de directie") AS aanhef, 
IF(p_address <> "", p_address, CONCAT(straat, ' ', huisnr)) AS adres, 
IF(p_postcode <> "", p_postcode, postcode) AS postcode, 
mhl_cities.name, mhl_districts.name 
FROM mhl_suppliers LEFT JOIN mhl_cities ON (IF(p_address = "", city_id, p_city_id)=mhl_cities.id) 
LEFT JOIN mhl_communes ON (commune_ID=mhl_communes.id) 
LEFT JOIN mhl_districts ON (district_ID=mhl_districts.id) 
LEFT JOIN mhl_contacts ON (supplier_ID=mhl_suppliers.id) 
WHERE p_address <> "" OR straat <> "" 
ORDER BY mhl_districts.name , mhl_cities.name, mhl_suppliers.name;