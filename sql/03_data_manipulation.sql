-- MySQL Library Database
-- 03 - Data Manipulation

USE perpustakaan;

-- UPDATE tahun buku
UPDATE buku
SET tahun = '2014'
WHERE id_buku = 'B00001';

-- UPDATE jumlah buku tersedia
UPDATE buku
SET jml_tersedia = 100
WHERE tahun >= '2014';

-- Memastikan jumlah tersedia tidak melebihi jumlah eksemplar
UPDATE buku
SET jml_tersedia = 1
WHERE jml_tersedia > jml_eksemplar;

-- UPDATE data buku B00004
UPDATE buku
SET tahun = '2022',
    jml_tersedia = 5
WHERE id_buku = 'B00004';

-- UPDATE data buku B00003
UPDATE buku
SET tahun = '2010'
WHERE id_buku = 'B00003';

-- UPDATE nama penulis menggunakan Primary Key
UPDATE penulis
SET nama_lengkap = 'Budi Santosa'
WHERE no_ktp = '1234567890120002';

-- UPDATE data penerbit
UPDATE penerbit
SET Nama = 'UNNES Press',
    Kota = 'Semarang'
WHERE id_penerbit = 'P005';

-- Menampilkan buku tahun 2010
SELECT
    id_buku,
    judul,
    tahun,
    jml_tersedia
FROM buku
WHERE tahun = '2010';

-- Menampilkan penulis yang nama lengkapnya
-- berbeda dengan nama pena dan memiliki email
SELECT
    nama_lengkap,
    nama_pena,
    email
FROM penulis
WHERE nama_lengkap <> nama_pena
  AND email IS NOT NULL;
