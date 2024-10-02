
-- -- -  Tüm kulüp üyelerinin adlarını, soyadlarını ve hangi kulüpte yer aldıklarını listeleyin. (`JOIN`)

-- SELECT*
-- FROM Kulüpler k JOIN OgrenciKulüp og ON og.KulüpID=k.KulüpID

-- -  "Tiyatro Kulübü" üyelerini ve rollerini listeleyin. (`WHERE` ve `JOIN`)

-- SELECT
-- og.AdSoyad AS [ÜYE Bilgisi],
-- og.Rol AS [Rol]
-- FROM Kulüpler k JOIN OgrenciKulüp og ON og.KulüpID=k.KulüpID
-- WHERE k.KulüpAdi ='Tiyatro Kulübü';
 
--    -  Tüm kulüplerde başkan olarak görev yapan öğrencileri listeleyin. (`WHERE`)
--  SELECT
--  og.AdSoyad AS [ÜYE Bilgisi],
--  k.KulüpAdi AS [Kulüp ADI],
--  og.Rol AS [Rol]
--  FROM Kulüpler k JOIN OgrenciKulüp og ON og.KulüpID=k.KulüpID
--  WHERE og.Rol ='Baskan';

--  -  Her kulübün kaç üyesi olduğunu listeleyin. (`GROUP BY` ve `COUNT`)
-- SELECT
--     k.KulüpAdi AS [Kulüp],
--     COUNT(og.OgrenciID) AS [Üye Sayısı]
-- FROM Kulüpler k JOIN OgrenciKulüp og ON og.KulüpID = k.KulüpID
-- GROUP BY k.KulüpAdi;


-- -  Kuruluş yılı en eski olan kulübün üyelerini listeleyin. (`ORDER BY` ve `JOIN`)
-- SELECT TOP 3
-- k.KurulusYili AS [KurulusYili],
-- k.KulüpAdi AS [Kulübün Adı],
-- og.AdSoyad AS [Üye Bilgisi]
-- FROM Kulüpler k JOIN OgrenciKulüp og ON og.KulüpID = k.KulüpID
-- ORDER by k.KurulusYili ASC

--  -  "Müzik Kulübü"nde bulunan tüm rollerin bir listesini çıkarın. (`WHERE` ve `DISTINCT`)

-- SELECT DISTINCT
--     og.Rol AS [Rol]
-- FROM OgrenciKulüp og JOIN Kulüpler k ON og.KulüpID = k.KulüpID
-- WHERE k.KulüpAdi = 'Müzik Kulübü';

--  -  Her kulüpte kaç başkan olduğunu gruplandırarak listeleyin. (`GROUP BY` ve `COUNT`)

-- SELECT
--     k.KulüpAdi AS [Kulüp],
--     COUNT(og.OgrenciID) AS [Başkan Sayısı]
-- FROM Kulüpler k
-- JOIN OgrenciKulüp og ON og.KulüpID = k.KulüpID
-- WHERE og.Rol = 'Baskan'
-- GROUP BY k.KulüpAdi;

   --  Birden fazla kulüpte yer alan öğrencileri ve katıldıkları kulüpleri listeleyin.  (`GROUP BY` ve `HAVING`)

--  SELECT
--      og.OgrenciID,
--    og.AdSoyad AS [Öğrenci],
--     STRING_AGG(k.KulüpAdi, ', ') AS [Katıldıkları Kulüpler]
--  FROM OgrenciKulüp og
--  JOIN Kulüpler k ON og.KulüpID = k.KulüpID
--  GROUP BY og.OgrenciID, og.AdSoyad
--  HAVING COUNT(og.OgrenciID) > 1;



