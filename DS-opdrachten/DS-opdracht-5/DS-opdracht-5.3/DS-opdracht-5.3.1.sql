CREATE VIEW v_Directie AS
SELECT supplier_ID, mhl_contacts.name AS contact, contacttype AS functie, mhl_departments.name AS department
FROM mhl_contacts JOIN mhl_departments ON (department=mhl_departments.id)
WHERE department = 'directie' OR contacttype LIKE '%directeur%'