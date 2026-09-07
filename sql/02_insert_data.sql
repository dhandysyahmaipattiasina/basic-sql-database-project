-- MySQL Library Database
-- 02 - Insert portfolio dataset

USE perpustakaan;

INSERT INTO penerbit
(id_penerbit, Nama, Kota, Alamat, Email)
VALUES
('P001', 'Erlangga', 'Banyumas', 'Ajibarang Kulon', 'mfatih@gmail.com'),
('P002', 'Gramedia Pustaka Utama', 'Ambon', 'Halmahera', 'dhandysyah@gmail.com'),
('P003', 'Mizan Pustaka', 'Depok', 'Gondangdia', 'ripjen961@gmail.com'),
('P004', 'Bentang Pustaka', 'Grobogan', 'Cikini', 'originalbanget@gmail.com'),
('P005', 'UNNES Press', 'Semarang', 'Meteseh', 'iniimel@gmail.com'),
('P006', 'ANDI', 'Yogyakarta', 'Jl. Kaliurang No.1', 'andi@yogyakarta.com');

INSERT INTO penulis
(no_ktp, nama_lengkap, nama_pena, email, alamat)
VALUES
('1234567890120002', 'Budi Santosa', 'Daga', 'dagadigi@gmail.com', 'Magelang'),
('1234567890120001', 'Faga Figi', 'Faga', 'fagafigi@gmail.com', 'Majalengka'),
('1234567890120003', 'Ripca Ripci', 'Ripca', 'ripcaripci@gmail.com', 'Tangerang'),
('1234567890120004', 'Orca Orci', 'Orci', 'orcaorci@gmail.com', 'Klaten'),
('1234567890900005', 'Imca Imci', 'Imci', 'imcaimci@gmail.com', 'Salatiga');

INSERT INTO kategori
(id_kategori, nama, deskripsi)
VALUES
('K12301', 'Sains', 'Mencakup ilmu sains'),
('K12302', 'Kebudayaan', 'Mencakup ilmu budaya'),
('K12303', 'Sosial', 'Mencakup ilmu sosial masyarakat'),
('K12304', 'Bahasa', 'Mencakup ilmu bahasa'),
('K12305', 'Matematika', 'Mencakup ilmu matematika'),
('K12306', 'Filsafat', 'Mencakup ilmu filsafat');

INSERT INTO rak
(id_rak, deskripsi)
VALUES
('R001', 'Buku Pelajaran'),
('R002', 'Buku Biografi'),
('R003', 'Buku Antologi Sastra'),
('R004', 'Komik'),
('R005', 'Buku Fiksi');

INSERT INTO buku
(id_buku, judul, tahun, id_penerbit, jml_hal, sinopsis,
 id_kategori, jml_eksemplar, jml_tersedia, id_rak, tgl_input)
VALUES
('B00001', 'Teknologi Fisika Dasar', '2014', 'P001', 150,
 'Buku ini membahas konsep dasar fisika dengan bahasa yang mudah dipahami.',
 'K12301', 10, 1, 'R001', '2023-01-15'),
('B00002', 'Biografi Albert Einstein', '2018', 'P002', 200,
 'Kisah hidup dan perjalanan ilmiah tokoh fisika ternama.',
 'K12301', 8, 1, 'R002', '2023-02-10'),
('B00003', 'Antologi Puisi Rindu', '2010', 'P003', 120,
 'Kumpulan puisi bertema cinta dan kerinduan.',
 'K12304', 12, 1, 'R003', '2023-03-05'),
('B00004', 'Petualangan Si Komo', '2022', 'P004', 90,
 'Komik anak-anak tentang petualangan seru Si Komo.',
 'K12303', 15, 5, 'R004', '2023-04-01'),
('B00005', 'Filosofi Kopi', '2023', 'P005', 180,
 'Buku tentang filosofi kehidupan melalui kisah dan pengalaman.',
 'K12305', 10, 10, 'R005', '2023-06-01'),
('B00006', 'Bahasa dan Logika', '2021', 'P006', 160,
 'Buku yang membahas hubungan bahasa dan logika.',
 'K12304', 8, 8, 'R005', '2023-07-01'),
('B00007', 'Dasar-Dasar Bahasa Indonesia', '2021', 'P003', 150,
 'Buku yang membahas dasar-dasar penggunaan bahasa Indonesia.',
 'K12304', 10, 10, 'R003', '2023-08-01');

INSERT INTO buku_penulis (id_buku, id_penulis) VALUES
('B00001', '1234567890120001'),
('B00002', '1234567890120002'),
('B00003', '1234567890120003'),
('B00004', '1234567890120004'),
('B00005', '1234567890120001'),
('B00006', '1234567890120003'),
('B00007', '1234567890120004');
