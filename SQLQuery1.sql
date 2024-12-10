CREATE DATABASE StokTakipDB;
USE StokTakipDB;
CREATE TABLE Musteri (
Mu�teriID INT PRIMARY KEY,
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
UrunF�yat VARCHAR (20) NOT NULL,
UrunMiktar� VARCHAR (20) NOT NULL,
FOREIGN KEY TedarikciAd� REFERENCES Tedarikci (TedarikciID)
);
CREATE TABLE Sat�nAlma(
Sat�nID INT PRIMARY KEY,
OdemeDurumu VARCHAR NOT NULL,
UrunFiyat VARCHAR (20) NOT NULL,
FOREIGN KEY TedarikciAd� REFERENCES Tedarikci (TedarikciID)
