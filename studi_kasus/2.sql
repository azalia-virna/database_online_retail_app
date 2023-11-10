-- Melihat 3 produk yang paling sering dibeli oleh pelanggan
SELECT b.nama AS Nama_Produk, COUNT(t.barang_id) AS Jumlah_Pembelian
FROM barang b
LEFT JOIN transaksi t ON b.id = t.barang_id
GROUP BY b.id
ORDER BY Jumlah_Pembelian DESC
LIMIT 3;