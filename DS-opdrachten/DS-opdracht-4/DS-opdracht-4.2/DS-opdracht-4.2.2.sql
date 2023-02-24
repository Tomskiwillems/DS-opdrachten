SELECT mhl_cities.name, COALESCE(mhl_communes.name, 'INVALID') FROM mhl_cities
JOIN mhl_communes ON (mhl_cities.commune_ID=mhl_communes.id)