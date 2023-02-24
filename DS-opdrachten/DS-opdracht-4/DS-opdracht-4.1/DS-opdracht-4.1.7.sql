SELECT cities1.name, cities2.name, cities1.id, cities2.id, cities1.commune_ID, cities2.commune_ID
FROM mhl_cities cities1 JOIN mhl_cities cities2 ON (cities1.name=cities2.name)
WHERE cities1.name = cities2.name AND cities1.id < cities2.id
ORDER BY cities1.name