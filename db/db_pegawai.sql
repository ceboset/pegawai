-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 06, 2021 at 03:17 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pegawai`
--

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

DROP TABLE IF EXISTS `pegawai`;
CREATE TABLE IF NOT EXISTS `pegawai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(128) NOT NULL,
  `jk` enum('Laki-Laki','Perempuan') NOT NULL,
  `tempat_lahir` varchar(128) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `nrp` text NOT NULL,
  `nip` text NOT NULL,
  `jabatan` text NOT NULL,
  `pangkat` varchar(20) NOT NULL,
  `gol` varchar(10) NOT NULL,
  `tmt` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `jk`, `tempat_lahir`, `tgl_lahir`, `nrp`, `nip`, `jabatan`, `pangkat`, `gol`, `tmt`) VALUES
(1, 'DOKRIN MULIADY, S.H.', 'Laki-Laki', 'Tampijak', '1959-07-22', '4875991', '195907221987031001', 'Jaksa Fungsional', 'Jaksa Madya', 'IV/a', '2015-10-01'),
(2, 'RUDY YULIANTO, S.H.,M.H.', 'Laki-Laki', 'Surabaya', '1959-07-05', '6865935', '195907051986031002', 'Jaksa Fungsinal', 'Jaksa Utama Muda', 'IV/c', '2016-04-01'),
(3, 'MERAN DJEMAN,S.H.', 'Laki-Laki', 'Bawan', '1959-08-07', '6875913', '195908071987031001', 'Jaksa Fungsional', 'Jaksa Utama Pratama', 'IV/b', '2015-10-01'),
(4, 'SUAI, S.H.', 'Laki-Laki', 'Sungai Paring', '1960-06-09', '6886040', '196006091988031001', 'Jaksa Fungsional', 'Jaksa Utama Muda', 'IV/c', '2019-04-01'),
(5, 'THOHIR, S.H.', 'Laki-Laki', 'Blora', '1961-03-14', '38161132', '196103141981121001', 'Jaksa Fungsional', 'Jaksa Utama Pratama', 'IV/b', '2016-10-01'),
(6, 'EDUARD SIANTURI . S.H., M.H', 'Laki-Laki', 'Medan', '1962-10-27', '69162115', '196210271991031001', 'Jaksa Fungsional', 'Jaksa Utama Pratama', 'IV/b', '2011-10-01'),
(7, 'SAI’IN, S.H.', 'Laki-Laki', 'Magetan', '1962-02-09', '3846237', '196202091984111001', 'Jaksa Fungsional (Satgas Intelijen)', 'Jaksa Utama Pratama', 'IV/b', '2020-04-01'),
(8, 'EDUARD SIANTURI, S.H.,M.H.', 'Laki-Laki', 'Medan', '1962-10-27', '69162115', '196210271991031001', 'Jaksa Fungsional', 'Jaksa Utama Pratama', 'IV/b', '2011-10-01'),
(9, 'MARANG. S.H., M.H', 'Laki-Laki', 'Masamba-Sulsel', '1963-09-04', '68963140', '196309041989101001', 'Wakajati Kejaksaan Tinggi Kalimantan Tengah', 'Jaksa Utama Madya', 'IV/c', '2019-10-01'),
(10, 'BUDIYANTORO . S.H', 'Laki-Laki', 'Bantul', '1963-02-14', '6896368', '196302141989031003', 'Jaksa Fungsional', 'Jaksa Utama Pratama', 'IV/b', '2018-04-01'),
(11, 'WAGIMAN, S.H.', 'Laki-Laki', 'Sumilir', '1963-03-04', '3836326', '196303041983031002', 'Kasi TP. Narkotika dan Zat Adiktif Lainnya', 'Jaksa Madya', 'IV/a', '2017-04-01'),
(12, 'I WAYAN SUASTA, S.H.', 'Laki-Laki', 'Gianyar', '1963-11-12', '6916377', '196311121991031004', 'Jaksa Fungsional (Satuan Tugas Penanganan Laporan Pengaduan)', 'Jaksa Madya', 'IV/a', '2018-10-01'),
(13, 'JUMAIYATI, S.H.', 'Perempuan', 'Pendang', '1964-09-08', '388645', '196409081988032002', 'Jaksa Fungsional ', 'Jaksa Madya', 'IV/a', '2015-04-01'),
(14, 'Dr.MUKRI,S.H., M.H', 'Laki-Laki', 'Jakarta', '1965-01-30', '6926528', '196501301992031003', 'Kepala Kejaksaan Tinggi Kalimantan Tengah', 'Jaksa Utama Madya', 'IV/d', '2019-01-10'),
(15, 'YUSUP, S.H.,M.Hum.', 'Laki-Laki', 'Bangka', '1965-08-14', '69365100', '196508141993031004', 'Pemeriksa Tipidum pada Asisten Bidang Pengawasan', 'Jaksa Madya', 'IV/a', '2019-04-01'),
(16, 'S A R I N G, S.H.,M.H.', 'Laki-Laki', 'Baturetno - Jateng', '1965-05-10', '4876570', '196505101987031003', 'Dikaryakan sebagai Kepala Biro Hukum Pemprov Kalteng No. SK Gubernur 188.44/442/2018', 'Jaksa Utama Muda', 'IV/c', '2020-04-01'),
(17, 'KRISTIANO,S.H.', 'Laki-Laki', 'Tamiyang Layang', '1966-09-15', '39166241', '196609151991031004', 'Jaksa Fungsional', 'Jaksa Utama Pratama', 'IV/b', '2020-04-01'),
(18, 'WAWAN HERYANTO, S.H.', 'Laki-Laki', 'Palangka Raya', '1967-12-17', '4906753', '196712171990031003', 'Jaksa Fungsional (Satgas Intelijen)', 'Jaksa Utama Pratama', 'IV/b', '2020-04-01'),
(19, 'DIDI HARIYONO, S.H.,M.H.', 'Laki-Laki', 'Ujung Pandang', '1967-01-01', '69467113', '196701011994031004', 'Aspidum Kejati Kalteng', 'Jaksa Utama Pratama', 'IV/b', '2018-10-01'),
(20, 'KURSITA, S.H.', 'Laki-Laki', 'Palangka Raya', '1967-09-10', '49167230', '196709101991032003', 'Jaksa Fungsional', 'Jaksa Madya', 'IV/a', '2018-04-01'),
(21, 'SRIYANTO, S.H.', 'Laki-Laki', 'Masaran', '1967-01-06', '2906761', '196701061990031014', 'Jaksa Fungsional', 'Jaksa Madya', 'IV/a', '2019-04-01'),
(22, 'PANIEM, S.E., S.H.', 'Perempuan', 'Wonogiri', '1967-05-01', '4906718', '196705011990032001', 'Pemeriksa Keuangan, Perlengkapan & Proyek Pembangunan pada Asisten Bidang Pengawasan', 'Jaksa Madya', 'IV/a', '2014-04-01'),
(23, 'TANDY MUALIM, S.H.', 'Laki-Laki', 'Jambi', '1967-09-18', '49067269', '196709181990031002', 'Kabag Tata Usaha', 'Jaksa Madya', 'IV/a', '2012-10-01'),
(24, 'Drs. ADI SANTOSO, S.H.,M.H.', 'Laki-Laki', 'Surabaya', '1968-06-05', '49368528', '196806051993111001', 'Asisten Tindak Pidana Khusus', 'Jaksa Utama Pratama', 'IV/b', '2017-10-01'),
(25, 'RUSTIANTO, S.H., MAP.', 'Laki-Laki', 'Cihonje/Banyumas', '1969-06-15', '4926927', '196906151992031002', 'Kasi Penerangan Hukum', 'Jaksa Madya', 'IV/a', '2017-10-01'),
(26, 'AGUS KHAIRUDIN, S.H.', 'Laki-Laki', 'Bekasi', '1969-08-07', '49269181', '196908071992031002', 'Koordinator pada Bidang Pidsus', 'Jaksa Madya', 'IV/a', '2013-04-01'),
(27, 'TRI ENDAH MURDININGRUM, S.H.', 'Perempuan', 'Yogjakarta', '1970-10-07', '68670123', '197010071996032004', 'Jaksa Fungsional', 'Jaksa Utama Pratama', 'IV/b', '2014-10-01'),
(28, 'M E D I E, S.H.', 'Laki-Laki', 'Balukon', '1971-05-24', '2907162', '197105241990031001', 'Kasi Ekonomi & Keuangan Pada Asisten Bidang Intelijen', 'Jaksa Madya', 'IV/a', '2014-10-01'),
(29, 'RONAL H. BAKARA, S.H.,M.H.', 'Laki-Laki', 'Parlilitan - Sumut', '1971-03-15', '69771046', '197103151997031002', 'Asisten Perdata dan Tata Usaha Kejati Kalteng', 'Jaksa Utama Pratama', 'IV/b', '2019-04-01'),
(30, 'IMANUEL, S.H.,M.H.', 'Laki-Laki', 'Bajarum', '1971-05-20', '69871074', '197105201998031008', 'Pemeriksa Intelijen pada Asisten Bidang Pengawasan', 'Jaksa Madya', 'IV/a', '2018-10-01'),
(31, 'ROMLAN ROBIN, SH', 'Laki-Laki', 'Jakarta', '1971-05-31', '49271233', '197105311992031003', 'Koordinator Bidang Intelijen', 'Jaksa Madya', 'IV/a', '2013-10-01'),
(32, 'CHAKRAMURTI N. W, S.H.', 'Laki-Laki', 'Jakarta', '1973-08-30', '49273317', '197308301992031001', 'Kasi Teknologi Informasi & Produksi Intelijen pada Asisten Bidang Intelijen', 'Jaksa Madya', 'IV/a', '2017-10-01'),
(33, 'ANGAR MAMAI SIGAI, S.H.', 'Laki-Laki', 'Palangka Raya', '1973-09-08', '60173156', '197309082000121001', 'Jaksa Fungsional', 'Jaksa Madya', 'IV/a', '2017-04-01'),
(34, 'HAPPY CHRISTIAN HUTAPEA, S.H., M.H.', 'Perempuan', 'Medan', '1973-12-25', '60073003', '197312252000031002', 'Kasi TP Orhada', 'Jaksa Madya', 'IV/a', '2019-10-01'),
(35, 'HULMAN ERIZAN SITUNGKIR,S.H.', 'Laki-Laki', 'Serapuh', '1973-10-29', '49873039', '197310291998031005', 'Jaksa Fungsional ', 'Jaksa Madya', 'IV/a', '2018-04-01'),
(36, 'I PUTU RUDINA ARTANA, S.H.', 'Laki-Laki', 'Singaraja', '1973-07-29', '49773041', '197307291997031004', 'Jaksa Fungsional', 'Jaksa Madya', 'IV/a', '2020-04-01'),
(37, 'Dr. SETYO UTOMO, S.H.,M.Hum,M.Kn.', 'Laki-Laki', 'Pati - Jateng', '1973-11-29', '69973132', '197311291999031001', 'Aswas Kejati Kalteng', 'Jaksa Utama Pratama', 'IV/b', '2018-04-01'),
(38, 'MAKRUN, S.H.', 'Laki-Laki', 'Bulukumba', '1973-02-05', '60173166', '197302052000121005', 'Koordinator Bidang Datun', 'Jaksa Madya', 'IV/a', '2018-10-01'),
(39, 'ANTON RAHMANTO, S.H.,M.H.', 'Laki-Laki', 'Jambi', '1974-05-18', '60174052', '197405182000121001', 'Kasi TP. Keamanan Negara, Ketertiban Umum & TP Umum Lainnya', 'Jaksa Madya', 'IV/a', '2017-04-01'),
(40, 'SITI MUTOSI’AH, S.H.', 'Perempuan', 'Tuban', '1974-07-06', '49774123', '197407061997032003', 'Jaksa Fungsional ', 'Jaksa Madya', 'IV/a', '2016-10-01'),
(41, 'UTAMA JAYA, S.H.', 'Laki-Laki', 'Buntok', '1974-11-13', '60174152', '197411132000121002', 'Pemeriksa Tipidsus pada Asisten Bidang Pengawasan', 'Jaksa Madya', 'IV/a', '2019-04-01'),
(42, 'RADOT PARULIAN, S.H., M.H.', 'Laki-Laki', 'Jakarta', '1974-07-14', '69974179', '197407141999031004', 'Koordinator pada Bidang Pidum', 'Jaksa Madya', 'IV/a', '2014-04-01'),
(43, 'ABDILLAH, S.H., M.H.', 'Laki-Laki', 'Sungguminasa', '1975-03-19', '69975169', '197503191999031003', 'Asisten Intelijen', 'Jaksa Utama Pratama', 'IV/b', '2018-04-01'),
(44, 'ENDAH DWI HASTUTI, S.H.', 'Perempuan', 'Kota Baru', '1975-09-06', '60075153', '19709062000032003', 'Jaksa Fungsional', 'Jaksa Utama Pratama', 'IV/b', '2020-04-01'),
(45, 'YANTI KRISTIANA, S.H.', 'Perempuan', 'Palangka Raya', '1975-01-30', '60075154', '197501302000032002', 'Jaksa Fungsional', 'Jaksa Utama Pratama', 'IV/b', '2020-04-01'),
(46, 'SUSTINE PRIDAWATI,S.H.', 'Perempuan', 'Tamiyang Layang', '1975-04-30', '60175157', '197504302000122002', 'Jaksa Fungsional', 'Jaksa Madya', 'IV/a', '2016-04-01'),
(47, 'HENDRA, S.H., M.H.', 'Laki-Laki', 'Kuala Kapuas', '1975-05-20', '49775043', '197505201997031003', 'Dikaryakan sebagai Kabag Organisasi Setda Kabupaten Pulang Pisau No. SK Bupati 821/015/Pemk/BKPP/ VIII/2017', 'Jaksa Madya', 'IV/a', '2016-10-01'),
(48, 'ACHMAD AKIL MAHULAUW, S.H.,M.H.', 'Laki-Laki', 'Ambon-Maluku', '1976-05-02', '60376302', '197605022002121007', 'Kasi Pengamanan, Pembangunan Strategis', 'Jaksa Madya', 'IV/a', '2016-10-01'),
(49, 'HAFIDZ MUHYIDDIN, S.H.', 'Laki-Laki', 'Yogyakarta', '1976-09-04', '60176099', '197609042000121001', 'Kasi Tindak Pidana Terorisme dan Lintas Negara', 'Jaksa Madya', 'IV/a', '2018-10-01'),
(50, 'RAHMAD ISNAINI, S.H., M.H.', 'Laki-Laki', 'Bima', '1976-02-23', '60176243', '197602232000121001', 'Kasi Penyidikan', 'Jaksa Madya', 'IV/a', '2017-04-01'),
(51, 'ROMULUS, S.H.,M.H.', 'Laki-Laki', 'Sangku', '1976-07-21', '60276147', '197607212001121001', 'Kasi TUN', 'Jaksa Madya', 'IV/a', '2018-10-01'),
(52, 'YOVANDI YAZID, S.H.,M.H.', 'Laki-Laki', 'Padang', '1976-07-11', '60176039', '197607112000121001', 'Koordinator pada Bidang Intelijen', 'Jaksa Madya', 'IV/a', '2016-04-01'),
(53, 'JURIYAH, S.H., M.H.', 'Perempuan', 'Banjarmasin', '1977-06-10', '60377170', '197706102002122002', 'Pemeriksa Kepegawaian & Tugas Umum pada Asisten Bidang Pengawasan', 'Jaksa Madya', 'IV/a', '2018-04-01'),
(54, 'MAHDI SURYANTO, S.H., M.H.', 'Laki-Laki', 'Kapuas', '1977-04-27', '60477417', '197704272003121005', 'Pemeriksa Perdata & TUN', 'Jaksa Madya', 'IV/a', '2018-10-01'),
(55, 'AGUNG RIYANTO, S.H.,M.H.', 'Laki-Laki', 'Bantul', '1978-05-17', '60478241', '197805172003121005', 'Kasi Ideologi, Politik, Pertahanan & Keamanan', 'Jaksa Madya', 'IV/a', '2018-10-01'),
(56, 'DATMAN KETAREN, S.H.', 'Laki-Laki', 'Kabanjahe', '1978-11-10', '60578057', '197811102005011006', 'Kasi Sosial, Budaya Dan Kemasyarakatan', 'Jaksa Muda', 'III/d', '2015-10-01'),
(57, 'BANGUN DWI SUGIARTONO, S.H.,M.H.', 'Laki-Laki', 'Jakarta', '1978-07-25', '60378378', '197807252002121002', 'Kasi Penuntutan', 'Jaksa Madya', 'IV/a', '2020-10-01'),
(58, 'LUSIANA O. RAKSAPATI, S.H., M.H.', 'Perempuan', 'Palangka Raya', '1978-10-02', '60378161', '197810022002122002', 'Kasi Pertimbangan Hukum', 'Jaksa Madya', 'IV/a', '2016-04-01'),
(59, 'SAMSURI, S.H.', 'Laki-Laki', 'Jombang', '1978-02-01', '60578256', '197802012005011006', 'Jaksa Fungsional', 'Jaksa Muda ', 'III/d', '2015-04-01'),
(60, 'ANDY AGUSTIAN, S.H.', 'Laki-Laki', 'Palangka Raya', '1979-08-11', '60479230', '197908112003121003', 'Jaksa Fungsional', 'Jaksa Muda', 'III/d', '2017-10-01'),
(61, 'SUSAN ROSALINA SUGANDA, SH.,MH.', 'Perempuan', 'Bandung', '1980-01-20', '60280143', '198001202001122001', 'Kasub Bag Perencanaan', 'Jaksa Madya', 'IV/a', '2018-10-01'),
(62, 'UJANG WIJANARKO, S.H.,M.H.', 'Laki-Laki', 'Sleman', '1980-09-23', '60580204', '198009232005011003', 'Kasi Perdata', 'Jaksa Madya', 'IV/a', '2020-04-01'),
(63, 'LUTHCAS ROHMAN, S.H.', 'Laki-Laki', 'Surabaya', '1980-08-21', '6080297', '198008212005011004', 'Koordinator pada Bidang Pidsus', 'Jaksa Madya', 'IV/a', '2020-04-01'),
(64, 'M. ZAINUR ROCHMAN, S.H.,M.H.', 'Laki-Laki', 'Lamongan', '1981-02-06', '60581355', '198102062005011007', 'Kasi Upaya Hukum Luar Biasa, Eksekusi dan Eksaminasi', 'Jaksa Madya', 'IV/a', '2019-04-01'),
(65, 'WIDYA PURNA NUGRAHA, S.H.,M.H.', 'Laki-Laki', 'Sampit', '1983-03-03', '403830599', '198303032002121007', 'Kasubsi TP Korupsi & TP pencucian Uang seksi Penyidikan Pidsus', 'Jaksa Pratama', 'III/c', '2020-04-01'),
(66, 'RIWUN SRIWATI, S.H.', 'Perempuan', 'Kalumpang', '1984-01-31', '403840618', '198401312002122001', 'Kasubsi Eksekusi dan Eksaminasi', 'Jaksa Pratama', 'III/c', '2018-04-01'),
(67, 'EEN HOSANA BABOE, S.H.', 'Perempuan', 'Palangka Raya', '1985-04-03', '600985666', '198504032008122003', 'Jaksa Fungsional ', 'Jaksa Muda', 'III/d', '2020-04-01'),
(69, '2', 'Perempuan', '2', '0002-02-02', '2', '2', '2', '2', '2', '0002-02-02');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
