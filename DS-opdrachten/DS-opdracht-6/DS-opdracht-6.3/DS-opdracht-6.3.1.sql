SELECT name, IF(LEFT(name,1) = "'", CONCAT(SUBSTRING(name,1,3),UPPER(SUBSTRING(name,4,1)),SUBSTRING(name,5)),
CONCAT(UPPER(SUBSTRING(name,1,1)),SUBSTRING(name,2))) AS nice_name
FROM mhl_cities ORDER BY name