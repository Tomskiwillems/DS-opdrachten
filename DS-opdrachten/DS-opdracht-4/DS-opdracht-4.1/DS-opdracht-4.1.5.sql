SELECT mhl_suppliers.name, straat, huisnr, postcode, lat, lng FROM mhl_suppliers
JOIN pc_lat_long ON (postcode=pc6)
ORDER BY lat DESC
LIMIT 5