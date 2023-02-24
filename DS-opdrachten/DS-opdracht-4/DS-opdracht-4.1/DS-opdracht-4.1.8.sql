SELECT cities1.name, cities1.id, cities2.id, communes1.id, communes2.id, communes1.name, communes2.name
FROM mhl_cities cities1 JOIN mhl_cities cities2 ON (cities1.name=cities2.name)
JOIN mhl_communes communes1 ON (cities1.commune_ID=communes1.id)
JOIN mhl_communes communes2 ON (communes1.name=communes2.name)
WHERE cities1.name = cities2.name AND cities1.id < cities2.id
ORDER BY cities1.name