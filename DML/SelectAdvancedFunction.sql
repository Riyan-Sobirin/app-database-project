--Advanced Function
SELECT *
FROM Staff

--CAST => CAST(nama_kolom AS tipe_data_yang_diinginkan)
SELECT [Gaji] = 'Rp. ' + CAST(StaffSalary AS VARCHAR)
FROM Staff

--CONVERT => CONVERT(tipe_data_yang_diinginkan, nama_kolom, kode_tujuan)
SELECT *
FROM HeaderSellTransaction

SELECT [Tanggal yang sudah di-convert] = CONVERT(VARCHAR, TransactionDate, 107)
FROM HeaderSellTransaction

--CONVERT 
