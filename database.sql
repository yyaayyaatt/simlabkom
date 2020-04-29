/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 5.6.20 : Database - labkom
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`labkom` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `labkom`;

/*Table structure for table `asisten` */

DROP TABLE IF EXISTS `asisten`;

CREATE TABLE `asisten` (
  `id_asisten` varchar(30) NOT NULL,
  `nm_asisten` varchar(50) DEFAULT NULL,
  `addrs_asisten` text,
  `telp_asisten` varchar(20) DEFAULT NULL,
  `img` varchar(100) DEFAULT 'noimage.png',
  PRIMARY KEY (`id_asisten`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `asisten` */

insert  into `asisten`(`id_asisten`,`nm_asisten`,`addrs_asisten`,`telp_asisten`,`img`) values 
('102920','Dodi Fahlefi','Desa Warteg','08776757777','102920-Dodi_Fahlefi.jpg'),
('129887','Fauzi Abdillah','Tegalwangi','085766674674','129887-Fauzi_Abdillah.jpg'),
('131232','Fikri','Mbuh','08576767677','131232-Fikri.jpg'),
('17040044','Mohamad Abdul Aziz','Krasak Brebes, Jawa Tengah','082314941337','17040044-Mohamad_Abdul_Aziz.png'),
('23232','Aldo','Mbuh','0876667657','23232-Aldo.jpg');

/*Table structure for table `barang` */

DROP TABLE IF EXISTS `barang`;

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL AUTO_INCREMENT,
  `nm_barang` varchar(50) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `id_merk` int(11) DEFAULT NULL,
  `id_satuan` int(11) DEFAULT NULL,
  `stok` float DEFAULT NULL,
  `tgl_masuk` date DEFAULT NULL,
  `foto` text,
  `id_ruangan` int(11) DEFAULT NULL COMMENT 'Lokasi Persediaan Barang',
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

/*Data for the table `barang` */

insert  into `barang`(`id_barang`,`nm_barang`,`id_kategori`,`id_merk`,`id_satuan`,`stok`,`tgl_masuk`,`foto`,`id_ruangan`) values 
(2,'Camera USB',1,4,3,9,'2019-12-05',NULL,1),
(3,'Camera USB',2,1,1,10,'2019-11-01',NULL,NULL),
(4,'Camera USB',2,3,2,6,'2019-12-04',NULL,NULL),
(5,'Camera USB',2,3,2,6,'2019-12-04',NULL,NULL),
(6,'Camera USB',2,3,2,6,'2019-12-04',NULL,3),
(7,'Camera USB',2,3,2,6,'2019-12-16',NULL,NULL),
(8,'Camera USB',2,3,2,6,'2019-12-31',NULL,NULL),
(9,'Monitor',2,3,2,4,'2019-12-04',NULL,NULL),
(10,'Komputer',1,4,3,4,'2019-12-16',NULL,1),
(11,'Cassing CPU',4,5,1,10,'2019-12-18',NULL,1),
(13,'Speaker',1,1,1,30,'0000-00-00',NULL,1),
(14,'Speaker',1,1,1,30,'0000-00-00',NULL,1),
(15,'Speaker',1,1,1,30,'0000-00-00',NULL,1),
(16,'Speaker',1,1,1,30,'0000-00-00',NULL,1),
(17,'Speaker',1,1,1,30,'0000-00-00',NULL,1),
(18,'Speaker',1,1,1,30,'0000-00-00',NULL,1),
(19,'Speaker',1,1,1,30,'0000-00-00',NULL,1),
(20,'Speaker',1,1,1,30,'0000-00-00',NULL,1),
(21,'Speaker',1,1,1,30,'0000-00-00',NULL,1),
(22,'Speaker',1,1,1,30,'0000-00-00',NULL,1),
(23,'Speaker',1,1,1,30,'0000-00-00',NULL,1),
(24,'Speaker',1,1,1,30,'2036-07-02',NULL,1),
(25,'Speaker',1,1,1,30,'2036-07-02',NULL,1),
(26,'Speaker',1,1,1,30,'2036-07-02',NULL,1),
(27,'Speaker',1,1,1,30,'2020-09-01',NULL,1),
(28,'Speaker',1,1,1,30,'1905-11-07',NULL,1),
(29,'Speaker',1,1,1,30,'1905-07-11',NULL,1),
(30,'Speaker',1,1,1,30,'2036-02-18',NULL,1),
(31,'Speaker',1,1,1,30,'1970-01-01',NULL,1),
(32,'Speaker',1,1,1,30,'2019-12-13',NULL,1),
(33,'Speaker',1,1,1,30,'2036-02-17',NULL,1),
(34,'Speaker',1,1,1,30,'2036-02-17',NULL,1),
(35,'Speaker',1,1,1,30,'2019-12-13',NULL,1),
(36,'Speaker',1,1,1,30,'2019-12-13',NULL,1),
(37,'Speaker',1,1,1,30,'2019-12-13',NULL,1),
(38,'Speaker',1,1,1,30,'2019-12-13',NULL,1),
(39,'Speaker',1,1,1,30,'2019-12-13',NULL,1),
(40,'Speaker',1,1,1,30,'2019-12-13',NULL,1),
(41,'Speaker',1,1,1,30,'2019-12-13',NULL,1),
(42,'Speaker',1,1,1,30,'2019-12-13',NULL,1),
(43,'Speaker',1,1,1,30,'2019-12-13',NULL,1),
(44,'Meja',1,1,1,30,'2019-12-13',NULL,1),
(45,'Speaker',1,1,1,30,'2019-12-13',NULL,1),
(46,'Meja',1,1,1,30,'2019-12-13',NULL,1),
(47,'Speaker',1,1,1,30,'2019-12-13',NULL,1),
(48,'Meja',1,1,1,30,'2019-12-13',NULL,1),
(49,'Speaker',1,1,1,30,'2019-12-13',NULL,1),
(50,'Meja',1,1,1,30,'2019-12-13',NULL,1),
(51,'Speaker',1,1,1,30,'2019-12-13',NULL,1),
(52,'Meja',1,1,1,30,'2019-12-13',NULL,1),
(53,'Speaker',1,1,1,30,'2019-12-13',NULL,1),
(54,'Meja',1,1,1,30,'2019-12-13',NULL,1);

/*Table structure for table `barang_hp` */

DROP TABLE IF EXISTS `barang_hp`;

CREATE TABLE `barang_hp` (
  `id_barang` int(11) NOT NULL AUTO_INCREMENT,
  `nm_barang` varchar(50) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `id_merk` int(11) DEFAULT NULL,
  `id_satuan` int(11) DEFAULT NULL,
  `stok` float DEFAULT NULL,
  `tgl_masuk` date DEFAULT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `barang_hp` */

insert  into `barang_hp`(`id_barang`,`nm_barang`,`id_kategori`,`id_merk`,`id_satuan`,`stok`,`tgl_masuk`) values 
(1,'Spidol',3,26,3,10,'2019-12-18');

/*Table structure for table `hari` */

DROP TABLE IF EXISTS `hari`;

CREATE TABLE `hari` (
  `id_hari` int(11) NOT NULL AUTO_INCREMENT,
  `nm_hari` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_hari`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `hari` */

insert  into `hari`(`id_hari`,`nm_hari`) values 
(1,'SENIN'),
(2,'SELASA'),
(3,'RABU'),
(4,'KAMIS'),
(5,'JUMAT');

/*Table structure for table `inventaris` */

DROP TABLE IF EXISTS `inventaris`;

CREATE TABLE `inventaris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_inventaris` varchar(100) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `ket_kondisi` text,
  `id_ruangan` int(11) DEFAULT NULL,
  `tgl_keluar` date DEFAULT NULL,
  `tgl_inventaris` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `inventaris` */

insert  into `inventaris`(`id`,`id_inventaris`,`id_barang`,`ket_kondisi`,`id_ruangan`,`tgl_keluar`,`tgl_inventaris`) values 
(3,'000219120001',2,'Baik',2,'2019-12-31',NULL),
(4,'000319120001',3,'Kondisi sangat baik',3,'2019-12-29',NULL),
(5,'000919120001',9,'Baik',1,'2019-12-25',NULL),
(6,'000920010001',9,'Oke',1,NULL,NULL),
(7,'001120010001',11,'',1,NULL,NULL),
(8,'000920010001',9,'',1,NULL,NULL),
(9,'000920010001',9,'',1,NULL,NULL),
(10,'001120010001',11,'',1,NULL,NULL),
(11,'001120010002',11,'',1,NULL,NULL),
(12,'001020010001',10,'',1,NULL,NULL),
(13,'001020010002',10,'',1,NULL,NULL),
(14,'001020010003',10,'',1,NULL,NULL),
(15,'000920010002',9,'',1,NULL,NULL),
(16,'000920010003',9,'',1,NULL,NULL);

/*Table structure for table `jadwal` */

DROP TABLE IF EXISTS `jadwal`;

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL AUTO_INCREMENT,
  `id_asisten` varchar(50) DEFAULT NULL,
  `jam` varchar(50) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `hari` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_jadwal`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `jadwal` */

insert  into `jadwal`(`id_jadwal`,`id_asisten`,`jam`,`admin`,`hari`) values 
(4,'129887','1',NULL,'1'),
(5,'129887','1',NULL,'2'),
(6,'129887','4',NULL,'3'),
(7,'102920','6',NULL,'1');

/*Table structure for table `jam` */

DROP TABLE IF EXISTS `jam`;

CREATE TABLE `jam` (
  `id_jam` int(11) NOT NULL AUTO_INCREMENT,
  `nm_jam` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_jam`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `jam` */

insert  into `jam`(`id_jam`,`nm_jam`) values 
(1,'07:00 - 17:00'),
(2,'08:00 - 17:00'),
(3,'09:00 - 17:00'),
(4,'12:00 - 21:00'),
(5,'13:00 - 21:00'),
(6,'14:00 - 21:00');

/*Table structure for table `kategori` */

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nm_kategori` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `kategori` */

insert  into `kategori`(`id_kategori`,`nm_kategori`) values 
(1,'CPU'),
(2,'LCD Monitor'),
(3,'ATK'),
(4,'Peripheral');

/*Table structure for table `kehilangan` */

DROP TABLE IF EXISTS `kehilangan`;

CREATE TABLE `kehilangan` (
  `id_kehilangan` int(11) NOT NULL AUTO_INCREMENT,
  `barang` varchar(50) DEFAULT NULL,
  `lokasi` int(11) DEFAULT NULL,
  `ket_barang` text,
  `tgl_kehilangan` datetime DEFAULT NULL,
  `penemu` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL COMMENT 'belum, ambil',
  PRIMARY KEY (`id_kehilangan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `kehilangan` */

insert  into `kehilangan`(`id_kehilangan`,`barang`,`lokasi`,`ket_barang`,`tgl_kehilangan`,`penemu`,`status`) values 
(1,'Buku',3,'Warna Hijau dan terdapat stiker Hello Kitty sama temannya','2019-12-04 00:00:00','Aziz','belum'),
(2,'Flashdisk',1,'Merah cuuuyy','2019-12-13 00:00:00','Aziz','belum');

/*Table structure for table `kelamin` */

DROP TABLE IF EXISTS `kelamin`;

CREATE TABLE `kelamin` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kelamin` */

insert  into `kelamin`(`id`,`nama`) values 
(1,'Laki laki'),
(2,'Perempuan');

/*Table structure for table `kelas` */

DROP TABLE IF EXISTS `kelas`;

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL AUTO_INCREMENT,
  `nm_kelas` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `kelas` */

insert  into `kelas`(`id_kelas`,`nm_kelas`) values 
(1,'1A');

/*Table structure for table `kondisi` */

DROP TABLE IF EXISTS `kondisi`;

CREATE TABLE `kondisi` (
  `id_kondisi` int(11) NOT NULL AUTO_INCREMENT,
  `nm_kondisi` text,
  PRIMARY KEY (`id_kondisi`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `kondisi` */

insert  into `kondisi`(`id_kondisi`,`nm_kondisi`) values 
(1,'Sangat Baik'),
(2,'Baik'),
(3,'Kurang Baik'),
(4,'Rusak');

/*Table structure for table `kota` */

DROP TABLE IF EXISTS `kota`;

CREATE TABLE `kota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `kota` */

insert  into `kota`(`id`,`nama`) values 
(1,'Malang'),
(3,'Blitar'),
(4,'Tulungagung'),
(17,'Jakarta'),
(21,'Surabaya'),
(22,'Paris');

/*Table structure for table `merk` */

DROP TABLE IF EXISTS `merk`;

CREATE TABLE `merk` (
  `id_merk` int(11) NOT NULL AUTO_INCREMENT,
  `nm_merk` varchar(50) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_merk`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

/*Data for the table `merk` */

insert  into `merk`(`id_merk`,`nm_merk`,`id_kategori`) values 
(1,'NEC',1),
(3,'Logitech',4),
(4,'Asus',1),
(5,'Dell',1),
(6,'Lenovo',1),
(7,'MSI',1),
(8,'HP',1),
(9,'Acer',1),
(10,'Samsung',1),
(11,'Toshiba',1),
(12,'Joyko',3),
(13,'Kenko',3),
(14,'Bindex',3),
(15,'Max',3),
(16,'Faster',3),
(17,'Butterfly',3),
(18,'Seagate',4),
(19,'Adata',3),
(20,'Sandisk',4),
(21,'WD',4),
(22,'Panasonic',1),
(23,'Daikin',1),
(24,'Sharp',1),
(25,'LG',1),
(26,'Snowman',3);

/*Table structure for table `pegawai` */

DROP TABLE IF EXISTS `pegawai`;

CREATE TABLE `pegawai` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `id_kota` int(11) DEFAULT NULL,
  `id_kelamin` int(1) DEFAULT NULL,
  `id_posisi` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pegawai` */

insert  into `pegawai`(`id`,`nama`,`telp`,`id_kota`,`id_kelamin`,`id_posisi`,`status`) values 
('10','Antony Febriansyah Hartono','082199568540',1,1,1,1),
('11','Hafizh Asrofil Al Banna','087859615271',1,1,1,1),
('12','Faiq Fajrullah','085736333728',1,1,2,1),
('3','Mustofa Halim','081330493322',1,1,3,1),
('4','Dody Ahmad Kusuma Jaya','083854520015',1,1,2,1),
('5','Mokhammad Choirul Ikhsan','085749535400',3,1,2,1),
('7','Achmad Chadil Auwfar','08984119934',2,1,1,1),
('8','Rizal Ferdian','087777284179',1,1,3,1),
('9','Redika Angga Pratama','083834657395',1,1,3,1),
('1','Tolkha Hasan','081233072122',1,1,4,1),
('2','Wawan Dwi Prasetyo','085745966707',4,1,4,1);

/*Table structure for table `peminjaman` */

DROP TABLE IF EXISTS `peminjaman`;

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT,
  `nama_peminjam` varchar(50) DEFAULT NULL,
  `kelas` varchar(30) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `tgl_pinjam` datetime DEFAULT NULL,
  `tgl_kembali` datetime DEFAULT NULL,
  `keterangan` text,
  `id_barang` int(11) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_peminjaman`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `peminjaman` */

insert  into `peminjaman`(`id_peminjaman`,`nama_peminjam`,`kelas`,`jumlah`,`tgl_pinjam`,`tgl_kembali`,`keterangan`,`id_barang`,`status`,`id_user`) values 
(1,'jatmiko indriyanto','1',1,'2019-12-03 00:00:00','2019-12-21 00:00:00','untuk mencoba',3,'Pengembalian',3),
(2,'Duta Mas Furniture','1',1,'2019-12-13 00:00:00','2019-12-14 00:00:00','Pinjam',4,'Peminjaman',3);

/*Table structure for table `perawatan` */

DROP TABLE IF EXISTS `perawatan`;

CREATE TABLE `perawatan` (
  `id_perawatan` int(11) NOT NULL AUTO_INCREMENT,
  `id_inventaris` varchar(50) DEFAULT NULL,
  `kondisi` int(11) DEFAULT NULL,
  `tgl_perawatan` date DEFAULT NULL,
  `id_cek` int(11) DEFAULT NULL,
  `diagnosa` text,
  `perbaikan` varchar(50) DEFAULT 'belum' COMMENT 'belum,sudah',
  PRIMARY KEY (`id_perawatan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `perawatan` */

/*Table structure for table `perbaikan` */

DROP TABLE IF EXISTS `perbaikan`;

CREATE TABLE `perbaikan` (
  `id_perbaikan` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_perbaikan` date DEFAULT NULL,
  `id_cek` varchar(30) DEFAULT NULL,
  `solusi` text,
  `admin` int(11) DEFAULT NULL,
  `id_perawatan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_perbaikan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `perbaikan` */

/*Table structure for table `posisi` */

DROP TABLE IF EXISTS `posisi`;

CREATE TABLE `posisi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `posisi` */

insert  into `posisi`(`id`,`nama`) values 
(1,'IT'),
(2,'HRD'),
(3,'Keuangan'),
(4,'Produk'),
(5,'Web Developer');

/*Table structure for table `ruangan` */

DROP TABLE IF EXISTS `ruangan`;

CREATE TABLE `ruangan` (
  `id_ruangan` int(11) NOT NULL AUTO_INCREMENT,
  `nm_ruangan` varchar(50) DEFAULT NULL,
  `lokasi_ruangan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_ruangan`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `ruangan` */

insert  into `ruangan`(`id_ruangan`,`nm_ruangan`,`lokasi_ruangan`) values 
(1,'Lab. Komputer 1','Lantai B-0'),
(2,'Lab. Komputer 2','Lantai B-0'),
(3,'Lab. Komputer 3','Lantai B-0'),
(4,'Lab. Komputer 4','Lantai B-0'),
(5,'Lab. Komputer 5','Lantai B-0'),
(7,'Lab. Komputer 6','Lantai B-0');

/*Table structure for table `satuan` */

DROP TABLE IF EXISTS `satuan`;

CREATE TABLE `satuan` (
  `id_satuan` int(11) NOT NULL AUTO_INCREMENT,
  `nm_satuan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_satuan`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `satuan` */

insert  into `satuan`(`id_satuan`,`nm_satuan`) values 
(1,'Unit'),
(2,'PCS'),
(3,'Box'),
(4,'Rim'),
(5,'Pack'),
(6,'Strip');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `foto` varchar(255) DEFAULT 'noimage.png',
  `level` varchar(50) DEFAULT NULL COMMENT 'user, admin',
  `tgl_daftar` date DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id_user`,`username`,`password`,`nama`,`foto`,`level`,`tgl_daftar`) values 
(2,'aziz','b85dc795ba17cb243ab156f8c52124e1','Mohammad Abdul Aziz','Mohammad_Abdul_Aziz-user.png','user','2019-01-01'),
(3,'dodi','dc82a0e0107a31ba5d137a47ab09a26b','Dodi Fahlefi','Dodi_Fahlefi-admin.jpg','admin','2019-01-01');

/* Trigger structure for table `inventaris` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `update_stok_barang` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'%' */ /*!50003 TRIGGER `update_stok_barang` AFTER INSERT ON `inventaris` FOR EACH ROW begin
update barang set stok = stok-1 where id_barang = NEW.id_barang; 
end */$$


DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
