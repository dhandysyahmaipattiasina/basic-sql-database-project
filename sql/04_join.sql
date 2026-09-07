-- MySQL Library Database
-- 04 - JOIN Exercises

USE perpustakaan;

-- =====================================================
-- JOIN 1
-- Buku dari kota Semarang dan kategori Matematika
-- =====================================================

SELECT
    b.id_buku,
    b.judul,
    b.tahun,
    p.Nama AS nama_penerbit,
    p.Kota,
    pen.nama_lengkap,
    k.nama AS nama_kategori,
    r.deskripsi AS deskripsi_rak
FROM buku b
JOIN penerbit p
    ON b.id_penerbit = p.id_penerbit
JOIN kategori k
    ON b.id_kategori = k.id_kategori
JOIN rak r
    ON b.id_rak = r.id_rak
JOIN buku_penulis bp
    ON b.id_buku = bp.id_buku
JOIN penulis pen
    ON bp.id_penulis = pen.no_ktp
WHERE p.Kota = 'Semarang'
  AND k.nama = 'Matematika'
ORDER BY b.tahun DESC,
         pen.nama_lengkap ASC;


-- =====================================================
-- JOIN 2
-- Penulis beserta buku yang telah ditulis
-- =====================================================

SELECT
    pen.no_ktp,
    pen.nama_lengkap,
    b.judul,
    p.Nama AS nama_penerbit,
    p.Kota
FROM penulis pen
JOIN buku_penulis bp
    ON pen.no_ktp = bp.id_penulis
JOIN buku b
    ON bp.id_buku = b.id_buku
JOIN penerbit p
    ON b.id_penerbit = p.id_penerbit
ORDER BY pen.nama_lengkap ASC;


-- =====================================================
-- JOIN 3
-- Buku beserta penulisnya
-- =====================================================

SELECT
    b.id_buku,
    b.judul,
    pen.no_ktp,
    pen.nama_lengkap
FROM buku b
JOIN buku_penulis bp
    ON b.id_buku = bp.id_buku
JOIN penulis pen
    ON bp.id_penulis = pen.no_ktp
ORDER BY b.judul ASC,
         pen.nama_lengkap ASC;


-- =====================================================
-- JOIN 4
-- Semua penulis, termasuk yang belum memiliki buku
-- =====================================================

SELECT
    pen.no_ktp,
    pen.nama_lengkap,
    b.judul
FROM penulis pen
LEFT JOIN buku_penulis bp
    ON pen.no_ktp = bp.id_penulis
LEFT JOIN buku b
    ON bp.id_buku = b.id_buku
ORDER BY pen.nama_lengkap ASC;


-- =====================================================
-- JOIN 5
-- Semua kategori, termasuk yang belum memiliki buku
-- =====================================================

SELECT
    k.id_kategori,
    k.nama AS kategori,
    b.judul
FROM kategori k
LEFT JOIN buku b
    ON k.id_kategori = b.id_kategori
ORDER BY k.nama ASC;
