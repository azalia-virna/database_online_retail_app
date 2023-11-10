-- 1 pelanggan membeli 3 barang yang berbeda
SELECT p.nama AS Nama_Pelanggan, COUNT(DISTINCT t.barang_id) AS Jumlah_Barang_Berbeda
FROM pembeli p
INNER JOIN transaksi t ON p.id = t.pembeli_id
GROUP BY p.id
HAVING COUNT(DISTINCT t.barang_id) >= 3;