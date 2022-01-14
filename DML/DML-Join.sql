--JOIN

SELECT *
FROM HeaderSellTransaction
WHERE DATENAME(DAY, TransactionDate) = 21

SELECT CustomerName
FROM Customer, HeaderSellTransaction
WHERE DATENAME(DAY, TransactionDate) = 21

SELECT CustomerName
FROM Customer cs, HeaderSellTransaction hst
WHERE cs.CustomerID = hst.CustomerID AND
DATENAME(DAY, TransactionDate) = 21

SELECT * FROM Customer

SELECT * FROM HeaderSellTransaction