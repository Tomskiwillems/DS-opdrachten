SELECT mhl_cities.name AS stad, 
SUM(IF(membertype = 1, 1, 0)) AS gold,
SUM(IF(membertype = 2, 1, 0)) AS silver,
SUM(IF(membertype = 3, 1, 0)) AS bronze,
SUM(IF(membertype > 4, 1, 0)) AS other
FROM mhl_suppliers JOIN mhl_cities ON (city_ID=mhl_cities.id)
GROUP BY mhl_cities.name
ORDER BY gold DESC, silver DESC, bronze DESC, other DESC