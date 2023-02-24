CREATE VIEW v_Verzendlijst AS
SELECT mhl_suppliers.id, IF(p_address <> "", p_address, CONCAT(straat, ' ', huisnr)) AS adres,
IF(p_postcode <> "", p_postcode, postcode) AS postcode, mhl_cities.name AS stad
FROM mhl_suppliers JOIN mhl_cities ON (IF(p_address = "", city_id, p_city_id)=mhl_cities.id)