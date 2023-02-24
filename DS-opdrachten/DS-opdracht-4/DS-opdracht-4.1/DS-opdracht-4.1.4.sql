SELECT mhl_suppliers.name, straat, huisnr, postcode FROM mhl_suppliers JOIN mhl_yn_properties ON (supplier_ID=mhl_suppliers.id)
JOIN mhl_propertytypes ON (propertytype_ID=mhl_propertytypes.id)
WHERE mhl_propertytypes.name = 'specialistische leverancier' OR mhl_propertytypes.name = 'ook voor particulieren'