--DATE FUNCTION / FUNGSI TANGGAL/WAKTU
SELECT * 
FROM HeaderSellTransaction

--DATENAME => DATENAME(interval, date)
--Interval = Day, Weekday, Month, Year
SELECT [Tahun] = DATENAME(YEAR, TransactionDate) 
FROM HeaderSellTransaction

SELECT [Tanggal] = DATENAME(DAY, TransactionDate) 
FROM HeaderSellTransaction

SELECT [Hari] = DATENAME(WEEKDAY, TransactionDate) 
FROM HeaderSellTransaction

SELECT [Bulan] = DATENAME(MONTH, TransactionDate) 
FROM HeaderSellTransaction

SELECT [Tahun Kemerdekaan Indonesia] = DATENAME(YEAR, '1945/08/17')

SELECT [Hari Kemerdekaan Indonesia] = DATENAME(WEEKDAY, '1945/08/17')

--DATEDIFF => DATEDIFF(interval, tanggal_pertama, tanggal_kedua) untuk mencari selisih
SELECT [Selisih Tanggal pada Transaksi] = DATEDIFF(DAY, '2020-12-20', '2020-12-22')

SELECT [Selisih Kemerdekaan] = DATEDIFF(YEAR, '1945/08/17', '2020/08/17')

--DATEADD => DATEADD(interval, mau_tambah_berapa, date)
SELECT DATEADD(YEAR, 5, '2020-12-20')

SELECT DATEADD(DAY, 3, '1945/08/17')

SELECT DATEADD(YEAR, 3, '1945/08/17')
