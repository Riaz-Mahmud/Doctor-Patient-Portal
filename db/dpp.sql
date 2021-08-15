-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2020 at 07:25 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dpp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(15) NOT NULL,
  `a_name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `a_name`, `a_pass`) VALUES
(9, 'abc', '$2y$10$3TMplmb/OZIqeBd.uJwxgOp4uJ1D0htvH8gsURZ.y0Q4aarGFl9hu'),
(10, 'zxy', '$2y$10$2zqPEg.RQ/ueEyDK8jhDPuBEnpp910Gcn35c/zXdOb6vsbbueMMia'),
(11, 'qaz', '$2y$10$1NiIYhM2nrqN7m2iXQqzauA/zZPDYeDlQuQyvVYvKS.IOnziRK6Ey');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `app_id` int(15) NOT NULL,
  `d_id` int(50) NOT NULL,
  `d_name` varchar(100) COLLATE ascii_bin NOT NULL,
  `app_time` varchar(100) COLLATE ascii_bin NOT NULL,
  `app_hospital` varchar(255) COLLATE ascii_bin NOT NULL,
  `p_name` varchar(255) COLLATE ascii_bin NOT NULL,
  `p_bg` varchar(50) COLLATE ascii_bin NOT NULL,
  `p_phone` varchar(255) COLLATE ascii_bin NOT NULL,
  `app_date` varchar(255) COLLATE ascii_bin NOT NULL,
  `p_problem` varchar(255) COLLATE ascii_bin NOT NULL,
  `isTaken` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`app_id`, `d_id`, `d_name`, `app_time`, `app_hospital`, `p_name`, `p_bg`, `p_phone`, `app_date`, `p_problem`, `isTaken`) VALUES
(40, 6, 'Salman Prottoy', '02:20', '', '', '', '', '2020-09-23', '', 0),
(41, 6, 'Salman Prottoy', '02:40', '', 'Md Salman Prottoy', 'a+', '+8801521532752', '2020-09-23', '', 1),
(42, 6, 'Salman Prottoy', '03:00', '', '', '', '', '2020-09-23', '', 0),
(43, 6, 'Salman Prottoy', '03:20', '', '', '', '', '2020-09-23', '', 0),
(44, 6, 'Salman Prottoy', '03:40', '', '', '', '', '2020-09-23', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `docreq`
--

CREATE TABLE `docreq` (
  `d_id` int(50) NOT NULL,
  `d_name` varchar(100) COLLATE ascii_bin NOT NULL,
  `d_pass` varchar(255) COLLATE ascii_bin NOT NULL,
  `d_fname` varchar(100) COLLATE ascii_bin NOT NULL,
  `d_lname` varchar(100) COLLATE ascii_bin NOT NULL,
  `d_dob` date NOT NULL,
  `d_bgroup` varchar(100) COLLATE ascii_bin NOT NULL,
  `d_email` varchar(100) COLLATE ascii_bin NOT NULL,
  `d_phone` varchar(100) COLLATE ascii_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `d_id` int(15) NOT NULL,
  `d_name` varchar(25) COLLATE ascii_bin NOT NULL,
  `d_pass` varchar(255) COLLATE ascii_bin NOT NULL,
  `d_fname` varchar(25) COLLATE ascii_bin NOT NULL,
  `d_lname` varchar(25) COLLATE ascii_bin NOT NULL,
  `d_dob` date NOT NULL,
  `d_bgroup` varchar(10) COLLATE ascii_bin NOT NULL,
  `d_email` varchar(25) COLLATE ascii_bin NOT NULL,
  `d_phone` varchar(15) COLLATE ascii_bin NOT NULL,
  `d_department` varchar(100) COLLATE ascii_bin NOT NULL,
  `d_qualification` varchar(500) COLLATE ascii_bin NOT NULL,
  `d_institution` varchar(500) COLLATE ascii_bin NOT NULL,
  `d_visitstart` varchar(500) COLLATE ascii_bin NOT NULL,
  `d_visitend` varchar(500) COLLATE ascii_bin NOT NULL,
  `d_image` varchar(255) COLLATE ascii_bin NOT NULL,
  `d_hospital` varchar(100) COLLATE ascii_bin NOT NULL,
  `visiting_time` varchar(100) COLLATE ascii_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`d_id`, `d_name`, `d_pass`, `d_fname`, `d_lname`, `d_dob`, `d_bgroup`, `d_email`, `d_phone`, `d_department`, `d_qualification`, `d_institution`, `d_visitstart`, `d_visitend`, `d_image`, `d_hospital`, `visiting_time`) VALUES
(6, 'salman', '$2y$10$.tXT.4RblrHcyMpwtrr/A.PJUHt88MlOX6Td7H5djTiJhrxGIHf4m', 'Salman', 'Prottoy', '1998-10-11', 'a+', 'salman.prottoy@gmail.com', '01521532752', 'DEPARTMENT OF SURGERY', '', '', '16:00', '18:00', '../images/53752504.png', 'Popular Hospital', '8:00am-10:00pm'),
(7, 'alvy', '$2y$10$DS1piwUTpva2stBunKlEL.LzaUe2McPrybL376aut7R73WoluXg.S', 'Asm', 'Alvy', '1998-07-31', 'a+', 'alvy008@gmail.com', '012323232323', 'DEPARTMENT OF SKIN', '', '', '', '', '../images/778595314.jpg', 'Popular Hospital', '8:00am-10:00pm'),
(8, 'mahi', '$2y$10$UtddpTaykVgui53qk0fdFOYW92IwhvsTReG2dZxNVBtSjZTTbthAK', 'rayhan', 'mahi', '1998-12-11', 'a+', 'mahi@gmail.com', '+8801541531252', 'DEPARTMENT OF ORTHOPAEDICS', '', '', '13:30', '15:30', '../images/1087704569.jpg', 'Popular Hospital', ''),
(9, 'anik', '$2y$10$m2x163QQIWCCedvvqH8/nO0RmKe6F.AwgtFUFVpk0SP3xtRXzUzy2', 'anik', 'sarkar', '1993-01-11', 'a+', 'anik@gamil.com', '+8801728835', '', '', '', '', '', '', '', ''),
(10, 'sadman', '$2y$10$vwJB0QeKnOTyfF1hYOjQS.vSxC7gRPEZRJ2yEvsjMWgnwC9Y7HOR2', 'sadman', 'sakib', '1995-02-23', 'a+', 'sadman@gmail.com', '+8801523235423', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `donor_id` int(11) NOT NULL,
  `donor_name` varchar(50) COLLATE ascii_bin NOT NULL,
  `donor_organ` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `h_id` int(15) NOT NULL,
  `h_name` varchar(25) COLLATE ascii_bin NOT NULL,
  `d_id` varchar(25) COLLATE ascii_bin NOT NULL,
  `h_department` varchar(25) COLLATE ascii_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- --------------------------------------------------------

--
-- Table structure for table `organ`
--

CREATE TABLE `organ` (
  `o_id` int(15) NOT NULL,
  `p_name` varchar(100) COLLATE ascii_bin NOT NULL,
  `o_name` varchar(50) COLLATE ascii_bin NOT NULL,
  `o_phone` varchar(100) COLLATE ascii_bin NOT NULL,
  `o_email` varchar(100) COLLATE ascii_bin NOT NULL,
  `o_bgroup` varchar(100) COLLATE ascii_bin NOT NULL,
  `o_organ` varchar(100) COLLATE ascii_bin NOT NULL,
  `o_address` varchar(100) COLLATE ascii_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;

--
-- Dumping data for table `organ`
--

INSERT INTO `organ` (`o_id`, `p_name`, `o_name`, `o_phone`, `o_email`, `o_bgroup`, `o_organ`, `o_address`) VALUES
(6, 'salman', 'Md Salman Prottoy', '+8801521532752', 'salman.prottoy@gmail.com', 'a+', 'Blood', ''),
(8, 'salman', 'Salman Prottoy', '01521532752', 'salman.prottoy@gmail.com', 'a+', 'Blood', ''),
(10, 'salman', 'Salman Prottoy', '01521532752', 'salman.prottoy@gmail.com', 'a+', 'Blood', ''),
(11, 'salman', 'Salman Prottoy', '01521532752', 'salman.prottoy@gmail.com', 'a+', 'Blood', ''),
(13, 'salman', 'Md Salman Prottoy', '+8801521532752', 'salman.prottoy@gmail.com', 'a+', 'Eye', '');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `p_id` int(15) NOT NULL,
  `p_pass` varchar(255) COLLATE ascii_bin NOT NULL,
  `p_name` varchar(25) COLLATE ascii_bin NOT NULL,
  `p_fname` varchar(25) COLLATE ascii_bin NOT NULL,
  `p_lname` varchar(25) COLLATE ascii_bin NOT NULL,
  `p_dob` date NOT NULL,
  `p_bgroup` varchar(10) COLLATE ascii_bin NOT NULL,
  `p_email` varchar(25) COLLATE ascii_bin NOT NULL,
  `p_phone` varchar(15) COLLATE ascii_bin NOT NULL,
  `p_pic` varchar(255) COLLATE ascii_bin NOT NULL,
  `p_gender` varchar(15) COLLATE ascii_bin NOT NULL,
  `p_address` text COLLATE ascii_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`p_id`, `p_pass`, `p_name`, `p_fname`, `p_lname`, `p_dob`, `p_bgroup`, `p_email`, `p_phone`, `p_pic`, `p_gender`, `p_address`) VALUES
(1, '$2y$10$PJcigB2YexV2MhD/jJp.P.0rR8jEWXMMGJiBPnP0zQWUA4TF7SEx.', 'salman', 'Md Salman', 'Prottoy', '1998-10-11', 'a+', 'salman.prottoy@gmail.com', '+8801521532752', '../images/ronaldo.jpg', '', ''),
(2, '$2y$10$k0kFE5ggc.lHGg4EZ6m8HOywRM80NRt159l5VZvY7avou9rts7izq', 'anika', 'anika', 'rahman', '1998-08-06', 'o+', 'anika@gmail.com', '1282192121', '', '', ''),
(3, '$2y$10$thbcGAYMS.YTueIDekvrqOaInXNnnJn2jv.LAMhDtIAH5X2MjZyxe', 'fahim', 'fahim', 'mahmud', '1999-11-11', 'a+', 'fahim@gmail.com', '+8801726352862', '../images/2016606004.png', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `su_admin`
--

CREATE TABLE `su_admin` (
  `sa_id` int(15) NOT NULL,
  `sa_name` varchar(25) COLLATE ascii_bin NOT NULL,
  `sa_pass` varchar(25) COLLATE ascii_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;

--
-- Dumping data for table `su_admin`
--

INSERT INTO `su_admin` (`sa_id`, `sa_name`, `sa_pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(15) NOT NULL,
  `u_name` varchar(25) COLLATE ascii_bin NOT NULL,
  `u_pass` varchar(100) COLLATE ascii_bin NOT NULL,
  `u_fname` varchar(25) COLLATE ascii_bin NOT NULL,
  `u_lname` varchar(25) COLLATE ascii_bin NOT NULL,
  `u_dob` date NOT NULL,
  `u_bg` varchar(10) COLLATE ascii_bin NOT NULL,
  `u_email` varchar(50) COLLATE ascii_bin NOT NULL,
  `u_phone` varchar(20) COLLATE ascii_bin NOT NULL,
  `u_type` varchar(15) COLLATE ascii_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_name`, `u_pass`, `u_fname`, `u_lname`, `u_dob`, `u_bg`, `u_email`, `u_phone`, `u_type`) VALUES
(1, 'admin', '12345', 'abc', 'xyz', '2020-09-01', 'a+', 'abc@gmail.com', '+8801521522442', 'doctor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`),
  ADD UNIQUE KEY `a_name` (`a_name`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `docreq`
--
ALTER TABLE `docreq`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`d_id`),
  ADD UNIQUE KEY `d_name` (`d_name`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`donor_id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`h_id`);

--
-- Indexes for table `organ`
--
ALTER TABLE `organ`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`p_id`),
  ADD UNIQUE KEY `p_name` (`p_name`);

--
-- Indexes for table `su_admin`
--
ALTER TABLE `su_admin`
  ADD PRIMARY KEY (`sa_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `app_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `docreq`
--
ALTER TABLE `docreq`
  MODIFY `d_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `d_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `donor_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `h_id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organ`
--
ALTER TABLE `organ`
  MODIFY `o_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `p_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `su_admin`
--
ALTER TABLE `su_admin`
  MODIFY `sa_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
