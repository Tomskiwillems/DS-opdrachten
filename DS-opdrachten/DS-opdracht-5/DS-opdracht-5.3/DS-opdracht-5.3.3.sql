SELECT mhl_suppliers.name, IFNULL(contact, 't.a.v. directie') AS contact, adres, v_Verzendlijst.postcode, stad
FROM mhl_suppliers LEFT JOIN v_Verzendlijst ON (mhl_suppliers.id=v_Verzendlijst.id)
LEFT JOIN v_Directie ON (supplier_ID=mhl_suppliers.id)