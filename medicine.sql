-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2018 at 02:46 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `medicine`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `Username` varchar(30) NOT NULL DEFAULT '',
  `Name` varchar(30) DEFAULT NULL,
  `Gender` varchar(30) DEFAULT NULL,
  `user` varchar(30) DEFAULT NULL,
  `Password` varchar(13) DEFAULT NULL,
  `Sec_Q` varchar(130) DEFAULT NULL,
  `Answer` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Username`, `Name`, `Gender`, `user`, `Password`, `Sec_Q`, `Answer`) VALUES
('Benson', 'Mavuti', '0', 'Admin', 'mavuti1994', 'What is your nickname?', 'magan'),
('Catherine', 'Dorcas', '0', 'Manager', '1234', 'What is your nick name?', 'Cate'),
('Cephas', 'Mwamuti', '0', 'Admin', '54321', 'What is your nick name?', 'Shades'),
('Joseph', 'Karanja', '0', 'Manager', '76543', 'What is your nick name?', 'joe'),
('Kidato', 'Musa', '0', 'Manager', '12345', 'What is your nick name?', 'Harmonize'),
('mum', 'musee', 'Male', 'manager', '8765', 'What is your nick name?', 'dan'),
('Mutuku', 'mavuti', '0', 'manager', 'ben123', 'What is your nick name?', 'magan'),
('Qeen', 'Elizabeth', '0', 'Pharmacist', '7654', 'What is your mother Tongue?', 'English'),
('Rahid', 'Abdul', '0', 'Pharmacist', '1234', 'What is your nick name?', 'chidi'),
('Rashid', 'Omar', '0', 'Manager', '2345', 'What is your nick name?', 'Harmonize'),
('Wambua', 'Nyamu', '0', 'Manager', '54321', 'What is your nick name?', 'mwisyo');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `Company_ID` int(20) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Business_Name` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `Type_of_drugs` varchar(150) DEFAULT NULL,
  `Nature_of_drugs` varchar(150) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=840 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`Company_ID`, `Name`, `Business_Name`, `Address`, `Location`, `Type_of_drugs`, `Nature_of_drugs`) VALUES
(63, 'Andela', 'Softwares', '349 Nairobi', 'River road', 'Curative', 'Tablet'),
(91, 'Babakp', 'babuu', '767 Nairobi	', 'Ruaraka Street', 'Arvs', 'Tablet'),
(208, 'KPA', 'Ports', 'Mombasa 234', 'Mishomoroni', 'Preventive', 'Gas'),
(719, 'Awale', 'brothers', '253 Kitui', 'Nairobi', 'Antibiotics', 'Gas'),
(839, 'Paradox', 'Moms', '343 Mombasa', 'Changamwe', 'Antibiotics', 'Tablet');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `ProductCode` int(10) NOT NULL,
  `ProductName` varchar(150) DEFAULT NULL,
  `ProductStatus` bit(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `return`
--

CREATE TABLE IF NOT EXISTS `return` (
  `Company_ID` int(10) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Business_Name` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `Type_of_drugs` varchar(50) DEFAULT NULL,
  `Nature_of_drugs` varchar(50) DEFAULT NULL,
  `Stock_ID` int(10) DEFAULT NULL,
  `CName` varchar(50) DEFAULT NULL,
  `Packages` int(10) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `Unit Price` varchar(50) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `DOI` varchar(50) DEFAULT NULL,
  `DOR` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return`
--

INSERT INTO `return` (`Company_ID`, `Name`, `Business_Name`, `Address`, `Location`, `Type_of_drugs`, `Nature_of_drugs`, `Stock_ID`, `CName`, `Packages`, `Status`, `Unit Price`, `quantity`, `DOI`, `DOR`) VALUES
(63, 'Andela', 'Softwares', '349 Nairobi', 'River road', 'Curative', 'Tablet', 707, 'Antibiotics', 5, 'Good', '78Ksh', 45, '5/8/18', '5/8/18'),
(91, 'Babakp', 'babuu', '767 Nairobi	', 'Ruaraka Street', 'Arvs', 'Tablet', 287, 'Antibiotics', 6, 'Good', '400Ksh', 34, '5/8/18', '5/8/18'),
(208, 'KPA', 'Ports', 'Mombasa 234', 'Mishomoroni', 'Preventive', 'Gas', 625, 'Preventive', 6, 'Good', '10000Ksh', 87, '5/8/18', '5/8/18'),
(719, 'Awale', 'brothers', '253 Kitui', 'Nairobi', 'Antibiotics', 'Gas', 538, 'kll', 4, 'availably', '56ksh', 67, '5/8/18', '5/8/18');

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

CREATE TABLE IF NOT EXISTS `sell` (
  `Stock_ID` int(11) NOT NULL DEFAULT '0',
  `Category` varchar(50) DEFAULT NULL,
  `Packages` int(10) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `Unit Price` varchar(50) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `manufactury_date` varchar(30) DEFAULT NULL,
  `expiry_date` varchar(30) DEFAULT NULL,
  `Company_Id` int(10) DEFAULT NULL,
  `CName` varchar(50) DEFAULT NULL,
  `BName` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `Type_of_drugs` varchar(50) DEFAULT NULL,
  `Nature_of_drugs` varchar(50) DEFAULT NULL,
  `DateOfIssue` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sell`
--

INSERT INTO `sell` (`Stock_ID`, `Category`, `Packages`, `Status`, `Unit Price`, `quantity`, `manufactury_date`, `expiry_date`, `Company_Id`, `CName`, `BName`, `Address`, `Location`, `Type_of_drugs`, `Nature_of_drugs`, `DateOfIssue`) VALUES
(204, 'rrr', 1, 'rtt', '98Ksh', 98, '5/9/18', '5/10/22', 63, 'Andela', 'Softwares', '349 Nairobi', 'River road', 'Curative', 'Tablet', '5/9/18'),
(237, 'Good', 5, 'Good', '67Ksh', 98, '5/4/16', '5/14/20', 91, 'Babakp', 'babuu', '767 Nairobi	', 'Ruaraka Street', 'Arvs', 'Tablet', '5/9/18'),
(276, 'gfhgd', 1, 'uiy', '68jj', 8887, '5/9/18', '5/26/22', 208, 'KPA', 'Ports', 'Mombasa 234', 'Mishomoroni', 'Preventive', 'Gas', '4/10/19'),
(358, 'gfg', 1, 'fgfgf', '67yfg', 655, '5/9/18', '5/6/22', 63, 'Andela', 'Softwares', '349 Nairobi', 'River road', 'Curative', 'Tablet', '5/9/18'),
(426, 'dfgfdg', 1, 'gfgf', '67uj', 67, '5/9/18', '5/25/22', 91, 'Babakp', 'babuu', '767 Nairobi	', 'Ruaraka Street', 'Arvs', 'Tablet', '5/9/18');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `Product_ID` int(10) NOT NULL,
  `Category` varchar(150) DEFAULT NULL,
  `Packages` int(10) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `unit_price` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `man_date` varchar(50) DEFAULT NULL,
  `exp_date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`Product_ID`, `Category`, `Packages`, `Status`, `unit_price`, `quantity`, `man_date`, `exp_date`) VALUES
(437, 'yuiu', 1, 'yuyu', '78kjk', '90', '5/9/18', '5/28/25'),
(800, 'ggfg', 1, 'gfgfg', '56ksh', '45', '5/9/18', '5/25/23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`Company_ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductCode`);

--
-- Indexes for table `return`
--
ALTER TABLE `return`
  ADD PRIMARY KEY (`Company_ID`);

--
-- Indexes for table `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`Stock_ID`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`Product_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `Company_ID` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=840;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
