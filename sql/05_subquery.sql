-- MySQL Library Database
-- 05 - Subquery exercises

USE perpustakaan;

-- SUBQUERY NO.1
/*SUBQUERY*/
SELECT id_kategori, COUNT(*) AS jumlah_buku
FROM buku
GROUP BY id_kategori
HAVING COUNT(*) > 2;

/*QUERY*/
SELECT
    k.nama,
    COUNT(b.id_buku) AS jumlah_buku
FROM kategori k
JOIN buku b ON k.id_kategori = b.id_kategori
WHERE k.id_kategori IN (
    SELECT id_kategori
    FROM buku
    GROUP BY id_kategori
    HAVING COUNT(*) > 2
)
GROUP BY k.nama;

-- SUBQUERY NO.2
/*SUBQUERY*/
SELECT id_penerbit
FROM penerbit
WHERE Kota = 'Yogyakarta';

/*QUERY*/
SELECT DISTINCT pen.nama_lengkap
FROM penulis pen
JOIN buku_penulis bp ON pen.no_ktp = bp.id_penulis
JOIN buku b ON bp.id_buku = b.id_buku
WHERE b.id_penerbit IN (
    SELECT id_penerbit
    FROM penerbit
    WHERE Kota = 'Yogyakarta'
);

-- SUBQUERY NO.3
/*SUBQUERY*/
SELECT id_penulis, COUNT(*) AS jumlah_buku
FROM buku_penulis
GROUP BY id_penulis
ORDER BY jumlah_buku DESC;

/*QUERY*/
SELECT pen.nama_lengkap
FROM penulis pen
JOIN (
    SELECT id_penulis, COUNT(*) AS jumlah_buku
    FROM buku_penulis
    GROUP BY id_penulis
) AS terbanyak
ON pen.no_ktp = terbanyak.id_penulis
WHERE terbanyak.jumlah_buku = (
    SELECT MAX(jumlah_buku)
    FROM (
        SELECT id_penulis, COUNT(*) AS jumlah_buku
        FROM buku_penulis
        GROUP BY id_penulis
    ) AS jumlah_penulis
);

-- SUBQUERY NO.4
/*SUBQUERY*/
SELECT DISTINCT id_kategori
FROM buku;

/*QUERY*/
SELECT nama
FROM kategori
WHERE id_kategori NOT IN (
    SELECT DISTINCT id_kategori
    FROM buku
);

-- SUBQUERY 5
/*SUBQUERY*/
SELECT DISTINCT id_penerbit
FROM buku
WHERE jml_hal > 100;

/*QUERY*/
SELECT id_penerbit, Nama
FROM penerbit
WHERE id_penerbit IN (
    SELECT DISTINCT id_penerbit
    FROM buku
    WHERE jml_hal > 100
);

-- SUBQUERY 6
/*SUBQUERY*/
SELECT AVG(jml_hal) AS rata_rata_halaman
FROM buku;

/*QUERY*/
SELECT judul, jml_hal
FROM buku
WHERE jml_hal > (
    SELECT AVG(jml_hal)
    FROM buku
);

-- SUBQUERY 7
/*SUBQUERY*/
SELECT id_penulis, COUNT(*) AS jumlah_buku
FROM buku_penulis
GROUP BY id_penulis;

/*QUERY*/
SELECT
    pen.nama_lengkap,
    jumlah.jumlah_buku
FROM penulis pen
JOIN (
    SELECT id_penulis, COUNT(*) AS jumlah_buku
    FROM buku_penulis
    GROUP BY id_penulis
) AS jumlah
ON pen.no_ktp = jumlah.id_penulis
ORDER BY jumlah.jumlah_buku DESC;

-- SUBQUERY 8
/*SUBQUERY*/
SELECT id_kategori, COUNT(*) AS jumlah_buku
FROM buku
GROUP BY id_kategori;

/*QUERY*/
SELECT
    k.nama AS kategori,
    COALESCE(jumlah.jumlah_buku, 0) AS jumlah_buku
FROM kategori k
LEFT JOIN (
    SELECT id_kategori, COUNT(*) AS jumlah_buku
    FROM buku
    GROUP BY id_kategori
) AS jumlah
ON k.id_kategori = jumlah.id_kategori
ORDER BY jumlah_buku DESC;
