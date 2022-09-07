-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2022 at 01:18 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sasaknya`
--

-- --------------------------------------------------------

--
-- Table structure for table `harga`
--

CREATE TABLE `harga` (
  `id` int(11) NOT NULL,
  `paket` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `detail` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `harga`
--

INSERT INTO `harga` (`id`, `paket`, `harga`, `detail`) VALUES
(1, 'Standart', 'Rp 1 Juta', 'Free Domain.com: .com/.my.id/web.id <br>\r\nSSL/HTTPS: Free <br>\r\nHosting: Free <br>\r\nBandwidth: 40GB <br>\r\nDesain Responsive: Yes, Standart<br>\r\nLogo: Free<br>\r\nFitur Chat WhatsApp: Free<br>\r\nIntegrasi Sosmed: Free<br>\r\nHalaman: 5-7<br>\r\nEmail: 7 <br>\r\nSEO: basic <br>\r\nSupport: Free <br>\r\nGaransi: 1 Tahun'),
(2, 'Medium', 'Rp 2 Juta', 'Free Domain.com: .com/.sch.id/.org <br>\r\nSSL/HTTPS: Free<br>\r\nHosting: Free <br>\r\nBandwidth: Unmetered <br> \r\nDesain: Semi Custom <br>\r\nLogo: Free <br>\r\nFitur Chat WhatsApp: Free <br> \r\nIntegrasi Sosmed: Free <br>\r\nHalaman: 9-10 <br>\r\nEmail: 15 <br>\r\nSEO: basic <br>\r\nSupport: Free <br>\r\nGaransi: 1 Tahun<br>'),
(3, 'Custom Pro', 'Rp 4 Juta', 'Free Domain.com: .com/.net/etc <br>\r\nSSL/HTTPS: Free <br>\r\nHosting: Unlimited <br>\r\nBandwidth: Unmetered<br> \r\nDesain: Full Custom <br>\r\nLogo: Free <br>\r\nFitur Chat WhatsApp: Free <br>\r\nIntegrasi Sosmed: Free <br>\r\nHalaman: 9-10 <br>\r\nEmail: Unlimited <br>\r\nSEO: basic <br>\r\nSupport: Free <br>\r\nGaransi: 1 Tahun<br>'),
(10, 'PROMO', 'Rp 500rb', 'Free Domain.com: .com/.my.id/web.id <br>\r\nSSL/HTTPS: Free <br>\r\nHosting: 100MB <br>\r\nBandwidth: 5-10GB <br>\r\nDesain: Yes,No Custom <br>\r\nLogo: Free <br>\r\nFitur Chat WhatsApp: Free<br> \r\nIntegrasi Sosmed: Free <br>\r\nHalaman: 1 <br>\r\nEmail: 2 <br>\r\nSEO: basic <br>\r\nSupport: Free <br>\r\nGaransi: 1 Tahun<br>');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `caption` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `caption`) VALUES
(6, 'Pengen punya website tanpa ribet? Bisa banget'),
(12, 'Eit dan masih ada lagi, PAKET web kami mulai dari harga 500rb an aja loh');

-- --------------------------------------------------------

--
-- Table structure for table `keunggulan`
--

CREATE TABLE `keunggulan` (
  `id` int(11) NOT NULL,
  `judul` text NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keunggulan`
--

INSERT INTO `keunggulan` (`id`, `judul`, `deskripsi`, `foto`) VALUES
(2, 'Terjangkau', 'Kami menawarkan beragam paket pembuatan website yang relatif terjangkau baik bagi perorangan, UMKM ataupun perusahaan', 'e4de3bd299b1c05af1b63941ca9ef535-add3b2fa525de54c068bee348b25ac2e.png'),
(9, 'Full Support', 'TIm support kami selalu online 24 jam siap membantu jika ada kendala di website anda. Support online 24 Jam via Whatsapp', 'ca5e6123f67e10cb12e45a2dbf6c0f82-0a0449e3249e5ffc198d2042bc037adf.png'),
(10, 'Bergaransi', 'Tidak sekedar membuat website tapi kami selalu memastikan website anda bekerja dengan maksimal dengan Garansi maintenance full 1 tahun', 'ec43d35b841de2c1a4d105128aea7c0c-cbe468eaf6787b37d2099699c2eed9c0.png'),
(11, 'Lah emang apa BEDANYA sama yang lain?', 'Karena kami punya beberapa hal menarik tentunya', '75c4dc9d8b035127f24f88e0c16d2661-af003d8e12caf95a7891b11db19b220d.png');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id` int(11) NOT NULL,
  `link` varchar(300) NOT NULL,
  `judul` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id`, `link`, `judul`) VALUES
(13, '6285327555546', 'Floating Wa'),
(14, '6285327555546', 'Standar'),
(15, '6285327555546', 'Medium'),
(16, '6285327555546', 'Custom'),
(17, '6285327555546', 'Promo'),
(21, 'https://www.facebook.com/jogjamediaweb', 'facebook'),
(22, 'https://www.instagram.com/jogjamediaweb/', 'ig'),
(23, 'https://twitter.com/JogjaMediaWeb', 'twitt'),
(24, 'https://g.page/jogjamediaweb?share', '  Jl. Sengon No.178 AA, Gowok, Caturtunggal, Depok, Sleman, DIY 5528'),
(25, 'order@jasabuatweb.id', 'mail');

-- --------------------------------------------------------

--
-- Table structure for table `portofolio`
--

CREATE TABLE `portofolio` (
  `id` int(11) NOT NULL,
  `foto` varchar(400) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portofolio`
--

INSERT INTO `portofolio` (`id`, `foto`, `link`) VALUES
(23, '5f737eb119fb3425c62b2152d915c00b-kpuweb.PNG', 'https://kab-sambas.kpu.go.id/'),
(24, 'b57bb87843474ffcd9e4575a6b0e6bf4-baznasweb.PNG', 'https://diy.baznas.go.id/home'),
(25, 'a4a3e2b8ce13ce51ff056397b621a5f0-perhutaniweb.PNG', 'https://www.puslitbangperhutani.com/'),
(26, '832bb11e617db9a78e4af1cb6e14abd6-motorweb.PNG', 'https://boxmotormurah.com/home'),
(27, 'a8b54d0183cbfa453211f955a895c577-cateringwebb.PNG', 'https://sasikiranafoodkitchen.com/catering-karanganyar'),
(28, '73fd91e6d7099a005961ad52c517cc72-interiorweb.PNG', 'https://www.interiormurahjogja.com/home'),
(29, 'a213d56efab12352f11f9fae05b281d0-travelweb.PNG', 'https://www.alvarotrans.com/home');

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `id` int(11) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`id`, `foto`) VALUES
(4, '40cb71eb73313422b6299698f944b68e-f614c7e290e648a57e4176f177876dba.png'),
(6, '622e2cd131891e9ee4b0c1b5d610ccbc-d76688a0e8098ea77753a9534da935aa.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `harga`
--
ALTER TABLE `harga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keunggulan`
--
ALTER TABLE `keunggulan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portofolio`
--
ALTER TABLE `portofolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `harga`
--
ALTER TABLE `harga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `keunggulan`
--
ALTER TABLE `keunggulan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `portofolio`
--
ALTER TABLE `portofolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
