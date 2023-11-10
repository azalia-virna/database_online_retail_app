create table pembeli (
	id int(5) primary key not null auto_increment,
	nama VARCHAR(100) not NULL,
	email VARCHAR(25) not NULL,
	alamat VARCHAR(100) not null
);
insert into pembeli (nama, email, alamat) VALUES
("Virna", "virna@gmail.com", "Bojonegoro"),
("Vera", "vera@gmail.com", "Lamongan"),
("Dewa", "dewa@gmail.com", "Sidoarjo"),
("Abim", "abim@gmail.com", "Surabaya"),
("Nila", "nila@gmail.com", "Bojonegoro"),
("Meysa", "meysa@gmail.com", "Tuban"),
("Rizky", "rizky@gmail.com", "Sidoarjo"),
("Duta", "duta@gmail.com", "Sidoarjo"),
("Fadila", "fadila@gmail.com", "Magetan"),
("Anggun", "anggun@gmail.com", "Gresik");
select * from pembeli;

create table barang (
	id int(5) primary key not null auto_increment,
	nama VARCHAR(100) not NULL,
	stok int(5) not NULL,
	harga int(50) not NULL	
);
insert into barang (nama, stok, harga) VALUES
("basreng", 20, 8000),
("cireng", 15, 5000),
("usus", 25, 10000),
("keripik pisang", 15, 12000),
("somai", 10, 10000),
("baso aci", 40, 15000),
("tahu baso", 30, 15000),
("seblak", 38, 10000),
("cilor", 5, 5000),
("milkshake", 27, 10000),
("coffe", 18, 10000),
("tea", 7, 5000);
select * from barang;

create table kategori (
	id int(5) primary key not null auto_increment,
	nama VARCHAR(100) not NULL,
	keterangan VARCHAR(150) not NULL,
	status VARCHAR(50) not NULL
);
insert into kategori (nama, keterangan, status) VALUES
("makanan ringan", "makanan mengandung tepung", "tersedia"),
("makanan ringan", "makanan mengandung tepung", "tidak tersedia"),
("cemilan", "pedas nampol", "tersedia"),
("cemilan", "pedas nampol", "tidak tersedia"),
("cemilan", "manis", "tersedia"),
("cemilan", "manis", "tidak tersedia"),
("makanan berat", "mengandung tepung", "tersedia"),
("makanan berat", "mengandung tepung", "tidak tersedia"),
("minuman dingin", "mengandung susu atau kopi", "tersedia"),
("minuman dingin", "tidak mengandung susu atau kopi", "tidak tersedia"),
("minuman hangat", "mengandung susu atau kopi", "tersedia"),
("minuman hangat", "mengandung susu atau kopi", "tidak tersedia");
select * from kategori;

create table transaksi (
	id int(5) primary key not null auto_increment,
	pembeli_id int(5),
	barang_id int(5),
	FOREIGN key (pembeli_id) REFERENCES pembeli(id),
	FOREIGN key (barang_id) REFERENCES barang(id)
);
insert into transaksi (pembeli_id, barang_id) values 
(1, 8),(1, 2),(1, 5),
(2, 8),(2, 3),
(3, 9),(3, 10),
(4, 5),
(5, 1),(5, 5), 
(6, 5),(6, 6),(6, 9),
(7, 7),
(8, 5),(8, 2),(8, 10),
(9, 2),(9, 9),
(10, 4),(10, 10);
select * from transaksi;

create table kategori_barang (
	id int(5) primary key not null auto_increment,
	barang_id int(5),
	kategori_id int(5),
	FOREIGN key (barang_id) REFERENCES barang(id),
	FOREIGN key (kategori_id) REFERENCES kategori(id)
);
insert into kategori_barang (pembeli_id, barang_id) values 
(1, 1),(1, 3),
(2, 2),
(3, 1),(3, 3),
(4, 5),
(5, 5),
(6, 1),
(7, 1), (7, 3),
(8, 6),
(9, 6),(9, 9),
(10, 7),;
select * from kategori_barang;