CREATE TABLE `perusahaan` (
`npwp` varchar(50) NOT NULL,
`nib` varchar(50) NOT NULL,
`nama_perusahaan` varchar(50) NOT NULL,
`no_identitas_ktp` varchar(50) NOT NULL,
`penanggung_jawab_ktp` varchar(50) NOT NULL PRIMARY KEY,
FOREIGN KEY (`no_identitas_ktp`) REFERENCES `individu` (`no_identitas_ktp`)
);

CREATE TABLE `rekening_perusahaan` (
`penanggung_jawab_ktp` varchar(50) NOT NULL,
`kewarganegaraan` varchar(50) NOT NULL,
`provinsi` varchar(50) NOT NULL,
`kota` varchar(50) NOT NULL,
`nama_perusahaan` varchar(50) NOT NULL,
`jenis_rekening` varchar(20) NOT NULL,
`bunga` varchar(5) NOT NULL DEFAULT '0%',
`status_rekening` varchar(20) NOT NULL DEFAULT 'aktif',
`nomor_rekening` varchar(50) NOT NULL PRIMARY KEY,
`password` varchar(50) NOT NULL,
`saldo` DECIMAL(12,2) NOT NULL DEFAULT 0,
`tanggal_pembukaan` date NOT NULL DEFAULT CURRENT_DATE,
FOREIGN KEY (`penanggung_jawab_ktp`) REFERENCES `perusahaan` (`penanggung_jawab_ktp`)
);
