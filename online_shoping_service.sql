-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2019 at 09:36 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_shoping_service`
--

-- --------------------------------------------------------

--
-- Table structure for table `cartdetails`
--

CREATE TABLE `cartdetails` (
  `CartId` int(11) NOT NULL,
  `CartUserId` int(11) NOT NULL,
  `SelectedProductListId` int(11) NOT NULL,
  `TotalPrice` double NOT NULL,
  `PaymentMethod` varchar(30) NOT NULL,
  `PaymentId` int(11) NOT NULL,
  `DateOfPurchase` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `PId` int(11) NOT NULL,
  `Product_Name` varchar(50) NOT NULL,
  `ProductType` varchar(30) NOT NULL,
  `ProductGender` varchar(30) NOT NULL,
  `ProductCatagory` varchar(30) NOT NULL,
  `ProductPrice` double NOT NULL,
  `AvailableSize` varchar(30) NOT NULL,
  `AvailableColor` varchar(30) NOT NULL,
  `ProductDescription` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `selectedproductlist`
--

CREATE TABLE `selectedproductlist` (
  `ListId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `ProductQuantity` int(11) NOT NULL,
  `ProductPrice` double NOT NULL,
  `TotalQuantityPrice` double NOT NULL,
  `TotalPrice` double NOT NULL,
  `ProductSize` varchar(30) NOT NULL,
  `ProductColor` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `PhoneNumber` varchar(20) NOT NULL,
  `Mailaddress` varchar(40) NOT NULL,
  `UserType` varchar(30) NOT NULL,
  `Picture` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `UserName`, `Password`, `PhoneNumber`, `Mailaddress`, `UserType`, `Picture`) VALUES
(1, 'Ornob', '1234', '01988158021', 'glab.ornob96@gmail.com', 'Admin', ''),
(2, 'Anik', '1234', '01534340280', 'glab.ornob96@gmail.com', 'Coustomer', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cartdetails`
--
ALTER TABLE `cartdetails`
  ADD PRIMARY KEY (`CartId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`PId`);

--
-- Indexes for table `selectedproductlist`
--
ALTER TABLE `selectedproductlist`
  ADD PRIMARY KEY (`ListId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cartdetails`
--
ALTER TABLE `cartdetails`
  MODIFY `CartId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `PId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `selectedproductlist`
--
ALTER TABLE `selectedproductlist`
  MODIFY `ListId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
