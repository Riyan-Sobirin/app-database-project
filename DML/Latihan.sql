--Latihan 

--1
SELECT *
FROM HeaderSellTransaction

SELECT *
FROM Customer

BEGIN TRAN
UPDATE Customer
SET CustomerName = LEFT(CustomerName, CHARINDEX(' ', CustomerName)-1)
FROM Customer cs, HeaderSellTransaction hst
WHERE cs.CustomerID = hst.CustomerID AND
DATENAME(DAY, TransactionDate) = 21
ROLLBACK

--2
BEGIN TRAN
UPDATE HeaderSellTransaction
SET PaymentType = 'Hutang'
FROM Customer cs, HeaderSellTransaction hst
WHERE cs.CustomerID = hst.CustomerID AND
cs.CustomerID = 'CU001'
ROLLBACK

--3
SELECT * 
FROM Staff

BEGIN TRAN
DELETE Staff
WHERE StaffSalary < 7000000
ROLLBACK

--4
SELECT TransactionDate, CustomerName, ItemName, [Discount] = 0.2 * price, PaymentType
FROM Customer cs, HeaderSellTransaction hst, DetailSellTransaction dst, Item im
WHERE cs.CustomerID = hst.CustomerID AND hst.TransactionId = dst.TransactionId
AND dst.ItemId = im.ItemId AND
DATENAME(DAY, TransactionDate) = 22


