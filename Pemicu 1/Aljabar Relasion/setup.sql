CREATE TABLE Pendaftar (
    id_pendaftar int  NOT NULL,
    nama varchar(20)  NOT NULL,
    nik char(16)  NOT NULL,
    verified boolean  NOT NULL,
    Sekolah_id_sekolah int  NOT NULL,
    CONSTRAINT Pendaftar_pk PRIMARY KEY (id_pendaftar)
);

-- Table: Sekolah
CREATE TABLE Sekolah (
    id_sekolah int  NOT NULL,
    nama_sekolah varchar(50)  NOT NULL,
    kota varchar(50)  NOT NULL,
    alamat varchar(50)  NOT NULL,
    CONSTRAINT Sekolah_pk PRIMARY KEY (id_sekolah)
);

-- foreign keys
-- Reference: Pendaftar_Sekolah (table: Pendaftar)
ALTER TABLE Pendaftar ADD CONSTRAINT Pendaftar_Sekolah FOREIGN KEY Pendaftar_Sekolah (Sekolah_id_sekolah)
    REFERENCES Sekolah (id_sekolah);

-- Seed data untuk Sekolah
INSERT INTO Sekolah (id_sekolah, nama_sekolah, kota, alamat) VALUES
(1, 'SMA Negeri 1 Jakarta', 'Jakarta', 'Jl. Merdeka No.1'),
(2, 'SMA Negeri 2 Bandung', 'Bandung', 'Jl. Asia Afrika No.2'),
(3, 'SMA Negeri 3 Surabaya', 'Surabaya', 'Jl. Pahlawan No.3');

-- Seed data untuk Pendaftar
INSERT INTO Pendaftar (id_pendaftar, nama, nik, verified, Sekolah_id_sekolah) VALUES
(1, 'Ahmad Fadli', '3201011234567890', true, 1),
(2, 'Siti Aisyah', '3201021234567891', false, 1),
(3, 'Budi Santoso', '3201031234567892', true, 2),
(4, 'Dewi Lestari', '3201041234567893', false, 2),
(5, 'Caca Marica', '3201051234567894', true, 3);
