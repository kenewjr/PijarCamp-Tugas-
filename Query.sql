-- nama : abrar muhammad anwar
-- one to one:
CREATE TABLE akun (
    id_akun INT PRIMARY KEY,
    username VARCHAR(50));  
CREATE TABLE akun_profil (
    id_profile INT PRIMARY KEY,
    id_akun INT,
    data_akun VARCHAR(255),
    FOREIGN KEY (id_akun) REFERENCES akun(id_akun));
    
-- one to many:
CREATE TABLE jurusan (
    id_jurusan INT PRIMARY KEY,
    nama_jurusan VARCHAR(50));
CREATE TABLE mahasiswa (
    nim INT PRIMARY KEY,
    nama_mahasiswa VARCHAR(50),
    id_jurusan INT,
    FOREIGN KEY (id_jurusan) REFERENCES jurusan(id_jurusan));
    