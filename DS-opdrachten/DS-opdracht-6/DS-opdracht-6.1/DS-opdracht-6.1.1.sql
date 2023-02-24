CREATE VIEW v_monthsofyear (id, name) AS
SELECT 1, 'Januari' 
UNION 
SELECT 2, 'Februari'
UNION 
SELECT 3, 'Maart'
UNION 
SELECT 4, 'April'
UNION 
SELECT 5, 'Mei'
UNION 
SELECT 6, 'Juni'
UNION 
SELECT 7, 'Juli'
UNION 
SELECT 8, 'Augustus'
UNION 
SELECT 9, 'September'
UNION 
SELECT 10, 'Oktober'
UNION 
SELECT 11, 'November'
UNION 
SELECT 12, 'December';

SELECT year, v_monthsofyear.name, 
COUNT(hitcount) AS 'Aantal leveranciers', 
MIN(hitcount) AS 'Minimaal aantal hits', 
MAX(hitcount) AS 'Maximaal aantal hits',
AVG(hitcount) AS 'Gemiddeld aantal hits',
SUM(hitcount) AS 'Totaal aantal hits'
FROM mhl_hitcount JOIN v_monthsofyear ON (month=v_monthsofyear.id)
GROUP BY year, v_monthsofyear.name
ORDER BY year DESC, v_monthsofyear.name