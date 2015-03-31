/*
Navicat MySQL Data Transfer

Source Server         : CMEDIA
Source Server Version : 50614
Source Host           : localhost:3306
Source Database       : laraveldb

Target Server Type    : MYSQL
Target Server Version : 50614
File Encoding         : 65001

Date: 2015-03-31 16:09:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `level_access`
-- ----------------------------
DROP TABLE IF EXISTS `level_access`;
CREATE TABLE `level_access` (
  `level_access_id` int(20) NOT NULL AUTO_INCREMENT,
  `level_nama` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `level_deskripsi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updeted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`level_access_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of level_access
-- ----------------------------
INSERT INTO `level_access` VALUES ('1', 'Level Administrator', 'Administrator mempunyai kewenangan tertinggi untuk mengakses aplikasi, Hak Akses untuk Super Administrator ini yaitu dapat menambahkan,mengedit, menghapus, dan melihat isi halaman serta dapat melakukan perubahan pengaturan aplikasi', '2015-03-23 14:23:47', '2015-03-23 14:23:47');
INSERT INTO `level_access` VALUES ('2', 'Level High', 'Level ini mempunyai kewenangan di bawah Super Administrator untuk mengakses aplikasi, Hak Akses untuk Level High ini yaitu dapat merubah dan menghapus data di dalam aplikasi ini', '2015-03-18 10:34:19', '2015-03-18 10:34:19');
INSERT INTO `level_access` VALUES ('3', 'Level Medium', 'Level ini mempunyai kewenangan di bawah Super Administrator untuk mengakses aplikasi, Hak Akses untuk Level High ini yaitu dapat merubah dan menghapus data di dalam aplikasi ini', '2015-03-18 10:34:19', '2015-03-18 10:34:19');
INSERT INTO `level_access` VALUES ('4', 'Level Low', 'Level ini mempunyai kewenangan hanya dapat menambahkan data di dalam aplikasi ini', '2015-03-18 10:34:19', '2015-03-18 10:34:19');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menu_id` int(20) NOT NULL AUTO_INCREMENT,
  `mod_dept_id` int(20) NOT NULL,
  `menu_kode` varchar(50) NOT NULL,
  `menu_nama` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `menu_info` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `directory` varchar(225) NOT NULL,
  `menu_icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '1', 'pros', 'Prosedur Aplikasi', 'Menu ini untuk informasi hak akses', 'admin', 'fa fa-sign-in fa-fw', '2015-03-23 16:28:09', '2015-03-23 16:28:09');
INSERT INTO `menu` VALUES ('2', '1', 'mod', 'Modul Aplikasi', 'Menu ini untuk pengaturan modul', 'admin', 'fa fa-archive fa-fw', '2015-03-23 16:28:20', '2015-03-23 16:28:20');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2015_03_07_172824_create_table_users', '1');
INSERT INTO `migrations` VALUES ('2015_03_07_173407_create_table_users', '2');
INSERT INTO `migrations` VALUES ('2015_03_07_173731_create_table_users', '3');

-- ----------------------------
-- Table structure for `modul`
-- ----------------------------
DROP TABLE IF EXISTS `modul`;
CREATE TABLE `modul` (
  `mod_dept_id` int(20) NOT NULL AUTO_INCREMENT,
  `mod_dept_kode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mod_dept_nama` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mod_nama` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mod_dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of modul
-- ----------------------------
INSERT INTO `modul` VALUES ('1', 'adm', 'Departement Administrator', 'Admin', '2015-03-17 10:13:28', '2015-03-17 10:13:28');
INSERT INTO `modul` VALUES ('2', 'account', 'Departement Akuntansi', 'Akunting', '2015-03-17 10:14:13', '2015-03-17 10:14:13');
INSERT INTO `modul` VALUES ('3', 'finance', 'Departement Keuangan', 'Keuangan', '2015-03-17 10:14:16', '2015-03-17 10:14:16');
INSERT INTO `modul` VALUES ('4', 'logistic', 'Departement Logistic', 'Logistik', '2015-03-17 10:14:20', '2015-03-17 10:14:20');
INSERT INTO `modul` VALUES ('5', 'teknisi', 'Departement Teknisi', 'Teknisi', '2015-03-17 10:14:24', '2015-03-17 10:14:24');

-- ----------------------------
-- Table structure for `mst_karyawan`
-- ----------------------------
DROP TABLE IF EXISTS `mst_karyawan`;
CREATE TABLE `mst_karyawan` (
  `karyawan_id` int(20) NOT NULL AUTO_INCREMENT,
  `karyawan_identitas` varchar(225) NOT NULL,
  `karyawan_nama` varchar(225) NOT NULL,
  `karyawan_tempat_lahir` varchar(225) NOT NULL,
  `karyawan_tanggal_lahir` date NOT NULL,
  `karyawan_jenis_kelamin` int(2) NOT NULL,
  `karyawan_golongan_darah` varchar(5) NOT NULL,
  `karyawan_alamat` text NOT NULL,
  `kota_id` int(5) NOT NULL,
  `agama_id` int(5) NOT NULL COMMENT 'join table mst_agama',
  `karyawan_status` int(5) NOT NULL,
  `negara_id` int(5) NOT NULL COMMENT 'join table mst_negara',
  `karyawan_telepon1` varchar(50) NOT NULL,
  `karyawan_telepon2` varchar(50) NOT NULL,
  `karyawan_email` varchar(225) NOT NULL,
  `karyawan_foto` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`karyawan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_karyawan
-- ----------------------------
INSERT INTO `mst_karyawan` VALUES ('1', '0000.0000.0000.0000', 'administrator', '', '0000-00-00', '1', 'A', 'jln. Budhi', '183', '1', '1', '107', '022-000000', '089602823846', 'muhamadiqbal29@yahoo.com', 'IKBAL 1.jpg', '2015-03-18 11:15:38', '2015-03-18 11:15:38');

-- ----------------------------
-- Table structure for `mst_kota`
-- ----------------------------
DROP TABLE IF EXISTS `mst_kota`;
CREATE TABLE `mst_kota` (
  `kota_id` int(20) NOT NULL AUTO_INCREMENT,
  `provinsi_id` int(20) NOT NULL,
  `kota_nama` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`kota_id`)
) ENGINE=InnoDB AUTO_INCREMENT=498 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_kota
-- ----------------------------
INSERT INTO `mst_kota` VALUES ('1', '1', 'Kabupaten Aceh Barat');
INSERT INTO `mst_kota` VALUES ('2', '1', 'Kabupaten Aceh Barat Daya');
INSERT INTO `mst_kota` VALUES ('3', '1', 'Kabupaten Aceh Besar');
INSERT INTO `mst_kota` VALUES ('4', '1', 'Kabupaten Aceh Jaya');
INSERT INTO `mst_kota` VALUES ('5', '1', 'Kabupaten Aceh Selatan');
INSERT INTO `mst_kota` VALUES ('6', '1', 'Kabupaten Aceh Singkil');
INSERT INTO `mst_kota` VALUES ('7', '1', 'Kabupaten Aceh Tamiang');
INSERT INTO `mst_kota` VALUES ('8', '1', 'Kabupaten Aceh Tengah');
INSERT INTO `mst_kota` VALUES ('9', '1', 'Kabupaten Aceh Tenggara');
INSERT INTO `mst_kota` VALUES ('10', '1', 'Kabupaten Aceh Timur');
INSERT INTO `mst_kota` VALUES ('11', '1', 'Kabupaten Aceh Utara');
INSERT INTO `mst_kota` VALUES ('12', '1', 'Kabupaten Bener Meriah');
INSERT INTO `mst_kota` VALUES ('13', '1', 'Kabupaten Bireuen');
INSERT INTO `mst_kota` VALUES ('14', '1', 'Kabupaten Gayo Luwes');
INSERT INTO `mst_kota` VALUES ('15', '1', 'Kabupaten Nagan Raya');
INSERT INTO `mst_kota` VALUES ('16', '1', 'Kabupaten Pidie');
INSERT INTO `mst_kota` VALUES ('17', '1', 'Kabupaten Pidie Jaya');
INSERT INTO `mst_kota` VALUES ('18', '1', 'Kabupaten Simeulue');
INSERT INTO `mst_kota` VALUES ('19', '1', 'Kota Banda Aceh');
INSERT INTO `mst_kota` VALUES ('20', '1', 'Kota Langsa');
INSERT INTO `mst_kota` VALUES ('21', '1', 'Kota Lhokseumawe');
INSERT INTO `mst_kota` VALUES ('22', '1', 'Kota Sabang');
INSERT INTO `mst_kota` VALUES ('23', '1', 'Kota Subulussalam');
INSERT INTO `mst_kota` VALUES ('24', '2', 'Kabupaten Asahan');
INSERT INTO `mst_kota` VALUES ('25', '2', 'Kabupaten Batubara');
INSERT INTO `mst_kota` VALUES ('26', '2', 'Kabupaten Dairi');
INSERT INTO `mst_kota` VALUES ('27', '2', 'Kabupaten Deli Serdang');
INSERT INTO `mst_kota` VALUES ('28', '2', 'Kabupaten Humbang Hasundutan');
INSERT INTO `mst_kota` VALUES ('29', '2', 'Kabupaten Karo');
INSERT INTO `mst_kota` VALUES ('30', '2', 'Kabupaten Labuhan Batu');
INSERT INTO `mst_kota` VALUES ('31', '2', 'Kabupaten Labuhanbatu Selatan');
INSERT INTO `mst_kota` VALUES ('32', '2', 'Kabupaten Labuhanbatu Utara');
INSERT INTO `mst_kota` VALUES ('33', '2', 'Kabupaten Langkat');
INSERT INTO `mst_kota` VALUES ('34', '2', 'Kabupaten Mandailing Natal');
INSERT INTO `mst_kota` VALUES ('35', '2', 'Kabupaten Nias');
INSERT INTO `mst_kota` VALUES ('36', '2', 'Kabupaten Nias Barat');
INSERT INTO `mst_kota` VALUES ('37', '2', 'Kabupaten Nias Selatan');
INSERT INTO `mst_kota` VALUES ('38', '2', 'Kabupaten Nias Utara');
INSERT INTO `mst_kota` VALUES ('39', '2', 'Kabupaten Padang Lawas');
INSERT INTO `mst_kota` VALUES ('40', '2', 'Kabupaten Padang Lawas Utara');
INSERT INTO `mst_kota` VALUES ('41', '2', 'Kabupaten Pakpak Barat');
INSERT INTO `mst_kota` VALUES ('42', '2', 'Kabupaten Samosir');
INSERT INTO `mst_kota` VALUES ('43', '2', 'Kabupaten Serdang Bedagai');
INSERT INTO `mst_kota` VALUES ('44', '2', 'Kabupaten Simalungun');
INSERT INTO `mst_kota` VALUES ('45', '2', 'Kabupaten Tapanuli Selatan');
INSERT INTO `mst_kota` VALUES ('46', '2', 'Kabupaten Tapanuli Tengah');
INSERT INTO `mst_kota` VALUES ('47', '2', 'Kabupaten Tapanuli Utara');
INSERT INTO `mst_kota` VALUES ('48', '2', 'Kabupaten Toba Samosir');
INSERT INTO `mst_kota` VALUES ('49', '2', 'Kota Binjai');
INSERT INTO `mst_kota` VALUES ('50', '2', 'Kota Gunung Sitoli');
INSERT INTO `mst_kota` VALUES ('51', '2', 'Kota Medan');
INSERT INTO `mst_kota` VALUES ('52', '2', 'Kota Padangsidempuan');
INSERT INTO `mst_kota` VALUES ('53', '2', 'Kota Pematang Siantar');
INSERT INTO `mst_kota` VALUES ('54', '2', 'Kota Sibolga');
INSERT INTO `mst_kota` VALUES ('55', '2', 'Kota Tanjung Balai');
INSERT INTO `mst_kota` VALUES ('56', '2', 'Kota Tebing Tinggi');
INSERT INTO `mst_kota` VALUES ('57', '3', 'Kabupaten Agam');
INSERT INTO `mst_kota` VALUES ('58', '3', 'Kabupaten Dharmas Raya');
INSERT INTO `mst_kota` VALUES ('59', '3', 'Kabupaten Kepulauan Mentawai');
INSERT INTO `mst_kota` VALUES ('60', '3', 'Kabupaten Lima Puluh Kota');
INSERT INTO `mst_kota` VALUES ('61', '3', 'Kabupaten Padang Pariaman');
INSERT INTO `mst_kota` VALUES ('62', '3', 'Kabupaten Pasaman');
INSERT INTO `mst_kota` VALUES ('63', '3', 'Kabupaten Pasaman Barat');
INSERT INTO `mst_kota` VALUES ('64', '3', 'Kabupaten Pesisir Selatan');
INSERT INTO `mst_kota` VALUES ('65', '3', 'Kabupaten Sijunjung');
INSERT INTO `mst_kota` VALUES ('66', '3', 'Kabupaten Solok');
INSERT INTO `mst_kota` VALUES ('67', '3', 'Kabupaten Solok Selatan');
INSERT INTO `mst_kota` VALUES ('68', '3', 'Kabupaten Tanah Datar');
INSERT INTO `mst_kota` VALUES ('69', '3', 'Kota Bukittinggi');
INSERT INTO `mst_kota` VALUES ('70', '3', 'Kota Padang');
INSERT INTO `mst_kota` VALUES ('71', '3', 'Kota Padang Panjang');
INSERT INTO `mst_kota` VALUES ('72', '3', 'Kota Pariaman');
INSERT INTO `mst_kota` VALUES ('73', '3', 'Kota Payakumbuh');
INSERT INTO `mst_kota` VALUES ('74', '3', 'Kota Sawah Lunto');
INSERT INTO `mst_kota` VALUES ('75', '3', 'Kota Solok');
INSERT INTO `mst_kota` VALUES ('76', '4', 'Kabupaten Bengkalis');
INSERT INTO `mst_kota` VALUES ('77', '4', 'Kabupaten Indragiri Hilir');
INSERT INTO `mst_kota` VALUES ('78', '4', 'Kabupaten Indragiri Hulu');
INSERT INTO `mst_kota` VALUES ('79', '4', 'Kabupaten Kampar');
INSERT INTO `mst_kota` VALUES ('80', '4', 'Kabupaten Kuantan Singingi');
INSERT INTO `mst_kota` VALUES ('81', '4', 'Kabupaten Meranti');
INSERT INTO `mst_kota` VALUES ('82', '4', 'Kabupaten Pelalawan');
INSERT INTO `mst_kota` VALUES ('83', '4', 'Kabupaten Rokan Hilir');
INSERT INTO `mst_kota` VALUES ('84', '4', 'Kabupaten Rokan Hulu');
INSERT INTO `mst_kota` VALUES ('85', '4', 'Kabupaten Siak');
INSERT INTO `mst_kota` VALUES ('86', '4', 'Kota Dumai');
INSERT INTO `mst_kota` VALUES ('87', '4', 'Kota Pekanbaru');
INSERT INTO `mst_kota` VALUES ('88', '5', 'Kabupaten Bintan');
INSERT INTO `mst_kota` VALUES ('89', '5', 'Kabupaten Karimun');
INSERT INTO `mst_kota` VALUES ('90', '5', 'Kabupaten Kepulauan Anambas');
INSERT INTO `mst_kota` VALUES ('91', '5', 'Kabupaten Lingga');
INSERT INTO `mst_kota` VALUES ('92', '5', 'Kabupaten Natuna');
INSERT INTO `mst_kota` VALUES ('93', '5', 'Kota Batam');
INSERT INTO `mst_kota` VALUES ('94', '5', 'Kota Tanjung Pinang');
INSERT INTO `mst_kota` VALUES ('95', '6', 'Kabupaten Bangka');
INSERT INTO `mst_kota` VALUES ('96', '6', 'Kabupaten Bangka Barat');
INSERT INTO `mst_kota` VALUES ('97', '6', 'Kabupaten Bangka Selatan');
INSERT INTO `mst_kota` VALUES ('98', '6', 'Kabupaten Bangka Tengah');
INSERT INTO `mst_kota` VALUES ('99', '6', 'Kabupaten Belitung');
INSERT INTO `mst_kota` VALUES ('100', '6', 'Kabupaten Belitung Timur');
INSERT INTO `mst_kota` VALUES ('101', '6', 'Kota Pangkal Pinang');
INSERT INTO `mst_kota` VALUES ('102', '7', 'Kabupaten Kerinci');
INSERT INTO `mst_kota` VALUES ('103', '7', 'Kabupaten Merangin');
INSERT INTO `mst_kota` VALUES ('104', '7', 'Kabupaten Sarolangun');
INSERT INTO `mst_kota` VALUES ('105', '7', 'Kabupaten Batang Hari');
INSERT INTO `mst_kota` VALUES ('106', '7', 'Kabupaten Muaro Jambi');
INSERT INTO `mst_kota` VALUES ('107', '7', 'Kabupaten Tanjung Jabung Timur');
INSERT INTO `mst_kota` VALUES ('108', '7', 'Kabupaten Tanjung Jabung Barat');
INSERT INTO `mst_kota` VALUES ('109', '7', 'Kabupaten Tebo');
INSERT INTO `mst_kota` VALUES ('110', '7', 'Kabupaten Bungo');
INSERT INTO `mst_kota` VALUES ('111', '7', 'Kota Jambi');
INSERT INTO `mst_kota` VALUES ('112', '7', 'Kota Sungai Penuh');
INSERT INTO `mst_kota` VALUES ('113', '8', 'Kabupaten Bengkulu Selatan');
INSERT INTO `mst_kota` VALUES ('114', '8', 'Kabupaten Bengkulu Tengah');
INSERT INTO `mst_kota` VALUES ('115', '8', 'Kabupaten Bengkulu Utara');
INSERT INTO `mst_kota` VALUES ('116', '8', 'Kabupaten Kaur');
INSERT INTO `mst_kota` VALUES ('117', '8', 'Kabupaten Kepahiang');
INSERT INTO `mst_kota` VALUES ('118', '8', 'Kabupaten Lebong');
INSERT INTO `mst_kota` VALUES ('119', '8', 'Kabupaten Mukomuko');
INSERT INTO `mst_kota` VALUES ('120', '8', 'Kabupaten Rejang Lebong');
INSERT INTO `mst_kota` VALUES ('121', '8', 'Kabupaten Seluma');
INSERT INTO `mst_kota` VALUES ('122', '8', 'Kota Bengkulu');
INSERT INTO `mst_kota` VALUES ('123', '9', 'Kabupaten Banyuasin');
INSERT INTO `mst_kota` VALUES ('124', '9', 'Kabupaten Empat Lawang');
INSERT INTO `mst_kota` VALUES ('125', '9', 'Kabupaten Lahat');
INSERT INTO `mst_kota` VALUES ('126', '9', 'Kabupaten Muara Enim');
INSERT INTO `mst_kota` VALUES ('127', '9', 'Kabupaten Musi Banyu Asin');
INSERT INTO `mst_kota` VALUES ('128', '9', 'Kabupaten Musi Rawas');
INSERT INTO `mst_kota` VALUES ('129', '9', 'Kabupaten Ogan Ilir');
INSERT INTO `mst_kota` VALUES ('130', '9', 'Kabupaten Ogan Komering Ilir');
INSERT INTO `mst_kota` VALUES ('131', '9', 'Kabupaten Ogan Komering Ulu');
INSERT INTO `mst_kota` VALUES ('132', '9', 'Kabupaten Ogan Komering Ulu Selatan');
INSERT INTO `mst_kota` VALUES ('133', '9', 'Kabupaten Ogan Komering Ulu Timur');
INSERT INTO `mst_kota` VALUES ('134', '9', 'Kota Lubuklinggau');
INSERT INTO `mst_kota` VALUES ('135', '9', 'Kota Pagar Alam');
INSERT INTO `mst_kota` VALUES ('136', '9', 'Kota Palembang');
INSERT INTO `mst_kota` VALUES ('137', '9', 'Kota Prabumulih');
INSERT INTO `mst_kota` VALUES ('138', '10', 'Kabupaten Lampung Barat');
INSERT INTO `mst_kota` VALUES ('139', '10', 'Kabupaten Lampung Selatan');
INSERT INTO `mst_kota` VALUES ('140', '10', 'Kabupaten Lampung Tengah');
INSERT INTO `mst_kota` VALUES ('141', '10', 'Kabupaten Lampung Timur');
INSERT INTO `mst_kota` VALUES ('142', '10', 'Kabupaten Lampung Utara');
INSERT INTO `mst_kota` VALUES ('143', '10', 'Kabupaten Mesuji');
INSERT INTO `mst_kota` VALUES ('144', '10', 'Kabupaten Pesawaran');
INSERT INTO `mst_kota` VALUES ('145', '10', 'Kabupaten Pringsewu');
INSERT INTO `mst_kota` VALUES ('146', '10', 'Kabupaten Tanggamus');
INSERT INTO `mst_kota` VALUES ('147', '10', 'Kabupaten Tulang Bawang');
INSERT INTO `mst_kota` VALUES ('148', '10', 'Kabupaten Tulang Bawang Barat');
INSERT INTO `mst_kota` VALUES ('149', '10', 'Kabupaten Way Kanan');
INSERT INTO `mst_kota` VALUES ('150', '10', 'Kota Bandar Lampung');
INSERT INTO `mst_kota` VALUES ('151', '10', 'Kota Metro');
INSERT INTO `mst_kota` VALUES ('152', '11', 'Kabupaten Lebak');
INSERT INTO `mst_kota` VALUES ('153', '11', 'Kabupaten Pandeglang');
INSERT INTO `mst_kota` VALUES ('154', '11', 'Kabupaten Serang');
INSERT INTO `mst_kota` VALUES ('155', '11', 'Kabupaten Tangerang');
INSERT INTO `mst_kota` VALUES ('156', '11', 'Kota Cilegon');
INSERT INTO `mst_kota` VALUES ('157', '11', 'Kota Serang');
INSERT INTO `mst_kota` VALUES ('158', '11', 'Kota Tangerang');
INSERT INTO `mst_kota` VALUES ('159', '11', 'Kota Tangerang Selatan');
INSERT INTO `mst_kota` VALUES ('160', '12', 'Kabupaten Adm. Kepulauan Seribu');
INSERT INTO `mst_kota` VALUES ('161', '12', 'Kota Jakarta Barat');
INSERT INTO `mst_kota` VALUES ('162', '12', 'Kota Jakarta Pusat');
INSERT INTO `mst_kota` VALUES ('163', '12', 'Kota Jakarta Selatan');
INSERT INTO `mst_kota` VALUES ('164', '12', 'Kota Jakarta Timur');
INSERT INTO `mst_kota` VALUES ('165', '12', 'Kota Jakarta Utara');
INSERT INTO `mst_kota` VALUES ('166', '13', 'Kabupaten Bandung');
INSERT INTO `mst_kota` VALUES ('167', '13', 'Kabupaten Bandung Barat');
INSERT INTO `mst_kota` VALUES ('168', '13', 'Kabupaten Bekasi');
INSERT INTO `mst_kota` VALUES ('169', '13', 'Kabupaten Bogor');
INSERT INTO `mst_kota` VALUES ('170', '13', 'Kabupaten Ciamis');
INSERT INTO `mst_kota` VALUES ('171', '13', 'Kabupaten Cianjur');
INSERT INTO `mst_kota` VALUES ('172', '13', 'Kabupaten Cirebon');
INSERT INTO `mst_kota` VALUES ('173', '13', 'Kabupaten Garut');
INSERT INTO `mst_kota` VALUES ('174', '13', 'Kabupaten Indramayu');
INSERT INTO `mst_kota` VALUES ('175', '13', 'Kabupaten Karawang');
INSERT INTO `mst_kota` VALUES ('176', '13', 'Kabupaten Kuningan');
INSERT INTO `mst_kota` VALUES ('177', '13', 'Kabupaten Majalengka');
INSERT INTO `mst_kota` VALUES ('178', '13', 'Kabupaten Purwakarta');
INSERT INTO `mst_kota` VALUES ('179', '13', 'Kabupaten Subang');
INSERT INTO `mst_kota` VALUES ('180', '13', 'Kabupaten Sukabumi');
INSERT INTO `mst_kota` VALUES ('181', '13', 'Kabupaten Sumedang');
INSERT INTO `mst_kota` VALUES ('182', '13', 'Kabupaten Tasikmalaya');
INSERT INTO `mst_kota` VALUES ('183', '13', 'Kota Bandung');
INSERT INTO `mst_kota` VALUES ('184', '13', 'Kota Banjar');
INSERT INTO `mst_kota` VALUES ('185', '13', 'Kota Bekasi');
INSERT INTO `mst_kota` VALUES ('186', '13', 'Kota Bogor');
INSERT INTO `mst_kota` VALUES ('187', '13', 'Kota Cimahi');
INSERT INTO `mst_kota` VALUES ('188', '13', 'Kota Cirebon');
INSERT INTO `mst_kota` VALUES ('189', '13', 'Kota Depok');
INSERT INTO `mst_kota` VALUES ('190', '13', 'Kota Sukabumi');
INSERT INTO `mst_kota` VALUES ('191', '13', 'Kota Tasikmalaya');
INSERT INTO `mst_kota` VALUES ('192', '14', 'Kabupaten Banjarnegara');
INSERT INTO `mst_kota` VALUES ('193', '14', 'Kabupaten Banyumas');
INSERT INTO `mst_kota` VALUES ('194', '14', 'Kabupaten Batang');
INSERT INTO `mst_kota` VALUES ('195', '14', 'Kabupaten Blora');
INSERT INTO `mst_kota` VALUES ('196', '14', 'Kabupaten Boyolali');
INSERT INTO `mst_kota` VALUES ('197', '14', 'Kabupaten Brebes');
INSERT INTO `mst_kota` VALUES ('198', '14', 'Kabupaten Cilacap');
INSERT INTO `mst_kota` VALUES ('199', '14', 'Kabupaten Demak');
INSERT INTO `mst_kota` VALUES ('200', '14', 'Kabupaten Grobogan');
INSERT INTO `mst_kota` VALUES ('201', '14', 'Kabupaten Jepara');
INSERT INTO `mst_kota` VALUES ('202', '14', 'Kabupaten Karanganyar');
INSERT INTO `mst_kota` VALUES ('203', '14', 'Kabupaten Kebumen');
INSERT INTO `mst_kota` VALUES ('204', '14', 'Kabupaten Kendal');
INSERT INTO `mst_kota` VALUES ('205', '14', 'Kabupaten Klaten');
INSERT INTO `mst_kota` VALUES ('206', '14', 'Kabupaten Kota Tegal');
INSERT INTO `mst_kota` VALUES ('207', '14', 'Kabupaten Kudus');
INSERT INTO `mst_kota` VALUES ('208', '14', 'Kabupaten Magelang');
INSERT INTO `mst_kota` VALUES ('209', '14', 'Kabupaten Pati');
INSERT INTO `mst_kota` VALUES ('210', '14', 'Kabupaten Pekalongan');
INSERT INTO `mst_kota` VALUES ('211', '14', 'Kabupaten Pemalang');
INSERT INTO `mst_kota` VALUES ('212', '14', 'Kabupaten Purbalingga');
INSERT INTO `mst_kota` VALUES ('213', '14', 'Kabupaten Purworejo');
INSERT INTO `mst_kota` VALUES ('214', '14', 'Kabupaten Rembang');
INSERT INTO `mst_kota` VALUES ('215', '14', 'Kabupaten Semarang');
INSERT INTO `mst_kota` VALUES ('216', '14', 'Kabupaten Sragen');
INSERT INTO `mst_kota` VALUES ('217', '14', 'Kabupaten Sukoharjo');
INSERT INTO `mst_kota` VALUES ('218', '14', 'Kabupaten Temanggung');
INSERT INTO `mst_kota` VALUES ('219', '14', 'Kabupaten Wonogiri');
INSERT INTO `mst_kota` VALUES ('220', '14', 'Kabupaten Wonosobo');
INSERT INTO `mst_kota` VALUES ('221', '14', 'Kota Magelang');
INSERT INTO `mst_kota` VALUES ('222', '14', 'Kota Pekalongan');
INSERT INTO `mst_kota` VALUES ('223', '14', 'Kota Salatiga');
INSERT INTO `mst_kota` VALUES ('224', '14', 'Kota Semarang');
INSERT INTO `mst_kota` VALUES ('225', '14', 'Kota Surakarta');
INSERT INTO `mst_kota` VALUES ('226', '14', 'Kota Tegal');
INSERT INTO `mst_kota` VALUES ('227', '15', 'Kabupaten Bantul');
INSERT INTO `mst_kota` VALUES ('228', '15', 'Kabupaten Gunung Kidul');
INSERT INTO `mst_kota` VALUES ('229', '15', 'Kabupaten Kulon Progo');
INSERT INTO `mst_kota` VALUES ('230', '15', 'Kabupaten Sleman');
INSERT INTO `mst_kota` VALUES ('231', '15', 'Kota Yogyakarta');
INSERT INTO `mst_kota` VALUES ('232', '16', 'Kabupaten Bangkalan');
INSERT INTO `mst_kota` VALUES ('233', '16', 'Kabupaten Banyuwangi');
INSERT INTO `mst_kota` VALUES ('234', '16', 'Kabupaten Blitar');
INSERT INTO `mst_kota` VALUES ('235', '16', 'Kabupaten Bojonegoro');
INSERT INTO `mst_kota` VALUES ('236', '16', 'Kabupaten Bondowoso');
INSERT INTO `mst_kota` VALUES ('237', '16', 'Kabupaten Gresik');
INSERT INTO `mst_kota` VALUES ('238', '16', 'Kabupaten Jember');
INSERT INTO `mst_kota` VALUES ('239', '16', 'Kabupaten Jombang');
INSERT INTO `mst_kota` VALUES ('240', '16', 'Kabupaten Kediri');
INSERT INTO `mst_kota` VALUES ('241', '16', 'Kabupaten Lamongan');
INSERT INTO `mst_kota` VALUES ('242', '16', 'Kabupaten Lumajang');
INSERT INTO `mst_kota` VALUES ('243', '16', 'Kabupaten Madiun');
INSERT INTO `mst_kota` VALUES ('244', '16', 'Kabupaten Magetan');
INSERT INTO `mst_kota` VALUES ('245', '16', 'Kabupaten Malang');
INSERT INTO `mst_kota` VALUES ('246', '16', 'Kabupaten Mojokerto');
INSERT INTO `mst_kota` VALUES ('247', '16', 'Kabupaten Nganjuk');
INSERT INTO `mst_kota` VALUES ('248', '16', 'Kabupaten Ngawi');
INSERT INTO `mst_kota` VALUES ('249', '16', 'Kabupaten Pacitan');
INSERT INTO `mst_kota` VALUES ('250', '16', 'Kabupaten Pamekasan');
INSERT INTO `mst_kota` VALUES ('251', '16', 'Kabupaten Pasuruan');
INSERT INTO `mst_kota` VALUES ('252', '16', 'Kabupaten Ponorogo');
INSERT INTO `mst_kota` VALUES ('253', '16', 'Kabupaten Probolinggo');
INSERT INTO `mst_kota` VALUES ('254', '16', 'Kabupaten Sampang');
INSERT INTO `mst_kota` VALUES ('255', '16', 'Kabupaten Sidoarjo');
INSERT INTO `mst_kota` VALUES ('256', '16', 'Kabupaten Situbondo');
INSERT INTO `mst_kota` VALUES ('257', '16', 'Kabupaten Sumenep');
INSERT INTO `mst_kota` VALUES ('258', '16', 'Kabupaten Trenggalek');
INSERT INTO `mst_kota` VALUES ('259', '16', 'Kabupaten Tuban');
INSERT INTO `mst_kota` VALUES ('260', '16', 'Kabupaten Tulungagung');
INSERT INTO `mst_kota` VALUES ('261', '16', 'Kota Batu');
INSERT INTO `mst_kota` VALUES ('262', '16', 'Kota Blitar');
INSERT INTO `mst_kota` VALUES ('263', '16', 'Kota Kediri');
INSERT INTO `mst_kota` VALUES ('264', '16', 'Kota Madiun');
INSERT INTO `mst_kota` VALUES ('265', '16', 'Kota Malang');
INSERT INTO `mst_kota` VALUES ('266', '16', 'Kota Mojokerto');
INSERT INTO `mst_kota` VALUES ('267', '16', 'Kota Pasuruan');
INSERT INTO `mst_kota` VALUES ('268', '16', 'Kota Probolinggo');
INSERT INTO `mst_kota` VALUES ('269', '16', 'Kota Surabaya');
INSERT INTO `mst_kota` VALUES ('270', '17', 'Kabupaten Badung');
INSERT INTO `mst_kota` VALUES ('271', '17', 'Kabupaten Bangli');
INSERT INTO `mst_kota` VALUES ('272', '17', 'Kabupaten Buleleng');
INSERT INTO `mst_kota` VALUES ('273', '17', 'Kabupaten Gianyar');
INSERT INTO `mst_kota` VALUES ('274', '17', 'Kabupaten Jembrana');
INSERT INTO `mst_kota` VALUES ('275', '17', 'Kabupaten Karang Asem');
INSERT INTO `mst_kota` VALUES ('276', '17', 'Kabupaten Klungkung');
INSERT INTO `mst_kota` VALUES ('277', '17', 'Kabupaten Tabanan');
INSERT INTO `mst_kota` VALUES ('278', '17', 'Kota Denpasar');
INSERT INTO `mst_kota` VALUES ('279', '18', 'Kabupaten Bima');
INSERT INTO `mst_kota` VALUES ('280', '18', 'Kabupaten Dompu');
INSERT INTO `mst_kota` VALUES ('281', '18', 'Kabupaten Lombok Barat');
INSERT INTO `mst_kota` VALUES ('282', '18', 'Kabupaten Lombok Tengah');
INSERT INTO `mst_kota` VALUES ('283', '18', 'Kabupaten Lombok Timur');
INSERT INTO `mst_kota` VALUES ('284', '18', 'Kabupaten Lombok Utara');
INSERT INTO `mst_kota` VALUES ('285', '18', 'Kabupaten Sumbawa');
INSERT INTO `mst_kota` VALUES ('286', '18', 'Kabupaten Sumbawa Barat');
INSERT INTO `mst_kota` VALUES ('287', '18', 'Kota Bima');
INSERT INTO `mst_kota` VALUES ('288', '18', 'Kota Mataram');
INSERT INTO `mst_kota` VALUES ('289', '19', 'Kabupaten Alor');
INSERT INTO `mst_kota` VALUES ('290', '19', 'Kabupaten Belu');
INSERT INTO `mst_kota` VALUES ('291', '19', 'Kabupaten Ende');
INSERT INTO `mst_kota` VALUES ('292', '19', 'Kabupaten Flores Timur');
INSERT INTO `mst_kota` VALUES ('293', '19', 'Kabupaten Kupang');
INSERT INTO `mst_kota` VALUES ('294', '19', 'Kabupaten Lembata');
INSERT INTO `mst_kota` VALUES ('295', '19', 'Kabupaten Manggarai');
INSERT INTO `mst_kota` VALUES ('296', '19', 'Kabupaten Manggarai Barat');
INSERT INTO `mst_kota` VALUES ('297', '19', 'Kabupaten Manggarai Timur');
INSERT INTO `mst_kota` VALUES ('298', '19', 'Kabupaten Nagekeo');
INSERT INTO `mst_kota` VALUES ('299', '19', 'Kabupaten Ngada');
INSERT INTO `mst_kota` VALUES ('300', '19', 'Kabupaten Rote Ndao');
INSERT INTO `mst_kota` VALUES ('301', '19', 'Kabupaten Sabu Raijua');
INSERT INTO `mst_kota` VALUES ('302', '19', 'Kabupaten Sikka');
INSERT INTO `mst_kota` VALUES ('303', '19', 'Kabupaten Sumba Barat');
INSERT INTO `mst_kota` VALUES ('304', '19', 'Kabupaten Sumba Barat Daya');
INSERT INTO `mst_kota` VALUES ('305', '19', 'Kabupaten Sumba Tengah');
INSERT INTO `mst_kota` VALUES ('306', '19', 'Kabupaten Sumba Timur');
INSERT INTO `mst_kota` VALUES ('307', '19', 'Kabupaten Timor Tengah Selatan');
INSERT INTO `mst_kota` VALUES ('308', '19', 'Kabupaten Timor Tengah Utara');
INSERT INTO `mst_kota` VALUES ('309', '19', 'Kota Kupang');
INSERT INTO `mst_kota` VALUES ('310', '20', 'Kabupaten Bengkayang');
INSERT INTO `mst_kota` VALUES ('311', '20', 'Kabupaten Kapuas Hulu');
INSERT INTO `mst_kota` VALUES ('312', '20', 'Kabupaten Kayong Utara');
INSERT INTO `mst_kota` VALUES ('313', '20', 'Kabupaten Ketapang');
INSERT INTO `mst_kota` VALUES ('314', '20', 'Kabupaten Kubu Raya');
INSERT INTO `mst_kota` VALUES ('315', '20', 'Kabupaten Landak');
INSERT INTO `mst_kota` VALUES ('316', '20', 'Kabupaten Melawi');
INSERT INTO `mst_kota` VALUES ('317', '20', 'Kabupaten Pontianak');
INSERT INTO `mst_kota` VALUES ('318', '20', 'Kabupaten Sambas');
INSERT INTO `mst_kota` VALUES ('319', '20', 'Kabupaten Sanggau');
INSERT INTO `mst_kota` VALUES ('320', '20', 'Kabupaten Sekadau');
INSERT INTO `mst_kota` VALUES ('321', '20', 'Kabupaten Sintang');
INSERT INTO `mst_kota` VALUES ('322', '20', 'Kota Pontianak');
INSERT INTO `mst_kota` VALUES ('323', '20', 'Kota Singkawang');
INSERT INTO `mst_kota` VALUES ('324', '21', 'Kabupaten Barito Selatan');
INSERT INTO `mst_kota` VALUES ('325', '21', 'Kabupaten Barito Timur');
INSERT INTO `mst_kota` VALUES ('326', '21', 'Kabupaten Barito Utara');
INSERT INTO `mst_kota` VALUES ('327', '21', 'Kabupaten Gunung Mas');
INSERT INTO `mst_kota` VALUES ('328', '21', 'Kabupaten Kapuas');
INSERT INTO `mst_kota` VALUES ('329', '21', 'Kabupaten Katingan');
INSERT INTO `mst_kota` VALUES ('330', '21', 'Kabupaten Kotawaringin Barat');
INSERT INTO `mst_kota` VALUES ('331', '21', 'Kabupaten Kotawaringin Timur');
INSERT INTO `mst_kota` VALUES ('332', '21', 'Kabupaten Lamandau');
INSERT INTO `mst_kota` VALUES ('333', '21', 'Kabupaten Murung Raya');
INSERT INTO `mst_kota` VALUES ('334', '21', 'Kabupaten Pulang Pisau');
INSERT INTO `mst_kota` VALUES ('335', '21', 'Kabupaten Seruyan');
INSERT INTO `mst_kota` VALUES ('336', '21', 'Kabupaten Sukamara');
INSERT INTO `mst_kota` VALUES ('337', '21', 'Kota Palangkaraya');
INSERT INTO `mst_kota` VALUES ('338', '22', 'Kabupaten Balangan');
INSERT INTO `mst_kota` VALUES ('339', '22', 'Kabupaten Banjar');
INSERT INTO `mst_kota` VALUES ('340', '22', 'Kabupaten Barito Kuala');
INSERT INTO `mst_kota` VALUES ('341', '22', 'Kabupaten Hulu Sungai Selatan');
INSERT INTO `mst_kota` VALUES ('342', '22', 'Kabupaten Hulu Sungai Tengah');
INSERT INTO `mst_kota` VALUES ('343', '22', 'Kabupaten Hulu Sungai Utara');
INSERT INTO `mst_kota` VALUES ('344', '22', 'Kabupaten Kota Baru');
INSERT INTO `mst_kota` VALUES ('345', '22', 'Kabupaten Tabalong');
INSERT INTO `mst_kota` VALUES ('346', '22', 'Kabupaten Tanah Bumbu');
INSERT INTO `mst_kota` VALUES ('347', '22', 'Kabupaten Tanah Laut');
INSERT INTO `mst_kota` VALUES ('348', '22', 'Kabupaten Tapin');
INSERT INTO `mst_kota` VALUES ('349', '22', 'Kota Banjar Baru');
INSERT INTO `mst_kota` VALUES ('350', '22', 'Kota Banjarmasin');
INSERT INTO `mst_kota` VALUES ('351', '23', 'Kabupaten Berau');
INSERT INTO `mst_kota` VALUES ('352', '23', 'Kabupaten Bulongan');
INSERT INTO `mst_kota` VALUES ('353', '23', 'Kabupaten Kutai Barat');
INSERT INTO `mst_kota` VALUES ('354', '23', 'Kabupaten Kutai Kartanegara');
INSERT INTO `mst_kota` VALUES ('355', '23', 'Kabupaten Kutai Timur');
INSERT INTO `mst_kota` VALUES ('356', '23', 'Kabupaten Malinau');
INSERT INTO `mst_kota` VALUES ('357', '23', 'Kabupaten Nunukan');
INSERT INTO `mst_kota` VALUES ('358', '23', 'Kabupaten Paser');
INSERT INTO `mst_kota` VALUES ('359', '23', 'Kabupaten Penajam Paser Utara');
INSERT INTO `mst_kota` VALUES ('360', '23', 'Kabupaten Tana Tidung');
INSERT INTO `mst_kota` VALUES ('361', '23', 'Kota Balikpapan');
INSERT INTO `mst_kota` VALUES ('362', '23', 'Kota Bontang');
INSERT INTO `mst_kota` VALUES ('363', '23', 'Kota Samarinda');
INSERT INTO `mst_kota` VALUES ('364', '23', 'Kota Tarakan');
INSERT INTO `mst_kota` VALUES ('365', '24', 'Kabupaten Boalemo');
INSERT INTO `mst_kota` VALUES ('366', '24', 'Kabupaten Bone Bolango');
INSERT INTO `mst_kota` VALUES ('367', '24', 'Kabupaten Gorontalo');
INSERT INTO `mst_kota` VALUES ('368', '24', 'Kabupaten Gorontalo Utara');
INSERT INTO `mst_kota` VALUES ('369', '24', 'Kabupaten Pohuwato');
INSERT INTO `mst_kota` VALUES ('370', '24', 'Kota Gorontalo');
INSERT INTO `mst_kota` VALUES ('371', '25', 'Kabupaten Bantaeng');
INSERT INTO `mst_kota` VALUES ('372', '25', 'Kabupaten Barru');
INSERT INTO `mst_kota` VALUES ('373', '25', 'Kabupaten Bone');
INSERT INTO `mst_kota` VALUES ('374', '25', 'Kabupaten Bulukumba');
INSERT INTO `mst_kota` VALUES ('375', '25', 'Kabupaten Enrekang');
INSERT INTO `mst_kota` VALUES ('376', '25', 'Kabupaten Gowa');
INSERT INTO `mst_kota` VALUES ('377', '25', 'Kabupaten Jeneponto');
INSERT INTO `mst_kota` VALUES ('378', '25', 'Kabupaten Luwu');
INSERT INTO `mst_kota` VALUES ('379', '25', 'Kabupaten Luwu Timur');
INSERT INTO `mst_kota` VALUES ('380', '25', 'Kabupaten Luwu Utara');
INSERT INTO `mst_kota` VALUES ('381', '25', 'Kabupaten Maros');
INSERT INTO `mst_kota` VALUES ('382', '25', 'Kabupaten Pangkajene Kepulauan');
INSERT INTO `mst_kota` VALUES ('383', '25', 'Kabupaten Pinrang');
INSERT INTO `mst_kota` VALUES ('384', '25', 'Kabupaten Selayar');
INSERT INTO `mst_kota` VALUES ('385', '25', 'Kabupaten Sidenreng Rappang');
INSERT INTO `mst_kota` VALUES ('386', '25', 'Kabupaten Sinjai');
INSERT INTO `mst_kota` VALUES ('387', '25', 'Kabupaten Soppeng');
INSERT INTO `mst_kota` VALUES ('388', '25', 'Kabupaten Takalar');
INSERT INTO `mst_kota` VALUES ('389', '25', 'Kabupaten Tana Toraja');
INSERT INTO `mst_kota` VALUES ('390', '25', 'Kabupaten Toraja Utara');
INSERT INTO `mst_kota` VALUES ('391', '25', 'Kabupaten Wajo');
INSERT INTO `mst_kota` VALUES ('392', '25', 'Kota Makassar');
INSERT INTO `mst_kota` VALUES ('393', '25', 'Kota Palopo');
INSERT INTO `mst_kota` VALUES ('394', '25', 'Kota Pare-pare');
INSERT INTO `mst_kota` VALUES ('395', '26', 'Kabupaten Bombana');
INSERT INTO `mst_kota` VALUES ('396', '26', 'Kabupaten Buton');
INSERT INTO `mst_kota` VALUES ('397', '26', 'Kabupaten Buton Utara');
INSERT INTO `mst_kota` VALUES ('398', '26', 'Kabupaten Kolaka');
INSERT INTO `mst_kota` VALUES ('399', '26', 'Kabupaten Kolaka Utara');
INSERT INTO `mst_kota` VALUES ('400', '26', 'Kabupaten Konawe');
INSERT INTO `mst_kota` VALUES ('401', '26', 'Kabupaten Konawe Selatan');
INSERT INTO `mst_kota` VALUES ('402', '26', 'Kabupaten Konawe Utara');
INSERT INTO `mst_kota` VALUES ('403', '26', 'Kabupaten Muna');
INSERT INTO `mst_kota` VALUES ('404', '26', 'Kabupaten Wakatobi');
INSERT INTO `mst_kota` VALUES ('405', '26', 'Kota Bau-bau');
INSERT INTO `mst_kota` VALUES ('406', '26', 'Kota Kendari');
INSERT INTO `mst_kota` VALUES ('407', '27', 'Kabupaten Banggai');
INSERT INTO `mst_kota` VALUES ('408', '27', 'Kabupaten Banggai Kepulauan');
INSERT INTO `mst_kota` VALUES ('409', '27', 'Kabupaten Buol');
INSERT INTO `mst_kota` VALUES ('410', '27', 'Kabupaten Donggala');
INSERT INTO `mst_kota` VALUES ('411', '27', 'Kabupaten Morowali');
INSERT INTO `mst_kota` VALUES ('412', '27', 'Kabupaten Parigi Moutong');
INSERT INTO `mst_kota` VALUES ('413', '27', 'Kabupaten Poso');
INSERT INTO `mst_kota` VALUES ('414', '27', 'Kabupaten Sigi');
INSERT INTO `mst_kota` VALUES ('415', '27', 'Kabupaten Tojo Una-Una');
INSERT INTO `mst_kota` VALUES ('416', '27', 'Kabupaten Toli Toli');
INSERT INTO `mst_kota` VALUES ('417', '27', 'Kota Palu');
INSERT INTO `mst_kota` VALUES ('418', '28', 'Kabupaten Bolaang Mangondow');
INSERT INTO `mst_kota` VALUES ('419', '28', 'Kabupaten Bolaang Mangondow Selatan');
INSERT INTO `mst_kota` VALUES ('420', '28', 'Kabupaten Bolaang Mangondow Timur');
INSERT INTO `mst_kota` VALUES ('421', '28', 'Kabupaten Bolaang Mangondow Utara');
INSERT INTO `mst_kota` VALUES ('422', '28', 'Kabupaten Kepulauan Sangihe');
INSERT INTO `mst_kota` VALUES ('423', '28', 'Kabupaten Kepulauan Siau Tagulandang Bia');
INSERT INTO `mst_kota` VALUES ('424', '28', 'Kabupaten Kepulauan Talaud');
INSERT INTO `mst_kota` VALUES ('425', '28', 'Kabupaten Minahasa');
INSERT INTO `mst_kota` VALUES ('426', '28', 'Kabupaten Minahasa Selatan');
INSERT INTO `mst_kota` VALUES ('427', '28', 'Kabupaten Minahasa Tenggara');
INSERT INTO `mst_kota` VALUES ('428', '28', 'Kabupaten Minahasa Utara');
INSERT INTO `mst_kota` VALUES ('429', '28', 'Kota Bitung');
INSERT INTO `mst_kota` VALUES ('430', '28', 'Kota Kotamobagu');
INSERT INTO `mst_kota` VALUES ('431', '28', 'Kota Manado');
INSERT INTO `mst_kota` VALUES ('432', '28', 'Kota Tomohon');
INSERT INTO `mst_kota` VALUES ('433', '29', 'Kabupaten Majene');
INSERT INTO `mst_kota` VALUES ('434', '29', 'Kabupaten Mamasa');
INSERT INTO `mst_kota` VALUES ('435', '29', 'Kabupaten Mamuju');
INSERT INTO `mst_kota` VALUES ('436', '29', 'Kabupaten Mamuju Utara');
INSERT INTO `mst_kota` VALUES ('437', '29', 'Kabupaten Polewali Mandar');
INSERT INTO `mst_kota` VALUES ('438', '30', 'Kabupaten Buru');
INSERT INTO `mst_kota` VALUES ('439', '30', 'Kabupaten Buru Selatan');
INSERT INTO `mst_kota` VALUES ('440', '30', 'Kabupaten Kepulauan Aru');
INSERT INTO `mst_kota` VALUES ('441', '30', 'Kabupaten Maluku Barat Daya');
INSERT INTO `mst_kota` VALUES ('442', '30', 'Kabupaten Maluku Tengah');
INSERT INTO `mst_kota` VALUES ('443', '30', 'Kabupaten Maluku Tenggara');
INSERT INTO `mst_kota` VALUES ('444', '30', 'Kabupaten Maluku Tenggara Barat');
INSERT INTO `mst_kota` VALUES ('445', '30', 'Kabupaten Seram Bagian Barat');
INSERT INTO `mst_kota` VALUES ('446', '30', 'Kabupaten Seram Bagian Timur');
INSERT INTO `mst_kota` VALUES ('447', '30', 'Kota Ambon');
INSERT INTO `mst_kota` VALUES ('448', '30', 'Kota Tual');
INSERT INTO `mst_kota` VALUES ('449', '31', 'Kabupaten Halmahera Barat');
INSERT INTO `mst_kota` VALUES ('450', '31', 'Kabupaten Halmahera Selatan');
INSERT INTO `mst_kota` VALUES ('451', '31', 'Kabupaten Halmahera Tengah');
INSERT INTO `mst_kota` VALUES ('452', '31', 'Kabupaten Halmahera Timur');
INSERT INTO `mst_kota` VALUES ('453', '31', 'Kabupaten Halmahera Utara');
INSERT INTO `mst_kota` VALUES ('454', '31', 'Kabupaten Kepulauan Sula');
INSERT INTO `mst_kota` VALUES ('455', '31', 'Kabupaten Pulau Morotai');
INSERT INTO `mst_kota` VALUES ('456', '31', 'Kota Ternate');
INSERT INTO `mst_kota` VALUES ('457', '31', 'Kota Tidore Kepulauan');
INSERT INTO `mst_kota` VALUES ('458', '32', 'Kabupaten Fakfak');
INSERT INTO `mst_kota` VALUES ('459', '32', 'Kabupaten Kaimana');
INSERT INTO `mst_kota` VALUES ('460', '32', 'Kabupaten Manokwari');
INSERT INTO `mst_kota` VALUES ('461', '32', 'Kabupaten Maybrat');
INSERT INTO `mst_kota` VALUES ('462', '32', 'Kabupaten Raja Ampat');
INSERT INTO `mst_kota` VALUES ('463', '32', 'Kabupaten Sorong');
INSERT INTO `mst_kota` VALUES ('464', '32', 'Kabupaten Sorong Selatan');
INSERT INTO `mst_kota` VALUES ('465', '32', 'Kabupaten Tambrauw');
INSERT INTO `mst_kota` VALUES ('466', '32', 'Kabupaten Teluk Bintuni');
INSERT INTO `mst_kota` VALUES ('467', '32', 'Kabupaten Teluk Wondama');
INSERT INTO `mst_kota` VALUES ('468', '32', 'Kota Sorong');
INSERT INTO `mst_kota` VALUES ('469', '33', 'Kabupaten Merauke');
INSERT INTO `mst_kota` VALUES ('470', '33', 'Kabupaten Jayawijaya');
INSERT INTO `mst_kota` VALUES ('471', '33', 'Kabupaten Nabire');
INSERT INTO `mst_kota` VALUES ('472', '33', 'Kabupaten Kepulauan Yapen');
INSERT INTO `mst_kota` VALUES ('473', '33', 'Kabupaten Biak Numfor');
INSERT INTO `mst_kota` VALUES ('474', '33', 'Kabupaten Paniai');
INSERT INTO `mst_kota` VALUES ('475', '33', 'Kabupaten Puncak Jaya');
INSERT INTO `mst_kota` VALUES ('476', '33', 'Kabupaten Mimika');
INSERT INTO `mst_kota` VALUES ('477', '33', 'Kabupaten Boven Digoel');
INSERT INTO `mst_kota` VALUES ('478', '33', 'Kabupaten Mappi');
INSERT INTO `mst_kota` VALUES ('479', '33', 'Kabupaten Asmat');
INSERT INTO `mst_kota` VALUES ('480', '33', 'Kabupaten Yahukimo');
INSERT INTO `mst_kota` VALUES ('481', '33', 'Kabupaten Pegunungan Bintang');
INSERT INTO `mst_kota` VALUES ('482', '33', 'Kabupaten Tolikara');
INSERT INTO `mst_kota` VALUES ('483', '33', 'Kabupaten Sarmi');
INSERT INTO `mst_kota` VALUES ('484', '33', 'Kabupaten Keerom');
INSERT INTO `mst_kota` VALUES ('485', '33', 'Kabupaten Waropen');
INSERT INTO `mst_kota` VALUES ('486', '33', 'Kabupaten Jayapura');
INSERT INTO `mst_kota` VALUES ('487', '33', 'Kabupaten Deiyai');
INSERT INTO `mst_kota` VALUES ('488', '33', 'Kabupaten Dogiyai');
INSERT INTO `mst_kota` VALUES ('489', '33', 'Kabupaten Intan Jaya');
INSERT INTO `mst_kota` VALUES ('490', '33', 'Kabupaten Lanny Jaya');
INSERT INTO `mst_kota` VALUES ('491', '33', 'Kabupaten Mamberamo Raya');
INSERT INTO `mst_kota` VALUES ('492', '33', 'Kabupaten Mamberamo Tengah');
INSERT INTO `mst_kota` VALUES ('493', '33', 'Kabupaten Nduga');
INSERT INTO `mst_kota` VALUES ('494', '33', 'Kabupaten Puncak');
INSERT INTO `mst_kota` VALUES ('495', '33', 'Kabupaten Supiori');
INSERT INTO `mst_kota` VALUES ('496', '33', 'Kabupaten Yalimo');
INSERT INTO `mst_kota` VALUES ('497', '33', 'Kota Jayapura');

-- ----------------------------
-- Table structure for `mst_negara`
-- ----------------------------
DROP TABLE IF EXISTS `mst_negara`;
CREATE TABLE `mst_negara` (
  `negara_id` int(20) NOT NULL AUTO_INCREMENT,
  `negara_nama` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`negara_id`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_negara
-- ----------------------------
INSERT INTO `mst_negara` VALUES ('1', 'Afghanistan');
INSERT INTO `mst_negara` VALUES ('2', 'Akrotiri');
INSERT INTO `mst_negara` VALUES ('3', 'Albania');
INSERT INTO `mst_negara` VALUES ('4', 'Algeria');
INSERT INTO `mst_negara` VALUES ('5', 'American Samoa');
INSERT INTO `mst_negara` VALUES ('6', 'Andorra');
INSERT INTO `mst_negara` VALUES ('7', 'Angola');
INSERT INTO `mst_negara` VALUES ('8', 'Anguilla');
INSERT INTO `mst_negara` VALUES ('9', 'Antigua and Barbuda');
INSERT INTO `mst_negara` VALUES ('10', 'Argentina');
INSERT INTO `mst_negara` VALUES ('11', 'Armenia');
INSERT INTO `mst_negara` VALUES ('12', 'Aruba');
INSERT INTO `mst_negara` VALUES ('13', 'Ashmore and Cartier Islands');
INSERT INTO `mst_negara` VALUES ('14', 'Australia');
INSERT INTO `mst_negara` VALUES ('15', 'Austria');
INSERT INTO `mst_negara` VALUES ('16', 'Azerbaijan');
INSERT INTO `mst_negara` VALUES ('17', 'Bahamas');
INSERT INTO `mst_negara` VALUES ('18', 'Bahrain');
INSERT INTO `mst_negara` VALUES ('19', 'Baker Island');
INSERT INTO `mst_negara` VALUES ('20', 'Bangladesh');
INSERT INTO `mst_negara` VALUES ('21', 'Barbados');
INSERT INTO `mst_negara` VALUES ('22', 'Belarus');
INSERT INTO `mst_negara` VALUES ('23', 'Belgium');
INSERT INTO `mst_negara` VALUES ('24', 'Belize');
INSERT INTO `mst_negara` VALUES ('25', 'Benin');
INSERT INTO `mst_negara` VALUES ('26', 'Bermuda');
INSERT INTO `mst_negara` VALUES ('27', 'Bhutan');
INSERT INTO `mst_negara` VALUES ('28', 'Bolivia');
INSERT INTO `mst_negara` VALUES ('29', 'Bosnia and Herzegovina');
INSERT INTO `mst_negara` VALUES ('30', 'Botswana');
INSERT INTO `mst_negara` VALUES ('31', 'Bouvet Island');
INSERT INTO `mst_negara` VALUES ('32', 'Brazil');
INSERT INTO `mst_negara` VALUES ('33', 'British Indian Ocean Territory');
INSERT INTO `mst_negara` VALUES ('34', 'British Virgin Islands');
INSERT INTO `mst_negara` VALUES ('35', 'Brunei');
INSERT INTO `mst_negara` VALUES ('36', 'Bulgaria');
INSERT INTO `mst_negara` VALUES ('37', 'Burkina Faso');
INSERT INTO `mst_negara` VALUES ('38', 'Burma');
INSERT INTO `mst_negara` VALUES ('39', 'Burundi');
INSERT INTO `mst_negara` VALUES ('40', 'Cambodia');
INSERT INTO `mst_negara` VALUES ('41', 'Cameroon');
INSERT INTO `mst_negara` VALUES ('42', 'Canada');
INSERT INTO `mst_negara` VALUES ('43', 'Cape Verde');
INSERT INTO `mst_negara` VALUES ('44', 'Cayman Islands');
INSERT INTO `mst_negara` VALUES ('45', 'Central African Republic');
INSERT INTO `mst_negara` VALUES ('46', 'Chad');
INSERT INTO `mst_negara` VALUES ('47', 'Chile');
INSERT INTO `mst_negara` VALUES ('48', 'China');
INSERT INTO `mst_negara` VALUES ('49', 'Christmas Island');
INSERT INTO `mst_negara` VALUES ('50', 'Clipperton Island');
INSERT INTO `mst_negara` VALUES ('51', 'Cocos (Keeling) Islands');
INSERT INTO `mst_negara` VALUES ('52', 'Colombia');
INSERT INTO `mst_negara` VALUES ('53', 'Comoros');
INSERT INTO `mst_negara` VALUES ('54', 'Congo');
INSERT INTO `mst_negara` VALUES ('55', 'Cook Islands');
INSERT INTO `mst_negara` VALUES ('56', 'Coral Sea Islands');
INSERT INTO `mst_negara` VALUES ('57', 'Costa Rica');
INSERT INTO `mst_negara` VALUES ('58', 'Cote d Ivoire');
INSERT INTO `mst_negara` VALUES ('59', 'Croatia');
INSERT INTO `mst_negara` VALUES ('60', 'Cuba');
INSERT INTO `mst_negara` VALUES ('61', 'Cyprus');
INSERT INTO `mst_negara` VALUES ('62', 'Czech Republic');
INSERT INTO `mst_negara` VALUES ('63', 'Denmark');
INSERT INTO `mst_negara` VALUES ('64', 'Dhekelia');
INSERT INTO `mst_negara` VALUES ('65', 'Djibouti');
INSERT INTO `mst_negara` VALUES ('66', 'Dominica');
INSERT INTO `mst_negara` VALUES ('67', 'Dominican Republic');
INSERT INTO `mst_negara` VALUES ('68', 'Ecuador flag');
INSERT INTO `mst_negara` VALUES ('69', 'Egypt');
INSERT INTO `mst_negara` VALUES ('70', 'El Salvador');
INSERT INTO `mst_negara` VALUES ('71', 'Equatorial Guinea');
INSERT INTO `mst_negara` VALUES ('72', 'Eritrea');
INSERT INTO `mst_negara` VALUES ('73', 'Estonia');
INSERT INTO `mst_negara` VALUES ('74', 'Ethiopia');
INSERT INTO `mst_negara` VALUES ('75', 'European Union');
INSERT INTO `mst_negara` VALUES ('76', 'Falkland Islands flag');
INSERT INTO `mst_negara` VALUES ('77', 'Faroe Islands');
INSERT INTO `mst_negara` VALUES ('78', 'Fiji');
INSERT INTO `mst_negara` VALUES ('79', 'Finland');
INSERT INTO `mst_negara` VALUES ('80', 'France');
INSERT INTO `mst_negara` VALUES ('81', 'French Polynesia');
INSERT INTO `mst_negara` VALUES ('82', 'French Southern and Antarctic Lands');
INSERT INTO `mst_negara` VALUES ('83', 'Gabon');
INSERT INTO `mst_negara` VALUES ('84', 'Gambia');
INSERT INTO `mst_negara` VALUES ('85', 'Georgia');
INSERT INTO `mst_negara` VALUES ('86', 'Germany');
INSERT INTO `mst_negara` VALUES ('87', 'Ghana');
INSERT INTO `mst_negara` VALUES ('88', 'Gibraltar');
INSERT INTO `mst_negara` VALUES ('89', 'Greece');
INSERT INTO `mst_negara` VALUES ('90', 'Greenland');
INSERT INTO `mst_negara` VALUES ('91', 'Grenada');
INSERT INTO `mst_negara` VALUES ('92', 'Guam');
INSERT INTO `mst_negara` VALUES ('93', 'Guatemala');
INSERT INTO `mst_negara` VALUES ('94', 'Guernsey');
INSERT INTO `mst_negara` VALUES ('95', 'Guinea Bissau');
INSERT INTO `mst_negara` VALUES ('96', 'Guinea');
INSERT INTO `mst_negara` VALUES ('97', 'Guyana');
INSERT INTO `mst_negara` VALUES ('98', 'Haiti');
INSERT INTO `mst_negara` VALUES ('99', 'Heard Island and McDonald Islands');
INSERT INTO `mst_negara` VALUES ('100', 'Holy See');
INSERT INTO `mst_negara` VALUES ('101', 'Honduras');
INSERT INTO `mst_negara` VALUES ('102', 'Hong Kong');
INSERT INTO `mst_negara` VALUES ('103', 'Howland Island');
INSERT INTO `mst_negara` VALUES ('104', 'Hungary');
INSERT INTO `mst_negara` VALUES ('105', 'Iceland');
INSERT INTO `mst_negara` VALUES ('106', 'India');
INSERT INTO `mst_negara` VALUES ('107', 'Indonesia');
INSERT INTO `mst_negara` VALUES ('108', 'Iran');
INSERT INTO `mst_negara` VALUES ('109', 'Iraq');
INSERT INTO `mst_negara` VALUES ('110', 'Ireland');
INSERT INTO `mst_negara` VALUES ('111', 'Isle of Man');
INSERT INTO `mst_negara` VALUES ('112', 'Israel');
INSERT INTO `mst_negara` VALUES ('113', 'Italy');
INSERT INTO `mst_negara` VALUES ('114', 'Jamaica flag');
INSERT INTO `mst_negara` VALUES ('115', 'Jan Mayen');
INSERT INTO `mst_negara` VALUES ('116', 'Japan');
INSERT INTO `mst_negara` VALUES ('117', 'Jarvis Island');
INSERT INTO `mst_negara` VALUES ('118', 'Jersey');
INSERT INTO `mst_negara` VALUES ('119', 'Johnston Atoll');
INSERT INTO `mst_negara` VALUES ('120', 'Jordan');
INSERT INTO `mst_negara` VALUES ('121', 'Kazakhstan');
INSERT INTO `mst_negara` VALUES ('122', 'Kenya');
INSERT INTO `mst_negara` VALUES ('123', 'Kingman Reef');
INSERT INTO `mst_negara` VALUES ('124', 'Kiribati');
INSERT INTO `mst_negara` VALUES ('125', 'Kuwait');
INSERT INTO `mst_negara` VALUES ('126', 'Kyrgyzstan');
INSERT INTO `mst_negara` VALUES ('127', 'Laos');
INSERT INTO `mst_negara` VALUES ('128', 'Latvia');
INSERT INTO `mst_negara` VALUES ('129', 'Lebanon');
INSERT INTO `mst_negara` VALUES ('130', 'Lesotho');
INSERT INTO `mst_negara` VALUES ('131', 'Liberia');
INSERT INTO `mst_negara` VALUES ('132', 'Libya');
INSERT INTO `mst_negara` VALUES ('133', 'Liechtenstein');
INSERT INTO `mst_negara` VALUES ('134', 'Lithuania');
INSERT INTO `mst_negara` VALUES ('135', 'Luxembourg');
INSERT INTO `mst_negara` VALUES ('136', 'Macau');
INSERT INTO `mst_negara` VALUES ('137', 'Macedonia');
INSERT INTO `mst_negara` VALUES ('138', 'Madagascar');
INSERT INTO `mst_negara` VALUES ('139', 'Malawi');
INSERT INTO `mst_negara` VALUES ('140', 'Malaysia');
INSERT INTO `mst_negara` VALUES ('141', 'Maldives');
INSERT INTO `mst_negara` VALUES ('142', 'Mali');
INSERT INTO `mst_negara` VALUES ('143', 'Malta');
INSERT INTO `mst_negara` VALUES ('144', 'Marshall Islands');
INSERT INTO `mst_negara` VALUES ('145', 'Mauritania');
INSERT INTO `mst_negara` VALUES ('146', 'Mauritius');
INSERT INTO `mst_negara` VALUES ('147', 'Mayotte');
INSERT INTO `mst_negara` VALUES ('148', 'Mexico');
INSERT INTO `mst_negara` VALUES ('149', 'Micronesia');
INSERT INTO `mst_negara` VALUES ('150', 'Midway Islands');
INSERT INTO `mst_negara` VALUES ('151', 'Moldova');
INSERT INTO `mst_negara` VALUES ('152', 'Monaco');
INSERT INTO `mst_negara` VALUES ('153', 'Mongolia');
INSERT INTO `mst_negara` VALUES ('154', 'Montenegro');
INSERT INTO `mst_negara` VALUES ('155', 'Montserrat');
INSERT INTO `mst_negara` VALUES ('156', 'Morocco');
INSERT INTO `mst_negara` VALUES ('157', 'Mozambique');
INSERT INTO `mst_negara` VALUES ('158', 'Namibia');
INSERT INTO `mst_negara` VALUES ('159', 'Nauru');
INSERT INTO `mst_negara` VALUES ('160', 'Navassa Island');
INSERT INTO `mst_negara` VALUES ('161', 'Nepal');
INSERT INTO `mst_negara` VALUES ('162', 'Netherlands Antilles');
INSERT INTO `mst_negara` VALUES ('163', 'Netherlands');
INSERT INTO `mst_negara` VALUES ('164', 'New Caledonia');
INSERT INTO `mst_negara` VALUES ('165', 'New Zealand');
INSERT INTO `mst_negara` VALUES ('166', 'Nicaragua');
INSERT INTO `mst_negara` VALUES ('167', 'Niger');
INSERT INTO `mst_negara` VALUES ('168', 'Nigeria');
INSERT INTO `mst_negara` VALUES ('169', 'Niue');
INSERT INTO `mst_negara` VALUES ('170', 'Norfolk Island');
INSERT INTO `mst_negara` VALUES ('171', 'North Korea');
INSERT INTO `mst_negara` VALUES ('172', 'Northern Mariana Islands');
INSERT INTO `mst_negara` VALUES ('173', 'Norway');
INSERT INTO `mst_negara` VALUES ('174', 'Oman');
INSERT INTO `mst_negara` VALUES ('175', 'Pakistan');
INSERT INTO `mst_negara` VALUES ('176', 'Palau');
INSERT INTO `mst_negara` VALUES ('177', 'Palmyra Atoll');
INSERT INTO `mst_negara` VALUES ('178', 'Panama');
INSERT INTO `mst_negara` VALUES ('179', 'Papua New Guinea');
INSERT INTO `mst_negara` VALUES ('180', 'Paraguay');
INSERT INTO `mst_negara` VALUES ('181', 'Peru');
INSERT INTO `mst_negara` VALUES ('182', 'Philippines');
INSERT INTO `mst_negara` VALUES ('183', 'Pitcairn Islands');
INSERT INTO `mst_negara` VALUES ('184', 'Poland');
INSERT INTO `mst_negara` VALUES ('185', 'Portugal');
INSERT INTO `mst_negara` VALUES ('186', 'Puerto Rico');
INSERT INTO `mst_negara` VALUES ('187', 'Qatar');
INSERT INTO `mst_negara` VALUES ('188', 'Romania');
INSERT INTO `mst_negara` VALUES ('189', 'Russia');
INSERT INTO `mst_negara` VALUES ('190', 'Rwanda');
INSERT INTO `mst_negara` VALUES ('191', 'Saint Barthelemy');
INSERT INTO `mst_negara` VALUES ('192', 'Saint Helena');
INSERT INTO `mst_negara` VALUES ('193', 'Saint Kitts and Nevis');
INSERT INTO `mst_negara` VALUES ('194', 'Saint Lucia');
INSERT INTO `mst_negara` VALUES ('195', 'Saint Martin');
INSERT INTO `mst_negara` VALUES ('196', 'Saint Pierre and Miquelon');
INSERT INTO `mst_negara` VALUES ('197', 'Saint Vincent and the Grenadines');
INSERT INTO `mst_negara` VALUES ('198', 'Samoa');
INSERT INTO `mst_negara` VALUES ('199', 'San Marino');
INSERT INTO `mst_negara` VALUES ('200', 'Sao Tome and Principe');
INSERT INTO `mst_negara` VALUES ('201', 'Saudi Arabia');
INSERT INTO `mst_negara` VALUES ('202', 'Senegal');
INSERT INTO `mst_negara` VALUES ('203', 'Serbia');
INSERT INTO `mst_negara` VALUES ('204', 'Seychelles');
INSERT INTO `mst_negara` VALUES ('205', 'Sierra Leone');
INSERT INTO `mst_negara` VALUES ('206', 'Singapore');
INSERT INTO `mst_negara` VALUES ('207', 'Slovakia');
INSERT INTO `mst_negara` VALUES ('208', 'Slovenia');
INSERT INTO `mst_negara` VALUES ('209', 'Solomon Islands');
INSERT INTO `mst_negara` VALUES ('210', 'Somalia');
INSERT INTO `mst_negara` VALUES ('211', 'South Africa');
INSERT INTO `mst_negara` VALUES ('212', 'South Georgia');
INSERT INTO `mst_negara` VALUES ('213', 'South Korea');
INSERT INTO `mst_negara` VALUES ('214', 'Spain');
INSERT INTO `mst_negara` VALUES ('215', 'Sri Lanka');
INSERT INTO `mst_negara` VALUES ('216', 'Sudan');
INSERT INTO `mst_negara` VALUES ('217', 'Suriname');
INSERT INTO `mst_negara` VALUES ('218', 'Svalbard');
INSERT INTO `mst_negara` VALUES ('219', 'Swaziland');
INSERT INTO `mst_negara` VALUES ('220', 'Sweden');
INSERT INTO `mst_negara` VALUES ('221', 'Switzerland');
INSERT INTO `mst_negara` VALUES ('222', 'Syria');
INSERT INTO `mst_negara` VALUES ('223', 'Taiwan');
INSERT INTO `mst_negara` VALUES ('224', 'Tajikistan');
INSERT INTO `mst_negara` VALUES ('225', 'Tanzania');
INSERT INTO `mst_negara` VALUES ('226', 'Thailand');
INSERT INTO `mst_negara` VALUES ('227', 'Timor Leste');
INSERT INTO `mst_negara` VALUES ('228', 'Togo');
INSERT INTO `mst_negara` VALUES ('229', 'Tokelau');
INSERT INTO `mst_negara` VALUES ('230', 'Tonga');
INSERT INTO `mst_negara` VALUES ('231', 'Trinidad and Tobago');
INSERT INTO `mst_negara` VALUES ('232', 'Tunisia');
INSERT INTO `mst_negara` VALUES ('233', 'Turkey');
INSERT INTO `mst_negara` VALUES ('234', 'Turkmenistan');
INSERT INTO `mst_negara` VALUES ('235', 'Turks and Caicos Islands');
INSERT INTO `mst_negara` VALUES ('236', 'Tuvalu');
INSERT INTO `mst_negara` VALUES ('237', 'Uganda');
INSERT INTO `mst_negara` VALUES ('238', 'Ukraine');
INSERT INTO `mst_negara` VALUES ('239', 'United Arab Emirates');
INSERT INTO `mst_negara` VALUES ('240', 'United Kingdom');
INSERT INTO `mst_negara` VALUES ('241', 'United States');
INSERT INTO `mst_negara` VALUES ('242', 'Uruguay');
INSERT INTO `mst_negara` VALUES ('243', 'US Pacific Island Wildlife Refuges');
INSERT INTO `mst_negara` VALUES ('244', 'Uzbekistan');
INSERT INTO `mst_negara` VALUES ('245', 'Vanuatu');
INSERT INTO `mst_negara` VALUES ('246', 'Venezuela');
INSERT INTO `mst_negara` VALUES ('247', 'Vietnam');
INSERT INTO `mst_negara` VALUES ('248', 'Virgin Islands');
INSERT INTO `mst_negara` VALUES ('249', 'Wake Island');
INSERT INTO `mst_negara` VALUES ('250', 'Wallis and Futuna');
INSERT INTO `mst_negara` VALUES ('251', 'Yemen');
INSERT INTO `mst_negara` VALUES ('252', 'Zambia');
INSERT INTO `mst_negara` VALUES ('253', 'Zimbabwe');

-- ----------------------------
-- Table structure for `mst_provinsi`
-- ----------------------------
DROP TABLE IF EXISTS `mst_provinsi`;
CREATE TABLE `mst_provinsi` (
  `provinsi_id` int(10) NOT NULL AUTO_INCREMENT,
  `negara_id` int(20) NOT NULL,
  `provinsi_nama` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`provinsi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_provinsi
-- ----------------------------
INSERT INTO `mst_provinsi` VALUES ('1', '107', 'Nanggroe Aceh Darussalam');
INSERT INTO `mst_provinsi` VALUES ('2', '107', 'Sumatera Utara');
INSERT INTO `mst_provinsi` VALUES ('3', '107', 'Sumatera Barat');
INSERT INTO `mst_provinsi` VALUES ('4', '107', 'Riau');
INSERT INTO `mst_provinsi` VALUES ('5', '107', 'Kepulauan Riau');
INSERT INTO `mst_provinsi` VALUES ('6', '107', 'Kepulauan Bangka-Belitung');
INSERT INTO `mst_provinsi` VALUES ('7', '107', 'Jambi');
INSERT INTO `mst_provinsi` VALUES ('8', '107', 'Bengkulu');
INSERT INTO `mst_provinsi` VALUES ('9', '107', 'Sumatera Selatan');
INSERT INTO `mst_provinsi` VALUES ('10', '107', 'Lampung');
INSERT INTO `mst_provinsi` VALUES ('11', '107', 'Banten');
INSERT INTO `mst_provinsi` VALUES ('12', '107', 'DKI Jakarta');
INSERT INTO `mst_provinsi` VALUES ('13', '107', 'Jawa Barat');
INSERT INTO `mst_provinsi` VALUES ('14', '107', 'Jawa Tengah');
INSERT INTO `mst_provinsi` VALUES ('15', '107', 'Daerah Istimewa Yogyakarta  ');
INSERT INTO `mst_provinsi` VALUES ('16', '107', 'Jawa Timur');
INSERT INTO `mst_provinsi` VALUES ('17', '107', 'Bali');
INSERT INTO `mst_provinsi` VALUES ('18', '107', 'Nusa Tenggara Barat');
INSERT INTO `mst_provinsi` VALUES ('19', '107', 'Nusa Tenggara Timur');
INSERT INTO `mst_provinsi` VALUES ('20', '107', 'Kalimantan Barat');
INSERT INTO `mst_provinsi` VALUES ('21', '107', 'Kalimantan Tengah');
INSERT INTO `mst_provinsi` VALUES ('22', '107', 'Kalimantan Selatan');
INSERT INTO `mst_provinsi` VALUES ('23', '107', 'Kalimantan Timur');
INSERT INTO `mst_provinsi` VALUES ('24', '107', 'Gorontalo');
INSERT INTO `mst_provinsi` VALUES ('25', '107', 'Sulawesi Selatan');
INSERT INTO `mst_provinsi` VALUES ('26', '107', 'Sulawesi Tenggara');
INSERT INTO `mst_provinsi` VALUES ('27', '107', 'Sulawesi Tengah');
INSERT INTO `mst_provinsi` VALUES ('28', '107', 'Sulawesi Utara');
INSERT INTO `mst_provinsi` VALUES ('29', '107', 'Sulawesi Barat');
INSERT INTO `mst_provinsi` VALUES ('30', '107', 'Maluku');
INSERT INTO `mst_provinsi` VALUES ('31', '107', 'Maluku Utara');
INSERT INTO `mst_provinsi` VALUES ('32', '107', 'Papua Barat');
INSERT INTO `mst_provinsi` VALUES ('33', '107', 'Papua');

-- ----------------------------
-- Table structure for `sub_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sub_menu`;
CREATE TABLE `sub_menu` (
  `sub_menu_id` int(20) NOT NULL AUTO_INCREMENT,
  `menu_id` int(20) DEFAULT NULL,
  `sub_menu_nama` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_menu_kode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_nama` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sub_menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sub_menu
-- ----------------------------
INSERT INTO `sub_menu` VALUES ('1', '1', 'Informasi Hak Akses', 'akses', 'admin_akses', '2015-03-17 17:07:03', '2015-03-17 17:07:03');
INSERT INTO `sub_menu` VALUES ('2', '2', 'Menu', 'menu', 'admin_menu', '2015-03-17 17:07:46', '2015-03-17 17:07:46');
INSERT INTO `sub_menu` VALUES ('3', '2', 'Sub Menu', 'submenu', 'admin_submenu', '2015-03-17 17:07:46', '2015-03-17 17:07:46');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `karyawan_id` int(20) NOT NULL COMMENT 'join table mst_karyawan',
  `mod_dept_id` int(20) NOT NULL COMMENT 'join table modul',
  `level_access_id` int(20) NOT NULL COMMENT 'join table level_access',
  `username` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1', '1', '1', 'iqbal', 'iqbal@cifo.co.id', '$2y$10$cFpfkYmugi7X.If7KFka1OVV0wofVn0.Wzcvdzxu3UEEy8XNSkiIG', '2015-03-16 01:48:10', '2015-03-16 01:48:10');

-- ----------------------------
-- Table structure for `user_menu`
-- ----------------------------
DROP TABLE IF EXISTS `user_menu`;
CREATE TABLE `user_menu` (
  `user_menu_id` int(20) NOT NULL AUTO_INCREMENT,
  `id` int(20) DEFAULT NULL COMMENT 'join table users',
  `menu_id` int(20) DEFAULT NULL COMMENT 'join table menu',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_menu
-- ----------------------------
INSERT INTO `user_menu` VALUES ('1', '1', '1', '2015-03-18 10:18:05', '2015-03-18 10:18:05');
INSERT INTO `user_menu` VALUES ('2', '1', '2', '2015-03-18 10:18:06', '2015-03-18 10:18:06');

-- ----------------------------
-- Table structure for `user_menu_detail`
-- ----------------------------
DROP TABLE IF EXISTS `user_menu_detail`;
CREATE TABLE `user_menu_detail` (
  `user_menu_detail_id` int(20) NOT NULL AUTO_INCREMENT,
  `user_menu_id` int(20) DEFAULT NULL COMMENT 'join table user_menu',
  `sub_menu_id` int(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_menu_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_menu_detail
-- ----------------------------
INSERT INTO `user_menu_detail` VALUES ('1', '1', '1', '2015-03-18 10:13:53', '2015-03-18 10:13:53');
INSERT INTO `user_menu_detail` VALUES ('2', '2', '2', '2015-03-18 10:14:27', '2015-03-18 10:14:27');
INSERT INTO `user_menu_detail` VALUES ('3', '2', '3', '2015-03-18 10:15:52', '2015-03-18 10:15:52');
