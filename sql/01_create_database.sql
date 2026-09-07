-- MySQL Library Database
-- 01 - Create database and tables

DROP DATABASE IF EXISTS perpustakaan;
CREATE DATABASE perpustakaan;
USE perpustakaan;

CREATE TABLE penerbit (
    id_penerbit CHAR(4) PRIMARY KEY,
    Nama VARCHAR(50) NOT NULL,
    Kota VARCHAR(50),
    Alamat VARCHAR(100),
    Email VARCHAR(50)
);

CREATE TABLE penulis (
    no_ktp CHAR(16) PRIMARY KEY,
    nama_lengkap VARCHAR(50) NOT NULL,
    nama_pena VARCHAR(50),
    email VARCHAR(50) UNIQUE,
    alamat VARCHAR(100)
);

CREATE TABLE kategori (
    id_kategori CHAR(6) PRIMARY KEY,
    nama VARCHAR(30) NOT NULL,
    deskripsi VARCHAR(100)
);

CREATE TABLE rak (
    id_rak CHAR(4) PRIMARY KEY,
    deskripsi VARCHAR(100)
);

CREATE TABLE buku (
    id_buku CHAR(6) PRIMARY KEY,
    judul VARCHAR(100) NOT NULL,
    tahun CHAR(4),
    id_penerbit CHAR(4),
    jml_hal INT,
    sinopsis VARCHAR(255),
    id_kategori CHAR(6),
    jml_eksemplar INT,
    jml_tersedia INT,
    id_rak CHAR(4),
    tgl_input DATE,
    FOREIGN KEY (id_penerbit) REFERENCES penerbit(id_penerbit),
    FOREIGN KEY (id_kategori) REFERENCES kategori(id_kategori),
    FOREIGN KEY (id_rak) REFERENCES rak(id_rak)
);

CREATE TABLE buku_penulis (
    id_buku CHAR(6),
    id_penulis CHAR(16),
    PRIMARY KEY (id_buku, id_penulis),
    FOREIGN KEY (id_buku) REFERENCES buku(id_buku),
    FOREIGN KEY (id_penulis) REFERENCES penulis(no_ktp)
);
