--  -   Her personelin mevcut maaşını listeleyin (En son güncelleme tarihine göre).
-- SELECT
-- p.Ad AS [Personel AD],
-- m.GüncellemeTarihi AS [GüncellemeTarihi],
-- m.MaasMiktari AS [Güncellenmiş Maas Bilgisi]
-- FROM Personel p JOIN Maaslar m ON m.PersonelID=p.PersonelID
-- GROUP BY m.GüncellemeTarihi,p.Ad,m.MaasMiktari  
-- ORDER BY m.MaasMiktari DESC;

-- -   Tüm personelin ortalama maaşını hesaplayan bir sorgu yazın.
-- SELECT
-- AVG(m.MaasMiktari) AS [Ortalama Maaş miktarı]
-- FROM Personel p JOIN Maaslar m ON p.PersonelID=m.PersonelID
-- ORDER by AVG(m.MaasMiktari) ASC

-- -   Aynı pozisyonda çalışan personelin maaşlarını karşılaştırarak en yüksek ve en düşük maaşları getirin. 
-- SELECT 
-- MAX(m.MaasMiktari) AS [En_Yuksek_Maaş],
-- MIN(m.MaasMiktari) AS [En_Dusuk_Maas]
-- FROM Personel p JOIN Maaslar m ON p.PersonelID=m.PersonelID
-- WHERE p.Pozisyon LIKE '%öğretmen%';

-- -   Tüm personelin adını, soyadını ve pozisyonunu listeleyin. (`SELECT` ve `FROM`)

-- SELECT 
-- p.Ad+''+p.SoYAD AS [Personel AD-SOYAD],
-- p.Pozisyon AS [Çalıştığı Pozisyon],
-- m.MaasMiktari AS [MaAS BİLGİSİ]
-- FROM Personel p JOIN Maaslar m ON m.PersonelID=p.PersonelID

--  -   Hangi pozisyonda kaç personel çalıştığını gösteren bir liste oluşturun. (`GROUP BY` ve `COUNT`)

-- SELECT
-- p.Pozisyon AS [Pozisyon],
-- COUNT(p.PersonelID) AS [Personel Sayısı]
-- FROM Personel p
-- GROUP BY p.Pozisyon;

    -- -   Her personelin en son maaş miktarını ve güncelleme tarihini listeleyin. (`JOIN` ve `MAX`)

-- SELECT
-- m.GüncellemeTarihi AS [GüncellemeTarihi],
-- p.Ad  AS [Personel],
-- m.MaasMiktari AS [Maas]
-- FROM Personel p JOIN Maaslar m on m.PersonelID =p.PersonelID 

--  -   "Hemşire" pozisyonunda çalışan tüm personelleri listeleyin. (`WHERE`)
-- SELECT*
-- FROM Personel p 
-- WHERE p.Pozisyon ='Hemsire';

--   -   En yüksek maaş alan personelin adını, soyadını ve maaşını listeleyin. (`ORDER BY` ve `LIMIT`)
-- SELECT TOP 1
-- p.Ad,
-- p.SoYAD, 
-- m.MaasMiktari
-- FROM Personel p JOIN Maaslar m ON m.PersonelID =p.PersonelID
-- ORDER BY m.MaasMiktari DESC;

--   -   Aynı pozisyondaki personellerin maaşlarını karşılaştırarak en yüksek ve en düşük maaşı listeleyin. (`GROUP BY` ve `HAVING`)

-- SELECT 
--     p.Pozisyon, 
--     MAX(m.MaasMiktari) AS En_Yuksek_Maas, 
--     MIN(m.MaasMiktari) AS En_Dusuk_Maas
-- FROM  Personel p
-- JOIN Maaslar m ON m.PersonelID =p.PersonelID
-- GROUP BY p.Pozisyon 
-- HAVING 
--     p.Pozisyon = 'Hemsire';

--  -   Son 6 ay içinde maaşı güncellenen personelleri listeleyin. (`WHERE` ve `DATEADD`)
SELECT *
FROM Personel p JOIN Maaslar m ON m.PersonelID =p.PersonelID
WHERE m.GüncellemeTarihi >= DATEADD(MONTH, -6, GETDATE());
