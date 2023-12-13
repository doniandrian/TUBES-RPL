-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for tubes_rpl
DROP DATABASE IF EXISTS `tubes_rpl`;
CREATE DATABASE IF NOT EXISTS `tubes_rpl` /*!40100 DEFAULT CHARACTER SET ucs2 COLLATE ucs2_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tubes_rpl`;

-- Dumping structure for table tubes_rpl.calon
DROP TABLE IF EXISTS `calon`;
CREATE TABLE IF NOT EXISTS `calon` (
  `id_calon` varchar(10) COLLATE ucs2_bin NOT NULL,
  `nama_calon` varchar(50) COLLATE ucs2_bin NOT NULL,
  `email` varchar(50) COLLATE ucs2_bin NOT NULL,
  `jumlah_matkul` int NOT NULL,
  `alumni` tinyint(1) NOT NULL,
  `pw` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id_calon`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_bin;

-- Dumping data for table tubes_rpl.calon: ~3 rows (approximately)
DELETE FROM `calon`;
INSERT INTO `calon` (`id_calon`, `nama_calon`, `email`, `jumlah_matkul`, `alumni`,`pw`) VALUES
	('1111111111', 'Ferry', 'ferryperahu@gmail.com', 2, 1,'sayaferry'),
	('2222222222', 'Hana', 'hannaferi@gmail.com', 2, 0,'sayahana'),
	('6182001001', 'Jenson Mark Lowell', 'bestibego@gmail.com', 3, 1,'symak');

-- Dumping structure for table tubes_rpl.dosen
DROP TABLE IF EXISTS `dosen`;
CREATE TABLE IF NOT EXISTS `dosen` (
  `id_dosen` varchar(10) COLLATE ucs2_bin NOT NULL,
  `nama_dosen` varchar(50) COLLATE ucs2_bin NOT NULL,
  `idmk` varchar(10) COLLATE ucs2_bin NOT NULL,
  `pw` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id_dosen`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_bin;

-- Dumping data for table tubes_rpl.dosen: ~3 rows (approximately)
DELETE FROM `dosen`;
INSERT INTO `dosen` (`id_dosen`, `nama_dosen`, `idmk`,`pw`) VALUES
	('1231231231', 'Pascal', 'AIF182100','pascal'),
	('1231231232', 'Hakim', 'AIF181100','hakims'),
	('1231231233', 'Reimon', 'AIF182204','rei');

-- Dumping structure for table tubes_rpl.info
DROP TABLE IF EXISTS `info`;
CREATE TABLE IF NOT EXISTS `info` (
  `id_calon` varchar(10) COLLATE ucs2_bin NOT NULL,
  `filename` varchar(100) COLLATE ucs2_bin NOT NULL,
  PRIMARY KEY (`id_calon`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_bin;

-- Dumping data for table tubes_rpl.info: ~3 rows (approximately)
DELETE FROM `info`;
INSERT INTO `info` (`id_calon`, `filename`) VALUES
	('1111111111', 'nilai.png'),
	('2222222222', 'foto.png'),
	('6182001001', '6182001001.pdf');

-- Dumping structure for table tubes_rpl.jadwal
DROP TABLE IF EXISTS `jadwal`;
CREATE TABLE IF NOT EXISTS `jadwal` (
  `id_calon` varchar(10) COLLATE ucs2_bin NOT NULL,
  `hari` varchar(10) COLLATE ucs2_bin NOT NULL,
  `awal` int NOT NULL,
  `akhir` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_bin;

-- Dumping data for table tubes_rpl.jadwal: ~3 rows (approximately)
DELETE FROM `jadwal`;
INSERT INTO `jadwal` (`id_calon`, `hari`, `awal`, `akhir`) VALUES
	('2222222222', 'Senin', 8, 10),
	('2222222222', 'Senin', 13, 15),
	('1111111111', 'Rabu', 10, 16);

-- Dumping structure for table tubes_rpl.kelas
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE IF NOT EXISTS `kelas` (
  `idkelas` varchar(1) COLLATE ucs2_bin NOT NULL,
  `hari` varchar(10) COLLATE ucs2_bin NOT NULL,
  `awal` int NOT NULL,
  `akhir` int NOT NULL,
  `idmk` varchar(10) COLLATE ucs2_bin NOT NULL,
  `ruangkelas` VARCHAR(10) NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_bin;

-- Dumping data for table tubes_rpl.kelas: ~24 rows (approximately)
DELETE FROM `kelas`;
INSERT INTO `kelas` (`idkelas`, `hari`, `awal`, `akhir`, `idmk`,`ruangkelas`) VALUES
	('A', 'Senin', 12, 14, 'AIF181100','Ruang 9015 Lab. Komputer 1'),
	('B', 'Senin', 14, 16, 'AIF181100','Ruang 9016 Lab. Komputer 2'),
	('A', 'Rabu', 10, 12, 'AIF182100','Ruang 9017 Lab. Komputer 3'),
	('B', 'Rabu', 8, 10, 'AIF182100','Ruang 9018 Lab. Komputer 4'),
	('A', 'Selasa', 8, 10, 'AIF182204','Ruang 9015 Lab. Komputer 1'),
	('B', 'Selasa', 8, 10, 'AIF182204','Ruang 9016 Lab. Komputer 2'),
	('A', 'Selasa', 7, 9, 'AIF182109','Ruang 9017 Lab. Komputer 3'),
	('B', 'Selasa', 9, 11, 'AIF182109','Ruang 9018 Lab. Komputer 4'),
	('A', 'Jumat', 9, 11, 'AIF184005','Ruang 9015 Lab. Komputer 1'),
	('B', 'Jumat', 13, 15, 'AIF184005','Ruang 9016 Lab. Komputer 2'),
	('A', 'Senin', 7, 9, 'AIF182103','Ruang 9017 Lab. Komputer 3'),
	('B', 'Senin', 14, 16, 'AIF182103','Ruang 9018 Lab. Komputer 4'),
	('A', 'Rabu', 13, 16, 'AIF182101','Ruang 9015 Lab. Komputer 1'),
	('B', 'Rabu', 13, 16, 'AIF182101','Ruang 9016 Lab. Komputer 2'),
	('A', 'Selasa', 13, 15, 'AIF183153','Ruang 9017 Lab. Komputer 3'),
	('A', 'Jumat', 7, 10, 'AIF182210','Ruang 9018 Lab. Komputer 4'),
	('B', 'Jumat', 14, 17, 'AIF182210','Ruang 9015 Lab. Komputer 1'),
	('A', 'Senin', 7, 9, 'AIF182105','Ruang 9016 Lab. Komputer 2'),
	('B', 'Senin', 9, 11, 'AIF182105','Ruang 9017 Lab. Komputer 3'),
	('A', 'Rabu', 13, 15, 'AIF182105','Ruang 9018 Lab. Komputer 4'),
	('B', 'Rabu', 13, 15, 'AIF182105','Ruang 9015 Lab. Komputer 1'),
	('A', 'Jumat', 9, 11, 'AIF182105','Ruang 9016 Lab. Komputer 2'),
	('B', 'Jumat', 13, 15, 'AIF182105','Ruang 9017 Lab. Komputer 3'),
	('B', 'Rabu', 12, 15, 'AIF182100','Ruang 9018 Lab. Komputer 4');

-- Dumping structure for table tubes_rpl.koordinator
DROP TABLE IF EXISTS `koordinator`;
CREATE TABLE IF NOT EXISTS `koordinator` (
  `id_koord` varchar(10) COLLATE ucs2_bin NOT NULL,
  `nama_koord` varchar(50) COLLATE ucs2_bin NOT NULL,
  `pw` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id_koord`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_bin;

-- Dumping data for table tubes_rpl.koordinator: ~2 rows (approximately)
DELETE FROM `koordinator`;
INSERT INTO `koordinator` (`id_koord`, `nama_koord`,`pw`) VALUES
	('8888888888', 'Charles','dudududu'),
	('9999999999', 'Agus','gunawan');

-- Dumping structure for table tubes_rpl.matkul
DROP TABLE IF EXISTS `matkul`;
CREATE TABLE IF NOT EXISTS `matkul` (
  `idmk` varchar(10) COLLATE ucs2_bin NOT NULL,
  `namamk` varchar(50) COLLATE ucs2_bin NOT NULL,
  `requires` int DEFAULT NULL,
  PRIMARY KEY (`idmk`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_bin;

-- Dumping data for table tubes_rpl.matkul: ~10 rows (approximately)
DELETE FROM `matkul`;
INSERT INTO `matkul` (`idmk`, `namamk`, `requires`) VALUES
	('AIF181100', 'Dasar Pemrograman', 2),
	('AIF182100', 'Analisis dan Desain Perangkat Lunak', 2),
	('AIF182101', 'Algoritma dan Struktur Data', 2),
	('AIF182103', 'Struktur Diskret', 2),
	('AIF182105', 'Pemrograman Berorientasi Objek', 2),
	('AIF182109', 'Statistika untuk Komputasi', NULL),
	('AIF182204', 'Pemodelan Berbasis Web', 2),
	('AIF182210', 'Pengantar Jaringan Komputer', NULL),
	('AIF183153', 'Metode Numerik', NULL),
	('AIF184005', 'Komputer dan Masyarakat', NULL);

-- Dumping structure for table tubes_rpl.nilai
DROP TABLE IF EXISTS `nilai`;
CREATE TABLE IF NOT EXISTS `nilai` (
  `id_calon` varchar(10) COLLATE ucs2_bin NOT NULL,
  `idmk` varchar(10) COLLATE ucs2_bin NOT NULL,
  `nilai` varchar(5) COLLATE ucs2_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_bin;

-- Dumping data for table tubes_rpl.nilai: ~3 rows (approximately)
DELETE FROM `nilai`;
INSERT INTO `nilai` (`id_calon`, `idmk`, `nilai`) VALUES
	('1111111111', 'AIF181100', 'B'),
	('1111111111', 'AIF182100', 'A'),
	('1111111111', 'AIF181100', 'D');
	
	
select awal AS star, akhir AS en
from kelas
where idkelas = 'A' AND idmk = 
(select idmk
from matkul
where namamk = 'Dasar Pemrograman');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
