    -- -   Tüm kitapların adını, yazarını ve yayın yılını listeleyin. (`SELECT` ve `FROM`)

-- SELECT
-- KitapAdi AS [KitapAdi],
-- Yazar AS [Yazarı],
-- YayinYili AS [Yayımlanma Yılı]  
-- FROM Kitaplar

-- -   Yayın yılı 1900’den sonra olan kitapların isimlerini ve yazarlarını listeleyin. (`WHERE`)

-- SELECT* 
-- FROM Kitaplar k 
-- WHERE k.YayinYili> 1900

-- -   Hangi öğrencinin hangi kitapları ödünç aldığını gösteren bir liste oluşturun. (`JOIN`)

-- SELECT
-- i.Ad AS [Öğrencinin Adı],
-- i.Soyad AS [Öğrencinin Soyadı],
-- k.KitapAdi [Öğrencinin Ödünç Aldığı KitapAdi]

-- FROM Kitaplar k
-- JOIN OduncAlmalar o ON k.KitapID = o.KitapID
-- JOIN Ogrenciler i ON o.OgrenciID = i.OgrenciID;

-- En fazla sayfa sayısına sahip 5 kitabı sayfa sayısına göre azalan sırayla listeleyin. (`ORDER BY` ve `LIMIT`)

-- SELECT*
-- FROM Kitaplar k ORDER BY SayfaSayisi DESC

--  "Ertem Eğilmez" adlı yazarın dvdleriniı listeleyin. (`WHERE`)

-- SELECT*
-- FROM DVDLER d 
-- WHERE d.Yönetmen='Ertem Eğilmez'
-- *Öğrencilerin ödünç aldığı dergileri ve bu dergilerin yayıncılarını listeleyin. (`JOIN`)

-- SELECT
-- k.Ad AS [Öğrencinin Adı],
-- k.Soyad AS [öğrencinin Soyadı],
-- d.DergiID AS [ID],
-- d.DergiAdi AS [Derginin Adı],
-- d.Yayinci AS [YAYINEVİ]

-- FROM Dergiler d 
-- JOIN OduncAlmalar o ON d.DergiID= o.DergiID
-- JOIN Ogrenciler k ON o.OgrenciID=k.OgrenciID;

-- -   Henüz hiçbir materyal ödünç almayan öğrencileri listeleyin. (`LEFT JOIN` ve `IS NULL`)


-- SELECT 
--     k.OgrenciID AS [ÖĞRENCİID],
--     k.Ad AS [Öğrencinin Adı],
--     k.Soyad AS [öğrencinin Soyadı]
-- FROM Ogrenciler k 
-- LEFT JOIN OduncAlmalar o ON k.OgrenciID = o.OgrenciID
-- WHERE o.OgrenciID IS NULL;  -- OduncAlmalar tablosunda karşılığı olmayan öğrencileri seçiyoruz

-- Her kitabın, derginin ve DVD'nin kaç kez ödünç alındığını gruplandırarak listeleyin. (`GROUP BY`)

-- SELECT
--     d.DergiAdi AS [Dergi ADI],
--     v.DVDAdi AS [DVD ADI],
--     k.KitapAdi AS [Kitabın ADI],
--     COUNT(o.OduncID) AS [Ödünç Sayısı]  -- Ödünç alınma sayısını hesaplıyoruz
-- FROM Dergiler d
-- JOIN OduncAlmalar o ON d.DergiID = o.DergiID
-- JOIN DVDLER v ON v.DVDID = o.DVDID
-- JOIN Kitaplar k ON k.KitapID = o.KitapID
-- GROUP BY d.DergiAdi, v.DVDAdi, k.KitapAdi;  -- Tüm ilgili alanlarla gruplandırıyoruz

-- Yayın tarihi en eski olan 3 DERGİYİ listeleyin. (`ORDER BY` ve `LIMIT`)
-- SELECT TOP 3 
--     DergiID, 
--     DergiAdi, 
--     YayinTarihi 
-- FROM 
--     Dergiler 
-- ORDER BY 
--     YayinTarihi ASC;
 
-- "Merve Türk" adlı öğrencinin ödünç aldığı tüm materyalleri listeleyin. (`WHERE` ve `JOIN`)

SELECT
    o.OgrenciID,
    o.Ad AS [Öğrencinin Adı],
    o.Soyad AS [Öğrencinin Soyadı],
    k.KitapAdi AS [Kitap Adı],
    d.DergiAdi AS [Dergi Adı],
    v.DVDAdi AS [DVD Adı]
FROM 
    Ogrenciler o
LEFT JOIN 
    OduncAlmalar od ON o.OgrenciID = od.OgrenciID
LEFT JOIN 
    Kitaplar k ON k.KitapID = od.KitapID
LEFT JOIN 
    Dergiler d ON d.DergiID = od.DergiID
LEFT JOIN 
    DVDLER v ON v.DVDID = od.DVDID
WHERE 
    o.Ad = 'Merve' AND o.Soyad = 'Türk'; 








