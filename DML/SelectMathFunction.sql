--Math Function / Fungsi Matematika
SELECT *
FROM Staff

--MAX
SELECT [Gaji Terbesar] = MAX(StaffSalary)
FROM Staff

--MIN
SELECT [Gaji Terkecil] = MIN(StaffSalary)
FROM Staff

--AVG
SELECT [Rata2 Gaji ] = AVG(StaffSalary)
FROM Staff

--COUNT
SELECT [Jumlah Transaksi] = COUNT(Transactionid)
FROM HeaderSellTransaction

--SUM
SELECT [Total Gaji] = SUM(StaffSalary)
FROM Staff


