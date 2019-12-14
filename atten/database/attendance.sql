-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2019 at 06:54 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
`admin_id` int(11) NOT NULL,
  `admin_user_name` varchar(100) NOT NULL,
  `admin_password` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_user_name`, `admin_password`) VALUES
(1, 'admin', '$2y$10$D74Zy1qMkATvmGRoVeq7hed4ajWof2aqDGnEaD3yPHABA.p.e7f4u');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE IF NOT EXISTS `tbl_attendance` (
`attendance_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `attendance_status` enum('Present','Absent') NOT NULL,
  `attendance_date` date NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`attendance_id`, `student_id`, `attendance_status`, `attendance_date`, `teacher_id`) VALUES
(1, 3, 'Present', '2019-12-11', 3),
(2, 4, 'Present', '2019-12-11', 2),
(3, 2, 'Present', '2019-12-11', 4),
(4, 1, 'Present', '2019-12-11', 1),
(5, 1, 'Present', '2019-12-10', 1),
(6, 3, 'Present', '2019-12-12', 3),
(7, 5, 'Present', '2019-12-12', 3),
(8, 6, 'Present', '2019-12-12', 3),
(9, 3, 'Present', '2019-12-13', 3),
(10, 5, 'Present', '2019-12-13', 3),
(11, 6, 'Present', '2019-12-13', 3),
(12, 1, 'Present', '2019-12-14', 0),
(13, 1, 'Absent', '2019-12-05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_grade`
--

CREATE TABLE IF NOT EXISTS `tbl_grade` (
`grade_id` int(11) NOT NULL,
  `grade_name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_grade`
--

INSERT INTO `tbl_grade` (`grade_id`, `grade_name`) VALUES
(2, '1SIMA PSI'),
(3, '1SIMA PSW'),
(4, '1SIMA DI'),
(5, '1SIMA Tekpro');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE IF NOT EXISTS `tbl_student` (
`student_id` int(11) NOT NULL,
  `student_name` varchar(150) NOT NULL,
  `student_roll_number` int(11) NOT NULL,
  `student_dob` date NOT NULL,
  `student_grade_id` int(11) NOT NULL,
  `student_password` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `student_name`, `student_roll_number`, `student_dob`, `student_grade_id`, `student_password`) VALUES
(1, 'Nelson Donglas', 1931105, '2001-12-17', 4, '$2y$10$NPlYlDvmxpsTqqP3OxW14exkaX3JPpg9rMd.LObBpkj1S/9XmFwKS'),
(2, 'Harley Fernando', 1931014, '2002-01-07', 2, '$2y$10$GAzrRPGWIl24IY1Qh00NDebUoeUqdZdawPfwVPRUkFKnMjmU6UZBa'),
(3, 'Kendy Junianto', 1931175, '2002-02-05', 3, '$2y$10$VO8YUgQK5tgo40Rc0PjVzeG0djym56Fk6Kbo6XdiiLyVF9SQ0gKEq'),
(4, 'Hery Yohan', 1931086, '1999-07-12', 5, '$2y$10$XX00sPPhV9XMkLIE5ogYn.bQuN8YS2CNokI19czDXcnoUk6GwITRe'),
(5, 'Tri Susanti ', 1931019, '2001-03-07', 3, '$2y$10$JBu6ip8FIRyAOaTtcPpnN.PLVbBu8rPbKLSx4n5LoIc6NQjSbc4TO'),
(6, 'nibbaman', 1931108, '2019-12-10', 3, '$2y$10$bdr6plwUpe9cgOa5E.5knupioVE48aRYxnx0gO5Ew887pHvVtEfTS'),
(7, 'juliantio', 1931006, '2001-07-30', 5, '$2y$10$fg96/7kpxhAFXXSDKwq.X.QgJxKpiXslAMXPdYII5sftZ5cj4q8DG');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

CREATE TABLE IF NOT EXISTS `tbl_teacher` (
`teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(150) NOT NULL,
  `teacher_address` text NOT NULL,
  `teacher_emailid` varchar(100) NOT NULL,
  `teacher_password` varchar(100) NOT NULL,
  `teacher_qualification` varchar(100) NOT NULL,
  `teacher_doj` date NOT NULL,
  `teacher_image` varchar(100) NOT NULL,
  `teacher_grade_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`teacher_id`, `teacher_name`, `teacher_address`, `teacher_emailid`, `teacher_password`, `teacher_qualification`, `teacher_doj`, `teacher_image`, `teacher_grade_id`) VALUES
(1, 'DI', 'alamat', 'DI@gmail.com', '$2y$10$pAcEzCyAHixE2TyXsoEnHuGfrsyzCH87o/Grc7hzM820rCZd2Te/y', 'S.Kom', '2019-12-11', '5df3cfbb564bf.jpg', 4),
(2, 'tekpro', 'alamat', 'tekpro@gmail.com', '$2y$10$gfBvMtUal0IQgHI2ZATxnOA8mCjNB7YpbAZ8HX9uIK01WQztQeXQO', 'S.Kom', '2019-12-11', '5df0b1896bdf0.jpg', 5),
(3, 'Deddy', 'alamat', 'psw@gmail.com', '$2y$10$ln.AgcnU.xAd2Ig/FRnDr.aKaNVhs30yFPaG386gro2KMiwRlm3w6', 'S.Kom', '2019-12-11', '5df3cf9f20a9e.jpg', 3),
(4, 'PSI', 'alamat', 'psi@gmail.com', '$2y$10$p2TFPfEfv582zh0Pc6a2/uUjzXFld7JIeG3loUNMNruq74YsKs9hq', 'M.Sc, B. Ed', '2019-12-11', '5df0b1d037d6d.jpg', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
 ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
 ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `tbl_grade`
--
ALTER TABLE `tbl_grade`
 ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
 ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
 ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbl_grade`
--
ALTER TABLE `tbl_grade`
MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
