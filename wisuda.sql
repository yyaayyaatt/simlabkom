/*
Navicat MySQL Data Transfer

Source Server         : andri
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : wisuda

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-05-17 22:06:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_barang`
-- ----------------------------
DROP TABLE IF EXISTS `tb_barang`;
CREATE TABLE `tb_barang` (
  `id_barang` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(11) DEFAULT NULL,
  `id_merk` int(11) DEFAULT NULL,
  `nama_barang` varchar(50) DEFAULT NULL,
  `id_satuan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_barang
-- ----------------------------
INSERT INTO `tb_barang` VALUES ('1', '6', '5', 'Kertas A4 70 gram PO', '4');
INSERT INTO `tb_barang` VALUES ('2', '5', '3', 'Lemari Kaca VIP', '2');
INSERT INTO `tb_barang` VALUES ('3', '6', '5', 'Kertas F4 70 gram PO', '4');
INSERT INTO `tb_barang` VALUES ('4', '5', '3', 'Lemari 2 pintu VIP', '2');
INSERT INTO `tb_barang` VALUES ('5', '6', '6', 'Kertas F4 70 gram SD', '4');

-- ----------------------------
-- Table structure for `tb_coba`
-- ----------------------------
DROP TABLE IF EXISTS `tb_coba`;
CREATE TABLE `tb_coba` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(5) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_coba
-- ----------------------------
INSERT INTO `tb_coba` VALUES ('1', 'a', '1');
INSERT INTO `tb_coba` VALUES ('2', 'b', '7');
INSERT INTO `tb_coba` VALUES ('4', 'c', '8');
INSERT INTO `tb_coba` VALUES ('9', 'a', '3');
INSERT INTO `tb_coba` VALUES ('13', 'b', '5');
INSERT INTO `tb_coba` VALUES ('14', 'b', '3');
INSERT INTO `tb_coba` VALUES ('15', 'c', '2');
INSERT INTO `tb_coba` VALUES ('16', 'd', '2');
INSERT INTO `tb_coba` VALUES ('17', 'c', '3');
INSERT INTO `tb_coba` VALUES ('18', 'a', '5');

-- ----------------------------
-- Table structure for `tb_kategori`
-- ----------------------------
DROP TABLE IF EXISTS `tb_kategori`;
CREATE TABLE `tb_kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_kategori
-- ----------------------------
INSERT INTO `tb_kategori` VALUES ('1', 'Filling Cabinet');
INSERT INTO `tb_kategori` VALUES ('4', 'Locker');
INSERT INTO `tb_kategori` VALUES ('5', 'Lemari');
INSERT INTO `tb_kategori` VALUES ('6', 'Kertas HVS');

-- ----------------------------
-- Table structure for `tb_keep`
-- ----------------------------
DROP TABLE IF EXISTS `tb_keep`;
CREATE TABLE `tb_keep` (
  `id_keep` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `tgl_input` varchar(50) DEFAULT NULL,
  `tgl_ambil` date DEFAULT NULL,
  `jml` int(11) DEFAULT NULL,
  `keterangan` text,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_keep`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_keep
-- ----------------------------
INSERT INTO `tb_keep` VALUES ('2', '3', '2', '26-09-2018 11:45:31am', '2018-09-06', '5', 'deadline dinas kesehatan', 'diterima');
INSERT INTO `tb_keep` VALUES ('3', '5', '6', '26-09-2018 10:42:37pm', '2018-09-27', '5', '-', 'ditolak');
INSERT INTO `tb_keep` VALUES ('4', '1', '2', '26-09-2018 02:54:05pm', '2018-09-26', '12', 'segera', 'ditolak');
INSERT INTO `tb_keep` VALUES ('8', '3', '13', '27-09-2018 11:06:09am', '2018-09-20', '90', '-', 'diterima');
INSERT INTO `tb_keep` VALUES ('9', '4', '5', '27-09-2018 11:06:56am', '2018-09-13', '20', '-', 'disetujui');
INSERT INTO `tb_keep` VALUES ('10', '3', '1', '04-02-2019 10:37:24am', '2019-02-05', '10', '-', 'menunggu konfirmasi');
INSERT INTO `tb_keep` VALUES ('11', '3', '1', '04-02-2019 10:41:59am', '2019-02-13', '20', '-', 'disetujui');

-- ----------------------------
-- Table structure for `tb_kegiatan_admin`
-- ----------------------------
DROP TABLE IF EXISTS `tb_kegiatan_admin`;
CREATE TABLE `tb_kegiatan_admin` (
  `id_kegiatan` int(20) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `kegiatan` text,
  `waktu` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_kegiatan`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_kegiatan_admin
-- ----------------------------
INSERT INTO `tb_kegiatan_admin` VALUES ('22', '1', 'log out sistem', '19-01-2019 04:56:17pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('23', '1', 'login sistem', '19-01-2019 04:56:59pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('24', '1', 'menginput pemasukan barang dengan nota no OVP43434', '19-01-2019 04:59:32pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('25', '1', 'menghapus data barang masuk ', '19-01-2019 05:01:04pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('26', '1', 'edit pemasukan barang dengan nota LLK930', '19-01-2019 05:01:29pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('27', '1', 'edit pemasukan barang dengan nota LLK930', '19-01-2019 05:04:16pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('28', '1', 'login sistem', '22-01-2019 01:03:27am');
INSERT INTO `tb_kegiatan_admin` VALUES ('29', '1', 'login sistem', '22-01-2019 10:01:21am');
INSERT INTO `tb_kegiatan_admin` VALUES ('30', '1', 'input pengeluaran baru dengan no nota KL-220119105808 ', '22-01-2019 10:58:24am');
INSERT INTO `tb_kegiatan_admin` VALUES ('31', '1', 'log out sistem', '22-01-2019 11:17:20am');
INSERT INTO `tb_kegiatan_admin` VALUES ('32', '1', 'login sistem', '22-01-2019 11:17:43am');
INSERT INTO `tb_kegiatan_admin` VALUES ('33', '1', 'log out sistem', '22-01-2019 11:17:57am');
INSERT INTO `tb_kegiatan_admin` VALUES ('34', '1', 'login sistem', '22-01-2019 07:13:22pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('35', '1', 'log out sistem', '22-01-2019 08:36:29pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('36', '1', 'login sistem', '22-01-2019 11:02:31pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('37', '1', 'log out sistem', '23-01-2019 03:35:16am');
INSERT INTO `tb_kegiatan_admin` VALUES ('38', '1', 'login sistem', '23-01-2019 05:34:21pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('39', '1', 'input pengeluaran baru dengan no nota KL-230119054124 ', '23-01-2019 05:41:44pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('40', '1', 'input pengeluaran baru dengan no nota KL-230119054124 ', '23-01-2019 05:41:44pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('41', '1', 'input pengeluaran baru dengan no nota KL-230119054124  ', '23-01-2019 05:41:45pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('42', '1', 'input pengeluaran baru dengan no nota KL-230119054303 ', '23-01-2019 05:43:26pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('43', '1', 'input pengeluaran baru dengan no nota KL-230119054303 ', '23-01-2019 05:43:26pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('44', '1', 'input pengeluaran baru dengan no nota KL-230119054303  ', '23-01-2019 05:43:27pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('45', '1', 'input pengeluaran baru dengan no nota KL-230119054430 ', '23-01-2019 05:44:56pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('46', '1', 'input pengeluaran baru dengan no nota KL-230119054430 ', '23-01-2019 05:44:56pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('47', '1', 'input pengeluaran baru dengan no nota KL-230119054430  ', '23-01-2019 05:44:57pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('48', '1', 'log out sistem', '23-01-2019 05:46:33pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('49', '1', 'login sistem', '30-01-2019 02:18:43pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('50', '1', 'input pengeluaran baru dengan no nota KL-300119022341 ', '30-01-2019 02:24:24pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('51', '1', 'input pengeluaran baru dengan no nota KL-300119022519 ', '30-01-2019 02:25:49pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('52', '1', 'input pengeluaran baru dengan no nota KL-300119022519 ', '30-01-2019 02:25:49pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('53', '1', 'input pengeluaran baru dengan no nota KL-300119022519  ', '30-01-2019 02:25:50pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('54', '1', 'input pengeluaran baru dengan no nota KL-300119022639 ', '30-01-2019 02:27:33pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('55', '1', 'input pengeluaran baru dengan no nota KL-300119022639 ', '30-01-2019 02:27:33pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('56', '1', 'input pengeluaran baru dengan no nota KL-300119022639  ', '30-01-2019 02:27:33pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('57', '1', 'login sistem', '31-01-2019 08:27:44am');
INSERT INTO `tb_kegiatan_admin` VALUES ('58', '1', 'menginput pemasukan barang dengan nota no LVD9900', '31-01-2019 08:28:42am');
INSERT INTO `tb_kegiatan_admin` VALUES ('59', '1', 'menginput pemasukan barang dengan nota no ASD09090', '31-01-2019 08:29:50am');
INSERT INTO `tb_kegiatan_admin` VALUES ('60', '1', 'input pengeluaran baru dengan no nota KL-310119083006 ', '31-01-2019 08:30:35am');
INSERT INTO `tb_kegiatan_admin` VALUES ('61', '1', 'input pengeluaran baru dengan no nota KL-310119083006 ', '31-01-2019 08:30:35am');
INSERT INTO `tb_kegiatan_admin` VALUES ('62', '1', 'input pengeluaran baru dengan no nota KL-310119083006  ', '31-01-2019 08:30:36am');
INSERT INTO `tb_kegiatan_admin` VALUES ('63', '1', 'input pengeluaran baru dengan no nota KL-310119083117 ', '31-01-2019 08:31:41am');
INSERT INTO `tb_kegiatan_admin` VALUES ('64', '1', 'input pengeluaran baru dengan no nota KL-310119083117 ', '31-01-2019 08:31:41am');
INSERT INTO `tb_kegiatan_admin` VALUES ('65', '1', 'input pengeluaran baru dengan no nota KL-310119083117  ', '31-01-2019 08:31:42am');
INSERT INTO `tb_kegiatan_admin` VALUES ('66', '1', 'menginput pemasukan barang dengan nota no LLK930001', '31-01-2019 08:32:37am');
INSERT INTO `tb_kegiatan_admin` VALUES ('67', '1', 'menginput pemasukan barang dengan nota no OVP4343499', '31-01-2019 08:33:21am');
INSERT INTO `tb_kegiatan_admin` VALUES ('68', '1', 'input pengeluaran baru dengan no nota KL-310119083536 ', '31-01-2019 08:36:20am');
INSERT INTO `tb_kegiatan_admin` VALUES ('69', '1', 'input pengeluaran baru dengan no nota KL-310119083536 ', '31-01-2019 08:36:20am');
INSERT INTO `tb_kegiatan_admin` VALUES ('70', '1', 'input pengeluaran baru dengan no nota KL-310119083536  ', '31-01-2019 08:36:21am');
INSERT INTO `tb_kegiatan_admin` VALUES ('71', '1', 'login sistem', '04-02-2019 09:27:03am');
INSERT INTO `tb_kegiatan_admin` VALUES ('72', '1', 'login sistem', '04-02-2019 09:38:12am');
INSERT INTO `tb_kegiatan_admin` VALUES ('73', '1', 'login sistem', '04-02-2019 09:43:31am');
INSERT INTO `tb_kegiatan_admin` VALUES ('74', '1', 'menginput pemasukan barang dengan nota no DS434545', '04-02-2019 09:44:52am');
INSERT INTO `tb_kegiatan_admin` VALUES ('75', '1', 'menginput pemasukan barang dengan nota no OVP43434OP', '04-02-2019 09:46:29am');
INSERT INTO `tb_kegiatan_admin` VALUES ('76', '1', 'input pengeluaran baru dengan no nota KL-040219094643 ', '04-02-2019 09:47:16am');
INSERT INTO `tb_kegiatan_admin` VALUES ('77', '1', 'input pengeluaran baru dengan no nota KL-040219094643 ', '04-02-2019 09:47:16am');
INSERT INTO `tb_kegiatan_admin` VALUES ('78', '1', 'input pengeluaran baru dengan no nota KL-040219094643  ', '04-02-2019 09:47:17am');
INSERT INTO `tb_kegiatan_admin` VALUES ('79', '1', 'menginput pemasukan barang dengan nota no OVP4343490', '04-02-2019 09:50:17am');
INSERT INTO `tb_kegiatan_admin` VALUES ('80', '1', 'log out sistem', '04-02-2019 10:20:31am');
INSERT INTO `tb_kegiatan_admin` VALUES ('81', '1', 'login sistem', '04-02-2019 10:28:01am');
INSERT INTO `tb_kegiatan_admin` VALUES ('82', '1', 'log out sistem', '04-02-2019 10:28:21am');
INSERT INTO `tb_kegiatan_admin` VALUES ('83', '1', 'login sistem', '15-03-2019 04:25:42am');
INSERT INTO `tb_kegiatan_admin` VALUES ('84', '1', 'login sistem', '20-03-2019 08:49:01pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('85', '1', 'update permintaan keep barang', '20-03-2019 08:49:43pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('86', '1', 'login sistem', '22-03-2019 04:36:44pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('87', '1', 'login sistem', '23-03-2019 09:59:54am');
INSERT INTO `tb_kegiatan_admin` VALUES ('88', '1', 'log out sistem', '23-03-2019 12:04:31pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('89', '1', 'login sistem', '23-03-2019 12:13:59pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('90', '1', 'log out sistem', '23-03-2019 12:14:24pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('91', '1', 'login sistem', '23-03-2019 12:14:33pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('92', '1', 'login sistem', '26-03-2019 04:09:42pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('93', '1', 'login sistem', '26-03-2019 04:22:20pm');
INSERT INTO `tb_kegiatan_admin` VALUES ('94', '1', 'log out sistem', '26-03-2019 04:22:40pm');

-- ----------------------------
-- Table structure for `tb_merk`
-- ----------------------------
DROP TABLE IF EXISTS `tb_merk`;
CREATE TABLE `tb_merk` (
  `id_merk` int(11) NOT NULL AUTO_INCREMENT,
  `merk` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_merk`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_merk
-- ----------------------------
INSERT INTO `tb_merk` VALUES ('1', 'BROTHER');
INSERT INTO `tb_merk` VALUES ('2', 'UCHIDA');
INSERT INTO `tb_merk` VALUES ('3', 'VIP');
INSERT INTO `tb_merk` VALUES ('4', 'LION');
INSERT INTO `tb_merk` VALUES ('5', 'PAPER ONE');
INSERT INTO `tb_merk` VALUES ('6', 'SINAR DUNIA');
INSERT INTO `tb_merk` VALUES ('7', 'kosmos');

-- ----------------------------
-- Table structure for `tb_penerimaan`
-- ----------------------------
DROP TABLE IF EXISTS `tb_penerimaan`;
CREATE TABLE `tb_penerimaan` (
  `id_pemasukan` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_masuk` date DEFAULT NULL,
  `keterangan` text,
  `penerima` varchar(20) DEFAULT NULL,
  `kondisi_barang` varchar(20) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `jumlah` int(50) DEFAULT NULL,
  `tgl_input` varchar(50) DEFAULT NULL,
  `nota` varchar(50) DEFAULT NULL,
  `harga` int(15) DEFAULT NULL,
  `total` int(15) DEFAULT NULL,
  PRIMARY KEY (`id_pemasukan`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_penerimaan
-- ----------------------------
INSERT INTO `tb_penerimaan` VALUES ('36', '2018-11-20', '-', 'wulan', 'baik', '3', '70', '21-11-2018 11:18:59pm', 'KLH30020', '50000', '3500000');
INSERT INTO `tb_penerimaan` VALUES ('39', '2018-11-06', '-', 'wulan', 'baik', '4', '66', '22-11-2018 12:17:28am', 'ZX9090', '35000', '2310000');
INSERT INTO `tb_penerimaan` VALUES ('42', '2019-01-19', '-', 'james', ' sangat baik', '1', '2', '19-01-2019 04:51:20pm', 'LLK930', '70000', '140000');
INSERT INTO `tb_penerimaan` VALUES ('46', '2019-01-17', '-', 'dian', ' sangat baik', '2', '15', '31-01-2019 08:32:47am', 'OVP4343499', '20', '300');
INSERT INTO `tb_penerimaan` VALUES ('47', '2019-02-01', '-', 'joko', ' sangat baik', '2', '40', '04-02-2019 09:44:05am', 'DS434545', '500000', '20000000');
INSERT INTO `tb_penerimaan` VALUES ('48', '2019-02-05', '-', 'joko', 'baik', '1', '60', '04-02-2019 09:45:18am', 'OVP43434OP', '50000', '3000000');
INSERT INTO `tb_penerimaan` VALUES ('49', '2019-02-01', '-', 'hasna', ' sangat baik', '1', '60', '04-02-2019 09:49:31am', 'OVP4343490', '350000', '21000000');

-- ----------------------------
-- Table structure for `tb_pengeluaran`
-- ----------------------------
DROP TABLE IF EXISTS `tb_pengeluaran`;
CREATE TABLE `tb_pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT,
  `no_pengeluaran` varchar(20) DEFAULT NULL,
  `tgl_keluar` date DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `keterangan` text,
  `petugas` varchar(50) DEFAULT NULL,
  `tgl_input` varchar(50) DEFAULT NULL,
  `penerima` varchar(30) DEFAULT NULL,
  `jumlah` int(50) DEFAULT NULL,
  `tgl_masuk` date DEFAULT NULL,
  `harga` int(30) DEFAULT NULL,
  `total` int(30) DEFAULT NULL,
  PRIMARY KEY (`id_pengeluaran`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_pengeluaran
-- ----------------------------
INSERT INTO `tb_pengeluaran` VALUES ('1', 'KL-220119105808 ', '2019-01-16', '1', '-*-*wulan* sangat baik*22-11-2018 12:16:00am*KZ9090*2018-11-02', 'gudang', '22-01-2019 10:58:24am', 'james', '4', '2018-11-02', '30000', '120000');
INSERT INTO `tb_pengeluaran` VALUES ('2', 'KL-230119054124 ', '2019-01-23', '2', '-*-*joko*baik*22-11-2018 12:18:16am*ASDA90JA2018-11-20', 'dinda', '23-01-2019 05:41:44pm', 'dian', '26', '2018-11-20', '23000', '598000');
INSERT INTO `tb_pengeluaran` VALUES ('3', 'KL-230119054124  ', '2019-01-23', '2', '-*-*wulan* sangat baik*21-11-2018 11:11:23pm*DS43431*2018-11-22', 'gudang', '23-01-2019 05:41:45pm', 'dian', '24', '2018-11-22', '23000', '552000');
INSERT INTO `tb_pengeluaran` VALUES ('4', 'KL-230119054303 ', '2019-01-23', '2', '-*-*wulan* sangat baik*21-11-2018 11:11:23pm*DS434312018-11-22', 'joko', '23-01-2019 05:43:26pm', 'dian', '6', '2018-11-22', '23000', '138000');
INSERT INTO `tb_pengeluaran` VALUES ('5', 'KL-230119054303  ', '2019-01-23', '2', '-*-*dian*baik*16-12-2018 03:54:46pm*DS4342*2018-12-11', 'gudang', '23-01-2019 05:43:27pm', 'dian', '10', '2018-12-11', '250000', '2500000');
INSERT INTO `tb_pengeluaran` VALUES ('6', 'KL-230119054430 ', '2019-01-23', '1', '-*-*wulan* sangat baik*22-11-2018 12:16:00am*KZ90902018-11-02', '-', '23-01-2019 05:44:56pm', '-', '108', '2018-11-02', '30000', '3240000');
INSERT INTO `tb_pengeluaran` VALUES ('7', 'KL-230119054430  ', '2019-01-23', '1', '-*-*dian* sangat baik*01-11-2018 01:49:36am*SP904023*2018-11-14', 'gudang', '23-01-2019 05:44:57pm', '-', '2', '2018-11-14', '20000', '40000');
INSERT INTO `tb_pengeluaran` VALUES ('8', 'KL-300119022341 ', '2019-01-23', '1', '-*-*dian* sangat baik*01-11-2018 01:49:36am*SP904023*2018-11-14', 'gudang', '30-01-2019 02:24:24pm', 'joko', '12', '2018-11-14', '20000', '240000');
INSERT INTO `tb_pengeluaran` VALUES ('9', 'KL-300119022519 ', '2019-01-30', '1', '-*-*dian* sangat baik*01-11-2018 01:49:36am*SP9040232018-11-14', 'albert', '30-01-2019 02:25:49pm', 'joko', '30', '2018-11-14', '20000', '600000');
INSERT INTO `tb_pengeluaran` VALUES ('10', 'KL-300119022519  ', '2019-01-30', '1', '-*-*james* sangat baik*19-01-2019 04:51:20pm*LLK930*2019-01-19', 'gudang', '30-01-2019 02:25:50pm', 'joko', '5', '2019-01-19', '70000', '350000');
INSERT INTO `tb_pengeluaran` VALUES ('11', 'KL-300119022639 ', '2019-01-30', '4', '-*-*wulan*baik*22-11-2018 12:17:28am*ZX90912018-11-06', 'albert', '30-01-2019 02:27:33pm', 'joko', '31', '2018-11-06', '35000', '1085000');
INSERT INTO `tb_pengeluaran` VALUES ('12', 'KL-300119022639  ', '2019-01-30', '4', '-*-*wulan*baik*22-11-2018 12:17:28am*ZX9090*2018-11-06', 'gudang', '30-01-2019 02:27:33pm', 'joko', '4', '2018-11-06', '35000', '140000');
INSERT INTO `tb_pengeluaran` VALUES ('13', 'KL-310119083006 ', '2019-01-10', '2', '-*-*dian*baik*16-12-2018 03:54:46pm*DS43422018-12-11', 'albert', '31-01-2019 08:30:35am', 'hasna', '30', '2018-12-11', '250000', '7500000');
INSERT INTO `tb_pengeluaran` VALUES ('14', 'KL-310119083006  ', '2019-01-10', '2', '-*-*dian* sangat baik*31-01-2019 08:27:55am*LVD9900*2019-01-16', 'gudang', '31-01-2019 08:30:36am', 'hasna', '5', '2019-01-16', '30000', '150000');
INSERT INTO `tb_pengeluaran` VALUES ('15', 'KL-310119083117 ', '2019-01-17', '1', '-*-*james* sangat baik*31-01-2019 08:28:56am*ASD090902019-01-17', 'joko', '31-01-2019 08:31:41am', 'james', '15', '2019-01-17', '20000', '300000');
INSERT INTO `tb_pengeluaran` VALUES ('16', 'KL-310119083117  ', '2019-01-17', '1', '-*-*james* sangat baik*19-01-2019 04:51:20pm*LLK930*2019-01-19', 'gudang', '31-01-2019 08:31:42am', 'james', '2', '2019-01-19', '70000', '140000');
INSERT INTO `tb_pengeluaran` VALUES ('17', 'KL-310119083536 ', '2019-01-17', '2', '-*-*dian* sangat baik*31-01-2019 08:27:55am*LVD99002019-01-16', 'kasmad', '31-01-2019 08:36:20am', 'james', '85', '2019-01-16', '30000', '2550000');
INSERT INTO `tb_pengeluaran` VALUES ('18', 'KL-310119083536  ', '2019-01-17', '2', '-*-*dian* sangat baik*31-01-2019 08:32:47am*OVP4343499*2019-01-17', 'gudang', '31-01-2019 08:36:21am', 'james', '5', '2019-01-17', '20', '100');
INSERT INTO `tb_pengeluaran` VALUES ('19', 'KL-040219094643 ', '2019-02-01', '1', '-*-*joko* sangat baik*31-01-2019 08:32:08am*LLK9300012019-01-09', 'albert', '04-02-2019 09:47:16am', 'dian', '20', '2019-01-09', '15000', '300000');
INSERT INTO `tb_pengeluaran` VALUES ('20', 'KL-040219094643  ', '2019-02-01', '1', '-*-*james* sangat baik*19-01-2019 04:51:20pm*LLK930*2019-01-19', 'gudang', '04-02-2019 09:47:17am', 'dian', '1', '2019-01-19', '70000', '70000');

-- ----------------------------
-- Table structure for `tb_retur_customer`
-- ----------------------------
DROP TABLE IF EXISTS `tb_retur_customer`;
CREATE TABLE `tb_retur_customer` (
  `id_retur_customer` int(11) NOT NULL AUTO_INCREMENT,
  `no_retur_customer` varchar(20) DEFAULT NULL,
  `no_pengeluaran` varchar(20) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `tgl_retur_cust` date DEFAULT NULL,
  `keterangan` text,
  `nama_cust` varchar(30) DEFAULT NULL,
  `nama_petugas` varchar(30) DEFAULT NULL,
  `tgl_input` varchar(30) DEFAULT NULL,
  `harga` int(30) DEFAULT NULL,
  `kondisi` varchar(20) DEFAULT NULL,
  `total` int(30) DEFAULT NULL,
  `jumlah` int(20) DEFAULT NULL,
  PRIMARY KEY (`id_retur_customer`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_retur_customer
-- ----------------------------
INSERT INTO `tb_retur_customer` VALUES ('2', 'RK-090119095406', 'KL-161218035558', '3', '2019-01-15', 'retur dari bapak doni karena jumlah terlalu banyak dan rusak', 'doni', 'albert', ' 09-01-2019 09:54:06pm', '60000', 'baik', '600000', '10');
INSERT INTO `tb_retur_customer` VALUES ('3', 'RK-190119112216', 'KL-190119093706', '1', '2019-01-15', '-', 'doni', 'joko', ' 19-01-2019 11:22:16am', '30000', 'rusak', '60000', '2');

-- ----------------------------
-- Table structure for `tb_retur_suplier`
-- ----------------------------
DROP TABLE IF EXISTS `tb_retur_suplier`;
CREATE TABLE `tb_retur_suplier` (
  `id_retur_suplier` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` int(11) DEFAULT NULL,
  `nama_suplier` varchar(50) DEFAULT NULL,
  `keterangan` text,
  `tgl_retur` date DEFAULT NULL,
  `petugas` varchar(20) DEFAULT NULL,
  `kondisi` varchar(20) DEFAULT NULL,
  `tgl_input` varchar(30) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total` int(20) DEFAULT NULL,
  `harga` int(20) DEFAULT NULL,
  `no_pengeluaran` varchar(20) DEFAULT NULL,
  `nota` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_retur_suplier`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_retur_suplier
-- ----------------------------
INSERT INTO `tb_retur_suplier` VALUES ('12', '1', 'PT PAPERINDO NUSANTARA', '-', '2019-01-09', 'dinda', 'baik', '18-01-2019 11:18:21pm', '5', '100000', '20000', 'RS-180119111821', 'SP904023|2018-11-14|-|dian| sangat baik|01-11-2018 01:49:36am');
INSERT INTO `tb_retur_suplier` VALUES ('13', '2', 'PT PAPERINDO NUSANTARA', '-', '2019-01-01', 'joko', 'rusak', '18-01-2019 11:18:46pm', '4', '92000', '23000', 'RS-180119111846', 'ASDA90JA|2018-11-20|-|joko|baik|22-11-2018 12:18:16am');

-- ----------------------------
-- Table structure for `tb_satuan`
-- ----------------------------
DROP TABLE IF EXISTS `tb_satuan`;
CREATE TABLE `tb_satuan` (
  `id_satuan` int(11) NOT NULL AUTO_INCREMENT,
  `satuan` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_satuan`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_satuan
-- ----------------------------
INSERT INTO `tb_satuan` VALUES ('2', 'pcs');
INSERT INTO `tb_satuan` VALUES ('4', 'dus');

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `toko` varchar(50) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'administrator toko ', 'admin', '123', '1', 'toko wisuda purwokerto', '26-03-2019 04:22:20pm');
INSERT INTO `tb_user` VALUES ('3', 'andri sutikno', 'andri', 'andri', '2', 'toko satu lagi cilacap', '26-03-2019 04:22:20pm');
INSERT INTO `tb_user` VALUES ('4', 'indah kartika', 'indah', 'indah', '2', 'toko wisuda kebumen', '26-03-2019 04:22:20pm');
INSERT INTO `tb_user` VALUES ('5', 'joko', 'joko', 'joko', '2', 'toko satu lagi cilacap', '26-03-2019 04:22:20pm');
INSERT INTO `tb_user` VALUES ('6', 'pimpinan', 'pimpinan', '123', '3', 'cv wisuda purwokerto', '26-03-2019 04:22:20pm');

-- ----------------------------
-- View structure for `view_barang`
-- ----------------------------
DROP VIEW IF EXISTS `view_barang`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_barang` AS select `tb_satuan`.`satuan` AS `satuan`,`tb_merk`.`merk` AS `merk`,`tb_kategori`.`kategori` AS `kategori`,`tb_barang`.`nama_barang` AS `nama_barang`,`tb_barang`.`id_barang` AS `id_barang`,`tb_barang`.`id_kategori` AS `id_kategori`,`tb_barang`.`id_merk` AS `id_merk`,`tb_barang`.`id_satuan` AS `id_satuan` from (((`tb_barang` join `tb_kategori` on((`tb_kategori`.`id_kategori` = `tb_barang`.`id_kategori`))) join `tb_merk` on((`tb_merk`.`id_merk` = `tb_barang`.`id_merk`))) join `tb_satuan` on((`tb_satuan`.`id_satuan` = `tb_barang`.`id_satuan`))) ;

-- ----------------------------
-- View structure for `view_keep`
-- ----------------------------
DROP VIEW IF EXISTS `view_keep`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_keep` AS select `tb_keep`.`id_keep` AS `id_keep`,`tb_keep`.`id_user` AS `id_user`,`tb_keep`.`id_barang` AS `id_barang`,`tb_keep`.`tgl_input` AS `tgl_input`,`tb_keep`.`tgl_ambil` AS `tgl_ambil`,`tb_keep`.`jml` AS `jml`,`tb_keep`.`keterangan` AS `keterangan`,`tb_keep`.`status` AS `status`,`tb_user`.`toko` AS `toko`,`tb_user`.`nama` AS `nama`,`tb_barang`.`nama_barang` AS `nama_barang`,`tb_barang`.`id_satuan` AS `id_satuan`,`tb_satuan`.`satuan` AS `satuan` from (((`tb_keep` join `tb_user` on((`tb_user`.`id_user` = `tb_keep`.`id_user`))) join `tb_barang` on((`tb_barang`.`id_barang` = `tb_keep`.`id_barang`))) join `tb_satuan` on((`tb_satuan`.`id_satuan` = `tb_barang`.`id_satuan`))) ;

-- ----------------------------
-- View structure for `view_kegiatan_admin`
-- ----------------------------
DROP VIEW IF EXISTS `view_kegiatan_admin`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_kegiatan_admin` AS select `tb_user`.`nama` AS `nama`,`tb_kegiatan_admin`.`id_kegiatan` AS `id_kegiatan`,`tb_kegiatan_admin`.`id_user` AS `id_user`,`tb_kegiatan_admin`.`kegiatan` AS `kegiatan`,`tb_kegiatan_admin`.`waktu` AS `waktu` from (`tb_kegiatan_admin` join `tb_user` on((`tb_kegiatan_admin`.`id_user` = `tb_user`.`id_user`))) ;

-- ----------------------------
-- View structure for `view_pemasukan`
-- ----------------------------
DROP VIEW IF EXISTS `view_pemasukan`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_pemasukan` AS select `tb_penerimaan`.`tgl_masuk` AS `tgl_masuk`,`tb_penerimaan`.`id_pemasukan` AS `id_pemasukan`,`tb_penerimaan`.`keterangan` AS `keterangan`,`tb_penerimaan`.`penerima` AS `penerima`,`tb_penerimaan`.`kondisi_barang` AS `kondisi_barang`,`tb_penerimaan`.`tgl_input` AS `tgl_input`,`tb_penerimaan`.`nota` AS `nota`,`tb_penerimaan`.`harga` AS `harga`,`tb_penerimaan`.`jumlah` AS `jumlah`,`tb_penerimaan`.`id_barang` AS `id_barang`,`tb_penerimaan`.`total` AS `total`,`tb_barang`.`nama_barang` AS `nama_barang`,`tb_merk`.`id_merk` AS `id_merk`,`tb_merk`.`merk` AS `merk`,`tb_kategori`.`id_kategori` AS `id_kategori`,`tb_kategori`.`kategori` AS `kategori`,`tb_satuan`.`id_satuan` AS `id_satuan`,`tb_satuan`.`satuan` AS `satuan` from ((((`tb_penerimaan` join `tb_barang` on((`tb_barang`.`id_barang` = `tb_penerimaan`.`id_barang`))) join `tb_merk` on((`tb_merk`.`id_merk` = `tb_barang`.`id_merk`))) join `tb_kategori` on((`tb_kategori`.`id_kategori` = `tb_barang`.`id_kategori`))) join `tb_satuan` on((`tb_barang`.`id_satuan` = `tb_satuan`.`id_satuan`))) ;

-- ----------------------------
-- View structure for `view_pengeluaran`
-- ----------------------------
DROP VIEW IF EXISTS `view_pengeluaran`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_pengeluaran` AS select `tb_barang`.`nama_barang` AS `nama_barang`,`tb_pengeluaran`.`id_pengeluaran` AS `id_pengeluaran`,`tb_pengeluaran`.`tgl_keluar` AS `tgl_keluar`,`tb_pengeluaran`.`keterangan` AS `keterangan`,`tb_pengeluaran`.`petugas` AS `petugas`,`tb_pengeluaran`.`tgl_input` AS `tgl_input`,`tb_pengeluaran`.`penerima` AS `penerima`,`tb_pengeluaran`.`jumlah` AS `jumlah`,`tb_satuan`.`satuan` AS `satuan`,`tb_pengeluaran`.`no_pengeluaran` AS `no_pengeluaran`,`tb_pengeluaran`.`id_barang` AS `id_barang`,`tb_pengeluaran`.`tgl_masuk` AS `tgl_masuk`,`tb_pengeluaran`.`harga` AS `harga`,`tb_pengeluaran`.`total` AS `total` from ((`tb_pengeluaran` join `tb_barang` on((`tb_pengeluaran`.`id_barang` = `tb_barang`.`id_barang`))) join `tb_satuan` on((`tb_satuan`.`id_satuan` = `tb_barang`.`id_satuan`))) ;

-- ----------------------------
-- View structure for `view_retur_customer`
-- ----------------------------
DROP VIEW IF EXISTS `view_retur_customer`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_retur_customer` AS select `tb_retur_customer`.`id_retur_customer` AS `id_retur_customer`,`tb_retur_customer`.`id_barang` AS `id_barang`,`tb_retur_customer`.`tgl_retur_cust` AS `tgl_retur_cust`,`tb_retur_customer`.`keterangan` AS `keterangan`,`tb_retur_customer`.`nama_cust` AS `nama_cust`,`tb_retur_customer`.`nama_petugas` AS `nama_petugas`,`tb_retur_customer`.`tgl_input` AS `tgl_input`,`tb_retur_customer`.`kondisi` AS `kondisi`,`tb_retur_customer`.`jumlah` AS `jumlah`,`tb_barang`.`nama_barang` AS `nama_barang`,`tb_satuan`.`satuan` AS `satuan`,`tb_satuan`.`id_satuan` AS `id_satuan`,`tb_retur_customer`.`no_retur_customer` AS `no_retur_customer`,`tb_retur_customer`.`no_pengeluaran` AS `no_pengeluaran`,`tb_retur_customer`.`harga` AS `harga`,`tb_retur_customer`.`total` AS `total` from ((`tb_retur_customer` join `tb_barang` on((`tb_barang`.`id_barang` = `tb_retur_customer`.`id_barang`))) join `tb_satuan` on((`tb_satuan`.`id_satuan` = `tb_barang`.`id_satuan`))) ;

-- ----------------------------
-- View structure for `view_retur_suplier`
-- ----------------------------
DROP VIEW IF EXISTS `view_retur_suplier`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_retur_suplier` AS select `tb_retur_suplier`.`id_retur_suplier` AS `id_retur_suplier`,`tb_retur_suplier`.`id_barang` AS `id_barang`,`tb_retur_suplier`.`nama_suplier` AS `nama_suplier`,`tb_retur_suplier`.`keterangan` AS `keterangan`,`tb_retur_suplier`.`tgl_retur` AS `tgl_retur`,`tb_retur_suplier`.`petugas` AS `petugas`,`tb_retur_suplier`.`kondisi` AS `kondisi`,`tb_retur_suplier`.`tgl_input` AS `tgl_input`,`tb_barang`.`nama_barang` AS `nama_barang`,`tb_satuan`.`id_satuan` AS `id_satuan`,`tb_satuan`.`satuan` AS `satuan`,`tb_retur_suplier`.`jumlah` AS `jumlah`,`tb_retur_suplier`.`total` AS `total`,`tb_retur_suplier`.`harga` AS `harga`,`tb_retur_suplier`.`nota` AS `nota` from ((`tb_retur_suplier` join `tb_barang` on((`tb_barang`.`id_barang` = `tb_retur_suplier`.`id_barang`))) join `tb_satuan` on((`tb_satuan`.`id_satuan` = `tb_barang`.`id_satuan`))) ;

-- ----------------------------
-- View structure for `view_stok`
-- ----------------------------
DROP VIEW IF EXISTS `view_stok`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_stok` AS select `view_pemasukan`.`kategori` AS `kategori`,`view_pemasukan`.`satuan` AS `satuan`,`view_pemasukan`.`nama_barang` AS `nama_barang`,`view_pemasukan`.`id_barang` AS `id_barang`,sum(`view_pemasukan`.`jumlah`) AS `jumlah`,sum(`view_pemasukan`.`total`) AS `total`,`view_pemasukan`.`merk` AS `merk` from `view_pemasukan` group by `view_pemasukan`.`id_barang` ;

-- ----------------------------
-- View structure for `view_total_aset`
-- ----------------------------
DROP VIEW IF EXISTS `view_total_aset`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_total_aset` AS select sum(`view_stok`.`total`) AS `total` from `view_stok` ;

-- ----------------------------
-- View structure for `view_total_keluar`
-- ----------------------------
DROP VIEW IF EXISTS `view_total_keluar`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_total_keluar` AS select `view_pengeluaran`.`nama_barang` AS `nama_barang`,`view_pengeluaran`.`tgl_keluar` AS `tgl_keluar`,`view_pengeluaran`.`no_pengeluaran` AS `no_pengeluaran`,`view_pengeluaran`.`satuan` AS `satuan`,sum(`view_pengeluaran`.`jumlah`) AS `jumlah`,`view_pengeluaran`.`penerima` AS `penerima`,`view_pengeluaran`.`petugas` AS `petugas`,`view_pengeluaran`.`keterangan` AS `keterangan`,sum(`view_pengeluaran`.`total`) AS `total`,`view_pengeluaran`.`id_barang` AS `id_barang` from `view_pengeluaran` group by `view_pengeluaran`.`no_pengeluaran` ;
