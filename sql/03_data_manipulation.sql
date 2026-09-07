-- MySQL Library Database
-- 03 - Data manipulation used in the exercise

USE perpustakaan;

UPDATE buku
SET tahun = '2014'
WHERE id_buku = 'B00001';

UPDATE buku
SET jml_tersedia = 100
WHERE tahun >= '2014';

UPDATE buku
SET jml_tersedia = 1
WHERE jml_tersedia > jml_eksemplar;

UPDATE buku
SET tahun = '2022',
    jml_tersedia = 5
WHERE id_buku = 'B00004';

UPDATE buku
SET tahun = '2010'
WHERE id_buku = 'B00003';

UPDATE buku
SET id_penerbit = 'P005',
    id_kategori = 'K12305'
WHERE id_buku = 'B00005';

UPDATE buku
SET id_penerbit = 'P006'
WHERE id_buku = 'B00006';

-- Validation queries
SELECT id_buku, judul, tahun, jml_tersedia
FROM buku
WHERE tahun = '2010';

SELECT nama_lengkap, nama_pena, email
FROM penulis
WHERE nama_lengkap <> nama_pena
  AND email IS NOT NULL;
