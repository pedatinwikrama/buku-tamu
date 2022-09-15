-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 24, 2018 at 09:02 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
  `acara` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acara`
--

INSERT INTO `acara` (`id`, `acara`) VALUES
(1, 'Gebyar'),
(2, 'Buta');

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
(22, 'Prpey', 'Google Inc.', 'ferdihaspin@gmail.com', '081283800718', 'Mantaf', 'Keren nih', 'KJG0021.jpeg', 'KJGTTD0021.png', '2018-01-18 14:12:28'),
(23, 'S', 'S', 's', '5', 'S', 'S', 'KJG0022.jpeg', 'KJGTTD0022.png', '2018-01-18 14:12:59');

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

--
-- Dumping data for table `ortu`
--

INSERT INTO `ortu` (`id`, `nama`, `ortu_dari`, `keperluan`, `bertemu_dengan`, `no_hp`, `foto`, `ttd`, `waktu`) VALUES
(1, 'Ferdi', 'Pepey', 'bertemu', 'Guru', '081283800718', 'ORT00.jpeg', 'ORTTTD00.png', '2018-01-18 13:53:01'),
(2, '', '', '', '', '', 'ORT001.jpeg', 'ORTTTD001.png', '2018-01-24 05:00:38'),
(3, '', '', '', '', '', 'ORT002.jpeg', 'ORTTTD002.png', '2018-01-24 05:04:23'),
(4, '', '', '', '', '', 'ORT003.jpeg', 'ORTTTD003.png', '2018-01-24 05:06:22');

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
(3, 'Ferdi', 'Wokrama', 'Hahha', 'IMG002.jpeg', 'TTD002.png', '2018-01-17 03:55:24');

-- --------------------------------------------------------

--
-- Table structure for table `undangan`
--

CREATE TABLE `undangan` (
  `id` int(11) NOT NULL,
  `no_undangan` varchar(100) NOT NULL,
  `id_acara` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `instansi` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `ucapan` text NOT NULL,
  `waktu` date NOT NULL,
  `foto` text NOT NULL,
  `ttd` text NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `undangan`
--

INSERT INTO `undangan` (`id`, `no_undangan`, `id_acara`, `nama`, `instansi`, `alamat`, `ucapan`, `waktu`, `foto`, `ttd`, `status`) VALUES
(1, 'U001', 1, 'Ferdi', 'Wikrama', 'Jl. Raya Wangun', '', '0000-00-00', '', '', 1),
(2, 'U002', 1, 'Pepey', 'Wikrama', 'Jl. Raya Wangun', 'Selamat yahh', '2018-01-24', 'UNDIMG002.jpeg', 'UNDIMG002.jpeg', 1),
(3, 'U003', 1, 'Ganz', 'Wikrama', 'Jl. raya wangun', '', '0000-00-00', '', '', 1),
(4, 'U004', 1, 'Haspi', 'Wikrama', 'Bogor', 'Selamat yah', '2018-01-24', 'UNDIMG004.jpeg', 'UNDIMG004.jpeg', 1),
(5, 'U005', 1, 'Ganz', 'Wikrama', 'Jl. raya wangun', 'Selamat yah', '2018-01-24', 'UNDIMG005.jpeg', 'UNDTTD005.png', 1),
(6, 'U006', 1, 'Haspi', 'Wikrama', 'Bogor', 'Selamat kawin ya..', '2018-01-24', 'UNDIMG006.jpeg', 'UNDTTD006.png', 1),
(7, 'U001', 2, 'Ganz', 'Wikrama', 'Jl. raya wangun', '', '0000-00-00', '', '', 0),
(8, 'U002', 2, 'Haspi', 'Wikrama', 'Bogor', '', '0000-00-00', '', '', 0),
(9, 'U003', 2, 'Ganz', 'Wikrama', 'Jl. raya wangun', '', '0000-00-00', '', '', 0),
(10, 'U004', 2, 'Haspi', 'Wikrama', 'Bogor', '', '0000-00-00', '', '', 0),
(11, 'U005', 2, 'Ganz', 'Wikrama', 'Jl. raya wangun', '', '0000-00-00', '', '', 0),
(12, 'U006', 2, 'Haspi', 'Wikrama', 'Bogor', '', '0000-00-00', '', '', 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `ortu`
--
ALTER TABLE `ortu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tamu`
--
ALTER TABLE `tamu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `undangan`
--
ALTER TABLE `undangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
