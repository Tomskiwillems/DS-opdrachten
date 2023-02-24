SELECT
    mhl_suppliers.name,
    mhl_propertytypes.name,
    IFNULL(mhl_yn_properties.content, "NOT SET") as value
FROM mhl_suppliers
CROSS JOIN mhl_propertytypes
LEFT JOIN mhl_yn_properties ON mhl_suppliers.id=mhl_yn_properties.supplier_ID AND  mhl_propertytypes.id=mhl_yn_properties.propertytype_ID
JOIN mhl_cities ON mhl_suppliers.city_ID=mhl_cities.id
WHERE mhl_cities.name='amsterdam' AND mhl_propertytypes.proptype="A"