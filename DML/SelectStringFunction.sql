--Left => LEFT(nama_kolom, berapa_digit)
SELECT *
FROM Staff

SELECT [Jenis Kelamin] = LEFT(StaffGender, 1)
FROM Staff

--Right => RIGHT(nama_kolom, berapa_digit)
SELECT [Test Right] = RIGHT(StaffName, 2)
FROM Staff

--Reverse => REVERSE(nama_kolom)
SELECT [Balik Nama] = REVERSE(StaffName) 
FROM Staff

--Charindex => CHARINDEX('mau_cari_apa', nama_kolom)
SELECT *
FROM Staff
WHERE StaffPhone = '080152852175'

SELECT [index huruf o] = CHARINDEX('o', StaffName)
FROM Staff
WHERE StaffPhone = '080152852175'

--Substring => SUBSTRING (nama_kolom, start, berapa_digit)
SELECT [index ke-2 4 huruf] = SUBSTRING(StaffName, 2, 4)
FROM Staff

SELECT [Kata Pertama] = SUBSTRING(StaffName, 1, CHARINDEX(' ', StaffName)-1)
FROM Staff

--Upper => UPPER(nama_kolom)
SELECT [Nama Huruf Besar] = UPPER(StaffName)
FROM Staff

--Lower => LOWER(nama_kolom)
SELECT [Nama Huruf Kecil] = LOWER(StaffName)
FROM Staff


