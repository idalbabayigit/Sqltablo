CREATE DATABASE StokTakipDB;
USE StokTakipDB;
CREATE TABLE Musteri (
MuþteriID INT PRIMARY KEY,
MusteriAdi VARCHAR (20) NULL,
MusteriTelefon VARCHAR (20) NOT NULL,
);
CREATE TABLE Tedarikci(
TedarikciID INT PRIMARY KEY,
TedarikciAdi VARCHAR (20) NOT NULL,
TedarikciTelefon VARCHAR (20) NOT NULL,
TedarikciMail VARCHAR (20) NOT NULL,
);
CREATE TABLE Urun (
UrunID INT PRIMARY KEY,
UrunAdi VARCHAR (20) NOT NULL,
UrunFýyat VARCHAR (20) NOT NULL,
UrunMiktarý VARCHAR (20) NOT NULL,
FOREIGN KEY TedarikciAdý REFERENCES Tedarikci (TedarikciID)
);
CREATE TABLE SatýnAlma(
SatýnID INT PRIMARY KEY,
OdemeDurumu VARCHAR NOT NULL,
UrunFiyat VARCHAR (20) NOT NULL,
FOREIGN KEY TedarikciAdý REFERENCES Tedarikci (TedarikciID)
