--Aggregate
-- MAX,  MIN, AVG, COUNT, SUM, GROUP BY

SELECT *
FROM Staff

--MAX
SELECT [Gaji Tertinggi Staff] = MAX(StaffSalary) 
FROM Staff

--MIN
SELECT [Gaji Terendah Staff] = MIN(StaffSalary) 
FROM Staff

--AVG
SELECT [Rata - Rata Gaji Staff] = AVG(StaffSalary) 
FROM Staff

--COUNT
SELECT [Jumlah Gaji Staff] = COUNT(StaffSalary) 
FROM Staff

-- SUM
SELECT [Total Gaji Staff] = SUM(StaffSalary) 
FROM Staff


-- Latihan 

--1
SELECT [Maksimum Price] = MAX(Price), [Minimum Price] = MIN(Price), [Average Price] = AVG(Price)
FROM Item

--2
SELECT [Gender] = LEFT(StaffGender, 1), [Average Salary] = AVG(StaffSalary) 
FROM Staff
GROUP BY StaffGender

SELECT StaffPosition, [Average Salary] = 'RP. ' + CAST(AVG(StaffSalary) AS VARCHAR)
FROM Staff
GROUP BY StaffPosition

--3
SELECT ItemTypeName, [Total Transaction] = COUNT(TransactionId)
FROM DetailSellTransaction dst, Item im, ItemType it
WHERE dst.ItemId = im.ItemId AND im.ItemTypeId = it.ItemTypeId
GROUP BY ItemTypeName

SELECT TransactionId, [Qty per transaction] = SUM(SellQuantity)
FROM DetailSellTransaction
GROUP BY TransactionId





