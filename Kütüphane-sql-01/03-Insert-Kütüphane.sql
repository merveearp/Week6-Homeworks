INSERT INTO Kitaplar(KitapAdi,Yazar,YayinYili)
VALUES
('Vadidedki Zambak','Balzac',1930),
('Dönüşüm ','Franz Kafka',1915),
('Küçük Prens','Antoine de Saint',1943),
('Simyacı','Paulo Coelho',1988),
('Kürk Mamtolu Madonna','Sabaattin Ali',1980),
('Şimdiki Çocuklar Harika','Aziz Nesin',1985),
('Palto','Nikolay',1842),
('1984','George Orwel',1949),
('Satranç','Stefan Zweig,',1941),
('Altıncı Koğuş','Anton Çehov',1892),
('Drakula','Bram Stoker',1897),
('Yer Altından Notlar','Fyodor Dostoyevski',1864),
('Ütopya','Thomas More',1516),
('Böyle Söyledi Zerduşt','Friendrich Nietzsche',1883),
('Hayvan Çiftliği','George Orwel',1890),
('Hamlet','William Shakespare',1600),
('Bitik Adam','Giovanni Papini',1556),
('Usta İle Margarita','Mihail Bulgakov',1600)

INSERT INTO Kitaplar(KitapAdi,Yazar,YayinYili,SayfaSayisi,ISBN)
VALUES
('Yabancı','Albert Camus',1942,112,1271),
('Suç ve Ceza','Dostoyevski',1866,756,4867),
('Tutunamayanlar',' Oğuz Atay',1972,724,0114)

INSERT INTO Dergiler(DergiAdi,Yayinci,YayinTarihi,Sayi)
VALUES

('Bilim VE Teknik','TÜBİTAK',2024,680),
('Bilim VE Çocuk','TÜBİTAK',2024,650),
('Matematik Dünyası','NESİN YAYINLARI',2024,119),
('Alternatif Eğitim ','YENİ İNSAN KAYNAKLARI',2020,13),
('Toplum ve Bilim ','İLETİŞİM YAYINEVİ',2023,165)

INSERT INTO DVDLER(DVDAdi,Yönetmen,YayinYili)
VALUES
('Hababam Sınıfı','Ertem Eğilmez','1975/10/04'),
('Dedemin İnsanları','Çağan Irmak','1973/04/10'),
('Kader','Zeki Demirkubuz','2006/05/06')


INSERT INTO DVDLER(DVDAdi,Yönetmen,YayinYili,Süre)
VALUES
('Canım Kardeşim','Ertem Eğilmez','1973/10/10',150),
('Çöpçüler Kralı','Zeki Ökten','1977/03/11',155)

INSERT INTO Ogrenciler(Ad,Soyad)
VALUES
('Merve','Türk'),
('İsmail','Gürsoy'),
('Zeliş','Seyit'),
('Hande','Tosun'),
('Çağla','Yılmaz'),
('Beyza','Demir'),
('Enes ','Güneş'),
('Emin','Yıldız')

INSERT INTO OduncAlmalar(OduncID,OduncTarihi,OgrenciID,KitapID,DergiID,DVDID)
VALUES
(1,'2024/08/27',1,1,2,1),
(2,'2024/09/01',5,17,1,2),
(3,'2024/09/10',2,10,3,4),
(4,'2024/07/10',6,15,4,5),
(5,'2024/06/08',3,8,5,3),
(6,'2024/05/24',8,10,5,3),
(7,'2024/10/11',4,10,1,2)







