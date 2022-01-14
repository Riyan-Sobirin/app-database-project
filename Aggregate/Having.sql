--HAVING
--HAVING -> WHERE versi agregat

SELECT *
FROM Item

SELECT ItemTypeId, [Total Quantity] = SUM(Quantity)
FROM Item
GROUP BY ItemTypeId

SELECT ItemTypeId
FROM Item
GROUP BY ItemTypeId
HAVING SUM(Quantity) > 100
