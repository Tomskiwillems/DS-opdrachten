CREATE VIEW v_subscriptionsperday (day, amount) AS
SELECT 'Monday', SUM(IF(DAYOFWEEK(joindate) = 2, 1, 0)) FROM mhl_suppliers
UNION 
SELECT 'Tuesday', SUM(IF(DAYOFWEEK(joindate) = 3, 1, 0)) FROM mhl_suppliers
UNION 
SELECT 'Wednesday', SUM(IF(DAYOFWEEK(joindate) = 4, 1, 0)) FROM mhl_suppliers
UNION 
SELECT 'Thursday', SUM(IF(DAYOFWEEK(joindate) = 5, 1, 0)) FROM mhl_suppliers
UNION 
SELECT 'Friday', SUM(IF(DAYOFWEEK(joindate) = 6, 1, 0)) FROM mhl_suppliers
UNION 
SELECT 'Saturday', SUM(IF(DAYOFWEEK(joindate) = 7, 1, 0)) FROM mhl_suppliers
UNION 
SELECT 'Sunday', SUM(IF(DAYOFWEEK(joindate) = 1, 1, 0)) FROM mhl_suppliers;

SELECT day AS 'Dag van de week', amount AS 'Aantal aanmeldingen'
FROM v_subscriptionsperday;