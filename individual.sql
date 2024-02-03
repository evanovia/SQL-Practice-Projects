CREATE TABLE `individu` (
`nama` varchar(50) NOT NULL,
`no_identitas_ktp` varchar(50) NOT NULL PRIMARY KEY,
`tanggal_lahir` date NOT NULL,
`alamat` text NOT NULL,
`nama_ibu_kandung` varchar(50) NOT NULL,
`nomor_telpon` varchar(20) NOT NULL
);

CREATE TABLE `rekening_individu` (
`no_identitas_ktp` varchar(50) NOT NULL,
`kewarganegaraan` varchar(50) NOT NULL,
`provinsi` varchar(50) NOT NULL,
`kota` varchar(50) NOT NULL,
`pekerjaan` varchar(50) NOT NULL,
`nama_instansi` varchar(50) NOT NULL,
`jenis_rekening` varchar(20) NOT NULL,
`bunga` varchar(5) NOT NULL DEFAULT '0%',
`status_rekening` varchar(20) NOT NULL DEFAULT 'aktif',
`nomor_rekening` varchar(50) NOT NULL PRIMARY KEY,
`password` varchar(50) NOT NULL,
`saldo` DECIMAL(12,2) NOT NULL DEFAULT 0,
`tanggal_pembukaan` date NOT NULL DEFAULT CURRENT_DATE,
FOREIGN KEY (`no_identitas_ktp`) REFERENCES `individu` (`no_identitas_ktp`)
);
