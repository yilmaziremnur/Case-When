use Marketim
SELECT urun.u_ad, urun.fiyat, urun.stokmiktar, satis.satismiktari,
CASE WHEN satis.satismiktari<100 then 'Talep Seviyesi:Riskli'
     WHEN satis.satismiktari<300 then 'Talep Seviyesi:Az'
     WHEN satis.satismiktari<700 then 'Talep Seviyesi:Orta'
     WHEN satis.satismiktari>700 then 'Talep Seviyesi:Yüksek'
ELSE 'Miktar hesaplanamadı'
END TalepMiktari
FROM satis
JOIN urun on urun.urunid=satis.urunid
