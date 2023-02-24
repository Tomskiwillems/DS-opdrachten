SELECT year, SUM(IF(month IN (1,2,3), hitcount, 0)) AS 'eerste kwartaal',
SUM(IF(month IN (4,5,6), hitcount, 0)) AS 'tweede kwartaal',
SUM(IF(month IN (7,8,9), hitcount, 0)) AS 'derde kwartaal',
SUM(IF(month IN (10,11,12), hitcount, 0)) AS 'vierde kwartaal',
SUM(hitcount) AS totaal
FROM mhl_hitcount
GROUP BY year