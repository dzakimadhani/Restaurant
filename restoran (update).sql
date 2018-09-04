CREATE TABLE kasir (
  idKasir varchar2(10) NOT NULL,
  idOrder varchar2(10) NOT NULL,
  namaKasir varchar2(50),
  jKelaminKasir varchar2(15)
);
ALTER TABLE kasir ADD PRIMARY KEY (idKasir);
ALTER TABLE kasir ADD FOREIGN KEY (idOrder) REFERENCES order (idOrder);

CREATE TABLE koki (
  idKoki varchar2(10) NOT NULL,
  idProduk varchar2(10) NOT NULL,
  namaKoki varchar2(50) ,
  divisiKoki varchar2(25)
);
ALTER TABLE koki ADD PRIMARY KEY (idKoki);
ALTER TABLE koki ADD FOREIGN KEY (idProduk) REFERENCES produk (idProduk);

CREATE TABLE order (
  idOrder varchar2(10) NOT NULL,
  idPelanggan varchar2(10) NOT NULL,
  idProduk varchar2(10) NOT NULL,
  tglOrder varchar2(20) ,
  jenisOrder varchar2(20) ,
  biayaOrder int(11)
);
ALTER TABLE order ADD PRIMARY KEY (idOrder);
ALTER TABLE order ADD FOREIGN KEY (idProduk) REFERENCES produk (idProduk);
ALTER TABLE order ADD FOREIGN KEY (idPelanggan) REFERENCES pelanggan (idPelanggan);

CREATE TABLE pelanggan (
  idPelanggan varchar2(10) NOT NULL,
  namaPelanggan varchar2(50) ,
  alamatPelanggan varchar2(75) 
);
ALTER TABLE pelanggan ADD PRIMARY KEY (idPelanggan);

CREATE TABLE produk (
  idProduk varchar2(10) NOT NULL,
  namaProduk varchar2(30) ,
  jenisProduk varchar2(25) ,
  stokProduk int(11) ,
  hargaProduk int(11)
);
ALTER TABLE produk ADD PRIMARY KEY (dProduk);

--
-- Query SQL insert dan select
--

INSERT INTO produk VALUES ('Produk001','Nasi Goreng','Makanan',50,10000);
SELECT * FROM produk;