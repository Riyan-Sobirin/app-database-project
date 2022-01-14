--Subquery
--Subquery adalah query di dalam query
--SELECT ...
--FROM ...
--WHERE (SELECT ...
		--FROM ...)

--Kita bisa menggunakan Subquery untuk me-return atau mengembalikan data
--yang akan kita gunakan pada query utamanya.

--in
--in memungkinkan kita untuk menguji apakah value yang kita cari ada di dalam in

SELECT *
FROM Staff

SELECT *
FROM Staff
WHERE StaffPosition in ('Cashier', 'Supervisor')

SELECT * 
FROM Staff

SELECT StaffID
	FROM Staff
	WHERE StaffSalary > 7000000

SELECT *
FROM Staff
WHERE StaffID IN (
	SELECT StaffID
	FROM Staff
	WHERE StaffSalary > 7000000
)

--exists
--exists adalah operator yang bisa kita gunakan
--untuk mengetahui apakah Subquery kita mengembalikan sesuatu

SELECT *
FROM Staff
WHERE EXISTS(
	SELECT StaffID
	WHERE StaffSalary > 7000000
)

--alias subquery
--subquery yang memiliki alias / nama lain
--Example : Check Harga diatas rata-rata dengan alias

SELECT ItemName, Price
FROM Item, (SELECT [Rata2] = AVG(Price) FROM Item) as tt
WHERE Price > tt.Rata2

SELECT *
FROM Item

SELECT AVG(Price)
FROM Item

