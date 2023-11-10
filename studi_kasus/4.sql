-- Nominal rata-rata yang dilakukan oleh pelanggan
SELECT p.nama AS Nama_Pelanggan, AVG(b.harga) AS Rata_Rata_Nominal
FROM pembeli p
INNER JOIN transaksi t ON p.id = t.pembeli_id
INNER JOIN barang b ON t.barang_id = b.id
GROUP BY p.id;