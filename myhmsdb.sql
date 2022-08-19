-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2020 at 02:34 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4
CREATE DATABASE myhmsdb;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'pdt2021');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(4, 1, 'Fandhy', 'Putra', 'Laki-laki', 'fandhyputra@gmail.com', '0821356732', 'Yami', 550, '2021-02-14', '10:00:00', 1, 0),
(4, 2, 'Fandhy', 'Putra', 'Laki-laki', 'fandhyputra@gmail.com', '0821356732', 'Fathir', 700, '2021-02-28', '10:00:00', 0, 1),
(4, 3, 'Fandhy', 'Putra', 'Laki-laki', 'fandhyputra@gmail.com', '0821356732', 'Zata', 1000, '2021-02-19', '03:00:00', 0, 1),
(11, 4, 'Yuki', 'Kato', 'Perempuan', 'yukikato@gmail.com', '0813465712', 'Valhein', 500, '2021-11-29', '20:00:00', 1, 1),
(4, 5, 'Fandhy', 'Putra', 'Laki-laki', 'fandhyputra@gmail.com', '0821356732', 'Fathir', 700, '2021-02-28', '12:00:00', 1, 1),
(4, 6, 'Fandhy', 'Putra', 'Laki-laki', 'fandhyputra@gmail.com', '0821356732', 'Yami', 550, '2021-02-26', '15:00:00', 0, 1),
(2, 8, 'Anya', 'Meidina', 'Perempuan', 'anyameidina@gmail.com', '0819451172', 'Yami', 550, '2021-03-21', '10:00:00', 1, 1),
(5, 9, 'Asta', 'Clover', 'Laki-laki', 'astaclover@gmail.com', '0813652290', 'Yami', 550, '2021-03-19', '20:00:00', 1, 0),
(4, 10, 'Fandhy', 'Putra', 'Laki-laki', 'fandhyputra@gmail.com', '0821356732', 'Yami', 550, '2021-08-15', '14:00:00', 1, 0),
(4, 11, 'Fandhy', 'Putra', 'Laki-laki', 'fandhyputra@gmail.com', '0821356732', 'Fathir', 700, '2021-03-27', '15:00:00', 1, 1),
(9, 12, 'Christiano', 'Messi', 'Laki-laki', 'messi@gmail.com', '0896251223', 'Zill', 800, '2021-03-26', '12:00:00', 1, 1),
(9, 13, 'Christiano', 'Messi', 'Laki-laki', 'messi@gmail.com', '0896251223', 'Elsu', 450, '2021-03-26', '14:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Dilan', 'dilan@gmail.com', '0812346522', 'Kerja bagus!'),
('Paine', 'paine@gmail.com', '0819342512', 'Informasi yang menarik!'),
('Lauriel', 'lauriel@gmail.com', '0878872198', 'Bagaimana cara konsultasi?'),
('Arum', 'arum@gmail.com', '0878234256', 'Situs web yang menarik'),
('Milea', 'milea@gmail.com', '0821873564', 'Layanan rumah sakit bintang 5!'),
('Zanis', 'zanis@gmail.com', '0831986534', 'Pelayanan ramah'),
('Iggy', 'iggy@gmail.com', '0821764532', 'Rumah sakit yang nyaman dan tentram'),
('Keera', 'keera@gmail.com', '0896728912', 'Lingkungan rumah sakit ramah'),
('Eva', 'eva@gmail.com', '0812765421', 'Cara konsultasi dengan dokter spesialis?');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('Valhein', 'valhein666', 'valhein@gmail.com', 'Umum', 500),
('Krixi', 'krixi666', 'krixi@gmail.com', 'Ahli Jantung', 600),
('Fathir', 'fathir666', 'fathir@gmail.com', 'Umum', 700),
('Yami', 'yami666', 'yami@gmail.com', 'Dokter Anak', 550),
('Zill', 'zill666', 'zill@gmail.com', 'Dokter Anak', 800),
('Zata', 'zata666', 'zata@gmail.com', 'Ahli Jantung', 1000),
('Zephys', 'zephys666', 'zephys@gmail.com', 'Ahli Syaraf', 1500),
('Elsu', 'elsu666', 'elsu@gmail.com', 'Dokter Anak', 450);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(1, 'Uchiha', 'Sasuke', 'Laki-laki', 'sasuke@gmail.com', '0896724587', 'sasuke666', 'sasuke666'),
(2, 'Anya', 'Meidina', 'Perempuan', 'anyameidina@gmail.com', '0819451172', 'anya666', 'anya666'),
(3, 'Uzumaki', 'Naruto', 'Male', 'naruto@gmail.com', '0821664876', 'naruto666', 'naruto666'),
(4, 'Fandhy', 'Putra', 'Laki-laki', 'fandhyputra@gmail.com', '0821356732', 'fandhy666', 'fandhy666'),
(5, 'Asta', 'Clover', 'Laki-laki', 'astaclover@gmail.com', '0813652290', 'asta666', 'asta666'),
(6, 'Shikamaru', 'Nara', 'Laki-laki', 'shikamaru@gmail.com', '0831468765', 'shikamaru666', 'shikamaru666'),
(7, 'Haruno', 'Sakura', 'Perempuan', 'sakura@gmail.com', '0821875409', 'sakura666', 'sakura666'),
(8, 'Eren', 'Fritz', 'Laki-laki', 'eren@gmail.com', '0812118790', 'eren666', 'eren666'),
(9, 'Christiano', 'Messi', 'Laki-laki', 'messi@gmail.com', '0896251223', 'messi666', 'messi666'),
(10, 'Levi', 'Ackerman', 'Laki-laki', 'levi@gmail.com', '0878654678', 'levi666', 'levi666'),
(11, 'Yuki', 'Kato', 'Perempuan', 'yukikato@gmail.com', '0813465712', 'yuki666', 'yuki666');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Fathir', 4, 11, 'Fandhy', 'Putra', '2021-03-27', '15:00:00', 'Batuk Kering', 'Tidak ada', 'Minum sirup obat batuk 2x sehari'),
('Yami', 2, 8, 'Anya', 'Meidina', '2021-03-21', '10:00:00', 'Demam Tinggi', 'Tidak ada', 'Minum parasetamol 3x sehari dan istirahat yang cukup'),
('Zill', 9, 12, 'Christiano', 'Messi', '2021-03-26', '12:00:00', 'Demam Tinggi', 'Tidak ada', 'Minum parasetamol 3x sehari dan istirahat yang cukup'),
('Elsu', 9, 13, 'Christiano', 'Messi', '2021-03-26', '14:00:00', 'Batuk Berkepanjangan', 'Kulit kering', 'Perbanyak minum air dan makan buah-buahan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
