-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2025 at 06:50 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logistics_company`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(15) NOT NULL,
  `Date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `Username`, `Password`, `Date_created`) VALUES
(1, 'Francis', '1972', '2025-05-08 22:08:04'),
(2, 'francisnwankwo1972@gmail.com', '1972', '2025-05-08 22:09:42');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `Token` varchar(100) NOT NULL,
  `Tracking_no` varchar(20) NOT NULL,
  `R_fullname` varchar(80) NOT NULL,
  `R_email` varchar(100) NOT NULL,
  `Freight_class` varchar(50) NOT NULL,
  `Items` varchar(100) NOT NULL,
  `Weight` varchar(20) NOT NULL,
  `Pickup_location` varchar(100) NOT NULL,
  `Dropoff_location` varchar(100) NOT NULL,
  `length` varchar(20) NOT NULL,
  `Delivery_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` varchar(50) NOT NULL,
  `Date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `Token`, `Tracking_no`, `R_fullname`, `R_email`, `Freight_class`, `Items`, `Weight`, `Pickup_location`, `Dropoff_location`, `length`, `Delivery_date`, `Status`, `Date_created`) VALUES
(1, '82822882772772', '001122', 'Francis Nwankwo', 'francisnwankwo37@gmail.com', 'Air', '', '200kg', 'lagos', 'Abuja', '500', '2025-05-08 23:10:03', 'On Transit', '2025-05-08 23:10:03'),
(2, '82822882772772', '001122', 'Francis Nwankwo', 'francisnwankwo37@gmail.com', 'Air', '', '200kg', 'lagos', 'Abuja', '500', '2025-05-08 23:10:32', 'On Transit', '2025-05-08 23:10:32'),
(3, '1e1b7a9dd6e61dc44cb362317958c698', '2018224017', 'Ebube Nwankwo', 'Ebubewankwo37@gmail.com', 'sea', 'one big bag, suitcase', '10000kg', 'Rivers state', 'Edo state', '100cm', '2025-05-20 00:00:00', 'processing', '2025-05-09 03:04:30'),
(4, '', '2019224026', 'Chinenye Osefo rita', 'oseforita@gmail.com', 'land', '2 suitcases', '800kg', 'Kwara', 'Abuja', '', '2025-05-30 00:00:00', 'on transit', '2025-05-09 03:14:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
