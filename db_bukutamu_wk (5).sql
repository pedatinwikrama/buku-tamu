-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2018 at 09:11 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bukutamu_wk`
--

-- --------------------------------------------------------

--
-- Table structure for table `acara`
--

CREATE TABLE `acara` (
  `id` int(11) NOT NULL,
  `acara` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acara`
--

INSERT INTO `acara` (`id`, `acara`) VALUES
(1, 'gebyar'),
(2, 'nikahan');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tahun_lulus` int(4) NOT NULL,
  `jurusan` varchar(20) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `keperluan` text NOT NULL,
  `foto` varchar(50) NOT NULL,
  `ttd` varchar(50) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kunjungan`
--

CREATE TABLE `kunjungan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `instansi` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `pesan` text NOT NULL,
  `kesan` text NOT NULL,
  `foto` varchar(50) NOT NULL,
  `ttd` varchar(50) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kunjungan`
--

INSERT INTO `kunjungan` (`id`, `nama`, `instansi`, `email`, `hp`, `pesan`, `kesan`, `foto`, `ttd`, `waktu`) VALUES
(3, 'Faqih', 'SMP Ar Ridha', 'atulkhoirotmustami@gmail.com', '085780169502', 'Emejingg', 'Lebih keren aja', 'KJG002.jpeg', 'KJGTTD002.png', '2018-01-17 03:52:58'),
(5, 'Lita', 'Smk Wikrama', 'lita11706116@gmail.com', '089525633083', 'Sangat menakjubkan', 'Terus semangat', 'KJG003.jpeg', 'KJGTTD003.png', '2018-01-17 04:51:59'),
(6, 'Anisarifin', 'Marketing Manager Consultan', 'anisariin76@gmail.com', '081390761401', 'Tertarik dengan peserta didik santun,sopan dan ramah', 'Maju terus sebarkan semangt mendidik dengan hati dan tekhnologi', 'KJG005.jpeg', 'KJGTTD005.png', '2018-01-17 04:56:00'),
(7, 'Fahrelza', 'Ar Ridha As Salam', 'arsyah.fahrelza@gmail.com', '085480018', 'Senang sekali....', 'Lebih maju', 'KJG006.jpeg', 'KJGTTD006.png', '2018-01-17 05:14:57'),
(8, 'Henny', 'Smp Ar Ridha Al Salaam', 'hennymulyani@outlook.com', '085781141591', 'You guys all is freaking awesome! Polite, kind hearted, and giving excellent service. Thank', 'Tingkatkan dan pertahankan kualitas yg sudah bagus ini', 'KJG007.jpeg', 'KJGTTD007.png', '2018-01-17 05:18:50'),
(9, 'Hendri Prawira', 'SMK Wikrama Bogor', 'hendriprawira.mmd@gmail.com', '+6287880575814', 'Istimewa', 'Luar biasa', 'KJG008.jpeg', 'KJGTTD008.png', '2018-01-17 05:30:22'),
(10, 'Arfiana', 'Ar Ridha Al Salaam JHS IGS', 'arfianatriandari@gmail.com', '085718938193', 'Saya suka dengan sekolah ini!', 'Sekolahnya bagus dan lengkap dengan fasilitas yang tidak bisa ditemukan di sekolah lain. Keep up the good work!', 'KJG009.jpeg', 'KJGTTD009.png', '2018-01-17 05:54:02'),
(11, 'Sagita Ayunda Rei Nishi', 'SMP Ar Ridha Al Salaam', 'sagitaayunda_r@yahoo.co.id', '085977318505', 'Progam sekolah yang sangat bagus', 'Semoga makin maju dan menjadikan murid2 berprestasi', 'KJG0010.jpeg', 'KJGTTD0010.png', '2018-01-17 05:55:20'),
(12, 'Nusye Zahra Nareswari', 'Ar Ridha Al Salaam', 'nusyezahranareswari1@gmail.com', '08123456789', 'Bagus dan kakak kakak baik dan ramah', 'Sekolahnya bagus dan bersih. Suasananya', 'KJG0011.jpeg', 'KJGTTD0011.png', '2018-01-17 05:58:17'),
(13, 'Amatullah Nabiha Askari', 'Smp Ar Ridha Al Salaam', 'nabihaaskari@gmail.com', '082311302250', 'Dalam pelajaran nya setiap jurusannya  seru', 'Seru,dan menyenangkan', 'KJG0012.jpeg', 'KJGTTD0012.png', '2018-01-17 06:00:36'),
(14, 'Muhammad Galang', 'Ar Ridha Al Salaam Islamic Green School', 'galangrevolusi7@gmail.com', '08126996335', 'Warbyazah', 'Fasilitas  Tolong Di tambah', 'KJG0013.jpeg', 'KJGTTD0013.png', '2018-01-17 06:02:51'),
(15, 'Ayang Pakhrezi', 'Ar-Ridha Al- Salaam Islamic Green School', 'ezitea79@gmail.com', '085741200797', 'I,m very happy..... Thanks for all.', 'Lebih maju dan semangat', 'KJG0014.jpeg', 'KJGTTD0014.png', '2018-01-17 06:06:06'),
(16, 'Muhammad Rafa Abdillah', 'Ar Ridha Al Salaam Islamic Green School', 'abdillahrafa84@gmail.com', '08188525123', 'Kakak kakak sangat baik', 'Seomga SMK ini maju!', 'KJG0015.jpeg', 'KJGTTD0015.png', '2018-01-17 06:11:08'),
(17, 'Ahmad Farid Akbar', 'Ar Ridha Al Salam', 'ahmadfaridakbar2004@gmail.com', '08772254545', 'Sangat seeruu', 'Semoga wikrama semakin keren', 'KJG0016.jpeg', 'KJGTTD0016.png', '2018-01-17 06:16:13'),
(18, 'Steve Justin Ahalia Burki', 'Ar Ridha Al Salaam', 'stevejusting@mil,com', '0857475855', 'Sangat seru', 'Menjadi orang pintar', 'KJG0017.jpeg', 'KJGTTD0017.png', '2018-01-17 06:28:35'),
(19, 'Pepey', 'Pepey', 'p', '6464', 'Jeje', 'Hdjd', 'KJG0018.jpeg', 'KJGTTD0018.png', '2018-01-17 07:36:23'),
(20, '666', 'U', 'u', '6', 'U', 'U', 'KJG0019.jpeg', 'KJGTTD0019.png', '2018-01-17 09:14:25'),
(21, 'Ferdi Haspi', 'Wikrama', 'ferdihaspi@gmail.com', '08128280188', 'Hans', 'Nice', 'KJG0020.jpeg', 'KJGTTD0020.png', '2018-01-18 04:31:59'),
(22, 'Ayu', 'Ids', 'ayunrul@gmail.com', '0856999999', 'Ok', 'Ok', 'KJG0021.jpeg', 'KJGTTD0021.png', '2018-01-23 03:48:56'),
(23, 'Ayu', 'Ids', 'ayunrul@gmail.com', '0856999999', 'Ok', 'Ok', 'KJG0022.jpeg', 'KJGTTD0022.png', '2018-01-23 03:49:01'),
(24, 'Fatchur', 'IDS', 'produk.ids@gmail.com', '081280228361', 'Iya', 'Iya', 'KJG0023.jpeg', 'KJGTTD0023.png', '2018-01-23 03:52:09'),
(25, 'Chadijah Andreati Poetri', 'IDS', 'andreatichadijah@gmail.com', '08588873272', 'Req', 'Assalaualaikum', 'KJG0024.jpeg', 'KJGTTD0024.png', '2018-01-23 03:53:02'),
(26, 'Evin Choeriah', 'Smp Yza 2 Bogor', 'vienchoeriah@gmail.com', '085697045686', 'Happy', 'Kereeen bgt sekolahnyaaaa', 'KJG0025.jpeg', 'KJGTTD0025.png', '2018-01-23 04:12:27'),
(27, 'Novie Hasanah', 'SMPIT AL BUNYAN', 'twinsmom2312@gmail.com', '087881028300', 'Impressive', 'Kembangkan terus program onlinenya', 'KJG0026.jpeg', 'KJGTTD0026.png', '2018-01-23 04:58:36'),
(28, 'Josep Susilo Bintoro', 'SMP Budi Mulia', 'jsbpakeyoanalma@gmail.com', '085891314272', 'Very good serving and communicative', 'To be not to have', 'KJG0027.jpeg', 'KJGTTD0027.png', '2018-01-23 04:58:49'),
(29, 'Disnita Anggraini', 'SMPN 2 Bogor', 'disnita.anggraini@yahoo.com', '085883003997', 'Terimakasih atas ilmu yang sangat bermanfaat', 'Pelatihan ini amat membantu saya mengajar dengan efesien karena kelemahan anak terpetakan sehingga treatment akan tepat sasaran', 'KJG0028.jpeg', 'KJGTTD0028.png', '2018-01-23 05:00:06'),
(30, 'Gina Anggia Wildan', 'Smp Nuraida Islamic Boarding School', 'ginaanggiawild@gmail.com', '085691262285', 'Pelayanan ok', 'Semoga sukses.', 'KJG0029.jpeg', 'KJGTTD0029.png', '2018-01-23 05:00:40'),
(31, 'Nur Widianingsih', 'SMPN 18 Bogor', 'nurwidianingsih7@gmail.com', '085716232363', 'Idem', 'Seru,keren,inovatif,sharenya brguna bgtt', 'KJG0030.jpeg', 'KJGTTD0030.png', '2018-01-23 05:01:34'),
(32, 'Poppy Supini.s.pd', 'Smpn 15 Kt Bogor', 'psvoy36@gmail.com', '08128470136', 'Aplikasi ygvsangat menarik dan bermanfaat untuk belajar mengajar,meringankan guru dan menarik untuk siswa', 'Supaya lebih bisa mengakomodir siswa yg tdk mempunyai fasilitasvit', 'KJG0031.jpeg', 'KJGTTD0031.png', '2018-01-23 05:03:56'),
(33, 'Nur Widianingsih', 'SMPN 18 Bogor', 'nurwidianingsih7@gmail.com', '085716232363', 'Idem', 'Seru,keren,inovatif,sharenya brguna bgtt', 'KJG0032.jpeg', 'KJGTTD0032.png', '2018-01-23 05:06:39'),
(34, 'Junaedi', 'SMPN 10 Bogor', 'junaedilonk@.com', '085719399772', 'Terkesannd attitude siswa.a', 'Moga byk siswa bgr khusus.a yg ekonomi istimewa mendapatkan kesempatan belajar di sini.', 'KJG0033.jpeg', 'KJGTTD0033.png', '2018-01-23 05:07:03'),
(35, 'Junaedi', 'SMPN 10 Bogor', 'junaedilonk@.com', '085719399772', 'Terkesannd attitude siswa.a', 'Moga byk siswa bgr khusus.a yg ekonomi istimewa mendapatkan kesempatan belajar di sini.', 'KJG0034.jpeg', 'KJGTTD0034.png', '2018-01-23 05:07:07'),
(36, 'Hesti Susilawati', 'SMP Harapan Taruna', 'hestisusilawati91@yahoo.com', '085691230106', 'Sangat menginspirasi.', 'Terimakasih atas semuanya.', 'KJG0035.jpeg', 'KJGTTD0035.png', '2018-01-23 05:07:42'),
(37, 'Fanny Mulyawati', 'Smp Bhakti Taruna 2', 'fannyano2@gmail.com', '081286010426', 'I like all things', 'Thank you for your good service and wish next time better than now', 'KJG0036.jpeg', 'KJGTTD0036.png', '2018-01-23 05:08:31'),
(38, 'Fanny Mulyawati', 'Smp Bhakti Taruna 2', 'fannyano2@gmail.com', '081286010426', 'I like all things', 'Thank you for your good service and wish next time better than now', 'KJG0037.jpeg', 'KJGTTD0037.png', '2018-01-23 05:08:35'),
(39, 'Rita Nurma Mutia', 'SMP YZA 1 Ciawi', 'ritanurma@gmail.com', '085719913972', 'Wikrama, sekolah yg menginspirasi', 'Terimakasih atas sambutan dan pelayanan prima yg diberikan', 'KJG0038.jpeg', 'KJGTTD0038.png', '2018-01-23 05:08:42'),
(40, 'HAIDA KASMI', 'SMP NEGERI 12 BOGOR', 'haida.kasmi@gmail.com', '081310369468', 'Menyenangkan', 'Baik', 'KJG0039.jpeg', 'KJGTTD0039.png', '2018-01-23 05:10:24'),
(41, 'Neti Anniati', 'SMP Negeri 5 Bogor', 'nanniati@yahoo..com', '081511341617', 'Subhanallah ...benar benar sekolah idaman', 'Wikrama is the bessttt....pertahankan semua yg sdh diraih tetap istikomah', 'KJG0040.jpeg', 'KJGTTD0040.png', '2018-01-23 05:10:40'),
(42, 'Neti Anniati', 'SMP Negeri 5 Bogor', 'nanniati@yahoo..com', '081511341617', 'Subhanallah ...benar benar sekolah idaman', 'Wikrama is the bessttt....pertahankan semua yg sdh diraih tetap istikomah', 'KJG0041.jpeg', 'KJGTTD0041.png', '2018-01-23 05:10:45'),
(43, 'Krista SPd', 'SMPK SATU BAKTI', 'smak1bakti@gmail.com', '089525937224', 'Sangat bagus', 'Kurang lama waktunya', 'KJG0042.jpeg', 'KJGTTD0042.png', '2018-01-23 05:10:52'),
(44, 'Riyanti', 'SMPN17 BOGOR', 'riyantisiswodiharjo@yahoo.com', '085814669975', 'Senang sekali dan termotivasi untuk menjadi guru luar biasa', 'Tetap menjadi inspirasi bagi kita semua', 'KJG0043.jpeg', 'KJGTTD0043.png', '2018-01-23 05:12:03'),
(45, 'Susan Sulisfiani,S.Pd', 'SMP PGRI 3 BOGOR', 'sulisfiani_susan@yahoo,co.id', '08561161112', 'Tambah banyak ilmu', 'Sangat menarik', 'KJG0044.jpeg', 'KJGTTD0044.png', '2018-01-23 05:13:17'),
(46, 'Siti Ismiati', 'smp Pesat', 'sitiismiati23@gmail.com', '081513263933', 'Aplikasi kejar.id ini brmanfaat sekali', 'great', 'KJG0045.jpeg', 'KJGTTD0045.png', '2018-01-23 05:13:20'),
(47, 'Ricky Permana Putra', 'Smp Kurnia', 'rickypermanaputra.spd@gmail.com', '087872220902', 'Sempurna,', 'Tingkatkan lagi', 'KJG0046.jpeg', 'KJGTTD0046.png', '2018-01-23 05:13:54'),
(48, 'Ricky Permana Putra', 'Smp Kurnia', 'rickypermanaputra.spd@gmail.com', '087872220902', 'Sempurna,', 'Tingkatkan lagi', 'KJG0047.jpeg', 'KJGTTD0047.png', '2018-01-23 05:14:00'),
(49, 'Susan Sulisfiani,S.Pd', 'SMP PGRI 3 BOGOR', 'sulisfiani_susan@yahoo,co.id', '08561161112', 'Tambah banyak ilmu', 'Sangat menarik', 'KJG0048.jpeg', 'KJGTTD0048.png', '2018-01-23 05:14:02'),
(50, 'Irna Aryani.s.pd', 'Smp Pandutama', 'aryaniirnakana15@gmail.com', '081584239213', 'Ok banget', 'Sangat menginspirasi bagi sekolah kmi untuklebih majudalam pembelajaran berbasis IT', 'KJG0049.jpeg', 'KJGTTD0049.png', '2018-01-23 05:15:08'),
(51, 'Irna Aryani.s.pd', 'Smp Pandutama', 'aryaniirnakana15@gmail.com', '081584239213', 'Ok banget', 'Sangat menginspirasi bagi sekolah kmi untuklebih majudalam pembelajaran berbasis IT', 'KJG0050.jpeg', 'KJGTTD0050.png', '2018-01-23 05:15:15'),
(52, 'Hesti Mulatsih', 'SMPIT Insantama', 'hestimulatsih@gmail.com', '085711253711', 'Sangat membantu guru2 dlm mempersiapkan UN', 'Kapan sekolah dapat akun siswa? Semoga disegerakan', 'KJG0051.jpeg', 'KJGTTD0051.png', '2018-01-23 05:15:43'),
(53, 'Maulida Zairani', 'Smp Islam Al-Umm', 'maulidazairany@gmail.com', '085810165109', 'Baik, luar biasa, takjub, semoga bisa menularkan ilmunya kesekolah sekitarnya', 'Sukses selalu', 'KJG0052.jpeg', 'KJGTTD0052.png', '2018-01-23 05:17:24'),
(54, 'Neng Ira Hafitia', 'Smp Al Azhar Plus Bogor', 'hafitiaira@gmail.com', '087770755950', 'Interesting', 'Good', 'KJG0053.jpeg', 'KJGTTD0053.png', '2018-01-23 05:17:49'),
(55, 'Irene Ernawati', 'SMPN 20 Bogor', 'ernawatiirene@yahoo.co.id', '087873891300', 'Good', 'Sukses d terus melayani dengan ikhlas', 'KJG0054.jpeg', 'KJGTTD0054.png', '2018-01-23 05:18:06'),
(56, 'Tyas Yulia Paraswati', 'SMP YAPSIDA', 'paras.yp@gmail.com', '085693937920', 'Sip', 'Bersama kita mencerdaskan anak bangsa', 'KJG0055.jpeg', 'KJGTTD0055.png', '2018-01-23 05:18:58'),
(57, 'Fitriyawati Rahmah', 'Smp Bina Greha', 'fitra.elrahmah@gmail.com', '089603108837', 'Menyenangkan & bermanfaat', 'Semoga lbh maju', 'KJG0056.jpeg', 'KJGTTD0056.png', '2018-01-23 05:19:27'),
(58, 'Fitriyawati Rahmah', 'Smp Bina Greha', 'fitra.elrahmah@gmail.com', '089603108837', 'Menyenangkan & bermanfaat', 'Semoga lbh maju', 'KJG0057.jpeg', 'KJGTTD0057.png', '2018-01-23 05:19:34'),
(59, 'Alina Surbakti,SS', 'SMPK TUNAS HARAPAN', 'alinasurbakti@gmail.com', '081281202834', 'Great place to learn new thing', 'Keep on doing this', 'KJG0058.jpeg', 'KJGTTD0058.png', '2018-01-23 05:19:37'),
(60, 'Fitriyawati Rahmah', 'Smp Bina Greha', 'fitra.elrahmah@gmail.com', '089603108837', 'Menyenangkan & bermanfaat', 'Semoga lbh maju', 'KJG0059.jpeg', 'KJGTTD0059.png', '2018-01-23 05:19:37'),
(61, 'Fitriyawati Rahmah', 'Smp Bina Greha', 'fitra.elrahmah@gmail.com', '089603108837', 'Menyenangkan & bermanfaat', 'Semoga lbh maju', 'KJG0060.jpeg', 'KJGTTD0060.png', '2018-01-23 05:19:47'),
(62, 'Yuni Meilani', 'Smp Taruna Bangsa', 'yunimeilani976@gmail.com', '089696351981', 'Interesting', 'Good', 'KJG0061.jpeg', 'KJGTTD0061.png', '2018-01-23 05:19:48'),
(63, 'Lisnawati', 'Smp Islam Al Mustarih', 'lisnawatiandra@gmail.com', '085715561344', 'Very interesting', 'Very good', 'KJG0062.jpeg', 'KJGTTD0062.png', '2018-01-23 05:21:31'),
(64, 'Novriyanyi', 'Smp It Al Yasmin', 'novryantimadina@gmail,com', '085716401213', 'Kejar.id adalah teknologi maju ini memudahkan kita untuk mengakses soal', 'Metode yg dterapkan sangat bagus mudah2 bisa terus berkembang', 'KJG0063.jpeg', 'KJGTTD0063.png', '2018-01-23 05:21:45'),
(65, 'Ayu', 'IDS', 'produk.ids@gmail.com', '08546988882', 'Tes', 'Tes', 'KJG0064.jpeg', 'KJGTTD0064.png', '2018-01-24 03:27:52'),
(66, 'IDS', 'Ids', 'idsids@gmail.com', '08756988812', 'Tes', 'Tes', 'KJG0065.jpeg', 'KJGTTD0065.png', '2018-01-24 03:29:40'),
(67, 'Sande Listiana', 'Cv Ids', 'sandelistiana06@gmail.com', '08588888888', 'Test', 'Test', 'KJG0066.jpeg', 'KJGTTD0066.png', '2018-01-24 03:30:34'),
(68, 'DINI', 'Wikrama', 'dinihanifacenter03@gmail.com', '085782267040', 'Test', 'Test', 'KJG0067.jpeg', 'KJGTTD0067.png', '2018-01-24 03:30:40'),
(69, 'Dini', 'Ids', 'diniids@gmail.com', '087536954221', 'Testes', 'Testes', 'KJG0068.jpeg', 'KJGTTD0068.png', '2018-01-24 03:31:25'),
(70, 'Ayu', 'IDS', 'ayuids@gmail.com', '087956324585', 'Tes2', 'Tes2', 'KJG0069.jpeg', 'KJGTTD0069.png', '2018-01-24 03:44:16'),
(71, '', '', '', '', 'Test', '', 'KJG0070.jpeg', 'KJGTTD0070.png', '2018-01-24 03:49:55'),
(72, 'Vita Longa Faradase', 'BKB NURUL FIKRI', 'longafaradasevita@gmail.com', '085694330425', 'Menarik dan menginspirasi dalam dunia pendidikan', 'Sangat inspiratif', 'KJG0071.jpeg', 'KJGTTD0071.png', '2018-01-24 04:14:57'),
(73, 'Winny Lansanny', 'Nurul Fikri', 'winny_kusumah@yahoo.com', '085773267767', 'Dapat pengalaman berharga..alhamdulillah', 'Semoga bermanfaat terus', 'KJG0072.jpeg', 'KJGTTD0072.png', '2018-01-24 04:15:02'),
(74, 'Patmawati', 'Smp Muhammadiyah', 'patmawati05@yahoo.com', '081310875892', 'Sangat memuaskan', 'Mohon agar sosialisasi kepada anak kelas 9 yang akan UN bk', 'KJG0073.jpeg', 'KJGTTD0073.png', '2018-01-24 04:15:06'),
(75, 'Euis Rachmawaty,S.Si', 'SMPIT Insantama', 'aisyah210707@gmail.com', '085782530577', 'Alhamdulillah... luar biasa, mendapat ilmu baru dan inspirasi', 'Semoga menjadi investasi dunia akhirat', 'KJG0074.jpeg', 'KJGTTD0074.png', '2018-01-24 04:16:22'),
(76, 'Yuliawati, S.P', 'SMP BINA SEJAHTERA DAN SMP ISLAM YTM', 'yuliawaticiomas@gmail.com', '08568015975', 'Luarbiasa', 'Semoga tmbh sukses n berhasil menemukan sesuatu yg amazing2 berikutnya', 'KJG0075.jpeg', 'KJGTTD0075.png', '2018-01-24 04:17:47'),
(77, 'Marwiyani Ds', 'Smp Yapis', 'marwiyanids@yahoo.com', '08881914261', 'Mengenal sekolah yang berbasis IT dan berkarakter', 'Lebih ditingkatkan lagi sisi pandang dari karakter rasulullah untuk muslim dan muslimah nya', 'KJG0076.jpeg', 'KJGTTD0076.png', '2018-01-24 04:18:02'),
(78, 'Margaretta Wongkar', 'SMP Mardi Yuana Bogor', 'ega_arianno@yahoo.com', '081311417309', 'Sangat menarik dan pastinya akan mempermudah kerja guru.', 'Semoga semakin terus berkembang, sehingga bisa diakses oleh semua siswa bukan hanya lewat lembaga.', 'KJG0077.jpeg', 'KJGTTD0077.png', '2018-01-24 04:18:20'),
(79, 'Nihayatun Naim', 'SMP TAMAN CAHAYA BOGOR', 'naim.pinky@gmail.com', '081317881819', 'Sangat bagus dan sangat membantu guru untuk meningkatkan kualitas anak2', 'Lebih di tingkatkan lagi untuk linknya agara guru dapat notif saat siswa mengerjakan soal yang ada di kejar.id', 'KJG0078.jpeg', 'KJGTTD0078.png', '2018-01-24 04:18:27'),
(80, 'Dewi Komalasari', 'SMP YKTB Bogor', 'dewimalasari@gmail.com', '085724857080', 'Luar biasa, pertahankan dan harus lebih maju lagi', 'Mungkin waktun pembahasannya jangan terlalu singkat', 'KJG0079.jpeg', 'KJGTTD0079.png', '2018-01-24 04:18:33'),
(81, 'Sri Murtiningsih', 'SMPN 14 Bogor', 'srimurtiingsih10@gmail.com', '085710773312', 'Wikrama luar biasa', 'Lebih ditingkatan /ditambah lagi prestasinya', 'KJG0080.jpeg', 'KJGTTD0080.png', '2018-01-24 04:19:16'),
(82, 'Aini Fitriyani', 'SMPN 3 BOGOR', 'fitriyaniaini71@gmail.com', '085693238838', 'Meaningfull banget..', 'Minta d bantu u/ follow up ny', 'KJG0081.jpeg', 'KJGTTD0081.png', '2018-01-24 04:19:59'),
(83, 'Ely Nurmalia', 'SMPN 18 BOGOR', 'falihatun27@gmail.com', '08170814997', 'Wikrama Luar Biasa', 'Semangat terus', 'KJG0082.jpeg', 'KJGTTD0082.png', '2018-01-24 04:20:12'),
(84, 'Hanifah Widiyawati', 'Smpit Alyasmin', 'widihanif@ymail.com', '08569490102', 'Luar biasa', 'Semoga kedepannya lebih baik lagi', 'KJG0083.jpeg', 'KJGTTD0083.png', '2018-01-24 04:21:16'),
(85, 'Hikmatul Mardiyah', 'SMP Daar En Nisa Islamic School', 'hikmatulmardiyah0410@gmail.com', '082114181004', 'Luar biasa aplikasi pertama elearning yg paling bagus', 'Ok.semoga semakin dikembangkan paket soal tidak hanya untuk kls 9, tapi juga kelas 7 dan 8', 'KJG0084.jpeg', 'KJGTTD0084.png', '2018-01-24 04:21:37'),
(86, 'Ai Yuli Suhartini', 'Smp Negeri 19 Bogor', 'ummuzidanaiyuli@gmail.com', '081385728564', 'Pelayanan yang prima dari smk wikrama saya suka sekali #senyum#', 'Untuk smk wikrama semoga lebih maju terus, semangat', 'KJG0085.jpeg', 'KJGTTD0085.png', '2018-01-24 04:22:44'),
(87, 'EDYSON PASARIBU', 'SMP K SATU BAKTI BOGOR', 'edysonpasaribu@gmsil.com', '08129563108', 'Luar biasa', 'Terus msju', 'KJG0086.jpeg', 'KJGTTD0086.png', '2018-01-24 04:23:51'),
(88, 'Agustaningsih', 'SMPN  11  BOGOR', 'agustianingsih109@gmail.com', '085925092152', 'Alhamdulillah dgn adanya kejar.id mdh2an dpt menjadikan pendidikan Indonesia lbh berualitas', 'Agar guru yg mengikuti pelatihan lebih dari satu org', 'KJG0087.jpeg', 'KJGTTD0087.png', '2018-01-24 04:23:54'),
(89, 'Dewi Srihayatin', 'SMP NEGERI 2 BOGOR', 'dewisrihayatin36@gmail.com', '081911927774', 'Wikrama luar biasa', 'Terimakasih untuk ilmunya,semoga kami segera bsa mengaplikasikannya d sekolah kam.', 'KJG0088.jpeg', 'KJGTTD0088.png', '2018-01-24 04:24:04'),
(90, 'Ucu.Masitoh', 'SMPN 20', 'Uci.Masitoh@icloud.com ; smpnegeri20bogor@gmail.co', '081586191168', 'Alhamdulillah sangat amat terkesan', 'Sangat luar biasa', 'KJG0089.jpeg', 'KJGTTD0089.png', '2018-01-24 04:24:50'),
(91, 'Samsuri', 'SMP ZAFIRAH BOGOR', 'samsuri_adityarahman@yahoo.co.id', '089506276426', 'Sudah baik,', 'Mudah-mudahan aplikasi bs dimanfaat oleh semua kalangan pendidik', 'KJG0090.jpeg', 'KJGTTD0090.png', '2018-01-24 04:25:14'),
(92, 'Ros Nurwati', 'SMPN 7 BOGOR', 'rosnurwati123@gmail.com', '08128546517', 'Sangat sangat bermanfaat bg kemajuan pndidikan', 'Maju terus program kejar.id smoga lebih barokah', 'KJG0091.jpeg', 'KJGTTD0091.png', '2018-01-24 04:25:58'),
(93, 'Muhammad Rizky Aulia', 'SMP PESAT', 'rizky.mahasantri@gmail.com', '082261916189', 'Banya insight si sekolah ini alhamdulillah', 'Kapasitas wifinya diperbesar', 'KJG0092.jpeg', 'KJGTTD0092.png', '2018-01-24 04:25:58'),
(94, 'Ayu Sri Rahayu', 'Smpn 15 Bogor', 'ayusrirahayu050876@gmail.com', '081317333317', 'Sangat bagus dng ada nya kejar ini lbh mudah dan sngt membantu dlm pekerjaan', 'Smg semakin mudah utk aplikasinya', 'KJG0093.jpeg', 'KJGTTD0093.png', '2018-01-24 04:26:40'),
(95, 'Sri Mugiarti', 'SMP TUNAS INSANI, SMP KURIA', 'srimugiarti.sm@gmail.com', '085694842001', 'Luar bias', 'Lebih variasi lg soal2', 'KJG0094.jpeg', 'KJGTTD0094.png', '2018-01-24 04:26:41'),
(96, 'Silvia Netsyah', 'SMP NURAIDA ISLAMIC BOARDING SCHOOL', 'silvia.netsyah@gmail.com', '085203373732', 'Great aplication', '-', 'KJG0095.jpeg', 'KJGTTD0095.png', '2018-01-24 04:27:17'),
(97, 'Nurhayati', 'Smp Pgri 12 Bogor', 'pgri12.bgr@gmail.com', '083811956243', 'Luar biasa', 'Soal lebih variatif lagi', 'KJG0096.jpeg', 'KJGTTD0096.png', '2018-01-24 04:27:18'),
(98, 'Rizky Novalia Sary', 'Smp Sekolah Alam Bogor', 'rnovaliasary@yahoo.com', '081384933193', 'Terimakasih sudah berbagi', 'Semoga istiqomah', 'KJG0097.jpeg', 'KJGTTD0097.png', '2018-01-24 04:27:30'),
(99, 'Colbert Diemen Sirait', 'SMP Negeri 10 Bogor', 'colbertsirait@gmail.com', '081318698310', 'Sy terkesan mdah2an dapat dterapkan dan dibantu', 'Sy terinspirasi..', 'KJG0098.jpeg', 'KJGTTD0098.png', '2018-01-24 04:28:46'),
(100, 'Sodik', 'Smp Alghazaly Bogor', 'sodik23071968@yahoo.com', '08111112464', 'Semoga allah memberikan rizki lebih aaamiiin', 'Baarakallaahu lakum', 'KJG0099.jpeg', 'KJGTTD0099.png', '2018-01-24 04:29:10'),
(101, 'VERONIKA RATRI', 'SMP REGINA PACIS', 'ratripwl@gmail.com', '08128065380', 'Sangat luar biasa kesempatan diberikan kepada kami para guru matematika smp se bogor', 'Tetap semangat melayani sesama dalam kemajuan pendidikan', 'KJG00100.jpeg', 'KJGTTD00100.png', '2018-01-24 04:29:37'),
(102, 'Yessy Yunika', 'SMP BPK PENABUR Bogor', 'yyunika0687@gmail.com', '081998877738', 'Luar biasa membuka wawasan karakter dan kemandiria', 'Maju terus untuk membangun manusia berpendidikan dan berkarakter untuk kemajuan Indonesia', 'KJG00101.jpeg', 'KJGTTD00101.png', '2018-01-24 04:30:11'),
(103, 'Nyayu NURUL Hawa, S.T', 'SMP TARUNA ANDIGHA', 'nyayuandigha@gmail.com', '08568330433', 'Luar biasa, nambah ilmu', 'Sukses kejar.id', 'KJG00102.jpeg', 'KJGTTD00102.png', '2018-01-24 04:30:17'),
(104, 'Dhanu Siswoyo', 'Smp Mardi Waluya', 'danusiswoyo3@gmail.com', '081310157401', 'Hebat', 'Majukan terus pendidikan di kota Bogor', 'KJG00103.jpeg', 'KJGTTD00103.png', '2018-01-24 04:30:30'),
(105, 'Enok Widiawati, S.Pi, M.Si', 'SMP Islam Al Mustarih', 'smpi_almustarih@yahoo.co.id', '085716277844', 'Aplikasi nya sangat memberikan pencerahan, mudah-mudahan kedepnnya lebih bayak lagi soanya', 'Soal-soal lebih variatif', 'KJG00104.jpeg', 'KJGTTD00104.png', '2018-01-24 04:31:13'),
(106, 'Yosia Dharma', 'SMPK Tunas Harapan', 'yosiadharmaputra@gmail.com', '081215533279', 'Sangat baik dan terus dikembangkan', 'Sangat membantu siswa dan guru', 'KJG00105.jpeg', 'KJGTTD00105.png', '2018-01-24 04:31:22'),
(107, 'Reval Dzrixhon Lauchilnagi', 'SMP IT ALBUNYAN', 'rev_ald@yahoo.co.id', '082319511953', 'Subhanalloh', 'Semoga berkah', 'KJG00106.jpeg', 'KJGTTD00106.png', '2018-01-24 04:32:10'),
(108, 'Suganda', 'SMP PGRI 6 Kota Bogor', 'g.suganda65@gmail.com', '081388062500', 'Sangat membantu', 'Sangat membantu tuk kemajuan pendidikan di kota Bogor', 'KJG00107.jpeg', 'KJGTTD00107.png', '2018-01-24 04:32:23'),
(109, 'Muhamad Imron', 'Smp Pui', 'muhamadimron0909@gmail.com', '089657514019', 'Banyak belajar yang belum diketahui', 'Semoga semakin maju dan lebih baik', 'KJG00108.jpeg', 'KJGTTD00108.png', '2018-01-24 04:32:35'),
(110, 'Susi Setyowati', 'Smp Pgri 3 Bogor', 'sususetyawatie@yahoo.co.id', '08568830455', 'Lingkungan sekola bersih dan plyanan tamu ramah dan sopan', 'Sangat bagus dan ramah', 'KJG00109.jpeg', 'KJGTTD00109.png', '2018-01-24 04:32:40'),
(111, 'Mila Nurhayati', 'Smp Yapsida', 'milanurhayati1@gmail.com', '087874112827', 'Sangat bermnfaat dan seneng dengan ilmunya', 'Smk wikrama lbh maju dan sukses lg IT nya', 'KJG00110.jpeg', 'KJGTTD00110.png', '2018-01-24 04:34:17'),
(112, 'Ita Juwita', 'Smpn 6 Bogor', 'ita.itajuwita@gmail.com', '087886034500', 'Hebat,terimakasihatas semuanya yg sudah di berikan', 'Semoga selalu lebih maju dr sekarang', 'KJG00111.jpeg', 'KJGTTD00111.png', '2018-01-24 04:34:21'),
(113, 'Syahbani, S.Pd', 'SMP PGRI 16 BOGOR', 'syahbaniok@gmail.com', '082110064342', 'Super sekali, Mantapppo!!!', 'Semoga kejar.id tidak hanya untuk taun ini, tpi berkelanjutan sampai taun2 berikutnya kedepan dan bisa merambah ke sekolah dasar.', 'KJG00112.jpeg', 'KJGTTD00112.png', '2018-01-24 04:34:30'),
(114, 'Saepudin', 'Smp Islam Dawatul Quran', 'erpina494@gmail.com', '081213999431', 'Amazing good sucses', 'Jadilah yg terbaik dari yg terbaik', 'KJG00113.jpeg', 'KJGTTD00113.png', '2018-01-24 04:34:33'),
(115, 'Rudyanto Wahyudi S.Pd', 'smp Saptamarga', 'rudyantowahyudi59@gmail.com', '08159010363', 'Sanga puas', 'Tetea eksis sperti dkranh', 'KJG00114.jpeg', 'KJGTTD00114.png', '2018-01-24 04:35:12'),
(116, 'Karniasari', 'SMP YP Pembangunan Bogor', 'karniasari90@gmail.com', '08978257629', 'Menambah pengetahuan tentang IT', 'Sudah baik dan bisa lebih baik lagi', 'KJG00115.jpeg', 'KJGTTD00115.png', '2018-01-24 04:35:12'),
(117, 'Jumadi', 'Smpn 5', 'jumadis@rocketmail.com', '085219111950', 'Kejar.id hebat', 'Dengan aplikasi kejar.id unbk th ini lebih baik', 'KJG00116.jpeg', 'KJGTTD00116.png', '2018-01-24 04:35:23'),
(118, 'Hendro Wibowo', 'Smp Yza 1', 'sekolahkedua@gmail.com', '083811310903', 'Excellent', 'Lebih semangat', 'KJG00117.jpeg', 'KJGTTD00117.png', '2018-01-24 04:36:16'),
(119, 'Aas Kartini', 'SMP Tamansiswa Bogor', 'kartiniaas@gmail.com', '081314361372', 'Masyaallah, berbahagia sekali menjadi bagian dari hari ini dan mendapatkan banyak sekali ilmu dam motivasi', 'Mohon untuk terus berbagi kepada kami', 'KJG00118.jpeg', 'KJGTTD00118.png', '2018-01-24 04:36:24'),
(120, 'Nur Laeli Qiftiyah', 'SMP Kamandaka Bogor', 'nurlaeliqiftiyah@gmail.com', '081280123425', 'Amazing', 'Moga akan lebih baik lagi', 'KJG00119.jpeg', 'KJGTTD00119.png', '2018-01-24 04:37:14'),
(121, 'Ida Nurhidayah, S. Pd.', 'SMPN 1 Bogor', 'hidacia@yahoo.com', '08154664791', 'Alhamdulillaah, menambah wawasan.', 'Sukses terus!', 'KJG00120.jpeg', 'KJGTTD00120.png', '2018-01-24 04:37:24'),
(122, 'Tryani Anggraeni', 'SMP PGRI 5 BOGOR', 'tryani_anggraeni@yahoo.com', '085723357666', 'Menjadi lebih termotifasi, menambah pengalaman dan khususnya pengetahuan tentang kejar id', 'Semakin luar biasa', 'KJG00121.jpeg', 'KJGTTD00121.png', '2018-01-24 04:37:36'),
(123, 'Inneke Damayanti Galuh Putri, M.Si', 'SMP Darma Bakti', 'inneke.damayanti@gmail.com', '087881064372', 'Bagus dan keren', 'Lebih ditingkatkan lagi agar lebih bagus kualitasnya', 'KJG00122.jpeg', 'KJGTTD00122.png', '2018-01-24 04:37:44'),
(124, 'ROMADHONA FEBRIARISQA', 'SMP CAHAYA RANCAMAYA', 'rfebriarisqa@gmail.com', '085604707253', 'Excellent !', 'Semoga selalu diberikan kelancaran oleh Allah.', 'KJG00123.jpeg', 'KJGTTD00123.png', '2018-01-24 04:37:55'),
(125, 'Margareta Rosita', 'Smp Kesatuan', 'margaretha.rositak@gmail.com', '087885556740', 'Luar biasa', 'Pelayanan baik', 'KJG00124.jpeg', 'KJGTTD00124.png', '2018-01-24 04:38:52'),
(126, 'Entis Sutisna', 'Smp Rimba Teruna', 'nikeusut@gmail.com', '087873216161', 'Semoga berkah', 'Luar biasa', 'KJG00125.jpeg', 'KJGTTD00125.png', '2018-01-24 04:39:12'),
(127, 'Aryani Widiastuti', 'SMP AL AZHAR PLUS BOGOR', 'arian.cnt@gmail.com', '087770411004', 'Sangat menyenangkan n ilmu nya sangat brmanfaat', 'Amazing  sangat hebat', 'KJG00126.jpeg', 'KJGTTD00126.png', '2018-01-24 04:39:19'),
(128, 'Christina Sri Utami P', 'SMP Budi MULIA BOGOR', 'anisriutami@yahoo.com', '08159795885', 'Super dan salut untuk SMK Wikrama saya ikut bangga', 'Semangat untuk memajukan anak bangsa', 'KJG00127.jpeg', 'KJGTTD00127.png', '2018-01-24 04:40:11'),
(129, 'Vivi Amelia', 'Smp Bagus', 'viviameliaabigail@yahoo.com', '08971876355', 'Harus lebih sering silaturahmi', 'Subhanallah mendapatkan ilmu yang bermanfaat', 'KJG00128.jpeg', 'KJGTTD00128.png', '2018-01-24 04:40:22'),
(130, 'Anggrum Puspasari', 'SMP PGRI 2 BOGOR', 'anggrumps@gmail.com', '081219515997', 'Smk wikrama merupakan sekolah yang unggul', 'Terimakasih smk wikrama atas pelatihan kejar id semoga bermanfaat dan bisa diterapkan di sekolah saya.', 'KJG00129.jpeg', 'KJGTTD00129.png', '2018-01-24 04:40:34'),
(131, 'Ahmad Taufik', 'Smp Insan Kamil', 'taufik010@yahoo.co.id', '08179991817', 'Luar biasa', 'Berjuang terus', 'KJG00130.jpeg', 'KJGTTD00130.png', '2018-01-24 04:40:50'),
(132, 'Neneng Hasanah', 'Smp Dasa Semesta Bogor', 'smpdasasemesta@yahoo.co.id', '087874323488', 'Semoga anakku dapat masuk ke wikrama', 'Alhadulillah dapat ilmu yang bermanfaat', 'KJG00131.jpeg', 'KJGTTD00131.png', '2018-01-24 04:41:11'),
(133, 'Holilah Rahmawati', 'Smp Kosgoro', 'holilah.sugianto@gmail.com', '081398135145', 'Alhamdulillah bermanfaat', 'Masih pegen belajar lebih jelas lagi donk', 'KJG00132.jpeg', 'KJGTTD00132.png', '2018-01-24 04:42:26'),
(134, 'Muhammad Hapid', 'Smp It Abn', 'mhapid65@yahoo.com', '085715449602', 'Mengesankan', 'terus tingkatkan', 'KJG00133.jpeg', 'KJGTTD00133.png', '2018-01-24 04:42:30'),
(135, 'DIKE RAHMAWATI', 'SMP AL-IRSYAD BOGOR', 'dike_rhm@yahoo.com', '085714232824', 'Kegiatan ini luar biasa', 'Semoga kegiatan ini berjalan terus', 'KJG00134.jpeg', 'KJGTTD00134.png', '2018-01-24 04:42:55'),
(136, 'Lidya Ch. Nirmala', 'SMPIT AT TAUFIQ BOGOR', 'lidyanirmalaja@gmail.com', '087730043404', 'Alhamdulillah Amazing. Semoga ALLOH balas dengan yang lebih baik', 'Yang sabar ya.,. Kalau ada yang bolak balik konsultasi dan diskusi', 'KJG00135.jpeg', 'KJGTTD00135.png', '2018-01-24 04:44:18'),
(137, 'Wijiastuti', 'SMP PGRI 7', 'wiji.astuti0588@gmail.com', '081284696457', 'Terima kasih sudah membgikan ilmunya', 'Masih kurang belajar memahami kejar,id', 'KJG00136.jpeg', 'KJGTTD00136.png', '2018-01-24 04:44:29'),
(138, 'Rika Sulistia Dewi', 'Smp Yza 2', 'rikasulistia28@yahoo.com', '085691893803', 'Amazing', 'Lanjutkan', 'KJG00137.jpeg', 'KJGTTD00137.png', '2018-01-24 04:45:41'),
(139, 'Deni Yasih', 'Smp Pgri 15', 'denyasih682@gmail.com', '085294729161', 'Alhamdulillah banyak sekali membantu belajar anak jadi lebih efektif efisien', 'Soal soal unnya mungkin bisa lebih banyak lagi', 'KJG00138.jpeg', 'KJGTTD00138.png', '2018-01-24 04:45:45'),
(140, 'Iis Siti Aisah', 'Smp Pgri 11 Bogor', 'smppgri11bogor@ymail.com', '087874725141', 'Pelatihan yang amazing,,sukses untuk pendidikan indonesia', 'Mudah2an lebih maju dan banyak inovasi yang baru untuk kemajuaan pendidikan indonesia khususnya kota bogor', 'KJG00139.jpeg', 'KJGTTD00139.png', '2018-01-24 04:47:53'),
(141, 'Melati', 'SMP Windian Nugraha', 'greymate3@gmail.com', '081585840824', 'Menarik & menyenangkan', 'Tetap terus berjuang membangun pendidikan dikota bogor', 'KJG00140.jpeg', 'KJGTTD00140.png', '2018-01-24 04:48:06'),
(142, 'David Samuel Karunianto, S.Pd., M.M', 'SMP PERGURUAN ADVENT BOGOR', 'karunianto_7@yahoo.com', '081519719123', 'Sangat senang memperoleh ilmu baru melalui web kejar.id', 'Amazing', 'KJG00141.jpeg', 'KJGTTD00141.png', '2018-01-24 04:48:56'),
(143, 'Suharya,s.pd', 'Smpn 8 Bogor', 'suharya35467@yahoo.co.id', '081388788601', 'Kami bersyukur dari sekian ratus sekolah di kota bogor, terdapat sekolah yg mau berbagi untuk kemajuan pendidikan.', 'Smk wikrama bisa terus membantu meningkatkankualitas dan kemampuan siswa siswi kota bogor.', 'KJG00142.jpeg', 'KJGTTD00142.png', '2018-01-24 04:50:53'),
(144, 'Hendi', 'Smp Atthoyibah', '-', '08999519379', 'Trims motivasiny', 'Tolong sertakan k grup mgmp matematika', 'KJG00143.jpeg', 'KJGTTD00143.png', '2018-01-24 04:51:37'),
(145, 'Dian Apriandini', 'SMP Harapan Taruna', 'smp_harapantaruna17@yahoo.co.id', '085285200425', 'Kejar.id keren', 'Semoga pelatihan kejar.id bisa dilaksanakan juga di tahun tahun mendatang', 'KJG00144.jpeg', 'KJGTTD00144.png', '2018-01-24 04:52:49'),
(146, 'Test', 'Test', 'teat@gmail.com', '0855', 'Cool', 'Ajib', 'KJG00145.jpeg', 'KJGTTD00145.png', '2018-01-24 07:41:16'),
(147, 'Ayu', 'Ids', 'yu@gmail.com', '0854697824', 'K', 'Ok', 'KJG00146.jpeg', 'KJGTTD00146.png', '2018-01-24 08:59:09'),
(148, 'Mutmainah, S.Pd', 'SMPN 10 Bogor', 'mutmainah.burhan@gmail.com', '081519131187', 'Amazing....', 'Mudah-mudahan sll melayani dengan ikhlad', 'KJG00147.jpeg', 'KJGTTD00147.png', '2018-01-24 09:09:47'),
(149, 'Trinuta Oktavina Dewi', 'Smp Al Ghazaly', 'oktavinadewi.comid', '085691081587', 'Luar biasa', 'Semoga smk wikrama menjadi sekolah terdepan', 'KJG00148.jpeg', 'KJGTTD00148.png', '2018-01-24 09:10:23'),
(150, 'HERLINA', 'SMP Pesat', 'popy_na@yahoo.co.id', '081212996307', 'Senang', 'Menyenangkan dan banyak tau tentang it dan pendidikan karater', 'KJG00149.jpeg', 'KJGTTD00149.png', '2018-01-24 09:10:25'),
(151, 'Hanaryati', 'Smp Al Irsyad', 'hanaryati@gmail.com', '081284575773', 'Sangat2 memuaskan', 'Pelatihan ini sngt idtimewa', 'KJG00150.jpeg', 'KJGTTD00150.png', '2018-01-24 09:11:03'),
(152, 'Siti Nurfatimah, S.pd.', 'Smp Yapsida Kota Bogor', 'sitinurfatimah60@yahoo.com', '085716696900', 'Alhamdulillah sangat berkesan dan mudah2n bisa diterapkan dsekolah kami. Khususnya siswa dalam berkarakter', 'Selalu semangat agar menciptakan anak2 berakhlak mulia', 'KJG00151.jpeg', 'KJGTTD00151.png', '2018-01-24 09:11:27'),
(153, 'Lucia Indah Sriharyati, S.Pd.', 'SMP Mardi Waluya Bogor', 'josephin.maria7@gmail.com', '085600987396', 'Sangat menarik dan cukup memotivasi', 'Bantu saya jadi termotivasi', 'KJG00152.jpeg', 'KJGTTD00152.png', '2018-01-24 09:11:33'),
(154, 'Anastasia Galih Sri Darmaningsih, S. Pd.', 'SMP BPK PENABUR Bogor', 'anastasiagalih7@gmail.com', '085729987774', 'WOW, AMAZING SCHOOL ðŸ˜ƒðŸ˜ƒðŸ˜ƒ', 'Pertahankan yang menjadi ciri khas dari sekolah ini.', 'KJG00153.jpeg', 'KJGTTD00153.png', '2018-01-24 09:12:50'),
(155, 'Asep Saepudin', 'Smp Negeri 1 Bogor', 'asp.spdn74@gmail.com', '085921475694', 'Mantap', 'Lanjutkan perjuangan', 'KJG00154.jpeg', 'KJGTTD00154.png', '2018-01-24 09:13:04'),
(156, 'Yayat Suryatna', 'SMPN 2 BOGOR', 'yayatsuryatna@gmail.com', '08567303072', 'Luar biasa. Hebat!', 'Terus kembangkan', 'KJG00155.jpeg', 'KJGTTD00155.png', '2018-01-24 09:13:23'),
(157, 'Sri Nengsih', 'Smp Darma Bakti', 'srinengsih_ichink@yahoo.com', '085695891692', 'Menyenangkan dan ilmu yg baru setta semangat yg baru', 'Banyak ilmu yg sy dapatkan terutama semangat dari pendiri sekolah', 'KJG00156.jpeg', 'KJGTTD00156.png', '2018-01-24 09:13:49'),
(158, 'Teti Marlina S.Pd', 'SMP Bina Greha', 'tetimarlina50@yahoo.com', '085777618009', 'Menyenangkan', 'SMK Wikrama Bogor Hebat keren', 'KJG00157.jpeg', 'KJGTTD00157.png', '2018-01-24 09:14:11'),
(159, 'Yani Yuliani', 'Smpn 3 Bogor', 'yaniyuluani1970@g.mail', '087770984717', 'Benar2 sekolah yg berkarakter', 'Supaya tetap dipertahankan kualitasnya', 'KJG00158.jpeg', 'KJGTTD00158.png', '2018-01-24 09:14:16'),
(160, 'Kartinah,S.Pd', 'SMP Plus Dawatul Quran', 'smpplusdqbogor@gmail.com', '081389943737', 'Kami belum puas', 'Latihan ini jngn hanya 1x', 'KJG00159.jpeg', 'KJGTTD00159.png', '2018-01-24 09:14:38'),
(161, 'Lilis Suryani', 'Smpn 17', 'lilissury77@g.mail.com', '087870446558', 'Smk wikrama nyaman', 'Smoga wikrama lebih maju lagi', 'KJG00160.jpeg', 'KJGTTD00160.png', '2018-01-24 09:14:56'),
(162, 'Nurhikmah', 'Smp Pgri 16 Bogor', 'nhikmah_17@yahoo.com', '085711400034', 'Mengagumkan', 'Bantu sy supaya termotivasi', 'KJG00161.jpeg', 'KJGTTD00161.png', '2018-01-24 09:15:52'),
(163, 'Hidayat', 'Smp Islam Al Umm', 'hidayatlia1@gmail.com', '085774048611', 'Alhamdulillah bagus', 'Masyaallah dan sukses', 'KJG00162.jpeg', 'KJGTTD00162.png', '2018-01-24 09:16:20'),
(164, 'Tantri RM', 'SMP Ananda', 'Tantrirmyaya@gmail.com', '081383342500', 'Wikrama ok dan sngat menginspirasi', 'Sngat berkesan skli', 'KJG00163.jpeg', 'KJGTTD00163.png', '2018-01-24 09:17:30'),
(165, 'Aflah Asnawi', 'Smpn 8 Bogor', 'aflahasnawi@gmail.com', '082112040499', 'Gapailah cita-cita mu setinggi bintang di langit', 'Jangan bosan dalam menuntut ilmu', 'KJG00164.jpeg', 'KJGTTD00164.png', '2018-01-24 09:18:22'),
(166, 'Siti Munawaroh', 'SMPIT El Mamur', 'siti.moen4w4roh93@gmil.com', '089603996043', 'Sangat luar biasa dan banyak sekali ilmu yang saya dapat. Dan semua yang saya dapat dari sekolah smk wikrama ini sangat memotivsi dan bermanfaat', 'Tetap istiqomah', 'KJG00165.jpeg', 'KJGTTD00165.png', '2018-01-24 09:18:23'),
(167, 'Herlianna Simarmata', 'SMP PGRI 7KOTA BOGOR', 'herliannas@gmail.com', '081399648520', 'Luar biasa,sangat terinspirasi', 'Semoga kedepannya kerjasamanya semakin ok demi anak bangsa', 'KJG00166.jpeg', 'KJGTTD00166.png', '2018-01-24 09:18:42'),
(168, 'Deni Raharja Anwar,SH', 'SMP ZAFIRAH', 'deniraharjaanwar@gmail.com', '087780593157', 'Bermanfaat,bermotivasi', 'Terus berkarya', 'KJG00167.jpeg', 'KJGTTD00167.png', '2018-01-24 09:19:08'),
(169, 'Agus Sukmana', 'Smp Windian Nugraha', 'sukmanaagus49@gmail.com', '085780912982', 'Sangat menyenangkan', 'Luar biasa', 'KJG00168.jpeg', 'KJGTTD00168.png', '2018-01-24 09:19:21'),
(170, 'Novita Lestari', 'Smp It Abn', 'lestarinovita47@gmail.com', '087770354991', 'Luarbiasa', 'S3moga semakin maju', 'KJG00169.jpeg', 'KJGTTD00169.png', '2018-01-24 09:19:53'),
(171, 'Aflah Asnawi', 'Smp Negri 8 Bogor', 'aflahnawi@gmail.com', '082112040499', 'Kecil bahagia besar bahagia nuasa bahagia mati masuk surga', 'Ilmu merupakan sesuatu hal yang diperlukan bagi semua insan maka tuntunlah ilmu untuk menggapai kebahagiaan', 'KJG00170.jpeg', 'KJGTTD00170.png', '2018-01-24 09:22:15'),
(172, 'Eko Safaga', 'smp TAMAN SISWA', 'ekosafaga1@gmail.com', '087873974117', 'Good job', 'Bagus', 'KJG00171.jpeg', 'KJGTTD00171.png', '2018-01-24 09:22:38'),
(173, 'Mulyadi,S.H', 'Smpn 19 Bogor', 'mulyadi.keysah@gmail.com', '081318315966', 'Luar biasa guru dan siswanya sama hebatnya', 'Semoga smk wikrama menjadi kiblat dunia pendidikan di era globalisasi', 'KJG00172.jpeg', 'KJGTTD00172.png', '2018-01-24 09:23:29'),
(174, 'Didit Aditama', 'SMP YP Pembangunan', 'diditaditama_63@yahoo.com', '085693662606', 'LUAR BIASA', 'Semangat', 'KJG00173.jpeg', 'KJGTTD00173.png', '2018-01-24 09:23:38'),
(175, 'Gegher Budi,SH', 'Smp Yapis Kota Bogor', 'gegherbudi80@gmail.com', '081386928529', 'Sering2', 'Saluut..', 'KJG00174.jpeg', 'KJGTTD00174.png', '2018-01-24 09:24:34'),
(176, 'Muhlas,SHI', 'SMPIT Al Bunyan', 'muhlas93@yahoo.co.id', '081297419373', 'Sangat bagus', 'Bisa ditularkan k sekolah lain', 'KJG00175.jpeg', 'KJGTTD00175.png', '2018-01-24 09:24:59'),
(177, 'Gina Dewi Indriyati, Spd', 'SMPN 15 BOGOR', '@gmail.com', '085881213198', 'Sangat mengagumkan dan luar biasa', 'SMK WIKRAMA MAJU TERUS PANTANG MUNDUR, SEMANGAT TERUS DALAM MEMBANGUN DUNIA PENDIDIKAN. BRAVO TUK SMK WIKRAMA BOGOR GO INTERNASIONAL', 'KJG00176.jpeg', 'KJGTTD00176.png', '2018-01-24 09:26:35'),
(178, 'Ahmad Subagyo', 'Smp PGRI 4 Bogor', 'ahmadsubgayo@.id', '08521030089', 'Pelayanan sangat istimewa penyajian sangat sempurna dan menambah proses pembelajaran guru terhadap siswa dan menambah motivasi pendidikan', 'Pela', 'KJG00177.jpeg', 'KJGTTD00177.png', '2018-01-24 09:26:51'),
(179, 'Tri Handayani', 'Smp Kosgoro', 'smpkosgoro@gmail.com', '08989557444', 'Sangat mengesankan', 'Subahanaallah smk wikrama begitu luar biasa sekolah yg kebangsaan', 'KJG00178.jpeg', 'KJGTTD00178.png', '2018-01-24 09:27:08'),
(180, 'Suyud Basuni', 'SMP ISLAM ALMUSTARIH', 'suyudb_pubana@yahoo.co.id', '085779751055', 'Luar biasa...menjadi bermanfaat', 'Semoga dengan adanya aplikasi kejar id ini menjadi inspirasi bagi pembelajaran siswa ataupun guru, yang konsisten dan berkelanjutan', 'KJG00179.jpeg', 'KJGTTD00179.png', '2018-01-24 09:27:48'),
(181, 'Endang Haerudin', 'SMP PGRI 3 BOGOR', '-', '0818109448', 'Luar biasa', 'Lanjutkan cita2 mulianya tuk mencerdaskan anak bangsa', 'KJG00180.jpeg', 'KJGTTD00180.png', '2018-01-24 09:27:50'),
(182, 'Cresnawati LB,S.Pd', 'SMPK Tunas Harapan', 'waticresnawati@yahoo.co.id', '081385997199', 'Baik kalau sistem ini digunakan untuk semua sekolah', 'Mengikuti kegiatan ini menambah wawasan dan pengetahuan IT', 'KJG00181.jpeg', 'KJGTTD00181.png', '2018-01-24 09:28:33'),
(183, 'Siti Mariam,S.Pd', 'SMP IT AL-YASMIN', 'sitimariam.st01@gmail.com', '081311006011', 'Luar biasa', 'Semakin sukses', 'KJG00182.jpeg', 'KJGTTD00182.png', '2018-01-24 09:29:20'),
(184, 'Yuliawati', 'Smpn 20', 'jegas03@yahoo.co.id', '085282617953', 'very good experience', 'follow up ditunggu', 'KJG00183.jpeg', 'KJGTTD00183.png', '2018-01-24 09:29:48'),
(185, 'Ahmad Sudrajat', 'SMP PANDUTAMA', 'ahmadsudrajat1971@gmail.com', '087787102818', 'Sangat kagum dan bangga terhadap apa yang bisa dilihat dan dirasakan di lingkungan sekolah yang kondusif dan berkarakter', 'Semoga SMK Wikrama semakin maju dan menjadi Sekolah Pembangkit inspirasi generasi yang akan datang', 'KJG00184.jpeg', 'KJGTTD00184.png', '2018-01-24 09:33:02'),
(186, 'Dian Ekawati S,se', 'Smp Pesat Kota Bogor', 'sitepudyanekawati@yahoocom', '087770883237', 'Mantap anak2 di latih mandiri smg sukses terus', 'Mdh2an akses sekolah bs lebih jelas arahnya', 'KJG00185.jpeg', 'KJGTTD00185.png', '2018-01-25 04:36:24'),
(187, 'Novvy Suwandanie', 'SMP PLUS YASPERA', 'nsuwandanie@yahoo.com', '085881930623', 'MasyaAllah,smk wikrama luar biasa', 'Saya mengharapkan ada undangan untuk kunjungan siswa ke smk wikrama untuk belajar lebih lanjut tentang pendidikan karakter', 'KJG00186.jpeg', 'KJGTTD00186.png', '2018-01-25 04:36:47'),
(188, 'Dina Yuniyanti', 'SMP BPK PENABUR', 'dinayuniyanti10@gmail.com', '082226668683', 'Luar biasa bagus', 'Tetap dipertahankan kualitas sekolah', 'KJG00187.jpeg', 'KJGTTD00187.png', '2018-01-25 04:37:07'),
(189, 'Ai Maesaroh', 'Smpn 9', 'aimaisara70@gmail.com', '081381318870', 'Terbuka melihat sekolah yg hebat', 'Tingkakan dan pertahankan trs utk menjadi sekolah yg terbaik f ota bogor', 'KJG00188.jpeg', 'KJGTTD00188.png', '2018-01-25 04:37:44'),
(190, 'Resti Cahyaning Asih', 'SMP IT AL YASMIN', 'resticahyaningasih@gmail.com', '089618634434', 'Sangat inspiratif', 'Terus berprestasi dan berkarya', 'KJG00189.jpeg', 'KJGTTD00189.png', '2018-01-25 04:38:08'),
(191, 'Ati Sugiharti', 'Smp N 19 Bogor', 'atisugiharti543@gmail.com', '081289527829', 'Wikrama luarrrrrr biasa', 'Mohon kegiatan ini lebih sering lagi', 'KJG00190.jpeg', 'KJGTTD00190.png', '2018-01-25 04:39:00'),
(192, 'Dra. C.Yustikawat M.Pd', 'SMP DASA SEMESTA', '_', '081219138105', 'Hrs lebih di sosialisakan ke sklh .sklh', 'Sangat mengesankan dan banyak ilmu yang dapat sy terapkan di sklh kami', 'KJG00191.jpeg', 'KJGTTD00191.png', '2018-01-25 04:39:05'),
(193, 'Neni Hapsah', 'Smp Negeri 4', 'nenihapsah@yahoo.co.id', '08128535191', 'Pelayanan smk wikrama kpd para guru okeee banget...', 'Smg smk wikrama selalu siap membagi ilmu kpd para guru', 'KJG00192.jpeg', 'KJGTTD00192.png', '2018-01-25 04:40:46'),
(194, 'Maulidiana Husnul Chotimah', 'Smp Pgri 5 Bogor', 'maulidayendiana@gmail.com', '08559853976', 'Sangat terkesan dengan smk wikrama, anak2 yg sangat berbakat, handak, mandiri dan peduli. Terimakasih sudah mengundang kami ke sini', 'Semoga smk wikrama semakin maju dan terus berinovasi dan berkontribusi bagi kemajuan masyarakat kota Bogor', 'KJG00193.jpeg', 'KJGTTD00193.png', '2018-01-25 04:41:42'),
(195, 'Nenin Nur Anggraeni', 'Smp Alghazaly', ',', '085810100817', 'Menarik dan nebat smk wikrama', ',', 'KJG00194.jpeg', 'KJGTTD00194.png', '2018-01-25 04:41:44'),
(196, 'Markus Segogel Ovong', 'SMP KESATUAN BOGOR', 'markusovong09@gmail.com', '085217561777', 'Luar biasa', 'Barbagi ya ilmunya', 'KJG00195.jpeg', 'KJGTTD00195.png', '2018-01-25 04:41:57'),
(197, 'Suryamah', 'SMP PGRI 2 BOGOR', '_', '087870338826', 'Menarik dan hebat', '_', 'KJG00196.jpeg', 'KJGTTD00196.png', '2018-01-25 04:42:06'),
(198, 'Rusmimar', 'SMPN 17 Bogor', 'rusminarminar@gmail.com', '085771885588', 'Sangat menyenangkan dan sangat berguna buat saya', 'Pelatihannya supaya berlanjut', 'KJG00197.jpeg', 'KJGTTD00197.png', '2018-01-25 04:43:41'),
(199, 'Tonny Rostandi', 'SMPIT AT TAUFIQ', 'tonnyrostandi44@gmail.com', '085718673621', 'Sangat membantu ini adalah inovasi perangkat yang wajib yang sangat membantu mencapai tujuan pendidikan', 'adakan roadshow kesekolah2', 'KJG00198.jpeg', 'KJGTTD00198.png', '2018-01-25 04:45:05'),
(200, 'Wahyuni Ngadmawati', 'SMP Negeri 3 Bogor', 'ngadmawati@gmail.co.id', '085102159991', 'SMK Wikrama hebat.....', 'Semoga SMK Wikrama semakin sukses', 'KJG00199.jpeg', 'KJGTTD00199.png', '2018-01-25 04:45:45'),
(201, 'Rudi Purwadi,SE', 'Smp Muhammadiyah Kota Bogor', 'purwadirudi2970@gmail.com', '085693150988', 'Subhanalloh Sungguh Luar Biasa', 'Semoga menjadi amalan Dunia Akhirat Baroqalloh', 'KJG00200.jpeg', 'KJGTTD00200.png', '2018-01-25 04:46:22'),
(202, 'Offi Nur Eva Sari', 'SMPN 11 Bogor', 'offinureva@gmail.com', '081380448853', 'Saya sangat terkesan mengunjungi Sekolah ini karena warga sekolahnya sangat ramah dan lingkungannya bersih', 'Semoga wikrama bisa bekerja sama dengan SMPN 11 Bogor dalam hal berbagi ilmu tentang adiwiyata sekolah', 'KJG00201.jpeg', 'KJGTTD00201.png', '2018-01-25 04:46:26'),
(203, 'Sumartini.S.Pd.', 'SMP TAMANSISWA', 'stini6230@gmail.com.com', '082110081773', 'Good service', 'Semoga SMK WIIKRAMA TERUS MAJU DAN BERKEMBANG', 'KJG00202.jpeg', 'KJGTTD00202.png', '2018-01-25 04:46:58'),
(204, 'Walmiyati', 'Smp N 8 Bogor', 'walmiyati14@gmail,com', '089693084995', 'Sekolah yg bersih,ramah,religius,intelektual dan modern', 'Trimakasih atas sharing ilmunya semoga melahirkan generasi bogor yang cerdas', 'KJG00203.jpeg', 'KJGTTD00203.png', '2018-01-25 04:47:31'),
(205, 'Lili Kartika', 'SMPN 10 Bogor', 'lilikartika63@yahoo.co.id', '087798970717', 'Walaupum di pelosok, tp TOP bgt', 'Smg kejar.id IPS bisa ada', 'KJG00204.jpeg', 'KJGTTD00204.png', '2018-01-25 04:47:33'),
(206, 'Susilawati,SE', 'SMPIT AlBUNYAN', 'aidasaidah2004@gmail.com', '081383244401', 'Sekolah luar biasa', 'Maju terus SMk WRIkRAMA', 'KJG00205.jpeg', 'KJGTTD00205.png', '2018-01-25 04:49:34'),
(207, 'Candra Yanti.Spd.MM', 'SMP PGRI 3 BOGOR', 'candrayanti31@gmail.com', '0817200017', 'Pertama kali disambut hujan deras', 'Semoga sukses selalu', 'KJG00206.jpeg', 'KJGTTD00206.png', '2018-01-25 04:50:13'),
(208, 'Rita Nuralita', 'SMPN 14 Bogor', 'ritanuralita68@gmail.com', '087770759790', 'Ok semuanya', 'Bertambah maju untuk kmajuan pendidikan', 'KJG00207.jpeg', 'KJGTTD00207.png', '2018-01-25 04:50:37'),
(209, 'Hj. Ratu Ratnawati, SS', 'SMPN 7 BOGOR', 'ratukariaz@gmail.com', '081318884622', 'SMK WIKRAMA top is the best', '_', 'KJG00208.jpeg', 'KJGTTD00208.png', '2018-01-25 04:50:51'),
(210, 'Ilni Silvi Agustina,Spd', 'SMP Kamandaka Bogor', 'ilni,agustina@gmail.com', '08179128629', 'Suasana sekolah aman dan nyaman', 'Smk wikarma ok', 'KJG00209.jpeg', 'KJGTTD00209.png', '2018-01-25 04:51:22'),
(211, 'Arief Rizky', 'Smp Al Irsyad', 'ariefzone13@gmail.com', '085710754713', 'Luar biasa wikrama, selamat ketemu lagindi fls2n film pendek', 'terus buat inovasi bagi pendidikan', 'KJG00210.jpeg', 'KJGTTD00210.png', '2018-01-25 04:51:46'),
(212, 'Ateng ELIM', 'SMP Negeri 16 Bogor', 'ateng.elim@gmail.com', '085781879680', 'Happy', 'SMK Wikrama semoga tetap jaya', 'KJG00211.jpeg', 'KJGTTD00211.png', '2018-01-25 04:52:16'),
(213, 'Asfahani Khairul Huds', 'SMP NEGERI 5 BOGOR', 'asfahani.huda@gmail.com', '083819376182', 'Hari yang luar biasa untuk melangkah lebih baik', 'Kerjasama terus kita jalin', 'KJG00212.jpeg', 'KJGTTD00212.png', '2018-01-25 04:53:03'),
(214, 'Yetty Sulianty', 'Pgri 16', '_', '08197862228', 'Banyak pemnelajaran yg didpt dri skolah ini', 'Semoga smk okrama ih ju lgi', 'KJG00213.jpeg', 'KJGTTD00213.png', '2018-01-25 04:54:12'),
(215, 'Kun Aminah', 'Smp Muhammadiyah', 'kun_aminah12@ co.id', '081283252711', 'Sejuk adem persaudaraannya bagus', 'Sangat bagus penerimaanya', 'KJG00214.jpeg', 'KJGTTD00214.png', '2018-01-25 04:54:25'),
(216, 'Agus Suprasetyo', 'Smpn 10 Bogor', 'agussupra6273@gmail.com', '089516901583', 'Hebat.', 'Tetap amanah', 'KJG00215.jpeg', 'KJGTTD00215.png', '2018-01-25 04:54:25'),
(217, 'Solikan', 'Smpit Insantama', 'airdingin@gmail.com', '085880641924', 'Amazing siswa jaman now', 'Semoga berkah', 'KJG00216.jpeg', 'KJGTTD00216.png', '2018-01-25 04:55:09'),
(218, 'Akhmad Juaeni', 'Smp Islam ytm 1 Bogor', 'anji.lksana@gmail.com', '08989453970', 'Hebat', 'Salut buat wikrama', 'KJG00217.jpeg', 'KJGTTD00217.png', '2018-01-25 04:55:27'),
(219, 'Drs,Djusman', 'SMP Negeri 13', 'djusman.koto@gmail.com', '081381826920', 'Manntaap', 'Lanjut, lebih baik lagi', 'KJG00218.jpeg', 'KJGTTD00218.png', '2018-01-25 04:56:19'),
(220, 'Wahyuningsih', 'SMP PGRI 17', 'zidanwahyu15@gmail.com', '081289483972', 'Sekolahnya sejuk,dingin,', 'Sangat bagus materinya', 'KJG00219.jpeg', 'KJGTTD00219.png', '2018-01-25 04:56:22'),
(221, 'Imidia Harni', 'Smp Bina Greha ,Taman Cimanggu,Bogor', 'imidiaharni@gmail.com', '081310734898', 'Saya terkesan sekali dengan suasana dan penyambutan dari SMK WIKRAMA,makasih !', 'Alhamdulillah,semuanya baik baik aja', 'KJG00220.jpeg', 'KJGTTD00220.png', '2018-01-25 04:57:08'),
(222, 'Dedeh Kurniasih', 'Smp Yapis', '_', '08981031352', 'Sy bertambah ilmi dengan mengikuti pelatihan kejar id d dmk wikrama', 'Smk wikrama maju terus', 'KJG00221.jpeg', 'KJGTTD00221.png', '2018-01-25 04:57:29'),
(223, 'Susana', 'Smp 12 Bogor', 'susana2703@gmail.com', '081290186498', 'Indah rapi bersih dan inspiratif', 'Semoga keberhasila wikrama segera diikuti oleh sklh lain', 'KJG00222.jpeg', 'KJGTTD00222.png', '2018-01-25 04:57:34'),
(224, 'Mustofa Kemal Faturohman', 'Smp Pgri 7 Bogot', 'kmlkmlkmlkml2015@gmail.co.id', '087870161988', 'Tidak bisa diungkapkan dengan kata2', 'Sangat bagus', 'KJG00223.jpeg', 'KJGTTD00223.png', '2018-01-25 04:58:00'),
(225, 'Sarjono', 'Smp MarduYuana', 'antonius,sarjono@yahoo.co.id', '0815161696', 'Cool', 'Best future', 'KJG00224.jpeg', 'KJGTTD00224.png', '2018-01-25 04:58:42'),
(226, 'Sigit Kristianto', 'Smpn 6 Bogor', 'kartika28@yahoo.coid', '085219082352', 'Luar biasa', 'Tetap berprestasi buat smk wikrama', 'KJG00225.jpeg', 'KJGTTD00225.png', '2018-01-25 04:58:51'),
(227, 'Rahmat Hidayat', 'Smp Bina Sejahtera', 'rahmstssg7208', '0857813531915', 'Selalumjutrus', 'Selamatberjuang', 'KJG00226.jpeg', 'KJGTTD00226.png', '2018-01-25 04:59:16'),
(228, 'Muhamad Iqbal, M.Pd', 'SMP Insan Kamil Bogor', 'syaal00@gmail.com', '08129751425', 'Amazing', 'Semangat terus untuk menjadi sekolah pelopor smart city', 'KJG00227.jpeg', 'KJGTTD00227.png', '2018-01-25 04:59:22'),
(229, 'Mohamad Muslim', 'Smp Pgri 9', 'mohamadmuslim02@gmail.com', '085781330425', 'Oke punya acaranya', 'Semoga kegiatan ini bisa berlanjut', 'KJG00228.jpeg', 'KJGTTD00228.png', '2018-01-25 05:00:25'),
(230, 'Agus', 'Smp Al Munir', 'ags@yaho.cim', '085777247221', 'Semoga terus jaya smk wikram', 'Sangat luar biasa', 'KJG00229.jpeg', 'KJGTTD00229.png', '2018-01-25 05:01:08'),
(231, 'Evi Sopiti', 'Smp Yp Pembangunan', 'evisopiati69@gmail.com', '087770845016', 'MeNyenangkan', 'Semoga trus maju', 'KJG00230.jpeg', 'KJGTTD00230.png', '2018-01-25 05:01:43'),
(232, 'Yessi Susniwati', 'Smp Pgri 12 Bogor', 'yessisusmiwati@gmail.comm', '085719948373', 'Mantap', 'Semoga lebih sukses', 'KJG00231.jpeg', 'KJGTTD00231.png', '2018-01-25 05:02:56'),
(233, 'Dede Priyatna', 'SMP YAPSIDA BOGOR', 'dedepriyatna123@gmail.com', '081219945907', 'Menarik,hebat,terorganisir', 'Lebih ditingkatkan lagi menjadi sekolah terbaik', 'KJG00232.jpeg', 'KJGTTD00232.png', '2018-01-25 05:03:11');
INSERT INTO `kunjungan` (`id`, `nama`, `instansi`, `email`, `hp`, `pesan`, `kesan`, `foto`, `ttd`, `waktu`) VALUES
(234, 'Yuni Arsono', 'SMP N 15 BOGOR', 'arsonoyuni@gmail.com', '081383108538', 'Seperti mimpi selama di wikrama demi masa depan pendidikan ind', 'Lebih ditingkatkan lagi kerjasama dg kalangan pendidik', 'KJG00233.jpeg', 'KJGTTD00233.png', '2018-01-25 05:03:45'),
(235, 'Rina Herlina', 'Smp Tunas Insani', 'rinaherlina313@gmail.com', '083819918081', 'Wikrama kedepannya makin suks3s', 'Makin sukses', 'KJG00234.jpeg', 'KJGTTD00234.png', '2018-01-25 05:04:44'),
(236, 'Darwin Manurung, SE, MM', 'SMP K Satu Bakti', 'manurung.darwin@gmail.com', '081317563855', 'Luar biasa...sekalipun tempatnya sempit namun sangat kreatif', 'Salutt untuk para pendiri, pengelola dan seluruh siswa dan siswi Wikrama', 'KJG00235.jpeg', 'KJGTTD00235.png', '2018-01-25 05:05:07'),
(237, 'Rudi Koarudin, M.Pd', 'Smp Negeri 18 Bogor', 'rudi_komrdn@yahoo.co.id', '087872006673', 'Luar biasa', 'Tingkatkan terus', 'KJG00236.jpeg', 'KJGTTD00236.png', '2018-01-25 05:05:45'),
(238, 'Yuni Risgiyanti, SE', 'SMP Bhakti Taruna 2', 'yunirisgiyanti06@gmail.com', '085780544021', 'Baik', 'semoga semakin sukses', 'KJG00237.jpeg', 'KJGTTD00237.png', '2018-01-25 05:06:21'),
(239, 'Mego Ayu Mahardika', 'Smp Islam Al Mustarih', 'megoayu@gmqil.com', '085782190911', 'Luar biasa', 'Semoga kedepannya mnjadi lbh baik dan bisa menularkan kesuksesannya untuk sekolah sekolah swasta lainnya di kota bogor', 'KJG00238.jpeg', 'KJGTTD00238.png', '2018-01-25 05:06:53'),
(240, 'Iin Iryance', 'Smp Rimba Teruna', 'iiniryance@gmail.com', '08991071742', 'Lingkungannya nyaman dan bersih', 'Terus berbagi ilmu dan menjadi sekolah yang lebih maju', 'KJG00239.jpeg', 'KJGTTD00239.png', '2018-01-25 05:07:17'),
(241, 'Adep Abdirrachman F', 'SMP N 1 Bogor', 'asep.spensa@gmail.com', '081314676201', 'Tolong guru22nya ditingkatkan kesejahterannya', 'Kesa  angga di kota bgr ada smk yg bertarap internasonal pexan', 'KJG00240.jpeg', 'KJGTTD00240.png', '2018-01-25 05:08:42'),
(242, 'Anna Mariche Sihotang', 'Smp', 'anna.mariche@gmail.com', '081280164200', 'Servisnya luar biasa,terlihat pembentukan siswa siswi nya baik,salutnya anak2 diajar mandiri...good school', 'Pertahankan keunggulan2nya', 'KJG00241.jpeg', 'KJGTTD00241.png', '2018-01-25 05:08:58'),
(243, 'SERPI SIHOMBING', 'SMP ADVENT BOGOR', 'serpisihombing@gmail.com', '081316403538', 'Sangat bagus dan luar biasa', 'Semoga semakin maju', 'KJG00242.jpeg', 'KJGTTD00242.png', '2018-01-25 05:09:01'),
(244, 'Hamdi Syahreza', 'Smp At-thoyibah Kota Bogor', 'syahreza92hamdi@gmail.com', '085777735361', 'Serruu.....', 'Konsumsi hhe', 'KJG00243.jpeg', 'KJGTTD00243.png', '2018-01-25 05:09:26'),
(245, 'Tb M Nurfaisal', 'Smp Yktb Bogor', 'tbfaisal5@gmail.com', '083819757619', 'Smk wikrama luar biasa', 'Tingkatkan lagi prestasi smk wikrama', 'KJG00244.jpeg', 'KJGTTD00244.png', '2018-01-25 05:10:55'),
(246, 'Mira Mardati S.Pd', 'Smp Kurnia Bogor Utara', 'Miramardati123@gmail.com', '08161491703', 'Ramah tamah', 'Lebih baik', 'KJG00245.jpeg', 'KJGTTD00245.png', '2018-01-25 05:11:05'),
(247, 'Rizal Nursamsi', 'Smp It Abdullah Bin Nuh', 'abenk20belas@gmail.com', '087767930986', 'Ada kata lain selain mengesankan? Jika ada maka itulah wirakrama, amazing !!', 'Kami pasti kembali', 'KJG00246.jpeg', 'KJGTTD00246.png', '2018-01-25 05:11:30'),
(248, 'Nanang Isjandar', 'Smp Darma Bakti Bogor', 'n42n615@gmail.com', '081281775664', 'Dapat menambah ilmu', 'Perlu ditingkatkan untuk lebih baik lagi', 'KJG00247.jpeg', 'KJGTTD00247.png', '2018-01-25 05:12:05'),
(249, 'Ahmad Muslim', 'SMP PUI Bogor', 'muslimahmad90a@gmail.com', '085717383022', 'Menambah wawasan dan motivasi', 'Terimakasih', 'KJG00248.jpeg', 'KJGTTD00248.png', '2018-01-25 05:13:27'),
(250, 'Hidayatsobandi', 'Smp Alazhar Plus Bogor', 'hidayatsobandi@yahoo.com', '08567219551', 'Sangat mengengesatkan', 'Menyenangkan', 'KJG00249.jpeg', 'KJGTTD00249.png', '2018-01-25 05:15:28'),
(251, 'Siti Rahmawati', 'Sekolah Alam Bogor', 'ajjahrahma43@rocketmail.com', '085715766675', 'Terima kasih', 'Tingkatkan kembali', 'KJG00250.jpeg', 'KJGTTD00250.png', '2018-01-25 09:02:23'),
(252, 'Sukisno', 'Smp N15 Bogor', 'sukisno3765@gmail.com', '0851384079344', 'Ingin membawa anak murid ke smk wikrama , sekolahan hebat', 'Sangat bagus, hebat, salut', 'KJG00251.jpeg', 'KJGTTD00251.png', '2018-01-25 09:02:46'),
(253, 'Sampe Sari, S.Pd', 'SMP Windian Nugraha', 'Sampesari26@gmail.com', '085695096932', 'Menyenangkan dan bermanfaat.', 'Lanjutkan kejar.id SEMANGAT.', 'KJG00252.jpeg', 'KJGTTD00252.png', '2018-01-25 09:03:35'),
(254, 'Muhammad Iqbal Nur', 'SMP NEGERI 19', 'iqbalnur199@gmail..com', '081384525661', 'Menarik dan tantangan guru', 'Teruskan promo terutama ke setiap sekolah', 'KJG00253.jpeg', 'KJGTTD00253.png', '2018-01-25 09:03:36'),
(255, 'APFRIDA PURBA', 'smpn 18 Bogor', 'apfrida18@gmail.com', '082112574715', 'Menyenangkan', 'Saya suka dengan siswa yang beretika. Saya kagum', 'KJG00254.jpeg', 'KJGTTD00254.png', '2018-01-25 09:04:15'),
(256, 'Tri Joko Setiadi', 'Nurul Fikri', 'trijokosetiadi@gmail.com', '085210277617', 'Waw', 'Luar biasa', 'KJG00255.jpeg', 'KJGTTD00255.png', '2018-01-25 09:05:54'),
(257, 'Pepen Jauli SP.d', 'Smp Darma Bakti Bogor', '@jajulico.id', '085775127834', 'Sngat bermanfaat sekali', 'Prog keja,id sngat bermnfaat bgi guru dan siswa dilanjutkn terus', 'KJG00256.jpeg', 'KJGTTD00256.png', '2018-01-25 09:06:06'),
(258, 'Emanuel Rastomo Jati', 'SMP REGINA PACIS BOGOR', 'greevdan06@yahoo.com', '089501899054', 'Luar biasa menginspirasi sekali..', 'Maju terus Wikrama', 'KJG00257.jpeg', 'KJGTTD00257.png', '2018-01-25 09:06:27'),
(259, 'Ai Sumarnih', 'SMP Bina Sejahtera', 'aisumarni1@gmail.com', '081310689353', 'Saya sangat berkesan dengan penerimaan di SMK WIKRAMA', 'Pertahankan 3S yang diterapkn di sini', 'KJG00258.jpeg', 'KJGTTD00258.png', '2018-01-25 09:07:46'),
(260, 'Purwati', 'Smp Pgri 8 Kota Bogor', 'purwati@gmail.com', '08128103275', 'Sangat bermanfaat sekali purwatim', 'Mengunjungi sekolah kami agar sklh lebih maju menggunakan It', 'KJG00259.jpeg', 'KJGTTD00259.png', '2018-01-25 09:08:55'),
(261, 'Ulis,s.s', 'SMP Pandutama Bogor', 'makibu16@gmail.com', '081806550036', 'Saya senang acara ini dapat menambah wawasan', 'Lenih serimg lagi mengadakan MMGMP', 'KJG00260.jpeg', 'KJGTTD00260.png', '2018-01-25 09:09:04'),
(262, 'Zahrudin', 'SMPN 11 BOGOR', 'okezay69@gmail.com', '082221112169', 'Sangat senang karena bertambah ilmu di tempat yang nyaman', 'Lebih sering lagi berbagi ilmu melalui acara seperti ini', 'KJG00261.jpeg', 'KJGTTD00261.png', '2018-01-25 09:09:46'),
(263, 'Sitiherlina', 'Smpyapsida', 'siti herlina@gmail.com', '081381772259', 'Ilmu yang kami  terima sangat bermsnfaat', 'Mengunjungi sekolah agar sekolah kami lebih maju menggunakan it', 'KJG00262.jpeg', 'KJGTTD00262.png', '2018-01-25 09:10:31'),
(264, 'Esi Ichtiarsih', 'SMP PGRI 2 BOGOR', 'esiichtiarsih@gmail.com', '083819746062', 'Luar biasa', 'Pertahankan terus kualitas dan kwantitas sekolah', 'KJG00263.jpeg', 'KJGTTD00263.png', '2018-01-25 09:11:06'),
(265, 'JULISTINA KINSIANDANI', 'SMP RIMBA TERUNA', 'julistinakinsi@gmail.com', '081514655563', 'Berkesempatan pelatihan kejar.id membuat saya terkesan dan sangat bertrima kasih.', 'Jaya terus wikrama', 'KJG00264.jpeg', 'KJGTTD00264.png', '2018-01-25 09:11:13'),
(266, 'Aat Kurniasih', 'SMP Negeri 9', 'aatkurniasih62@gmail.com', '085692774500', 'Mudah-mudahan gutu bahasa Indonesia lebih baik lagi.', 'Saya sangat senang sekali', 'KJG00265.jpeg', 'KJGTTD00265.png', '2018-01-25 09:11:23'),
(267, 'Euis Siti Hadijah,spd', 'Smp Muhammadiyah', 'euissitihadijah@gmail.com', '081310006595', 'Luar biasa', 'Lebih maju lagi', 'KJG00266.jpeg', 'KJGTTD00266.png', '2018-01-25 09:11:32'),
(268, 'Siti Hoeriyyah', 'SMP Al Ghazaly', 'sitihoeriyyah2@g.mail.com', '087874989441', 'Sangat menginspiratif', 'Dapat diberikan bukan hanya tingkat SMP saja namun pada tingkat SMA/SMK', 'KJG00267.jpeg', 'KJGTTD00267.png', '2018-01-25 09:11:51'),
(269, 'Setia Restiani', 'SMP PGRI 3 BoGOR', 'setiarestiani33@gmail.com', '081285988085', 'Masyaallah siswa siswi SMK WIKRAMA santun-santun', 'Kembali mengadakan pelatihan seperti ini lagi.', 'KJG00268.jpeg', 'KJGTTD00268.png', '2018-01-25 09:12:18'),
(270, 'Emirita Ratna Dwi Ikasari', 'Smp BPK PENABUR', 'emirita22@gmail.com', '085740557629', 'Mantap', 'Tingkatkan', 'KJG00269.jpeg', 'KJGTTD00269.png', '2018-01-25 09:13:22'),
(271, 'Rambu Sylvia Soraya Samapaty,S.Pd', 'Daar En Nisa Islamic School', 'sylviasoraya15@gmail.com', '085283642425', 'Pelayanannya sangat memuaskan', 'Smga Sekolah Wikrama makin maju', 'KJG00270.jpeg', 'KJGTTD00270.png', '2018-01-25 09:14:09'),
(272, 'Rapitasari', 'Smp Dawatul Quran', 'rapitasari140393@gmail.com', '085782628141', 'Luarbisa', 'Terus menjadi sekolah yang menginspirasi', 'KJG00271.jpeg', 'KJGTTD00271.png', '2018-01-25 09:15:44'),
(273, 'Dewi Andriani, S.Pd', 'SMP Islam  YTM 1 BOGOR', 'dewi.fadewi@gmail.com', '087870451158', 'Semoga SMK selalu maju dan terus berkembang teknologinya.', 'SMK Wikrama sangat bagus dan berbasis IT, lebih ditingkatkan lagi Teknologiny.', 'KJG00272.jpeg', 'KJGTTD00272.png', '2018-01-25 09:17:18'),
(274, 'Nadia Alhusna', 'Smp Bagus', 'nadiaalhusna12@gmail.com', '089654845772', 'Luar biasa sekolahnya', 'Tingkatin lagi', 'KJG00273.jpeg', 'KJGTTD00273.png', '2018-01-25 09:17:38'),
(275, 'Asti Wrestidianti', 'SMP Kamandaka', 'astiwd68@gmail.com', '08122712962', 'Kereeenn..', 'Bisa dibagikan ilmunya ke yang lain', 'KJG00274.jpeg', 'KJGTTD00274.png', '2018-01-25 09:17:46'),
(276, 'Eni Hasanah, S.pd', 'SMPN 17 Bogor', 'euissitihadijah@gmail.com', '081280760544', 'Luar biasa', 'Lebih baik lagi', 'KJG00275.jpeg', 'KJGTTD00275.png', '2018-01-25 09:17:53'),
(277, 'Fitri Hariani', 'Yayasan NUR INSAN ZAFIRAH', 'fitrihryni@gmail.com', '085775400006', 'Banyak hal positif dan lebih bersemangat dalam meningkat kan mengajar', 'Dapat meningkatkan kualitas mengajar yang sangat baik', 'KJG00276.jpeg', 'KJGTTD00276.png', '2018-01-25 09:18:21'),
(278, 'Darmawati, S. Pd.', 'Smp Kosgoro Kota Bogor', 'watidarma993@gmail.com', '082226893855', 'Luar biasa, mempermudah pembelajaran n pengajaran.', 'Lebih disosialisasikan lagi ke sekolah untuk kejar.id nya', 'KJG00277.jpeg', 'KJGTTD00277.png', '2018-01-25 09:18:51'),
(279, 'Nendah Hartati', 'Smp Negeri 13', 'nendahhartati@gmail.com', '085284066911', 'Lebih maju lagi , lebih berkembang lgi.', 'Sangat berkesan dan mendapatkan ilmu baru', 'KJG00278.jpeg', 'KJGTTD00278.png', '2018-01-25 09:19:44'),
(280, 'Rida Nurdiani', 'SMPN 20', 'ridanurdiani67@mail.com', '087874255991', 'Sangat mantap', 'Agar di selenggarakan lagi pelatihan ini', 'KJG00279.jpeg', 'KJGTTD00279.png', '2018-01-25 09:20:44'),
(281, 'DWI DESKA RATIH', 'SMPK TUNAS HARAPAN', 'dscolastica@gmail.com', '087770990797', 'Luar biasa...', 'Selalu menjadi sang juara', 'KJG00280.jpeg', 'KJGTTD00280.png', '2018-01-25 09:21:20'),
(282, 'Ira Juwita', 'Smpn 2 Bogor', 'irJuwita63@gmail.com', '081931114831', 'Semoga lebih menjadi sekolah percontohan yg bisa dicontoh oleh sekolah nasional. Okeyyy', 'Smk wikrama sebuah pelopor yang oke', 'KJG00281.jpeg', 'KJGTTD00281.png', '2018-01-25 09:21:24'),
(283, 'LENDRI', 'SMPN 7 BOGOR', 'lendribambang@gmail.com', '08128574005', 'Sangat hebat', 'Terima kasih atas jamuan dan ilmu yg di brkan', 'KJG00282.jpeg', 'KJGTTD00282.png', '2018-01-25 09:21:31'),
(284, 'Ade Febrian Sopandi', 'Smp Harapan Taruna', 'adefebriansopandi@gmail.com', '085773541096', 'Baik, sopan dan ramah', 'Tingkatkan lagi', 'KJG00283.jpeg', 'KJGTTD00283.png', '2018-01-25 09:21:45'),
(285, 'Kustana,S.Pd', 'Smp Bhakti Insani', 'qustansangpenyabar@gmail.com', '085715388550', 'Ini semua saangat bermanffat untuk kemajua peseta didik', 'Sy berharap yg punya aflikasi ini bisa datang kesekolah kami', 'KJG00284.jpeg', 'KJGTTD00284.png', '2018-01-25 09:21:51'),
(286, 'Dwi Ratnaningsih', 'Smp Tamansiswa', 'dwi.ratnaningsih008@gmail.com', '081398282504', 'Menyenangkan banyak ilmu yg didapat', 'Sering mengadakan kegiatan seperti ini lgi', 'KJG00285.jpeg', 'KJGTTD00285.png', '2018-01-25 09:23:27'),
(287, 'Anna EKA salmiah', 'SMP PgRI 9', 'ansalmiah@gmail.com', '0817105755', 'Setiap sudut sekolah efektif dalam segala hal', 'Sangat memotivasi kami.', 'KJG00286.jpeg', 'KJGTTD00286.png', '2018-01-25 09:24:14'),
(288, 'Rindang Rima Asih, S.Pd.', 'SMP IT AL YASMIN', 'pohon.rindang27@gmail.com', '08915159144', 'Sangat bermanfaat!', 'Semoga bisa bertemu kembali lain waktu', 'KJG00287.jpeg', 'KJGTTD00287.png', '2018-01-25 09:24:16'),
(289, 'Dian Martha Ekie Susanthi', 'SMP IT ABN', 'dian.mes@gmail.com', '081908294100', 'Alhamdulillah ada program kejar.id membantu memudahkan guru dalam pendalaman materi belajar siswa dalam mempersiapkan ujian nsional berbasis komputer', 'Mohon untuk lebih sering mengundang untuk sharing ilmu demi kemajuan pendidikan di kota BOGOR', 'KJG00288.jpeg', 'KJGTTD00288.png', '2018-01-25 09:24:32'),
(290, 'Kusminah', 'SMP YZA 1', 'choicesastra@gmail.com', '085759031604', 'Begitu terkesan dengan suasana sekolah yang nyaman dan ramah', 'Semoga selalu istiqomah dalam mejadi instansi yang luar biasa', 'KJG00289.jpeg', 'KJGTTD00289.png', '2018-01-25 09:24:58'),
(291, 'Ade Ratih Utmi', 'SMP Pesat', 'dutamibogor123@gmail.com', '081315600349', 'Sangat menarik apa lagi jika diterapkan di kbm', 'Lebih diperbarui lagi untuk memudahkan log in', 'KJG00290.jpeg', 'KJGTTD00290.png', '2018-01-25 09:25:41'),
(292, 'Mohamad Abdul Rsyd', 'Smp Pgri 11', 'rosyi.mohmad@yahoo.com', '085697333732', 'Ramah,santun dan modern', 'Kembangkan terus dan semangat', 'KJG00291.jpeg', 'KJGTTD00291.png', '2018-01-25 09:25:44'),
(293, 'Berta Simamora', 'Smp Yp Pembangunan', 'berta.ederlina@gmail.com', '081287363624', 'Luar biasa menambah wawasa', 'Sangat luarbiasa bertambahnya ilmu', 'KJG00292.jpeg', 'KJGTTD00292.png', '2018-01-25 09:25:45'),
(294, 'Eva Emilia Rachman', 'Smp Alirsyad', 'eva.rahman260282@gmail.com', '081315676774', 'Luar biasa bagus', 'Maju terus', 'KJG00293.jpeg', 'KJGTTD00293.png', '2018-01-25 09:26:21'),
(295, 'Lidiya Widdatu H.A', 'SMP PGRI 7 BOGOR', 'whie_dattu@yahoo.com', '082249334658', 'Sangat baik', 'Lebih sukses lagi', 'KJG00294.jpeg', 'KJGTTD00294.png', '2018-01-25 09:27:22'),
(296, 'Yayu Aprilian Widyani', 'Smp Pgri 17 BOGOR', 'yayukundang@gmail.com', '08179059846', 'Sangat baik untuk pembelajaran siswa n guru', 'Lebih d tingkatkan lg acara seperti ini', 'KJG00295.jpeg', 'KJGTTD00295.png', '2018-01-25 09:28:39'),
(297, 'Nur Fajarudin', 'SMPIT Insantama', 'nurfajarudin84@gmail.com', '085715766727', 'Bagus dan menghapus kesan SMK yang hobi melakukan tindak negatif.', 'Hasil tidak pernah menghianati usaha. Jangan lelah untuk meraih cita.', 'KJG00296.jpeg', 'KJGTTD00296.png', '2018-01-25 09:29:31'),
(298, 'Santhi Maulida Hasanah', 'Smp Islam Al Mustwrih', 'santhimaulidahasanah@gmail.com', '087874216806', 'Sekolah yang hebat dengan program yang luar biasa', 'Lebih sering lagi mengadakan sosialisi dengan sekolah', 'KJG00297.jpeg', 'KJGTTD00297.png', '2018-01-25 09:30:21'),
(299, 'Yohanes Martono', 'SMP Budi Mulia Bogor', 'yohanesmartono29@gmail', '087872146715', 'Wikrama sangat memotivasiku', 'Maju terus Wikrama , aku salut padamu', 'KJG00298.jpeg', 'KJGTTD00298.png', '2018-01-25 09:30:29'),
(300, 'Haris Permana', 'SMP YKTB Bogor', 'haris.permana59@yahoo.co.id', '08889178242', 'Keren dan sungguh bermanfaat', 'Semoga program ini menjadi perombak pendidikan modern', 'KJG00299.jpeg', 'KJGTTD00299.png', '2018-01-25 09:30:39'),
(301, 'Yunika Pujiastuti', 'SMP KESATUAN', 'uniquefatah@gmail.com', '08156806343', 'Sosialisasi kejar.id sangat membantu guru dan siswa', 'Sukses terus untuk SMK Wikrama', 'KJG00300.jpeg', 'KJGTTD00300.png', '2018-01-25 09:30:56'),
(302, 'Isnawati Khusnul Hotimah, S.Pd.', 'SMP At-Thoyibah', 'isna.khusnul29@gmail.com', '083819702310', 'Alhamdulillah... menyenangkan, nyaman, lingkungan dan warga sekolah yang hangat dan ramah.insyaallah manfaat ilmunya', 'Semoga bisa lebih sering adakan acara MGMP di Wikrama', 'KJG00301.jpeg', 'KJGTTD00301.png', '2018-01-25 09:31:34'),
(303, 'Ria Nurhayati', 'Smp Ananda Bogor', 'riannurhayati22.11@gmail.com', '0811117218', 'Menginspirasi menggunakan sebuah teknologi', 'Keren', 'KJG00302.jpeg', 'KJGTTD00302.png', '2018-01-25 09:31:54'),
(304, 'Febriyawan', 'Smp Kurnia', 'febriyawan_sarjanapbsi@yahoo.com', '081283294661', 'Luar biasa', 'Lanjutkan ide kreatifnya', 'KJG00303.jpeg', 'KJGTTD00303.png', '2018-01-25 09:32:26'),
(305, 'Agustin Kartika', 'SMP Al Azhar Plus', 'agustin_kartika@ymail.com', '087703189490', 'Masya allah keren, luar biasa dan sangat menginspira', 'Semoga SMK Wikrama dapat memberikan contoh dan dapat membagi ilmu untuk sekolah lain', 'KJG00304.jpeg', 'KJGTTD00304.png', '2018-01-25 09:32:40'),
(306, 'Lukman Hakim', 'Smp Insan Kamil Kota Bogor', 'lukman.venom@gmail.com', '085810900279', 'Awesome school', 'Tetap pertahankan!!!', 'KJG00305.jpeg', 'KJGTTD00305.png', '2018-01-25 09:33:33'),
(307, 'Rea', 'Smk Wikrama', 'reaprizka@yahoo.com', '085888888888', 'Tes', 'Tes', 'KJG00306.jpeg', 'KJGTTD00306.png', '2018-01-26 08:42:49'),
(308, 'Dian Arini', 'Smp It Insantama', 'arinidian731@gmail.com', '081802978325', 'Alhamdulillah... very good, charm, and nice', 'Alwyas strugle to be better', 'KJG00307.jpeg', 'KJGTTD00307.png', '2018-01-26 09:01:37'),
(309, 'Upa Sherly', 'SMP BPK PENABUR', 'upa.sherly@yahoo.com', '08128275345', 'Bagus sekali siswa dapat belajar mandiri', 'Semoga semakin maju', 'KJG00308.jpeg', 'KJGTTD00308.png', '2018-01-26 09:02:28'),
(310, 'Elis Krisnawati', 'SMPN 3 Bogor', 'eliskrisnawati73@gmail.co.id', '081806145702', 'Luar biasa', 'Lanjutkan untuk generasi mendatang', 'KJG00309.jpeg', 'KJGTTD00309.png', '2018-01-26 09:02:29'),
(311, 'ERTI SUHERTI', 'SMPN 6 BOGOR', 'ertie.suherti@gmail.com', '081241388883', 'Sangat mengagumkan', 'Berkembanglah terus selagi dunia berputar', 'KJG00310.jpeg', 'KJGTTD00310.png', '2018-01-26 09:03:44'),
(312, 'Tati Debora Marbun', 'SMP KRISTEN 1 BAKTI', 'moristumanggor@gmail.com', '082276563946', 'Sangan senang, karna terpilih untuk mendapat ilmu.', 'Semoga aplikasi yang kita dapat lebih berkembang, guna meningkatkan mutu pendidikan amin.', 'KJG00311.jpeg', 'KJGTTD00311.png', '2018-01-26 09:04:17'),
(313, 'Tini Hartini', 'Smpn 20 Bogor', 'tihartini@gmail.com', '087770081921', 'Sekolahnya bagus', 'Penunjuk arah ke sekolah kurang', 'KJG00312.jpeg', 'KJGTTD00312.png', '2018-01-26 09:05:15'),
(314, 'Rostinawati', 'SMP N 15 Kota Bogor', 'roatinawati19@gmail.com', '0853168442', 'Specless', 'Lanjukan', 'KJG00313.jpeg', 'KJGTTD00313.png', '2018-01-26 09:05:23'),
(315, 'Maya Puspita Dewi', 'Smp Plus Yaspera', 'maya_merdeka@yahoo.co.id', '085888913762', 'Good fasility here', 'Semoga ada kerjasama smk wikrama dgn smp plus yaspera', 'KJG00314.jpeg', 'KJGTTD00314.png', '2018-01-26 09:05:28'),
(316, 'Kornelius Suratman', 'SMP Kesatuan Bogor', 'kornelius232@gmail.com', '087770065333', 'Sekolah yg misinya luar biasa...arahnya jelas mau dibawa kemana anak didiknya. Smoga makin bnyak sekolah seperti ini di Indonesia.', 'Makin banyak kesempatan dan jlan untuk berbagi kemajuan pendidikan karakter maupun akademis dg sekolah lain khususnya di Bogor', 'KJG00315.jpeg', 'KJGTTD00315.png', '2018-01-26 09:05:59'),
(317, 'Iin Ristanti', 'SMP Taman Cahaya', 'iin.ristanti@gmail.com', '081311466695', 'Menginspirasi', 'Sudah bagus berkualitas serta bermanfaat', 'KJG00316.jpeg', 'KJGTTD00316.png', '2018-01-26 09:06:30'),
(318, 'Yuli Yuliantini', 'SMP NEGERI 2 BOGOR', 'yuliantini17@gmail.com', '081380239479', 'Menarik', 'Bagus memudahkan siswa untuk belajar dan paham IT', 'KJG00317.jpeg', 'KJGTTD00317.png', '2018-01-26 09:06:32'),
(319, 'Desinta Permatasari', 'Smp Yktb', 'permatasaridesinta03@gmail.com', '085876694504', 'Masya Allah luar biasa bagus', 'Terus tingkatkan kedisplinan dalam kebersihan n ontime solat', 'KJG00318.jpeg', 'KJGTTD00318.png', '2018-01-26 09:07:16'),
(320, 'Nina Asmanah', 'SMP YZA 2 BOGOR', 'asmanahn@yahoo.com', '082113617008', 'Menakjubkan', 'Kegiatannya cukup bermanfaat', 'KJG00319.jpeg', 'KJGTTD00319.png', '2018-01-26 09:07:23'),
(321, 'Tini Suhartini', 'SMP PGRI 7 Bogor', 'tini67bgr@gmail.com', '081293159275', 'Sangat bagus', 'Lebih berkualitas lagi', 'KJG00320.jpeg', 'KJGTTD00320.png', '2018-01-26 09:08:30'),
(322, 'Fahmida Isra', 'Smpn 17 Bogor', 'fahmida.isra@yahoo.co.id', '081310678423', 'Luar biasa', 'Pertahankan dan sukses selalu', 'KJG00321.jpeg', 'KJGTTD00321.png', '2018-01-26 09:09:44'),
(323, 'Suci Mardiyani', 'SMPIT AL BUNYAN', 'suci_bioa@yahoo.co.id', '089650755699', 'Masya Allah LUAR BIASA, sekolahnya nyaman, dan sambutannya hangat', 'Tetap menjadi sekolah yang inspiratif, unggul, dan teladan bagi sekolah lain', 'KJG00322.jpeg', 'KJGTTD00322.png', '2018-01-26 09:09:49'),
(324, 'Ermayeni', 'Smp Pgri 6 Bogor', 'ermayenispt@gmail.com', '08128044966', 'Smk wikrama luar biasa', 'Semoga tetap jaya', 'KJG00323.jpeg', 'KJGTTD00323.png', '2018-01-26 09:10:17'),
(325, 'Albert', 'SMP Tunas Harapan', 'albertkasman14@gmail.com', '085288342601', 'Keren', 'Pertahan dan tingkatkan', 'KJG00324.jpeg', 'KJGTTD00324.png', '2018-01-26 09:10:50'),
(326, 'Siskha Hermawati', 'Smp Bina Greha Bogor', 'siskhahermawati@ymail.com', '085718980741', 'Masya Allah kereennnn ðŸ˜ŠðŸ˜ŠðŸ˜ŠðŸ˜ŠðŸ˜Š', 'Semoga SMK Wikrama semakin maju dan terus mencetak generasi yg berahlak baik dan mencintai sesamanya', 'KJG00325.jpeg', 'KJGTTD00325.png', '2018-01-26 09:11:01'),
(327, 'Lili Pramuji', 'SMP MUHAMMADIYAH KOTA BOGOR', 'lilipramoedjie@yahoo.co.id', '089639121257', 'Menginspirasi', 'Tularkan', 'KJG00326.jpeg', 'KJGTTD00326.png', '2018-01-26 09:12:52'),
(328, 'Septiarty Wulan Sary', 'Smp Kurnia Bogor', 'septiarty74@gmail.com', '081905455945', 'Sangat mengagumkan', 'Baik', 'KJG00327.jpeg', 'KJGTTD00327.png', '2018-01-26 09:13:13'),
(329, 'Sri Sumarni', 'SMP MARDI YUANA BOGOR', 'sumarnisri74@gmail.com', '081310616510', 'Good', 'Terus berkarya untuk anak bangsa', 'KJG00328.jpeg', 'KJGTTD00328.png', '2018-01-26 09:13:14'),
(330, 'Dra,Syafarida Yuliarti,MSi', 'SMP PGRI 3 BOGOR', 'syafarida_yuliarti@yahoo.co.id', '081399350595', 'Mengagumkan cara pembentukan karakter di sekolah ini', 'Semoga bisa ada undangan lagi', 'KJG00329.jpeg', 'KJGTTD00329.png', '2018-01-26 09:13:33'),
(331, 'Fadliah Khoerunnisaa,S.pd', 'Smp It Al Yasmin', 'fadliahkhoerunnisa15@gmail.com', '0895375261617', 'Menyenangkan, seru, kagum', 'Selalu sukses, sellau terus berkembang', 'KJG00330.jpeg', 'KJGTTD00330.png', '2018-01-26 09:13:40'),
(332, 'WIDIYANTI', 'SMP IT ABN', 'widiyantispdkim@gmail.com', '08568884895', 'Mudah2an dapat terus berkembang', 'Inovasi yang sangat bermamfaat', 'KJG00331.jpeg', 'KJGTTD00331.png', '2018-01-26 09:14:06'),
(333, 'Nelly Simanjuntak', 'SMP BUDI MULIA', 'nellysimanjuntak0312@gmail.com', '08128574462', 'Menarik efektif', 'Uraian gmana.', 'KJG00332.jpeg', 'KJGTTD00332.png', '2018-01-26 09:14:29'),
(334, 'Endang Suryani', 'SMP PGRI 9 Bogor', 'endangsur2@gmail.com', '087770000057', 'Luar biasa', 'Semoga semakin berkualitas dan bisa ditularkan ke sekolah lain', 'KJG00333.jpeg', 'KJGTTD00333.png', '2018-01-26 09:14:29'),
(335, 'Wellda Auliya Fitriani,S.pd', 'Smp Kosgoro', 'elda.bey@gmail.com', '08562324711', 'Sangat senang bisa berkunjung ke wikrama', 'MAJU TERUS SMK WIKRAMA BOGOR', 'KJG00334.jpeg', 'KJGTTD00334.png', '2018-01-26 09:16:09'),
(336, 'Fadliah Khoerunnisaa,S.pd', 'Smp It Al Yasmin', 'fadliahkhoerunnisa15@gmail.com', '0895375261617', 'Menyenangkan, seru, kagum', 'Selalu sukses, sellau terus berkembang', 'KJG00335.jpeg', 'KJGTTD00335.png', '2018-01-26 09:16:36'),
(337, 'Indah Noviana', 'smp Bagus', 'inovianama@gmail.com', '08970230431', 'Sangat terkesan dengan keistimewaan SMK WIKRAMA', 'Sebaiknya lebih disesuaikan waktunya :-)', 'KJG00336.jpeg', 'KJGTTD00336.png', '2018-01-26 09:16:40'),
(338, 'Ratnawati', 'SMP PGRI 2 BOGOR', 'ratnawatiraihanah@gmail.com', '082297089848', 'Luar biasa', 'Menyenangkan', 'KJG00337.jpeg', 'KJGTTD00337.png', '2018-01-26 09:18:00'),
(339, 'Dwi Noval Azis', 'BKB Nurul Fikri', 'dwinovalazis@gmail.com', '081215006054', 'Bagus', 'Bagus', 'KJG00338.jpeg', 'KJGTTD00338.png', '2018-01-26 09:18:16'),
(340, 'Hendarsih', 'SMP PGRI 13 BOGOR', 'hendarsih7@gmail.com', '088219702086', 'Baik sekal', 'Tingkatkan terus', 'KJG00339.jpeg', 'KJGTTD00339.png', '2018-01-26 09:18:42'),
(341, 'Siti Roudotul Zannah', 'Smp Yapsida', 'sroudotul@gmail.com', '087873301440', 'Good...terkesan...', 'Semoga semakin maju...makin sholih semuanya', 'KJG00340.jpeg', 'KJGTTD00340.png', '2018-01-26 09:19:22'),
(342, 'Ristia Pradinta', 'SMP Al Ghazay', 'tiaristiatia@gmail.com', '08568042584', 'Keren, memudahkan siswa dan guru', 'Tingkatkm terus', 'KJG00341.jpeg', 'KJGTTD00341.png', '2018-01-26 09:19:36'),
(343, 'Elly Salsiah', 'Smp Darma Bakti', 'ellysalsiah7009@gmail.com', '08568889329', 'Sangat menyenangkan', 'Banyak sekali pengalaman yg didapatkan dari pelatihan ini', 'KJG00342.jpeg', 'KJGTTD00342.png', '2018-01-26 09:21:04'),
(344, 'Setio Irianto Poernomo', 'Smp Negeri 9 Bogor', 'setio _ irianto@ yahoo.com', '08164841837', 'Semangat', 'Tingkatkan pembentukan larakter siswa', 'KJG00343.jpeg', 'KJGTTD00343.png', '2018-01-26 09:21:28'),
(345, 'Siti Samsiah', 'Smp Yza 1', 's.samsiah.14@gmail.com', '081382350564', 'Sangat inovatif', 'Semoga kami berhasil', 'KJG00344.jpeg', 'KJGTTD00344.png', '2018-01-26 09:21:45'),
(346, 'Asep Sachrudin, M.Pd.', 'SMPN 10 Bogor', 'asepsachrudin@gmail.com', '081315389388', 'Kejar id sangat bermanfaat membantu pesert didik dan pendidik menjadi cerdas dan melek teknologi.', 'Kejar id semoga menjadi semakim dekat dgn warga sekolah.', 'KJG00345.jpeg', 'KJGTTD00345.png', '2018-01-26 09:22:07'),
(347, 'Emas Sri Suryati Rahayu', 'Smp Dasa Semests', 'emasjay@gmail.com', '081220124107', 'Luar biasa', 'Pertahankan', 'KJG00346.jpeg', 'KJGTTD00346.png', '2018-01-26 09:22:11'),
(348, 'Mukhsidin', 'Smp Alazhar Plus Bogor', 'mukhsidins@gmail.com', '081218288373', 'Ingin lbh belajar lg', 'Ispiring sekali', 'KJG00347.jpeg', 'KJGTTD00347.png', '2018-01-26 09:22:43'),
(349, 'Yusni Agung', 'Smp YP Pembangunan', 'yusniagung72gmail.com', '081804982828', 'Mudah2an bermanfaat', 'Mudah dalam pemakaian aplkasinya', 'KJG00348.jpeg', 'KJGTTD00348.png', '2018-01-26 09:23:38'),
(350, 'Siti Samsiah', 'Smp Harapan Taruna', 's.samsiah.14@gmail.com', '081382350564', 'Sangat inovatif', 'Berharap nilai anak kami lebih baik', 'KJG00349.jpeg', 'KJGTTD00349.png', '2018-01-26 09:24:11'),
(351, 'Martini Siti Maemunah', 'SMPIT Elmamur', 'martinist.maemunah@yahoo.co.id', '085883565704', 'Sekolah yang luar biasa dalam mengutamakan akhlak anak muridnya', 'Semakin dipertahankan membentuk karakter anak', 'KJG00350.jpeg', 'KJGTTD00350.png', '2018-01-26 09:25:39'),
(352, 'RIDWAN', 'SMP Rimba Teruna', 'readonebogor38@gmail.com', '08179932277', 'Selama saya berada di smk wikrama saya terkesan dengan ramah lingkungan dan warga sekolahnya semoga tetap konsiten dalam mengembangkan pendidikan di kota bogor', 'Berbagi ilmu untuk kemajuan anak2 bangsa', 'KJG00351.jpeg', 'KJGTTD00351.png', '2018-01-26 09:25:41'),
(353, 'SUMIATI', 'Smp Pgri 4', 'ibusumiatiIs@gmail.com', '081386378935', 'Pertemuan inisangat bermanfaat da sangat menynangkan', 'Agarpertemuandiadakan setiap thun', 'KJG00352.jpeg', 'KJGTTD00352.png', '2018-01-26 09:26:10'),
(354, 'Neneng Nurasiah', 'SMP Pesat', 'nengnurasiah75@gmail.com', '081317664299', 'Bagus, keren', 'Boleh dong berbagi ilmu yg ada diwikrama', 'KJG00353.jpeg', 'KJGTTD00353.png', '2018-01-26 09:26:18'),
(355, 'Wulansari', 'Smp Tamansiswa', 'wulansari10151984', '08567976758', 'Patut di jadikan contoh', 'Makin di kembangkan sekolah adiwiyata ny', 'KJG00354.jpeg', 'KJGTTD00354.png', '2018-01-26 09:26:26'),
(356, 'R,Yoyoh Mardiah,S.Pd', 'SMPN 4 Bogor', 'yoyohmardiah70@yahoo.com', '08561958855', 'LUAR BIASA,SANGAT PENGINSPIRASI', 'SMK WIKRAMA ...SEMOGA TAMBAH SUKSES', 'KJG00355.jpeg', 'KJGTTD00355.png', '2018-01-26 09:26:35'),
(357, 'Erik Imanudin', 'SMP BINA SEJAHTERA', 'greencommunitysmp@gmail.com', '089646735820', 'Sangat baik', 'Lebih baik lagi', 'KJG00356.jpeg', 'KJGTTD00356.png', '2018-01-26 09:27:26'),
(358, 'Nurul Aprianti', 'Smp Yp 17 Bogor', 'nurulaprianti08@gmail.com', '08988853119', 'Memuaskan', 'Sangat senang berkunjung ke wikrama terlebih mengenai kejar,id', 'KJG00357.jpeg', 'KJGTTD00357.png', '2018-01-26 09:28:11'),
(359, 'Maria Purnama Simamora', 'SMP Perguruan Advent Bogor', 'maria_purnama2003@yahoo.com', '081288801344', 'Keep up the good work to serving!!', 'So much proud of you all!!', 'KJG00358.jpeg', 'KJGTTD00358.png', '2018-01-26 09:28:23'),
(360, 'Suratman', 'Smp N 12 BOGOR', 'msurats97@gmail.com', '081288080729', 'Bagus banget dan pastinya sangat bermanfaat', 'Semoga kegiatan ini berlanjut', 'KJG00359.jpeg', 'KJGTTD00359.png', '2018-01-26 09:29:29'),
(361, 'Nana Mardalena', 'SMPN 14 Bogor', 'nanhanafi@gmail.com', '081284502960', 'Kejar.id menarik, mempermudah.', 'Semoga kejar.id bisa diterapkan di semua sekolah', 'KJG00360.jpeg', 'KJGTTD00360.png', '2018-01-26 09:29:56'),
(362, 'Muhammad Zein', 'Smp Insan Kamil', 'zein_stamp@yahoo.co.id', '085777901873', 'Mantap', 'Terus sukses', 'KJG00361.jpeg', 'KJGTTD00361.png', '2018-01-26 09:30:22'),
(363, 'Anne Oktasari Dewi', 'Smp Windian Nugraha', 'anneoktasari03@gmail.com', '085890057564', 'Banyak pengalaman yang bisa di aplikasikan di sekolah yg di ampuh', 'Lebih banyak lagi mengadakan pertemuan pertemuan yang melibatkan guru2 bogor ttg p3mbelajaran berbasis iti', 'KJG00362.jpeg', 'KJGTTD00362.png', '2018-01-26 09:31:08'),
(364, 'Erpina', 'Smp Dawatul Quran', 'erpina494@gmail.com', '085878692560', 'Sangat menyenangkan dan termotivasi', 'Sering melakukan kegiatan ini', 'KJG00363.jpeg', 'KJGTTD00363.png', '2018-01-26 09:31:37'),
(365, 'Fajriah Nursaadah,S.Pd', 'SMP PGRI 12', 'fajriahnursaadah.spd@gmail.com', '089636661106', 'Sekoah yg menginspirasi bagi saya mudah2n sekoah ksmi bisa menerapkan lmu yg di dapat dari smk wikrama', 'Keren lah', 'KJG00364.jpeg', 'KJGTTD00364.png', '2018-01-26 09:31:37'),
(366, 'Susilawati Marini', 'SMP YAPIS', 'susimarini73@gmail.com', '085780089055', 'Alhamdulillah...allah mempertemukan sy dgn wikrama', 'Smg SMK wikrama terus bantu kami terutama sy dari sklh swasta yg kecil pula dgn n', 'KJG00365.jpeg', 'KJGTTD00365.png', '2018-01-26 09:32:50'),
(367, 'Achmad Alim Asriadi', 'SMP Negeri 8 Bogor', 'aa_liem@ymail.com', '08129533541', 'Luar biasa', 'Lanjut terus', 'KJG00366.jpeg', 'KJGTTD00366.png', '2018-01-26 09:33:03'),
(368, 'Yosse Pratama', 'SMP ZAFIRAH', 'yossepratama123@gmail.com', '082134527331', 'Luarbiasa', 'Semoga selalu jaya', 'KJG00367.jpeg', 'KJGTTD00367.png', '2018-01-26 09:33:32'),
(369, 'HERBETA', 'Smp Islam Almustarih Bogor', 'herbeta.arizona@gmail.com', '085881603935', 'Smk wikrama the best', 'Ingin berbagi pengalaman dg smk wikrama', 'KJG00368.jpeg', 'KJGTTD00368.png', '2018-01-26 09:34:02'),
(370, 'Yeti Hidayati', 'SMP Negeri 1 Bogor', 'yetihidayati35@yahoo.com', '0812880439', 'Alhamdulillah bisa mendapatkan ilmu tentang aplikasi terbaru.', 'Semoga aplikasinya bisa terus bermanfaat, Aamiin..', 'KJG00369.jpeg', 'KJGTTD00369.png', '2018-01-26 09:35:00'),
(371, 'Ein Pahruyati', 'SMP Islam YTM 1 Bogor', 'eln_syafiq@yaho.com', '081315506892', 'Bersih', 'Membuat jurusan baru SURTA namanya yg bayak peminat tp di bogor hanya ada satu sekolah saja', 'KJG00370.jpeg', 'KJGTTD00370.png', '2018-01-26 09:35:28'),
(372, 'Sri Agustina', 'SMP Daar En Nisa', 'Independentgirl17.sa@gmail.com', '085693816891', 'Nice and good', 'Baik', 'KJG00371.jpeg', 'KJGTTD00371.png', '2018-01-26 09:35:34'),
(373, 'Mellisa Liestianti, M.Pd', 'SMPN 11 Bogor', 'mellisaliestianti@gmail.com', '083818268292', 'Membangun utk maju', 'Buktikan dgn prestasi', 'KJG00372.jpeg', 'KJGTTD00372.png', '2018-01-26 09:36:59'),
(374, 'Husnul Hayati', 'Smp N 13', 'hsnlhayati@gmail.com', '081311417319', 'Luar biasa', 'Pertemuan lanjutan', 'KJG00373.jpeg', 'KJGTTD00373.png', '2018-01-26 09:37:44'),
(375, 'Mohnwardana', 'Smp Kamandaka', 'mohwardan1809@gmail.con', '081310828680', 'Banyak informasi baru', 'Agar lbh ditingkstksn', 'KJG00374.jpeg', 'KJGTTD00374.png', '2018-01-26 09:38:39'),
(376, 'Yeni Yuliani', 'Smp Pui Kota Bogor', 'yeniyuliani1976@gmail.com', '081311168457', 'Sekolah wikrama bersih, ramah ok', 'Musola di perbesar', 'KJG00375.jpeg', 'KJGTTD00375.png', '2018-01-26 09:39:26'),
(377, 'Test', 'Test', 'tesrT', '08855', 'Yfsbeu', 'Test', 'KJG00376.jpeg', 'KJGTTD00376.png', '2018-01-29 04:46:28'),
(378, 'Nurul Khotimah', 'SMK Kesehatan BINA KARYA MEDIKA Ponorogo', 'nurulkhotimah.wch@gmail.com', '085755941358', 'Amazing dengan SMK Wikrama, semoga kami bisa mulai berubah untuk menjadi lebih baik, seperti SMK Wikrama', 'Semoga SMK Wikrama smakin berjaya', 'KJG00377.jpeg', 'KJGTTD00377.png', '2018-01-29 04:51:15'),
(379, 'Fahriza Eranita Sandiati', 'SMK Kesehatan BINA KARYA MEDIKA PONOROGO', 'fahrizaeranita@gmail.com', '087759665856', 'Sekolah yang sangat luar biasa, sangat membangun dan mendidik siswanya menjadi siap untuk dunia kerja', 'Sudah baik harap menjadi sekolah teladan dan potensial', 'KJG00378.jpeg', 'KJGTTD00378.png', '2018-01-29 04:57:04'),
(380, 'Pegi Pradika Mudayanti, S.Farm., Apt', 'SMK Kesehatan Bina Karya Medika Ponorogo', 'pradikafarma@gmail.com', '085784334757', 'Amazing sangat memberikm motivasi kpd sy utk bisa menerapkn ilmu dari sini', 'Pertahankan image sekolah yg sudah mendunia ttg pendidikn siswaberkarakter', 'KJG00379.jpeg', 'KJGTTD00379.png', '2018-01-29 05:01:38'),
(381, 'Amelia Eva T', 'SMK KESEHATAN BINA KARYA MEDIKA PONOROGO', 'evaevo93@gmail.com', '08819135992', 'Sekolah luar biasa', 'Semoga menjadi smk suritauladan buat sekolah lainya', 'KJG00380.jpeg', 'KJGTTD00380.png', '2018-01-29 05:06:18'),
(382, 'Rika Mei Saputri', 'Smk Kesehatan Bina Karya Medika Ponorogo', 'rikameisa@gmail.com', '085746060976', 'Smk wirakrama ini sangat luar biasa dalam mendidik kedisiplinan siswa seperti dalam memanajemen waktu', 'Semoga smk wirakrama ini semakin maju dan berprestasi', 'KJG00381.jpeg', 'KJGTTD00381.png', '2018-01-29 05:09:11'),
(383, 'Test', 'Test', 'test', '085228', 'Gegj8e', 'Inyge', 'KJG00382.jpeg', 'KJGTTD00382.png', '2018-01-29 05:11:06'),
(384, 'Pegi Pradika Mudayanti, S.Farm., Apt', 'SMK Kesehatan Bina Karya Medika Ponorogo', 'pradikafarma@gmail.com', '085784334757', 'Amazing sangat memberikm motivasi kpd sy utk bisa menerapkn ilmu dari sini', 'Pertahankan image sekolah yg sudah mendunia ttg pendidikn siswaberkarakter', 'KJG00383.jpeg', 'KJGTTD00383.png', '2018-01-29 05:13:50'),
(385, 'KATENO', 'SMK Kes. Bina Karya Medika Ponorogo', 'sayid.kateno@gmail.com', '08125981316', 'Semoga kami dapat mengimplementasikan manajemen SMK WIKRAMA', 'SMK WIKRAMA BOGOR LUAR BIASA HEBAT', 'KJG00384.jpeg', 'KJGTTD00384.png', '2018-01-29 05:16:48'),
(386, 'Nufi Farida', 'Smk Kesehatan Bkm Ponorogo', 'test', '08510055701331', 'Istimewa dan penuh dedikasi.  a', 'Test', 'KJG00385.jpeg', 'KJGTTD00385.png', '2018-01-29 05:17:14'),
(387, 'KATENO', 'SMK Kes. Bina Karya Medika Ponorogo', 'sayid.kateno@gmail.com', '08125981316', 'Semoga kami dapat mengimplementasikan manajemen SMK WIKRAMA', 'SMK WIKRAMA BOGOR LUAR BIASA HEBAT', 'KJG00386.jpeg', 'KJGTTD00386.png', '2018-01-29 05:19:37'),
(388, 'Mutiatul Zahroh', 'Smkkes Bina Karya Medica', 'tia_TBK28@YAHOO.COM', '085230230032', 'Sangat disiplin dalam penerapan basic learning dan dalam mencetak generasi', 'Maju terus mencetak generasi muda yg berkompetensi dan bermoral', 'KJG00387.jpeg', 'KJGTTD00387.png', '2018-01-29 05:21:36'),
(389, 'Jauharul Iman Asadullah', 'Yayasan Bina Karya Nusantara', 'binakaryanusantara02@yahoo.com', '081232019548', 'Smk yg disiplin dan tersistem', 'Tingkatkan prestasi', 'KJG00388.jpeg', 'KJGTTD00388.png', '2018-01-29 05:25:26'),
(390, 'Yuliana', 'Smk Kesehatan Bina Karya Medika ponorogo', 'test', '081359324566', 'Sangat berkesan dengan manajemen sekolah yang dijalankan', 'Saya berharap smk wikrama siap utk membantu sekolah kami berdasarkan ilmu dan pengalaman yang dimiliki', 'KJG00389.jpeg', 'KJGTTD00389.png', '2018-01-29 05:27:37'),
(391, 'Drs Imam Supandi Msi', 'Smk Mahardika', 'test', '081230039966', 'Baik dan profesional', 'Semoga wikrama maju terus', 'KJG00390.jpeg', 'KJGTTD00390.png', '2018-01-29 05:30:18'),
(392, 'Sukmawati', 'Smk SMTI Makassar', 'sukmawatim29@gmail.com', '081355789148', 'Saya sangat terkesan dgn sekolah ini, karena meskipun dgn lokasi yg minimalis namun pengembangan kompetensi siswa dan keterampilan siswa maksimalis artinya kualitas yg di hadilkan sangat memuaskan dan membanggakan', 'SMK wikrama ini merupakan sekolah yg berkarakter, maka predikat ini harus terus ditingkatkan dan dikembangkan. Semangat buat smk wikrama maju terus', 'KJG00391.jpeg', 'KJGTTD00391.png', '2018-02-02 04:56:50'),
(393, 'Kusumawati Wahyuningsih', 'SMK SMTI MAKASSAR', 'kusumawati.nuning@gmail.com', '082393358978', 'SMK WIKRAMA sangat menginspirasi.', 'Semoga SMK WIKRAMA di Makassar segera terealisasi', 'KJG00392.jpeg', 'KJGTTD00392.png', '2018-02-02 04:56:52'),
(394, 'Musiah', 'SMK SMTI Makassar', 'musiah76@yahoo.co.id', '081355612974', 'Excellent', 'Terus maju dan siap membantu sesama pendidik', 'KJG00393.jpeg', 'KJGTTD00393.png', '2018-02-02 04:58:39'),
(395, 'St Nadirah', 'Smk Smti Makassar', '.', '081524222734', 'Elayanan yang luar biasa siswanya yang lar bias', 'Uar biasa ternyata yang kami dengarjah lebih wow dansemoga kami bisa mengambil pelajaran banyakuntk keberhasilan sekolahkami amiin', 'KJG00394.jpeg', 'KJGTTD00394.png', '2018-02-02 05:00:21'),
(396, 'Fatmawati', 'Smk Smti Makassar', 'fatwamalik@gmail.com', '082193626218', 'Ini  sangat inspirasi buat saya senang bisa berkunjung  di sekolah ini sukses buat wikrama', 'Tetap di jaga  dan  di kembangkan apa yang telah di ciptakan dan  di dapat', 'KJG00395.jpeg', 'KJGTTD00395.png', '2018-02-02 05:03:50'),
(397, 'Idayani', 'Smk SMTI Makassar', 'idayanirakka@gmail.com', '087840325625', 'Ternyata kerja ikhlas bisa menghasilkan sdm yg luar biasa', 'Smk Wikrama Tetap konsisten dalam mengembangkan karakter', 'KJG00396.jpeg', 'KJGTTD00396.png', '2018-02-02 05:04:35'),
(398, 'Anita', 'SMK SMTI MAKASSAR', 'anitanugraha89@ymail.com', '08114206516', 'Sesuai dengan ekspektasi dan informasi yang saya terima tentang keunggulan smk wikrama', 'Semoga tetap menjadi sekolah yang menginspirasi', 'KJG00397.jpeg', 'KJGTTD00397.png', '2018-02-02 05:04:37'),
(399, 'Juliana Mansur', 'Tensys Corp', 'kangmasjm.2018@gmail.com', '085718783737', 'Sangat menakjubkan', 'Luar biasa', 'KJG00398.jpeg', 'KJGTTD00398.png', '2018-03-16 06:30:08'),
(400, 'Rudy', 'Kemendikbud', 'rudybenyamin@gmail.com', '0888888899', 'Sip', 'Sip', 'KJG00399.jpeg', 'KJGTTD00399.png', '2018-03-16 06:54:31'),
(401, 'Nurdin', 'Direktorat', 'nurdin@smkwikrama.sch.id', '087770340992', 'Mantap, TU ganti az', 'Teruslah berinovasi', 'KJG00400.jpeg', 'KJGTTD00400.png', '2018-03-16 07:02:27'),
(402, 'Jamodding S.pd', 'Direkrorat Pembinaan SMK', 'jamodding@yahoo.co.id', '08128576060', 'Manajemen, pempinan, guru2 dan staf kompak.', 'Program yang sdh dikembangkan dan di tingkatkan terus sharing sekolah', 'KJG00401.jpeg', 'KJGTTD00401.png', '2018-03-16 08:36:14'),
(403, 'Gita', 'Smpn 11 Bogor', 'gitashaliha2@gmail.com', '089603119792', 'Sangat senang', 'Semoga bisa masuk sini', 'KJG00402.jpeg', 'KJGTTD00402.png', '2018-03-23 03:59:33'),
(404, 'Reqyan Lazuardi', 'Smpn 11 Bogor', 'reqyan.1103', '085881169376', 'Sekolahnya adem', '-', 'KJG00403.jpeg', 'KJGTTD00403.png', '2018-03-23 04:05:41'),
(405, 'Zahrudin', 'SMPN 11 BOGOR', 'okezay69@gmail.com', '082221112169', 'Sangat bagus dan bermanfaat', 'Banyak share ilmu', 'KJG00404.jpeg', 'KJGTTD00404.png', '2018-03-23 04:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `ortu`
--

CREATE TABLE `ortu` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `ortu_dari` varchar(50) NOT NULL,
  `keperluan` text NOT NULL,
  `bertemu_dengan` varchar(50) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `ttd` varchar(50) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `instansi` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `pesan` text NOT NULL,
  `kesan` text NOT NULL,
  `foto` varchar(50) NOT NULL,
  `ttd` varchar(50) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `instansi` text NOT NULL,
  `keperluan` text NOT NULL,
  `foto` text NOT NULL,
  `ttd` varchar(20) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`id`, `nama`, `instansi`, `keperluan`, `foto`, `ttd`, `waktu`) VALUES
(1, 'Fefey', 'Wikrama', 'Ketemu pa jm', 'IMG00.jpeg', 'TTD00.png', '2018-01-17 02:34:20'),
(2, 'Affan', 'PT Have Fan', 'Kunjungan', 'IMG001.jpeg', 'TTD001.png', '2018-01-17 03:13:20'),
(3, 'Ferdi', 'Wokrama', 'Hahha', 'IMG002.jpeg', 'TTD002.png', '2018-01-17 03:55:24'),
(4, 'Hhs', 'Bbs', 'Bbe', 'IMG003.jpeg', 'TTD003.png', '2018-01-24 07:34:28'),
(5, 'Helda Ramadiah Fitri', 'Wikrama', 'Jenguk', 'IMG004.jpeg', 'TTD004.png', '2018-01-24 10:28:12'),
(6, 'Pepey', 'Haspi', 'N', 'IMG005.jpeg', 'TTD005.png', '2018-03-02 10:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `undangan`
--

CREATE TABLE `undangan` (
  `id` int(11) NOT NULL,
  `no_undangan` varchar(10) NOT NULL,
  `id_acara` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `instansi` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `ucapan` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `foto` varchar(50) NOT NULL,
  `ttd` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `undangan`
--

INSERT INTO `undangan` (`id`, `no_undangan`, `id_acara`, `nama`, `instansi`, `alamat`, `ucapan`, `waktu`, `foto`, `ttd`, `status`) VALUES
(1, 'U0001', 1, 'Cuytamvan', 'pt. boardan', 'lorem ipsu', 'Peyganz', '2018-01-24 09:45:48', 'UNDIMG001.jpeg', 'UNDTTD001.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` enum('l','p') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `nama`, `jk`) VALUES
('jm', '114d40adaaef6c426f99fd806e1eb45753cb1d33', 'Juliana Mansur', 'l'),
('rizkiw2901', '17bd6cf6a698af1b08866358c2285731743aa6f9', 'Muhammad rizki wahyudi', 'l');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acara`
--
ALTER TABLE `acara`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kunjungan`
--
ALTER TABLE `kunjungan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ortu`
--
ALTER TABLE `ortu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `undangan`
--
ALTER TABLE `undangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acara`
--
ALTER TABLE `acara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kunjungan`
--
ALTER TABLE `kunjungan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=406;
--
-- AUTO_INCREMENT for table `ortu`
--
ALTER TABLE `ortu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tamu`
--
ALTER TABLE `tamu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `undangan`
--
ALTER TABLE `undangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
