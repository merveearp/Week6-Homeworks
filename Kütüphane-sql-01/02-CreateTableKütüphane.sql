-- DROP TABLE Bolumler -- Tablo silme işlemi

CREATE TABLE Kitaplar(
    KitapID INT PRIMARY KEY  IDENTITY(1,1),
    KitapAdi NVARCHAR(100) NOT NULL,
    Yazar NVARCHAR(50) NOT NULL,
    YayinYili INT NOT NULL,
    SayfaSayisi INT NULL,
    ISBN INT NULL

);

CREATE TABLE Dergiler(
    DergiID INT PRIMARY KEY IDENTITY(1,1),
    DergiAdi NVARCHAR(100) NOT NULL,
    Yayinci NVARCHAR(50) NOT NULL,
    YayinTarihi INT NOT NULL,
    Sayi INT NULL
    
);

CREATE TABLE DVDLER (
    DVDID INT PRIMARY KEY IDENTITY(1,1),
    DVDAdi NVARCHAR(50) NOT NULL,
    Yönetmen NVARCHAR(50) NOT NULL,
    YayinYili DATE NOT NULL,
    Süre INT NULL
    
);

CREATE TABLE Ogrenciler(
    OgrenciID INT PRIMARY KEY IDENTITY(1,1),
    Ad NVARCHAR(50) NOT NULL,
    Soyad NVARCHAR(50) NOT NULL
    
);
CREATE TABLE OduncAlmalar(
    OduncID INT NOT NULL,
    OduncTarihi DATE NOT NULL ,
    IadeTarihi DATE,
    OgrenciID INT ,
    KitapID INT,
    DergiID INT,
    DVDID INT,
    
    
    FOREIGN KEY (OgrenciID) REFERENCES Ogrenciler(OgrenciID),
    FOREIGN KEY (KitapID) REFERENCES Kitaplar(KitapID),
    FOREIGN KEY (DergiID) REFERENCES Dergiler(DergiID),
    FOREIGN KEY (DVDID) REFERENCES DVDLER(DVDID)

);




