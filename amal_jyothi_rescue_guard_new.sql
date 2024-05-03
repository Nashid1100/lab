-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2024 at 09:06 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amal_jyothi_rescue_guard_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_affected_people`
--

CREATE TABLE `tbl_affected_people` (
  `affected_people_id` int(11) NOT NULL,
  `affected_people_name` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `affected_user_phone_no` bigint(20) NOT NULL,
  `description` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `date_of_birth` date NOT NULL,
  `place_id` int(11) NOT NULL,
  `camp_login_id` int(11) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `camp_status_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_affected_people`
--

INSERT INTO `tbl_affected_people` (`affected_people_id`, `affected_people_name`, `gender`, `affected_user_phone_no`, `description`, `address`, `date_of_birth`, `place_id`, `camp_login_id`, `entry_date`, `camp_status_id`) VALUES
(1, 'Jancy James', 'Female', 9847734126, 'Flood  Lost  house', 'Jancy Villa', '2020-05-12', 420, 13, '2020-05-18 13:39:35', 8),
(3, 'Aju', 'Male', 9847734126, 'sdf dsfdg dgfd', 'Aju Villa', '2010-09-01', 588, 13, '2020-05-18 13:39:35', 8),
(4, 'Jancy James', 'Female', 9847734126, 'fdgfg gfhgfh', 'Jancy Villa', '2019-02-06', 588, 13, '2020-05-18 13:39:35', 8),
(5, 'fghfgh', 'Male', 9847734126, 'gfhfgh', 'dsfdsf', '2019-12-04', 588, 13, '2020-05-25 05:18:15', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_atm`
--

CREATE TABLE `tbl_atm` (
  `atm_id` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  `longitude` decimal(25,22) NOT NULL,
  `latitude` decimal(25,22) NOT NULL,
  `proper_place_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_atm`
--

INSERT INTO `tbl_atm` (`atm_id`, `bank_id`, `place_id`, `longitude`, `latitude`, `proper_place_name`) VALUES
(1, 1, 423, '76.7854545026483000000000', '9.5596537603938640000000', 'Chennerkara');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `bank_id` int(11) NOT NULL,
  `bank` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`bank_id`, `bank`) VALUES
(1, 'State Bank of India');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank_branches`
--

CREATE TABLE `tbl_bank_branches` (
  `bank_branches_id` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  `longitude` decimal(25,22) NOT NULL,
  `latitude` decimal(25,22) NOT NULL,
  `proper_place_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_bank_branches`
--

INSERT INTO `tbl_bank_branches` (`bank_branches_id`, `bank_id`, `place_id`, `longitude`, `latitude`, `proper_place_name`) VALUES
(1, 1, 419, '76.6947521826009600000000', '9.3388911152291900000000', 'Aramula');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_camp`
--

CREATE TABLE `tbl_camp` (
  `camp_id` int(11) NOT NULL,
  `camp_name` varchar(50) NOT NULL,
  `place_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `longitude` decimal(25,22) NOT NULL,
  `latitude` decimal(25,22) NOT NULL,
  `capacity` int(11) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) NOT NULL DEFAULT 'Working',
  `phone_number` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_camp`
--

INSERT INTO `tbl_camp` (`camp_id`, `camp_name`, `place_id`, `login_id`, `longitude`, `latitude`, `capacity`, `reg_date`, `status`, `phone_number`) VALUES
(1, 'Govt School ', 588, 13, '76.7872569471062400000000', '9.5587058050270630000000', 520, '2019-10-03 09:22:29', 'Working', 9847734126),
(2, 'Govt College Pathanamthitta', 419, 14, '76.7837378626852600000000', '9.2500793668749900000000', 450, '2019-10-23 05:52:26', 'Working', 9847734126),
(3, 'Relief Camp', 420, 17, '76.7812757512596100000000', '9.2698464985327840000000', 500, '2019-11-12 05:13:24', 'Working', 9847734126),
(4, 'St Marys School', 588, 19, '76.7888018994988900000000', '9.5598061104169750000000', 250, '2020-05-18 06:54:05', 'Working', 9847734126),
(5, 'Govt School Kanjirappally', 588, 20, '76.7857978254022100000000', '9.5604832196573800000000', 400, '2020-05-18 10:57:58', 'Dispersed', 9847734126),
(6, 'St Thomas HSS', 588, 21, '76.7877719312371700000000', '9.5590316642962120000000', 500, '2020-05-25 05:27:58', 'Dispersed', 9847734126);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_camp_requirements`
--

CREATE TABLE `tbl_camp_requirements` (
  `required_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_camp_requirements`
--

INSERT INTO `tbl_camp_requirements` (`required_id`, `item_id`, `quantity`, `unit`, `entry_date`) VALUES
(6, 1, 200, 'Kilo Gram', '2019-10-24 07:15:36'),
(7, 2, 20, 'Kilo Gram', '2019-10-24 07:15:47'),
(8, 3, 10, 'Litre', '2019-10-24 07:16:00'),
(9, 6, 20, 'Nos', '2019-11-12 05:16:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_camp_staff`
--

CREATE TABLE `tbl_camp_staff` (
  `staff_id` int(11) NOT NULL,
  `staff_name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `department_id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  `staff_phone_no` bigint(20) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `camp_login_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_camp_staff`
--

INSERT INTO `tbl_camp_staff` (`staff_id`, `staff_name`, `gender`, `department_id`, `place_id`, `staff_phone_no`, `entry_date`, `camp_login_id`) VALUES
(1, 'Anuradha Venkidesh', 'Male', 1, 600, 9847734126, '2019-10-23 10:26:44', 13),
(2, 'Sam Mathew', 'Male', 3, 588, 8956231278, '2019-10-23 10:26:40', 13),
(3, 'Mohan Raj', 'Male', 1, 422, 9865321245, '2019-10-23 10:26:22', 13);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_camp_status`
--

CREATE TABLE `tbl_camp_status` (
  `camp_status_id` int(11) NOT NULL,
  `starting_date` date NOT NULL,
  `ending_date` date NOT NULL,
  `camp_login_id` int(11) NOT NULL,
  `reason_for_camp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_camp_status`
--

INSERT INTO `tbl_camp_status` (`camp_status_id`, `starting_date`, `ending_date`, `camp_login_id`, `reason_for_camp`) VALUES
(1, '2020-05-18', '2020-05-18', 20, 'Due to Flood'),
(2, '2020-05-18', '2020-05-18', 20, 'Due to Flood'),
(3, '2020-05-18', '2020-05-18', 19, 'Due to Flood'),
(4, '2020-05-18', '2020-05-18', 19, 'Due to Flood'),
(5, '2020-05-18', '2020-05-18', 20, 'Due to Flood'),
(6, '2020-05-18', '2020-05-18', 19, 'Due to Flood'),
(7, '2020-05-18', '0000-00-00', 17, 'Due to Flood'),
(8, '2020-05-18', '2020-05-18', 13, 'Due to Flood'),
(9, '2020-05-24', '2024-04-27', 20, 'Due to Flood'),
(10, '2020-05-25', '0000-00-00', 13, 'Due to Flood'),
(11, '2020-05-25', '2020-05-25', 21, 'Due to Flood'),
(14, '2020-05-25', '0000-00-00', 19, 'Due to Flood'),
(15, '2024-04-27', '2024-04-27', 21, 'dfbdb');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complaints`
--

CREATE TABLE `tbl_complaints` (
  `complaint_id` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `complaint` varchar(200) NOT NULL,
  `user_login_id` int(11) NOT NULL,
  `response` varchar(100) NOT NULL DEFAULT 'Nil',
  `complaint_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_complaints`
--

INSERT INTO `tbl_complaints` (`complaint_id`, `subject`, `complaint`, `user_login_id`, `response`, `complaint_date`) VALUES
(1, 'dffff', 'fffffffffffffffff', 5, '', '2020-03-30 07:47:56'),
(2, 'ertre', 'retr', 5, 'sddfsdg', '2020-03-31 05:28:47'),
(3, 'dfgdfg', 'fdgdfg', 5, 'Nil', '2020-03-31 05:28:53'),
(4, 'dfgdfg', 'dfgdfg', 5, 'Nil', '2020-03-31 05:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department_camp`
--

CREATE TABLE `tbl_department_camp` (
  `department_id` int(11) NOT NULL,
  `department` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_department_camp`
--

INSERT INTO `tbl_department_camp` (`department_id`, `department`) VALUES
(1, 'Health'),
(2, 'Education'),
(3, 'Medical Department');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_disaster_type`
--

CREATE TABLE `tbl_disaster_type` (
  `disaster_type_id` int(11) NOT NULL,
  `disaster_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_disaster_type`
--

INSERT INTO `tbl_disaster_type` (`disaster_type_id`, `disaster_type`) VALUES
(23, 'Tsunami'),
(24, 'Earth Quake');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_disaster_warning`
--

CREATE TABLE `tbl_disaster_warning` (
  `disaster_warning_id` int(11) NOT NULL,
  `disaster_type_id` int(11) NOT NULL,
  `warning_message` varchar(500) NOT NULL,
  `disaster_place` varchar(50) NOT NULL,
  `warning_details` varchar(500) NOT NULL,
  `affected_region` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `longitude` decimal(25,22) NOT NULL,
  `latitude` decimal(25,22) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_disaster_warning`
--

INSERT INTO `tbl_disaster_warning` (`disaster_warning_id`, `disaster_type_id`, `warning_message`, `disaster_place`, `warning_details`, `affected_region`, `date_time`, `longitude`, `latitude`, `entry_date`) VALUES
(24, 23, 'this area is affected by tsunami', 'prasanth nagar', 'tsunami is coming ..be safe', 457, '2020-04-04 04:20:19', '76.7489478515624300000000', '9.5746500104566770000000', '2019-11-12 03:58:19'),
(25, 24, 'Earhquake is affected', 'kanjirapally', 'Be safe', 453, '2019-11-12 04:05:48', '76.7888247873331700000000', '9.5590260224325350000000', '2019-11-12 04:03:54'),
(28, 24, 'Save your life', 'parakkadavu', 'Earhquake affected around your area', 675, '2019-11-16 13:30:49', '76.7926013376261400000000', '9.5693348885374810000000', '2019-11-16 13:31:48'),
(29, 23, 'sf', 'ghgg', 'dsgs', 35, '2020-04-04 16:49:00', '76.7876231576945700000000', '9.5592982776022740000000', '2020-04-04 16:55:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `district_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `district_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`district_id`, `state_id`, `district_name`) VALUES
(1, 1, 'Anantapur'),
(2, 1, 'Chittoor'),
(3, 1, 'East Godavari'),
(4, 1, 'Guntur'),
(5, 1, 'Kadapa'),
(6, 1, 'Krishna'),
(7, 1, 'Kurnool'),
(8, 1, 'Prakasam'),
(9, 1, 'Sri Potti Sriramulu Nellore'),
(10, 1, 'Srikakulam'),
(11, 1, 'Visakhapatnam'),
(12, 1, 'Vizianagaram'),
(13, 1, 'West Godavari'),
(14, 2, 'Anjaw'),
(15, 2, 'Changlang'),
(16, 2, 'Dibang Valley'),
(17, 2, 'East Kameng'),
(18, 2, 'East Siang'),
(19, 2, 'Kra Daadi'),
(20, 2, 'Kurung Kumey'),
(21, 2, 'Lohit'),
(22, 2, 'Longding'),
(23, 2, 'Lower Dibang Valley'),
(24, 2, 'Lower Subansiri'),
(25, 2, 'Namsai'),
(26, 2, 'Papum Pare'),
(27, 2, 'Tawang'),
(28, 2, 'Tirap'),
(29, 2, 'Upper Siang'),
(30, 2, 'Upper Subansiri'),
(31, 2, 'West Kameng'),
(32, 2, 'West Siang'),
(33, 3, 'Baksa'),
(34, 3, 'Barpeta'),
(35, 3, 'Bongaigaon'),
(36, 3, 'Cachar'),
(37, 3, 'Chirang'),
(38, 3, 'Darrang'),
(39, 3, 'Dhemaji'),
(40, 3, 'Dhubri'),
(41, 3, 'Dibrugarh'),
(42, 3, 'Dima Hasao'),
(43, 3, 'Goalpara'),
(44, 3, 'Golaghat'),
(45, 3, 'Hailakandi'),
(46, 3, 'Jorhat'),
(47, 3, 'Kamrup'),
(48, 3, 'Kamrup Metropolitan'),
(49, 3, 'Karbi Anglong'),
(50, 3, 'Karimganj'),
(51, 3, 'Kokrajhar'),
(52, 3, 'Lakhimpur'),
(53, 3, 'Morigaon'),
(54, 3, 'Nagaon'),
(55, 3, 'Nalbari'),
(56, 3, 'Sivasagar'),
(57, 3, 'Sonitpur'),
(58, 3, 'Tinsukia'),
(59, 3, 'Udalguri'),
(60, 4, 'Araria'),
(61, 4, '\r\nArwal'),
(62, 4, 'Aurangabad'),
(63, 4, 'Banka'),
(64, 4, 'Begusarai'),
(65, 4, 'Bhagalpur'),
(66, 4, 'Bhojpur'),
(67, 4, 'Buxar'),
(68, 4, 'Darbhanga'),
(69, 4, 'East Champaran'),
(70, 4, 'Gaya'),
(71, 4, 'Gopalganj'),
(72, 4, 'Jamui'),
(73, 4, 'Jehanabad'),
(74, 4, 'Kaimur'),
(75, 4, 'Katihar'),
(76, 4, 'Khagaria'),
(77, 4, 'Kishanganj'),
(78, 4, 'Lakhisarai'),
(79, 4, 'Madhepura'),
(80, 4, 'Madhubani'),
(81, 4, 'Munger'),
(82, 4, 'Muzaffarpur'),
(83, 4, 'Nalanda'),
(84, 4, 'Nawada'),
(85, 4, 'Patna'),
(86, 4, 'Purnia'),
(87, 4, 'Rohtas'),
(88, 4, 'Saharsa'),
(89, 4, 'Samastipur'),
(90, 4, 'Saran'),
(91, 4, 'Sheikhpura'),
(92, 4, 'Sheohar'),
(93, 4, 'Sitamarhi'),
(94, 4, 'Siwan'),
(95, 4, 'Supaul'),
(96, 4, 'Vaishali'),
(97, 4, 'West Champaran'),
(98, 5, 'Balod'),
(99, 5, 'Baloda Bazar'),
(100, 5, 'Balrampur'),
(101, 5, 'Bastar'),
(102, 5, 'Bemetara'),
(103, 5, 'Bijapur'),
(104, 5, 'Bilaspur'),
(105, 5, 'Dantewada'),
(106, 5, 'Dhamtari'),
(107, 5, 'Durg'),
(108, 5, 'Gariaband'),
(109, 5, 'Janjgir-Champa'),
(110, 5, 'Jashpur'),
(111, 5, 'Kanker'),
(112, 5, 'Kondagaon'),
(113, 5, 'Korba'),
(114, 5, 'Koriya'),
(115, 5, 'Mahasamund'),
(116, 5, 'Mungeli'),
(117, 5, 'Narayanpur'),
(118, 5, 'Raigarh'),
(119, 5, 'Raipur'),
(120, 5, 'Rajnandgaon'),
(121, 5, 'Sukma'),
(122, 5, 'Surajpur'),
(123, 5, 'Surguja'),
(124, 6, 'North Goa'),
(125, 6, 'South Goa'),
(126, 7, 'Ahmedabad'),
(127, 7, 'Amreli'),
(128, 7, 'Anand'),
(129, 7, 'Aravalli'),
(130, 7, 'Banaskantha'),
(131, 7, 'Bharuch'),
(132, 7, 'Bhavnagar'),
(133, 7, 'Botad'),
(134, 7, 'Chhota Udaipur'),
(135, 7, 'Dahod'),
(136, 7, 'Dang'),
(137, 7, 'Devbhoomi Dwarka'),
(138, 7, 'Gandhinagar'),
(139, 7, 'Gir Somnath'),
(140, 7, 'Jamnagar'),
(141, 7, 'Junagadh'),
(142, 7, 'Kheda'),
(143, 7, 'Kutch'),
(144, 7, 'Mahisagar'),
(145, 7, 'Mehsana'),
(146, 7, 'Morbi'),
(147, 7, 'Narmada'),
(148, 7, 'Navsari'),
(149, 7, 'Panchmahal'),
(150, 7, 'Patan'),
(151, 7, 'Porbandar'),
(152, 7, 'Rajkot'),
(153, 7, 'Sabarkantha'),
(154, 7, 'Surat'),
(155, 7, 'Surendranagar'),
(156, 7, 'Tapi'),
(157, 7, 'Vadodara'),
(158, 7, 'Valsad'),
(159, 8, 'Gurgaon'),
(160, 8, 'Rohtak'),
(161, 8, 'Ambala'),
(162, 8, 'Bhiwani'),
(163, 8, 'Faridabad'),
(164, 8, 'Hissar'),
(165, 8, 'Jind'),
(166, 8, 'Kaithal'),
(167, 8, 'Karnal'),
(168, 8, 'Kurukshetra'),
(169, 8, 'Mahendragarh'),
(170, 8, 'Panchkula'),
(171, 8, 'Panipat'),
(172, 8, 'Sonipat'),
(173, 8, 'Yamunanagar'),
(174, 8, 'Sirsa'),
(175, 8, 'Rewari'),
(176, 8, 'Jhanjhar'),
(177, 9, 'Sirmour'),
(178, 9, 'Hamirpur'),
(179, 9, 'Kullu'),
(180, 9, 'Solan'),
(181, 9, 'Mandi'),
(182, 9, 'Chamba'),
(183, 9, 'Bilaspur'),
(184, 9, 'Kangra'),
(185, 9, 'Kinnaur '),
(186, 9, 'Lahaul-Spiti'),
(187, 9, 'Shimla'),
(188, 9, 'Una'),
(189, 10, 'Kathua'),
(190, 10, 'Badgan'),
(191, 10, 'Poonch'),
(192, 10, 'Rajauri'),
(193, 10, 'Baramula'),
(194, 10, 'Udhampur'),
(195, 10, 'Doda'),
(196, 10, 'Jammu'),
(197, 10, 'Kupwara'),
(198, 10, 'Pulwama'),
(199, 10, 'Anantnag'),
(200, 10, 'Srinagar'),
(201, 10, 'Leh'),
(202, 10, 'Kargil'),
(203, 11, 'Bokaro'),
(204, 11, 'Chatra'),
(205, 11, 'Deoghar'),
(206, 11, 'Dhanbad'),
(207, 11, 'Dumka'),
(208, 11, 'East Singhbhum'),
(209, 11, 'Garhwa'),
(210, 11, 'Giridih'),
(211, 11, 'Godda'),
(212, 11, 'Gumla'),
(213, 11, 'Hazaribag'),
(214, 11, 'Jamtara'),
(215, 11, 'Khunti'),
(216, 11, 'Koderma'),
(217, 11, 'Latehar'),
(218, 11, 'Lohardaga'),
(219, 11, 'Pakur'),
(220, 11, 'Palamu'),
(221, 11, 'Ramgarh'),
(222, 11, 'Ranchi'),
(223, 11, 'Sahibganj'),
(224, 11, 'Seraikela Kharsawan'),
(225, 11, 'Simdega'),
(226, 11, 'West Singhbhum'),
(227, 12, 'Mysore'),
(228, 12, 'Gulberga'),
(229, 12, 'Chitradurga'),
(230, 12, 'Kolar'),
(231, 12, 'Bijapur'),
(232, 12, 'Dakshina Kannada'),
(233, 12, 'Raichur'),
(234, 12, 'Bellary'),
(235, 12, 'Belgaum'),
(236, 12, 'Hassan'),
(237, 12, 'Dharwad'),
(238, 12, 'Bangalore Rural'),
(239, 12, 'Shimoga'),
(240, 12, 'Mandya'),
(241, 12, 'Chickmagalur'),
(242, 12, 'Bangalore Urban'),
(243, 12, 'Madikeri'),
(244, 12, 'Tumkur'),
(245, 12, 'Bidar'),
(246, 12, 'Karwar'),
(247, 12, 'Udupi'),
(248, 12, 'Davanagare'),
(249, 12, 'Chamrajnagar'),
(250, 12, 'Koppal'),
(251, 12, 'Haveri'),
(252, 12, 'Gadak '),
(253, 12, 'Yadgir'),
(254, 13, 'Kozhikode'),
(255, 13, 'Kasaragod'),
(256, 13, 'Idukki'),
(257, 13, 'Ernakulam'),
(258, 13, 'Kannur'),
(259, 13, 'Mallapuram'),
(260, 13, 'Palghat'),
(261, 13, 'Pathanamthitta'),
(262, 13, 'Quilon'),
(263, 13, 'Trichur'),
(264, 13, 'Wayanad'),
(265, 13, 'Trivandrum'),
(266, 13, 'Kottayam'),
(267, 13, 'Alapuzzha'),
(268, 14, 'Sindi'),
(269, 14, 'Vidisha'),
(270, 14, 'Jabalpur'),
(271, 14, 'Bhopal'),
(272, 14, 'Hoshangabad'),
(273, 14, 'Indore'),
(274, 14, 'Rewa'),
(275, 14, 'Satna'),
(276, 14, 'Shahdol'),
(277, 14, 'Chhindwara'),
(278, 14, 'Ratlam'),
(279, 14, 'Balaghat'),
(280, 14, 'Betul'),
(281, 14, 'Bhind'),
(282, 14, 'Mandla'),
(283, 14, 'Chhattarpur'),
(284, 14, 'Damoh'),
(285, 14, 'Datia'),
(286, 14, 'Dewas'),
(287, 14, 'Dhar'),
(288, 14, 'Guna'),
(289, 14, 'Gwalior'),
(290, 14, 'Jhabua'),
(291, 14, 'Sehore'),
(292, 14, 'Mandsaur'),
(293, 14, 'Narsinghpur'),
(294, 14, 'Panna'),
(295, 14, 'Raisen'),
(296, 14, 'Rajgarh'),
(297, 14, 'Sagar'),
(298, 14, 'Seoni'),
(299, 14, 'Morena'),
(300, 14, 'Shivpuri'),
(301, 14, 'Shajapur'),
(302, 14, 'Tikamgarh'),
(303, 14, 'Ujjain'),
(304, 14, 'Khandwa'),
(305, 14, 'Khargone'),
(306, 14, 'Dindori'),
(307, 14, 'Umaria'),
(308, 14, 'Badwani'),
(309, 14, 'Sheopur'),
(310, 14, 'Katni'),
(311, 14, 'Neemuch'),
(312, 14, 'Harda'),
(313, 14, 'Anooppur'),
(314, 14, 'Burhanpur'),
(315, 14, 'Ashoknagar'),
(316, 15, 'Aurangabad'),
(317, 15, 'Bandra'),
(318, 15, 'Nagpur'),
(319, 15, 'Pune'),
(320, 15, 'Akola'),
(321, 15, 'Chandrapur'),
(322, 15, 'Jalgaon'),
(323, 15, 'Parbhani'),
(324, 15, 'Sholapur'),
(325, 15, 'Thane'),
(326, 15, 'Latur'),
(327, 15, 'Mumbai-City'),
(328, 15, 'Buldhana'),
(329, 15, 'Dhule'),
(330, 15, 'Kolhpur'),
(331, 15, 'Nanded'),
(332, 15, 'Raigad'),
(333, 15, 'Amravati'),
(334, 15, 'Nashik'),
(335, 15, 'Wardha'),
(336, 15, 'Ahmednagar'),
(337, 15, 'Beed'),
(338, 15, 'Bhandara'),
(339, 15, 'Gadchiroli'),
(340, 15, 'Jalna'),
(341, 15, 'Osmanabad'),
(342, 15, 'Ratnagiri'),
(343, 15, 'Sangli'),
(344, 15, 'Satara'),
(345, 15, 'Sindudurg'),
(346, 15, 'Yavatmal'),
(347, 15, 'Nandurbar'),
(348, 15, 'Washim'),
(349, 15, 'Gondia'),
(350, 15, 'Hingoli'),
(351, 16, 'Imphal East'),
(352, 16, 'Imphal West'),
(353, 16, 'Thoubal'),
(354, 16, 'Bishnupur'),
(355, 16, 'Chandel'),
(356, 16, 'Churachandpur'),
(357, 16, 'Senapati'),
(358, 16, 'Ukhrul'),
(359, 16, 'Tamenglong'),
(360, 17, 'Ri-Bhoi District'),
(361, 17, 'South Garo Hills'),
(362, 17, 'East Khasi Hill'),
(363, 17, 'East Garo Hill'),
(364, 17, 'West Garo Hill'),
(365, 17, 'Jaintia Hill'),
(366, 17, 'West Khasi Hill'),
(367, 18, 'Luglei District'),
(368, 18, 'Chimtipui District'),
(369, 18, 'Aizawal'),
(370, 18, 'Champhai'),
(371, 18, 'Mamit'),
(372, 18, 'Kolasib'),
(373, 18, 'Serchhip'),
(374, 18, 'Lawngtlai'),
(375, 19, 'Wokha'),
(376, 19, 'Phek'),
(377, 19, 'Tuensang'),
(378, 19, 'Mon'),
(379, 19, 'Kohima'),
(380, 19, 'Zunheboto'),
(381, 19, 'Mokokchung'),
(382, 19, 'Dimapur'),
(383, 20, 'Khurda'),
(384, 20, 'Navaragpur'),
(385, 20, 'Navapada'),
(386, 20, 'Gajapati'),
(387, 20, 'Bhadrak'),
(388, 20, 'Boudh'),
(389, 20, 'Ganjam'),
(390, 20, 'Dhenkanal'),
(391, 20, 'Angul'),
(392, 20, 'Puri'),
(393, 20, 'Cuttak'),
(394, 20, 'Sambalpur'),
(395, 20, 'Kalhandi'),
(396, 20, 'Koraput'),
(397, 20, 'Phulbani'),
(398, 20, 'Balangir'),
(399, 20, 'Bargah'),
(400, 20, 'Deogarh'),
(401, 20, 'Jagatsinghpur'),
(402, 20, 'Jajpur'),
(403, 20, 'Jharsuguda'),
(404, 20, 'Kendrapara'),
(405, 20, 'Malkangiri'),
(406, 20, 'Nayagarh'),
(407, 20, 'Rayagada'),
(408, 20, 'Sonepur'),
(409, 20, 'Balasore'),
(410, 20, 'Mayurbhanj'),
(411, 20, 'Keonjhar'),
(412, 20, 'Sundergarh'),
(413, 21, 'Sangrur'),
(414, 21, 'Jalandhar'),
(415, 21, 'Ludhiana'),
(416, 21, 'Bhatinda '),
(417, 21, 'Kapurthala'),
(418, 21, 'Kapurthala'),
(419, 21, 'Patiala'),
(420, 21, 'Amritsar'),
(421, 21, 'Ferozepur'),
(422, 21, 'Fatehgarh Saheb'),
(423, 21, 'Ropar'),
(424, 21, 'Gurdaspur'),
(425, 21, 'Hosiarpur'),
(426, 21, 'Faridkot'),
(427, 21, 'Mansa'),
(428, 21, 'Moga'),
(429, 21, 'Muktsar'),
(430, 21, 'Navansaha'),
(431, 22, 'Jaipur'),
(432, 22, 'Barmer'),
(433, 22, 'Dungarpur'),
(434, 22, 'Jodhpur'),
(435, 22, 'Kota'),
(436, 22, 'Udaipur'),
(437, 22, 'Bikaner'),
(438, 22, 'Dausa'),
(439, 22, 'Bundi'),
(440, 22, 'Sikar'),
(441, 22, 'Tonk'),
(442, 22, 'Jaisalmer'),
(443, 22, 'Nagaur'),
(444, 22, 'Rajsamand'),
(445, 22, 'Banswara'),
(446, 22, 'Bhilwara'),
(447, 22, 'Ajmer'),
(448, 22, 'Alwar'),
(449, 22, 'Bharatpur'),
(450, 22, 'Chittorgarh'),
(451, 22, 'Churu'),
(452, 22, 'Dholpur'),
(453, 22, 'Ganganagar'),
(454, 22, 'Jalor'),
(455, 22, 'Jhalawar'),
(456, 22, 'Jhunjhunu'),
(457, 22, 'Pali'),
(458, 22, 'Sawai Madhopur'),
(459, 22, 'Sirohi'),
(460, 22, 'Baran'),
(461, 22, 'Hanumangarh'),
(462, 23, 'East'),
(463, 23, 'South'),
(464, 23, 'West'),
(465, 23, 'North'),
(466, 24, 'Chennai'),
(467, 24, 'Coimbotore'),
(468, 24, 'Cuddalorei'),
(469, 24, 'Dharmapuri'),
(470, 24, 'Dindigul'),
(471, 24, 'Erode'),
(472, 24, 'Kancheepuram'),
(473, 24, 'Kanniyakumari'),
(474, 24, 'Karur'),
(475, 24, 'Madurai'),
(476, 24, 'Nagapattinam'),
(477, 24, 'Namakkal'),
(478, 24, 'Nilgiris'),
(479, 24, 'Perambalur'),
(480, 24, 'Pudukkottai'),
(481, 24, 'Ramanathapuram'),
(482, 24, 'Salem'),
(483, 24, 'Sivaganga'),
(484, 24, 'Thanjavur'),
(485, 24, 'Theni'),
(486, 24, 'Thoothkudi'),
(487, 24, 'Tiruchiorappalli'),
(488, 24, 'Tirunelveli'),
(489, 24, 'Tiruvallur'),
(490, 24, 'Tiruvannamalai'),
(491, 24, 'Tiruvarur'),
(492, 24, 'Vellore'),
(493, 24, 'Villupuram'),
(494, 24, 'Virudhunagar'),
(495, 25, 'North District'),
(496, 25, 'South District'),
(497, 25, 'West District'),
(498, 25, 'Dhalai District'),
(499, 26, 'Allahabad'),
(500, 26, 'Aligarh'),
(501, 26, 'Bareilly'),
(502, 26, 'Gonda'),
(503, 26, 'Hardoi'),
(504, 26, 'Kanpur Dehat'),
(505, 26, 'Ghaziabad'),
(506, 26, 'Unnav'),
(507, 26, 'Varanasi'),
(508, 26, 'Faizabad'),
(509, 26, 'Gorakpu'),
(510, 26, 'Jhansi'),
(511, 26, 'Lucknow'),
(512, 26, 'Agra'),
(513, 26, 'Meerut'),
(514, 26, 'Moradabad'),
(515, 26, 'Barabanki'),
(516, 26, 'Mainpuri'),
(517, 26, 'Etawah'),
(518, 26, 'Gazipur'),
(519, 26, 'Etah'),
(520, 26, 'Muzaffar Nagar'),
(521, 26, 'Saharanpur'),
(522, 26, 'Bulandshehar'),
(523, 26, 'Mathura'),
(524, 26, 'Firozabad'),
(525, 26, 'Budaun'),
(526, 26, 'Shahjahanpur'),
(527, 26, 'Pilibhit'),
(528, 26, 'Bijnor'),
(529, 26, 'Rampu'),
(530, 26, 'Kanpur(Nagar)'),
(531, 26, 'Farrukhabad'),
(532, 26, 'Fatehpur'),
(533, 26, 'Pratapgarh'),
(534, 26, 'Jalaun'),
(535, 26, 'Hamirpur'),
(536, 26, 'Lalitpur'),
(537, 26, 'Mirzapur'),
(538, 26, 'Basti'),
(539, 26, 'Deoria'),
(540, 26, 'Raebareili'),
(541, 26, 'Sitapur'),
(542, 26, 'Banda'),
(543, 26, 'Lakhimpur-Khedi'),
(544, 26, 'Bahraich'),
(545, 26, 'Sultanpu'),
(546, 26, 'Mau'),
(547, 26, 'Azamgarh'),
(548, 26, 'Jaunpur'),
(549, 26, 'Balia'),
(550, 26, 'Bhadoi'),
(551, 26, 'Padrauna'),
(552, 26, 'Maharajganj'),
(553, 27, 'Almora'),
(554, 27, 'Bageshwar'),
(555, 27, 'Chamoli'),
(556, 27, 'Champawat'),
(557, 27, 'Dehradun'),
(558, 27, 'Haridwar'),
(559, 27, 'Nainital'),
(560, 27, 'Pauri Garhwal'),
(561, 27, 'Pithoragarh'),
(562, 27, 'Rudraprayag'),
(563, 27, 'Tehri Garhwal'),
(564, 27, 'Udham Singh Nagar'),
(565, 27, 'Uttarkashi'),
(566, 28, 'Adilabad'),
(567, 28, 'Hyderabad'),
(568, 28, 'Karimnagar'),
(569, 28, 'Khammam'),
(570, 28, 'Mahbubnagar'),
(571, 28, 'Medak'),
(572, 28, 'Nalgonda'),
(573, 28, 'Nizamabad'),
(574, 28, 'Ranga Reddy'),
(575, 28, 'Warangal'),
(576, 29, 'Howrah'),
(577, 29, 'Medinipur'),
(578, 29, 'Darjeeling'),
(579, 29, 'Murshidabad'),
(580, 29, 'Coochbehar'),
(581, 29, 'Malda'),
(582, 29, 'Birbhum'),
(583, 29, 'North 24 Parganas'),
(584, 29, 'South 24 Parganas'),
(585, 29, 'Bankura'),
(586, 29, 'Bardhaman'),
(587, 29, 'Jalpaiguri'),
(588, 29, 'Hooghly'),
(589, 29, 'Nadia'),
(590, 29, 'Dakshin Dinajpur'),
(591, 29, 'Purulia'),
(592, 29, 'Uttar Dinajpur'),
(593, 29, 'Siliguri'),
(594, 13, 'fdfg'),
(596, 13, '261');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_evacuation_points`
--

CREATE TABLE `tbl_evacuation_points` (
  `evacuation_id` int(11) NOT NULL,
  `disaster_warning_id` int(11) NOT NULL,
  `evacuation_longitude` decimal(25,22) NOT NULL,
  `evacuation_latitude` decimal(25,22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_evacuation_points`
--

INSERT INTO `tbl_evacuation_points` (`evacuation_id`, `disaster_warning_id`, `evacuation_longitude`, `evacuation_latitude`) VALUES
(1, 10, '0.0000000000000000000000', '0.0000000000000000000000'),
(2, 11, '0.0000000000000000000000', '0.0000000000000000000000'),
(3, 12, '0.0000000000000000000000', '0.0000000000000000000000'),
(4, 10, '0.0000000000000000000000', '0.0000000000000000000000'),
(5, 11, '0.0000000000000000000000', '0.0000000000000000000000'),
(6, 11, '0.0000000000000000000000', '0.0000000000000000000000'),
(7, 12, '76.7799282073974600000000', '9.5595333335996030000000'),
(8, 12, '76.7922019958496100000000', '9.5551320871639070000000'),
(9, 12, '76.7932364868163000000000', '9.5634582518946200000000'),
(10, 13, '0.0000000000000000000000', '0.0000000000000000000000'),
(11, 14, '0.0000000000000000000000', '0.0000000000000000000000'),
(12, 15, '0.0000000000000000000000', '0.0000000000000000000000'),
(13, 16, '0.0000000000000000000000', '0.0000000000000000000000'),
(14, 17, '0.0000000000000000000000', '0.0000000000000000000000'),
(15, 18, '0.0000000000000000000000', '0.0000000000000000000000'),
(16, 19, '76.7892024444579400000000', '9.5597426313565940000000'),
(17, 19, '0.0000000000000000000000', '0.0000000000000000000000'),
(18, 20, '76.7860782053019200000000', '9.5590909125765990000000'),
(19, 20, '0.0000000000000000000000', '0.0000000000000000000000'),
(27, 24, '76.8204705910618500000000', '9.5426126061994620000000'),
(28, 24, '0.0000000000000000000000', '0.0000000000000000000000'),
(29, 25, '76.9394159135802000000000', '9.4901988406381740000000'),
(30, 25, '76.8313968088175400000000', '9.5207501463899720000000'),
(33, 27, '76.7659532556736000000000', '9.5914885297320880000000'),
(34, 27, '76.7461710248993500000000', '9.5763999359974350000000'),
(35, 28, '76.7090831918610500000000', '9.6171118702129040000000'),
(36, 28, '76.7777672662185800000000', '9.5972245424164160000000'),
(37, 29, '76.7897116999308900000000', '9.5579965408779460000000'),
(38, 29, '76.7754035086557700000000', '9.5639543771603660000000'),
(39, 29, '76.8016433715820000000000', '9.5592794170834200000000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hospital`
--

CREATE TABLE `tbl_hospital` (
  `hospital_id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  `longitude` decimal(25,22) NOT NULL,
  `latitude` decimal(25,22) NOT NULL,
  `proper_place_name` varchar(100) NOT NULL,
  `hospital_name` varchar(50) NOT NULL,
  `phone_number` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_hospital`
--

INSERT INTO `tbl_hospital` (`hospital_id`, `place_id`, `longitude`, `latitude`, `proper_place_name`, `hospital_name`, `phone_number`) VALUES
(1, 217, '76.3092481573520600000000', '9.8768053367732700000000', 'Kaprasserry', 'Amrutha Hospital', 8289911639),
(5, 588, '76.6947521826009600000000', '9.3388911152291900000000', 'Kanjirappally', 'S K hospital', 8289911639),
(6, 588, '76.7843387036981100000000', '9.5589766495025860000000', 'Kanjirappally', 'Alpha Hospital', 9847734126);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_instruction`
--

CREATE TABLE `tbl_instruction` (
  `instruction_id` int(11) NOT NULL,
  `disaster_type_id` int(11) NOT NULL,
  `instruction` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_instruction`
--

INSERT INTO `tbl_instruction` (`instruction_id`, `disaster_type_id`, `instruction`) VALUES
(5, 23, 'dhggfhg'),
(6, 23, 'ghfh'),
(7, 24, 'hjgjh');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `login_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `usertype` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`login_id`, `username`, `password`, `usertype`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'Approved'),
(3, 'sofy123', '4d3e444c9245ea86c9539e167461ba5e', 'User', 'Approved'),
(5, 'dd123', '87b1f62d552fd91a6f069e2d94628f4e', 'User', 'Approved'),
(7, 'suby123', '853fd1ecf0bcd01b3e707bfc8deb2b0a', 'Sponser', 'Approved'),
(8, 'hh12345', '2ce182b9346549961a5159dcc16fa2b2', 'User', 'Approved'),
(13, 'kjply123', 'c00ff1f0327222310d8b367f30d1e94f', 'Camp', 'Approved'),
(14, 'ptagovt123', 'ac34262ed88e3f813ec03e0885b32dcd', 'Camp', 'Approved'),
(15, 'qwerty123', '85064efb60a9601805dcea56ec5402f7', 'User', 'Approved'),
(16, 'annie123', '67f55304a74162f81fc9bde55e60a710', 'User', 'Approved'),
(17, 'ptm123', '62ab66be9599fb3898adaf69a0159bb4', 'Camp', 'Approved'),
(18, 'anu123', '9904fd42e4977d5815b5d5679a935ed5', 'User', 'Approved'),
(19, 'st1234', '0555929db360c15bb7f35f74b91f9629', 'Camp', 'Approved'),
(20, 'govt1234', '8732d9bb70c8cfcb9b681f109aa5664d', 'Camp', 'Approved'),
(21, 'stthomas123', '5d550f1ef6a4b9fb5a0e0345595e084a', 'Camp', 'Approved'),
(22, 'nas1200', '469ea71587f8100d4bb23abc83afa1b3', 'User', 'Approved'),
(23, 'nashidmuh', 'fab73858630a76e60769053f6baf73df', 'User', 'Approved'),
(24, 'nashid', 'fab73858630a76e60769053f6baf73df', 'Sponser', 'Approved'),
(25, 'abc123', '61bd60c60d9fb60cc8fc7767669d40a1', 'User', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lost_items`
--

CREATE TABLE `tbl_lost_items` (
  `lost_items_id` int(11) NOT NULL,
  `owner_name` varchar(50) NOT NULL,
  `place_id` int(11) NOT NULL,
  `ration_card_number` varchar(50) NOT NULL,
  `aadhaar_no` bigint(20) NOT NULL,
  `phone_number` bigint(20) NOT NULL,
  `address` varchar(150) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `account_number` int(11) NOT NULL,
  `ifsc_code` varchar(50) NOT NULL,
  `camp_login_id` int(11) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_lost_items`
--

INSERT INTO `tbl_lost_items` (`lost_items_id`, `owner_name`, `place_id`, `ration_card_number`, `aadhaar_no`, `phone_number`, `address`, `description`, `bank_id`, `account_number`, `ifsc_code`, `camp_login_id`, `entry_date`) VALUES
(1, 'df', 421, '45353', 4353, 0, '', 'dfgdd', 0, 454555, '454555', 13, '2020-04-02 10:28:33'),
(3, 'dsf', 426, '4543', 2536, 9847734126, '', 'dfre', 1, 45345, '43534', 13, '2020-04-02 14:44:14'),
(4, 'tyrt', 425, '23552', 32425, 8289911639, '', 'gfdd', 1, 435, '4355', 13, '2020-04-02 14:45:25'),
(5, '', 0, '', 0, 0, '', '', 0, 0, '', 13, '2020-04-11 05:27:26'),
(6, '', 0, '', 0, 0, '', '', 0, 0, '', 13, '2020-04-11 06:14:49'),
(7, 'Anu Thomas', 588, '4558965412', 9857462134567896, 9847734126, 'Anu Villa ', 'sss', 1, 2147483647, 'pppp0859641', 13, '2020-05-18 08:01:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_place`
--

CREATE TABLE `tbl_place` (
  `place_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `place_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_place`
--

INSERT INTO `tbl_place` (`place_id`, `district_id`, `place_name`) VALUES
(1, 255, 'adhur'),
(2, 255, 'Aingoth'),
(3, 255, 'Ajanur'),
(4, 255, 'Ambalathara'),
(5, 255, 'Angadimogar'),
(6, 255, 'Angadimogaru'),
(7, 255, 'Badaje'),
(8, 255, 'Badiyadka'),
(9, 255, 'Badoor'),
(10, 255, 'Balal'),
(11, 255, 'Bandadka'),
(12, 255, 'Chalakadavu'),
(13, 255, 'Chavaragiri'),
(14, 255, 'Cheemeni'),
(15, 255, 'Chemnad'),
(16, 255, 'Cherkala'),
(17, 255, 'Delampady'),
(18, 255, 'Dharmathadka'),
(19, 255, 'Edanad'),
(20, 255, 'Edneer'),
(21, 255, 'Elerithattu'),
(22, 255, 'Eniyadi'),
(23, 255, 'Enmakaje'),
(24, 255, 'Heroor'),
(25, 255, 'Kinathil'),
(26, 255, 'Kodakkad'),
(27, 255, 'Kodalamogaru'),
(28, 255, 'Kodibail'),
(29, 255, 'Kodom'),
(30, 255, 'Kodoth'),
(31, 255, 'Koipady'),
(32, 255, 'Kolavayal'),
(33, 255, 'Kolichal'),
(34, 255, 'Koliyoor'),
(35, 255, 'Kondevoor'),
(36, 255, 'Konnakkad'),
(37, 255, 'Kottappuram'),
(38, 255, 'Kasaragod'),
(39, 255, 'Koyonkara'),
(40, 255, 'Kubanoor'),
(41, 255, 'Kudalmarkala'),
(42, 255, 'Kuloor'),
(43, 255, 'Kumbadaje'),
(44, 255, 'Kunjar'),
(45, 255, 'Kunjathur\r\n'),
(46, 255, 'Kuttikole'),
(47, 255, ' Majibail'),
(48, 255, 'Malom'),
(49, 255, 'Maloth'),
(50, 255, 'Mangalpady'),
(51, 255, 'Maniyat'),
(52, 255, 'Mavilakadappuram'),
(53, 255, 'Meenja'),
(54, 255, ' Mettammal'),
(55, 255, 'Mogral'),
(56, 255, 'Mogral Puthur'),
(57, 255, 'Moodambail'),
(58, 255, 'Mulinja'),
(59, 255, 'Muliyar'),
(60, 255, ' Mulleria'),
(61, 255, 'Munnad'),
(62, 255, 'Nadubail'),
(63, 255, 'Neerchal'),
(64, 255, 'Paivalike'),
(65, 255, 'Panathur'),
(66, 255, 'Pallathadka'),
(67, 255, 'Paduppu'),
(68, 255, 'Sajankila'),
(69, 255, '  Shiriya'),
(70, 255, 'Thayanur'),
(71, 255, ' Thekkil'),
(72, 255, 'Ubrangala'),
(73, 255, ' Ujarulvar'),
(74, 255, 'Yethadka'),
(75, 255, ' Vorkady'),
(76, 255, ' Yethadka'),
(77, 254, 'Ambalappad'),
(78, 254, 'Anakkampoyil'),
(79, 254, 'Annassery'),
(80, 254, 'Arambram'),
(81, 254, 'Arikkulam'),
(82, 254, 'Chathamangalam'),
(83, 254, 'Chathangottunada'),
(84, 254, 'Cheekkilode'),
(85, 254, 'Cheethapattu'),
(86, 254, 'Chekkiad'),
(87, 254, 'Chelannur'),
(88, 254, 'Edathumkara'),
(89, 254, 'Engapuzha'),
(90, 254, 'Eramala'),
(91, 254, 'Eranchiparamb'),
(92, 254, 'Eranhikkal'),
(93, 254, 'Kadiyangad'),
(94, 254, 'Kakkodi'),
(95, 254, 'Kakkur'),
(96, 254, 'Kalariyullathil'),
(97, 254, 'Kanthalad'),
(98, 254, 'Keezhariyur'),
(99, 254, 'Kinalur'),
(100, 254, 'Kizhakkoth'),
(101, 254, 'Kodencheri'),
(102, 254, 'Kodiyathur'),
(103, 254, 'Kokkallur'),
(104, 254, 'Kolikkal'),
(105, 254, 'Koodathayi'),
(106, 254, 'Koolimadu'),
(107, 254, 'Koorachundu'),
(108, 254, 'Koothali'),
(109, 254, 'Kottappally'),
(110, 254, 'Manashery'),
(111, 254, 'Maniyur'),
(112, 254, 'Maruthonkara'),
(113, 254, 'Memunda'),
(114, 254, 'Menhaniam'),
(115, 254, 'Meppayur'),
(116, 254, 'Moodadi'),
(117, 254, 'Nadapuram'),
(118, 254, 'Naduvannur'),
(119, 254, 'Nagampara'),
(120, 254, 'Nambrathkara'),
(121, 254, 'Nanmanda'),
(122, 254, 'Narayamkulam'),
(123, 254, 'Narikkuni'),
(124, 254, 'Narippatta'),
(125, 254, 'Omassery'),
(126, 254, 'Onchiam'),
(127, 254, 'Orkkatteri'),
(128, 254, 'Palakkulam'),
(129, 254, 'Palangad'),
(130, 254, 'Palery'),
(131, 254, 'Vilangad'),
(132, 254, 'Thalakkulathur'),
(133, 254, 'Thazhecode'),
(134, 254, 'Thikkodi'),
(135, 254, 'Thinoor'),
(136, 254, 'Thiruthiyad'),
(137, 254, 'Ulliyeri'),
(138, 254, 'Unnikulam'),
(139, 254, 'Uralloor'),
(140, 254, 'Valayam'),
(141, 254, 'Valayanad'),
(142, 254, 'Valiacode'),
(143, 254, 'Vanimal'),
(144, 254, 'Vattapparapoyil'),
(145, 256, 'Anavilasam'),
(146, 256, 'Anaviratty'),
(147, 256, 'Arakkulam'),
(148, 256, 'Arakulam'),
(149, 256, 'Ayyappancoil'),
(150, 256, 'Chathurangappara'),
(151, 256, 'Chemmannar'),
(152, 256, 'Chilavu'),
(153, 256, 'Chinnakanal'),
(154, 256, 'Chittampara'),
(155, 256, 'Elappally'),
(156, 256, 'Elappara'),
(157, 256, 'Ellakkal'),
(158, 256, 'Kalkoonthal'),
(159, 256, 'Kambilikandam'),
(160, 256, 'Kanchiyar'),
(161, 256, 'Kanjikuzhi'),
(162, 256, 'Kanjikuzhy'),
(163, 256, 'Konnathady'),
(164, 256, 'Kottakamboor'),
(165, 256, 'Kudayathoor'),
(166, 256, 'Kunchithanny'),
(167, 256, 'Kuninji'),
(168, 256, 'Kuzhikandom'),
(169, 256, 'Mankulam'),
(170, 256, 'Mannamkandam'),
(171, 256, 'Mannathara'),
(172, 256, 'Melechinnar'),
(173, 256, 'Mlappara'),
(174, 256, 'Moolamattom'),
(175, 256, 'Padamugham'),
(176, 256, 'Pallivasal'),
(177, 256, 'Paloorkavu'),
(178, 256, 'Pampadumpara'),
(179, 256, 'Pampupara'),
(180, 256, 'Poopara'),
(181, 256, 'Pothupara'),
(182, 256, 'Pottankad'),
(183, 256, 'Purapuzha'),
(184, 256, 'Rajakumari'),
(185, 256, 'Rajamudy'),
(186, 256, 'Ramakkalmedu'),
(187, 256, 'Santhanpara'),
(188, 256, 'Sulthankada'),
(189, 256, 'Thenathoor'),
(190, 256, 'Thookkupalam'),
(191, 256, 'Thopramkudy'),
(192, 256, 'Udumbannoor'),
(193, 256, 'Upputhara'),
(194, 256, 'Upputhode'),
(195, 256, 'Urkkad'),
(196, 256, 'Vandamattom'),
(197, 256, 'Vandanmedu'),
(198, 256, 'Vannappuram'),
(199, 256, 'Vathikudy'),
(200, 257, 'Aikaranad'),
(201, 257, 'Akaparambu'),
(202, 257, 'Alangad'),
(203, 257, 'Alattuchira'),
(204, 257, 'Aluva_East'),
(205, 257, 'Aluva_West'),
(206, 257, 'Chakkarakadavu'),
(207, 257, 'Chalakkal'),
(208, 257, 'Chathamattom'),
(209, 257, 'Chathedom'),
(210, 257, 'Chelamattom'),
(211, 257, 'Edayappuram'),
(212, 257, 'Edayar'),
(213, 257, 'Elamkunnapuzha'),
(214, 257, 'Elanji'),
(215, 257, 'Elenthikara'),
(216, 257, 'Enanalloor'),
(217, 257, 'Kaprassery'),
(218, 257, 'Karingamthuruth'),
(219, 257, 'Karukutty'),
(220, 257, 'Karumalloor'),
(221, 257, 'Keecherry'),
(222, 257, 'Keerampara'),
(223, 257, 'Maliankara'),
(224, 257, 'Mamala'),
(225, 257, 'Mambra'),
(226, 257, 'Manakunnam'),
(227, 257, 'Maneed'),
(228, 257, 'Manjalloor'),
(229, 257, 'Manjapra'),
(230, 257, 'Marady'),
(231, 257, 'Marampilly'),
(232, 257, 'Meenkunnam'),
(233, 257, 'Memadangu'),
(234, 257, 'Nellikuzhi'),
(235, 257, 'Neriamangalam'),
(236, 257, 'Njarackal'),
(237, 257, 'Ochanthuruth'),
(238, 257, 'Odakkali'),
(239, 257, 'Paipra'),
(240, 257, 'Palakkuzha'),
(241, 257, 'Panayapilly'),
(242, 257, 'Panayikulam'),
(243, 257, 'Pancode'),
(244, 257, 'Poonithura'),
(245, 257, 'Pooyamkutty'),
(246, 257, 'Ramamangalam'),
(247, 257, 'Ramanthuruth'),
(248, 257, 'South Paravur'),
(249, 257, 'Sreemoolanagaram'),
(250, 257, 'Thalacode'),
(251, 257, 'Thekkumbhagom'),
(252, 257, 'Thevakkal'),
(253, 257, 'Thirumarady'),
(254, 257, 'Thirumarayoor'),
(255, 257, 'Valayanchirangara'),
(256, 257, 'Varappetty'),
(257, 257, 'Vattekkunnam'),
(258, 257, 'Vavakkad'),
(259, 257, 'Valakam'),
(260, 257, 'Veliyanad'),
(261, 257, 'Velloorkunnam'),
(262, 257, 'Venduruthy'),
(263, 258, 'Ambilad'),
(264, 258, 'Anappanthy'),
(265, 258, 'Andaloor'),
(266, 258, 'Anjarakkandy'),
(267, 258, 'Aralam'),
(268, 258, 'Atttadappa'),
(269, 258, 'Cheleri'),
(270, 258, 'Chempanthotty'),
(271, 258, 'Chemperi'),
(272, 258, 'Chengalai'),
(273, 258, 'Cheppanool'),
(274, 258, 'Elapeedika'),
(275, 258, 'Eramam'),
(276, 258, 'Eruvatty'),
(277, 258, 'Eruvessi'),
(278, 258, 'Ettammal'),
(279, 258, 'Kanayi'),
(280, 258, 'Kandakkai'),
(281, 258, 'Kandamkunnu'),
(282, 258, 'Kandankali'),
(283, 258, 'Kanichar'),
(284, 258, 'Maniyoor'),
(285, 258, 'Marakkarkandy'),
(286, 258, 'Mathiparamba'),
(287, 258, 'Matool'),
(288, 258, 'Mavichery'),
(289, 258, 'Mayyil'),
(290, 258, 'Nediyanga'),
(291, 258, 'Nedumpoil'),
(292, 258, 'Nellikutty'),
(293, 258, 'Nettur'),
(294, 258, 'Niranthodu'),
(295, 258, 'Padiyotchal'),
(296, 258, 'Paisakari'),
(297, 258, 'Palathayi'),
(298, 258, 'Pallikunnu'),
(299, 258, 'Panapuzha'),
(300, 258, 'Panniyoor'),
(301, 258, 'Sreekandapuram'),
(302, 258, 'Thabore'),
(303, 258, 'Thillenkeri'),
(304, 258, 'Thimiri'),
(305, 258, 'Thirumeni'),
(306, 258, 'Velimanam'),
(307, 258, 'Vellad'),
(308, 258, 'Vellarvelly'),
(309, 258, 'Vellora'),
(310, 258, 'Vengad'),
(311, 259, 'Alincuvadu'),
(312, 259, 'Aliparamba'),
(313, 259, 'Anakkayam'),
(314, 259, 'Anamangad'),
(315, 259, 'Anantavur'),
(316, 259, 'Angadipuram'),
(317, 259, 'Cerukulambu'),
(318, 259, 'Cettiyangadi'),
(319, 259, 'Chamravattam'),
(320, 259, 'Changaramkulam'),
(321, 259, 'Chelari'),
(322, 259, 'Edarikode'),
(323, 259, 'Edavanna'),
(324, 259, 'Edavannappara'),
(325, 259, 'Edayoor'),
(326, 259, 'Elamaram'),
(327, 259, 'Idimuzhikkal'),
(328, 259, 'Indianoor'),
(329, 259, 'Irimbiliyam'),
(330, 259, 'Irumbuzhi'),
(331, 259, 'Ittilakkal'),
(332, 259, 'Karingapara'),
(333, 259, 'Karinkallathani'),
(334, 259, 'Kattipparutti'),
(335, 259, 'Kavanoor'),
(336, 259, 'Keezhattur'),
(337, 259, 'Kelunairpady'),
(338, 259, 'Kinaradappan'),
(339, 259, 'Kizhuparamba'),
(340, 259, 'Kodinhi'),
(341, 259, 'Mankada'),
(342, 259, 'Marakkara'),
(343, 259, 'Maranchery'),
(344, 259, 'Maravattam'),
(345, 259, 'Melmuri'),
(346, 259, 'Nannambra'),
(347, 259, 'Nannamukku'),
(348, 259, 'Neduva'),
(349, 259, 'Nenmini'),
(350, 259, 'Niramarutur'),
(351, 259, 'Pothukal'),
(352, 259, 'Pottippara'),
(353, 259, 'Pulikkal'),
(354, 259, 'Pullipadam'),
(355, 259, 'Pulpatta'),
(356, 259, 'Purathur'),
(357, 259, 'Teyyala'),
(358, 259, 'Thalappara'),
(359, 259, 'Tiruvali'),
(360, 259, 'Tirunavaya'),
(361, 259, 'Trikkalangode'),
(362, 259, 'Vallikkunnu'),
(363, 259, 'Vazhakkad'),
(364, 259, 'Vazhayur'),
(365, 259, 'Vazhenkada'),
(366, 259, 'Vazhikkadavu'),
(367, 259, 'Veliyankode'),
(368, 260, 'Athicode'),
(369, 260, 'Athipotta'),
(370, 260, 'Ayiloor'),
(371, 260, 'Ayyappankave'),
(372, 260, 'Ayyapuram'),
(373, 260, 'Chokkanathapuram'),
(374, 260, 'Chooriyode'),
(375, 260, 'Chulanur'),
(376, 260, 'Chunangad'),
(377, 260, 'Eruthempathy'),
(378, 260, 'Ethanur'),
(379, 260, 'Ezhuvanthala'),
(380, 260, 'Karukaputhur'),
(381, 260, 'Karumanassery'),
(382, 260, 'Kattusseri'),
(383, 260, 'Keralasseri'),
(384, 260, 'Kudallur'),
(385, 260, 'Kulukkallur'),
(386, 260, 'Kumaramputhur'),
(387, 260, 'Kumaranellur'),
(388, 260, 'Kunissery'),
(389, 260, 'Manjalur'),
(390, 260, 'Mankara'),
(391, 260, 'Mannanur'),
(392, 260, 'Mannur'),
(393, 260, 'Marutharode'),
(394, 260, 'Nedungottur'),
(395, 260, 'Nellaya'),
(396, 260, 'Nelliampathi'),
(397, 260, 'Nemmara'),
(398, 260, 'Nurani'),
(399, 260, 'Pokkunny'),
(400, 260, 'Palakkayam'),
(401, 260, 'Pallanchathanur'),
(402, 260, 'Pallassena'),
(403, 260, 'Pallavur'),
(404, 260, 'Perumudiyoor'),
(405, 260, 'Peruvemba'),
(406, 260, 'Pirayiri'),
(407, 260, 'Polpully'),
(408, 260, 'Poonchola'),
(409, 260, 'Poovathani'),
(410, 260, 'Tathamangalam'),
(411, 260, 'Thadukkassery'),
(412, 260, 'Thekkedesom'),
(413, 260, 'Vadavannur'),
(414, 260, 'Vadakarapathy'),
(415, 260, 'Valathala'),
(416, 260, 'Valiyavallampathy'),
(417, 260, 'Vallangi'),
(418, 261, 'Anicadu'),
(419, 261, 'Aranmula'),
(420, 261, 'Aruvappulam'),
(421, 261, 'Athikkayam'),
(422, 261, 'Ayroor'),
(423, 261, 'Chenneerkara'),
(424, 261, 'Cherickal'),
(425, 261, 'Cherukole'),
(426, 261, 'Chethakkal'),
(427, 261, 'Chirappuram'),
(428, 261, 'Enathu'),
(429, 261, 'Erathu'),
(430, 261, 'Eraviperoor'),
(431, 261, 'Erumakkadu'),
(432, 261, 'Ezhamkulam'),
(433, 261, 'Kaipattoor'),
(434, 261, 'Kaithaparampu'),
(435, 261, 'Kalampala'),
(436, 261, 'Kalanjoor'),
(437, 261, 'Kalleli'),
(438, 261, 'Keekozhur'),
(439, 261, 'Keerukuzhy'),
(440, 261, 'Keezhukara'),
(441, 261, 'Keezhuvaipur'),
(442, 261, 'Kidangannoor'),
(443, 261, 'Kizhakkenmuthoor'),
(444, 261, 'Kodumon'),
(445, 261, 'Koipuram'),
(446, 261, 'Mannadi'),
(447, 261, 'Mathoor'),
(448, 261, 'Melukara'),
(449, 261, 'Mithrapuram'),
(450, 261, 'Mulampuzha'),
(488, 262, 'Arienkavu'),
(487, 262, 'Arackal'),
(486, 262, 'Anchalumoodu'),
(485, 262, 'Alumpeedika'),
(484, 262, 'Alimukku'),
(460, 261, 'Muttumon'),
(461, 261, 'Nariyapuram'),
(462, 261, 'Nedumpuram'),
(463, 261, 'Neervilakom'),
(464, 261, 'Nellimukal'),
(465, 261, 'Nilakkal'),
(466, 261, 'Niranam'),
(467, 261, 'Perunad'),
(468, 261, 'Poovanpara'),
(469, 261, 'Pottanmala'),
(470, 261, 'Prakkanam'),
(471, 261, 'Pramadom'),
(472, 261, 'Punnavely'),
(473, 261, 'Puramattam'),
(474, 261, 'Thattayil'),
(475, 261, 'Thekkemala'),
(476, 261, 'Thekkummala'),
(477, 261, 'Thelliyoor'),
(478, 261, 'Thottamon'),
(479, 261, 'Vanchitra'),
(480, 261, 'Vayalathala'),
(481, 261, 'Vayyattupuzha'),
(482, 261, 'Vazhamuttom'),
(483, 261, 'Vechoochira'),
(489, 262, 'Aryankavu'),
(490, 262, 'Attuvassery'),
(491, 262, 'Cheriazheekkal'),
(492, 262, 'Cherupoika'),
(493, 262, 'Chirakkara'),
(494, 262, 'Chithara'),
(495, 262, 'Chittumala'),
(496, 262, 'Clappana'),
(497, 262, 'Edamulackal'),
(498, 262, 'Elamad'),
(499, 262, 'Elampal'),
(500, 262, 'Elampalloor'),
(501, 262, 'Elikkattoor'),
(502, 262, 'Eroor'),
(503, 262, 'Kallada'),
(504, 262, 'Kallelibhagom'),
(505, 262, 'Kalluvathukkal'),
(506, 262, 'Kamukumchery'),
(507, 262, 'Kanjavely'),
(508, 262, 'Karingannoor'),
(509, 262, 'Kattampally'),
(510, 262, 'Kizhakkekallada'),
(511, 262, 'Kizhekketheruvu'),
(512, 262, 'Koduvila'),
(513, 262, 'Meenad'),
(514, 262, 'Melila'),
(515, 262, 'Mulavana'),
(516, 262, 'Mundrothuruth'),
(517, 262, 'Mylakkadu'),
(518, 262, 'Mylom'),
(519, 262, 'Mynagappally'),
(520, 262, 'Nadakkal'),
(521, 262, 'Nedumpana'),
(522, 262, 'Neduvathoor'),
(523, 262, 'Neendakara'),
(524, 262, 'Odanavattam'),
(525, 262, 'Pallimon'),
(526, 262, 'Panayam'),
(527, 262, 'Pangodu'),
(528, 262, 'Panmana'),
(529, 262, 'Pavumba'),
(530, 262, 'Perinad'),
(531, 262, 'Peringad'),
(532, 262, 'Perumannur'),
(533, 262, 'Pidavoor'),
(534, 262, 'Polachira'),
(535, 262, 'Sakthikulangara'),
(536, 262, 'Sasthamkotta'),
(537, 262, 'Sinkarappally'),
(538, 262, 'Sooranad'),
(539, 262, 'Thinkalkarikkakom'),
(540, 262, 'Thodiyoor'),
(541, 262, 'Thrikkadavoor'),
(542, 262, 'Thrikkaruva'),
(543, 262, 'Thudayannoor'),
(544, 262, 'Vettikkavala'),
(545, 262, 'Vilakkudy'),
(546, 262, 'Vilakkupara'),
(547, 262, 'Vilappuram'),
(549, 266, 'Pampady'),
(550, 266, 'Kottayam'),
(551, 263, 'Adat (Thrissur)'),
(552, 263, 'Akathiyoor'),
(553, 263, 'AlagappaNagar'),
(554, 263, 'Annamanada'),
(555, 263, 'Arangottukara'),
(556, 263, 'Attore North'),
(557, 263, 'Attore South'),
(558, 263, 'Avinissery'),
(559, 263, 'Brahmakulam'),
(560, 263, 'Chalakudy'),
(561, 263, 'Chelakkara'),
(562, 263, 'Chavakkad'),
(563, 263, 'Guruvayur'),
(564, 263, 'Irinjalakuda'),
(565, 263, 'Kodungallur'),
(566, 263, 'Koratty'),
(567, 264, 'Kalpetta'),
(568, 264, 'Kayakkunn'),
(569, 264, 'Mananthavady'),
(570, 264, 'Meenangadi'),
(571, 264, 'Padinharethara'),
(572, 264, 'Panamaram'),
(573, 264, 'Pulpally'),
(574, 264, 'Sultan Bathery'),
(575, 265, 'Neyyattinkara '),
(576, 265, 'Thiruvananthapuram'),
(577, 265, 'Varkala'),
(578, 265, 'Attingal'),
(579, 265, 'Chirayinkeezhu'),
(580, 265, 'Kaniyapuram'),
(581, 265, 'Kattakada'),
(582, 265, 'Kilimanoor'),
(583, 265, 'Konchiravila'),
(584, 265, 'Nedumangad'),
(585, 266, 'Changanassery'),
(586, 266, 'Erattupetta'),
(587, 266, 'Ettumanoor'),
(588, 266, 'Kanjirappally'),
(589, 266, 'Manarcaud'),
(590, 266, 'Pala'),
(591, 266, 'Ponkunnam'),
(592, 266, 'Ramapuram'),
(593, 266, 'Vaikom'),
(594, 267, 'Alappuzha'),
(595, 267, 'Ambalappuzha'),
(596, 267, 'Charummood'),
(597, 267, 'Chengannur'),
(598, 267, 'Cherthala'),
(599, 267, 'Chettikulangara'),
(600, 267, 'Kayamkulam'),
(601, 267, 'Mavelikkara'),
(602, 267, 'Muhamma'),
(603, 267, 'Muhamma'),
(604, 267, 'Vellakinar'),
(605, 1, 'Anatapur'),
(606, 261, 'hj'),
(607, 261, 'jjjjjjjjjjjjjjjjjjjjjjjjjjjj');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_police_station`
--

CREATE TABLE `tbl_police_station` (
  `police_station_id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  `longitude` decimal(25,22) NOT NULL,
  `latitude` decimal(25,22) NOT NULL,
  `proper_place_name` varchar(100) NOT NULL,
  `phone_number` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_police_station`
--

INSERT INTO `tbl_police_station` (`police_station_id`, `place_id`, `longitude`, `latitude`, `proper_place_name`, `phone_number`) VALUES
(1, 424, '76.7832229047479200000000', '9.5598230379061200000000', 'cherickal', 8289911639),
(3, 588, '76.7882869153680300000000', '9.5585901315174250000000', 'Kanjirappally', 9847734126);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_required_item`
--

CREATE TABLE `tbl_required_item` (
  `item_id` int(11) NOT NULL,
  `item` varchar(50) NOT NULL,
  `camp_login_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_required_item`
--

INSERT INTO `tbl_required_item` (`item_id`, `item`, `camp_login_id`) VALUES
(1, 'Rice', 13),
(2, 'Peas', 13),
(3, 'lizol ', 13),
(4, 'Dal', 13),
(6, 'Tablets', 17);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sponsered_item`
--

CREATE TABLE `tbl_sponsered_item` (
  `sponsered_item_id` int(11) NOT NULL,
  `required_id` int(11) NOT NULL,
  `sponser_login_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sponsered_item`
--

INSERT INTO `tbl_sponsered_item` (`sponsered_item_id`, `required_id`, `sponser_login_id`, `quantity`, `entry_date`) VALUES
(1, 8, 7, 10, '2019-10-24 10:33:23'),
(2, 8, 7, 10, '2019-10-24 10:34:12'),
(4, 8, 7, 10, '2019-10-24 10:36:31'),
(5, 8, 7, 10, '2019-10-24 10:37:33'),
(6, 6, 7, 5, '2019-10-24 10:37:58'),
(7, 6, 7, 30, '2019-10-24 10:38:29'),
(8, 7, 7, 15, '2019-10-24 10:39:11'),
(9, 8, 7, 50, '2019-10-24 12:07:47'),
(10, 9, 7, 15, '2019-11-12 05:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sponser_payment`
--

CREATE TABLE `tbl_sponser_payment` (
  `payment_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `sponser_login_id` int(11) NOT NULL,
  `camp_login_id` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) NOT NULL DEFAULT 'Not Paid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sponser_payment`
--

INSERT INTO `tbl_sponser_payment` (`payment_id`, `amount`, `sponser_login_id`, `camp_login_id`, `payment_date`, `entry_date`, `status`) VALUES
(1, 16000, 7, 13, '2019-10-25', '2019-10-24 11:47:23', 'Not Paid'),
(2, 5000, 7, 13, '2019-10-29', '2019-10-24 11:48:45', 'Not Paid'),
(3, 1, 7, 13, '2020-04-27', '2020-04-26 08:46:39', 'Not Paid'),
(4, 1, 7, 13, '2020-04-27', '2020-04-26 08:50:28', 'Not Paid'),
(5, 1, 7, 13, '2020-04-29', '2020-04-26 08:54:13', 'Not Paid'),
(6, 1, 7, 13, '2020-04-28', '2020-04-26 09:38:09', 'Not Paid'),
(7, 1, 7, 13, '2020-04-29', '2020-04-26 09:53:32', 'Not Paid'),
(8, 5, 7, 13, '2020-04-29', '2020-04-26 09:53:47', 'Not Paid'),
(9, 2, 7, 13, '2020-04-28', '2020-04-26 09:56:58', 'Not Paid'),
(10, 50000, 7, 14, '2020-04-30', '2020-04-26 10:08:03', 'Not Paid'),
(11, 2, 7, 13, '2020-04-29', '2020-04-26 10:08:51', 'Not Paid'),
(12, 1, 7, 13, '2020-04-29', '2020-04-26 10:49:28', 'Not Paid'),
(13, 2, 7, 13, '2020-04-29', '2020-04-27 13:45:45', 'Not Paid');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sponser_registration`
--

CREATE TABLE `tbl_sponser_registration` (
  `sponser_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `place_id` int(11) NOT NULL,
  `house_name` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `phone_number` bigint(20) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `login_id` int(11) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sponser_registration`
--

INSERT INTO `tbl_sponser_registration` (`sponser_id`, `firstname`, `lastname`, `place_id`, `house_name`, `gender`, `date_of_birth`, `phone_number`, `email_id`, `login_id`, `reg_date`) VALUES
(1, 'Suby', 'Babu', 424, 'Suby Villaa', 'Female', '1999-05-05', 8976543223, 'suby@gmail.com', 7, '2019-09-04 05:57:10'),
(2, 'nashid', 'd', 605, 'Parambil House', 'Male', '2024-02-04', 8606444539, 'nashidmuhammed9@gmail.com', 24, '2024-02-22 14:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(100) NOT NULL,
  `iso_code` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`state_id`, `state_name`, `iso_code`) VALUES
(1, 'Andhra Pradesh', 'IN-AP'),
(2, 'Arunachal Pradesh', 'IN-AR'),
(3, 'Assam', 'IN-AS'),
(4, 'Bihar', 'IN-BR'),
(5, 'Chhattisgarh', 'IN-CT'),
(6, 'Goa', 'IN-GA'),
(7, 'Gujarat', 'IN-GJ'),
(8, 'Haryana', 'IN-HR'),
(9, 'Himachal Pradesh', 'IN-HP'),
(10, 'Jammu and Kashmir', 'IN-JK'),
(11, 'Jharkhand', 'IN-JH'),
(12, 'Karnataka', 'IN-KA'),
(13, 'Kerala', 'IN-KL'),
(14, 'Madhya Pradesh', 'IN-MP'),
(15, 'Maharashtra', 'IN-MH'),
(16, 'Manipur', 'IN-MN'),
(17, 'Meghalaya', 'IN-ML'),
(18, 'Mizoram', 'IN-MZ'),
(19, 'Nagaland', 'IN-NL'),
(20, 'Odisha', 'IN-OR'),
(21, 'Punjab', 'IN-PB'),
(22, 'Rajasthan', 'IN-RJ'),
(23, 'Sikkim', 'IN-SK'),
(24, 'Tamil Nadu', 'IN-TN'),
(25, 'Tripura', 'IN-TR'),
(26, 'Uttar Pradesh', 'IN-UP'),
(27, 'Uttarakhand', 'IN-UT'),
(28, 'Telangana', 'IN-TG'),
(29, 'West Bengal', 'IN-WB'),
(30, 'Andaman and Nicobar Islands', 'IN-AN'),
(31, 'Chandigarh', 'IN-CH'),
(32, 'Dadra and Nagar Haveli', 'IN-DN'),
(33, 'Daman and Diu', 'IN-DD'),
(34, 'Delhi', 'IN-DL'),
(35, 'Lakshadweep', 'IN-LD'),
(36, 'Puducherry', 'IN-PY');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_position`
--

CREATE TABLE `tbl_user_position` (
  `position_id` int(11) NOT NULL,
  `user_login_id` int(11) NOT NULL,
  `longitude` decimal(25,22) NOT NULL,
  `latitude` decimal(25,22) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user_position`
--

INSERT INTO `tbl_user_position` (`position_id`, `user_login_id`, `longitude`, `latitude`, `entry_date`) VALUES
(1, 3, '76.7869708465575500000000', '9.5584843326987430000000', '2020-04-10 08:18:20'),
(2, 16, '76.7904899047850900000000', '9.5683023228984540000000', '2019-11-10 13:29:53'),
(3, 5, '76.7879149841308600000000', '9.5579172507282130000000', '2020-04-10 11:41:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_registration`
--

CREATE TABLE `tbl_user_registration` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `place_id` int(11) NOT NULL,
  `house_name` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `phone_number` bigint(20) NOT NULL,
  `relative_phone_number` bigint(20) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `login_id` int(11) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_registration`
--

INSERT INTO `tbl_user_registration` (`user_id`, `firstname`, `lastname`, `place_id`, `house_name`, `gender`, `date_of_birth`, `phone_number`, `relative_phone_number`, `email_id`, `login_id`, `reg_date`) VALUES
(2, 'Sofy', 'Sam', 433, 'Sofy Villa', 'Female', '2000-04-12', 9847734126, 8289911639, 'sofysam23@gmail.com', 3, '2019-09-04 05:05:35'),
(3, '', '', 0, '', '', '0000-00-00', 0, 0, '', 4, '2019-09-04 05:32:26'),
(4, 'ds', 'd', 439, 'dsf', 'Male', '2019-09-04', 9847734126, 8289911639, 'sofysam234@gmail.com', 5, '2019-09-04 05:40:20'),
(5, 'sf', 'dfs', 427, 'dsf', 'Male', '2019-09-18', 9865321245, 8754212356, 'phebaebenezer@gmail.com', 8, '2019-09-18 12:04:51'),
(6, 'qwerty', 'k', 219, 'ertyu', 'Female', '1999-02-01', 8970668556, 9007865776, 'sofysam@mca.ajce.in', 15, '2019-11-09 08:35:59'),
(7, 'Annie', 'G', 422, 'Annie Villa ', 'Female', '2009-01-01', 9847734126, 8289911639, 'sofysam@mca.ajce.in', 16, '2019-11-12 03:53:01'),
(8, 'Anu', 'Joseph', 419, 'Anu Villa', 'Female', '2002-04-10', 9847734126, 9847734126, 'anu@gmail.com', 18, '2020-04-29 06:35:46'),
(9, 'nashid', 'd', 147, 'gfyd', 'Male', '2024-02-07', 8606444539, 8606444539, 'nashidmuhammed9@gmail.com', 22, '2024-02-17 14:12:21'),
(10, 'nashid', 'd', 77, 'Parambil House', 'Male', '2024-02-01', 8606444539, 8606444539, 'nashidmuhammed9@gmail.com', 23, '2024-02-17 14:14:09'),
(11, 'nashid', 'd', 605, 'Parambil House', 'Male', '2024-04-02', 8606444539, 8606444539, 'nashidmuhammed9@gmail.com', 25, '2024-04-27 04:33:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_affected_people`
--
ALTER TABLE `tbl_affected_people`
  ADD PRIMARY KEY (`affected_people_id`);

--
-- Indexes for table `tbl_atm`
--
ALTER TABLE `tbl_atm`
  ADD PRIMARY KEY (`atm_id`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `tbl_bank_branches`
--
ALTER TABLE `tbl_bank_branches`
  ADD PRIMARY KEY (`bank_branches_id`);

--
-- Indexes for table `tbl_camp`
--
ALTER TABLE `tbl_camp`
  ADD PRIMARY KEY (`camp_id`);

--
-- Indexes for table `tbl_camp_requirements`
--
ALTER TABLE `tbl_camp_requirements`
  ADD PRIMARY KEY (`required_id`);

--
-- Indexes for table `tbl_camp_staff`
--
ALTER TABLE `tbl_camp_staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `tbl_camp_status`
--
ALTER TABLE `tbl_camp_status`
  ADD PRIMARY KEY (`camp_status_id`);

--
-- Indexes for table `tbl_complaints`
--
ALTER TABLE `tbl_complaints`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `tbl_department_camp`
--
ALTER TABLE `tbl_department_camp`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `tbl_disaster_type`
--
ALTER TABLE `tbl_disaster_type`
  ADD PRIMARY KEY (`disaster_type_id`);

--
-- Indexes for table `tbl_disaster_warning`
--
ALTER TABLE `tbl_disaster_warning`
  ADD PRIMARY KEY (`disaster_warning_id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `tbl_evacuation_points`
--
ALTER TABLE `tbl_evacuation_points`
  ADD PRIMARY KEY (`evacuation_id`);

--
-- Indexes for table `tbl_hospital`
--
ALTER TABLE `tbl_hospital`
  ADD PRIMARY KEY (`hospital_id`);

--
-- Indexes for table `tbl_instruction`
--
ALTER TABLE `tbl_instruction`
  ADD PRIMARY KEY (`instruction_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `tbl_lost_items`
--
ALTER TABLE `tbl_lost_items`
  ADD PRIMARY KEY (`lost_items_id`);

--
-- Indexes for table `tbl_place`
--
ALTER TABLE `tbl_place`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `tbl_police_station`
--
ALTER TABLE `tbl_police_station`
  ADD PRIMARY KEY (`police_station_id`);

--
-- Indexes for table `tbl_required_item`
--
ALTER TABLE `tbl_required_item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `tbl_sponsered_item`
--
ALTER TABLE `tbl_sponsered_item`
  ADD PRIMARY KEY (`sponsered_item_id`);

--
-- Indexes for table `tbl_sponser_payment`
--
ALTER TABLE `tbl_sponser_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_sponser_registration`
--
ALTER TABLE `tbl_sponser_registration`
  ADD PRIMARY KEY (`sponser_id`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `tbl_user_position`
--
ALTER TABLE `tbl_user_position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `tbl_user_registration`
--
ALTER TABLE `tbl_user_registration`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_affected_people`
--
ALTER TABLE `tbl_affected_people`
  MODIFY `affected_people_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_atm`
--
ALTER TABLE `tbl_atm`
  MODIFY `atm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_bank_branches`
--
ALTER TABLE `tbl_bank_branches`
  MODIFY `bank_branches_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_camp`
--
ALTER TABLE `tbl_camp`
  MODIFY `camp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_camp_requirements`
--
ALTER TABLE `tbl_camp_requirements`
  MODIFY `required_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_camp_staff`
--
ALTER TABLE `tbl_camp_staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_camp_status`
--
ALTER TABLE `tbl_camp_status`
  MODIFY `camp_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_complaints`
--
ALTER TABLE `tbl_complaints`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_department_camp`
--
ALTER TABLE `tbl_department_camp`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_disaster_type`
--
ALTER TABLE `tbl_disaster_type`
  MODIFY `disaster_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_disaster_warning`
--
ALTER TABLE `tbl_disaster_warning`
  MODIFY `disaster_warning_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=597;

--
-- AUTO_INCREMENT for table `tbl_evacuation_points`
--
ALTER TABLE `tbl_evacuation_points`
  MODIFY `evacuation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbl_hospital`
--
ALTER TABLE `tbl_hospital`
  MODIFY `hospital_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_instruction`
--
ALTER TABLE `tbl_instruction`
  MODIFY `instruction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_lost_items`
--
ALTER TABLE `tbl_lost_items`
  MODIFY `lost_items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_place`
--
ALTER TABLE `tbl_place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=608;

--
-- AUTO_INCREMENT for table `tbl_police_station`
--
ALTER TABLE `tbl_police_station`
  MODIFY `police_station_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_required_item`
--
ALTER TABLE `tbl_required_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_sponsered_item`
--
ALTER TABLE `tbl_sponsered_item`
  MODIFY `sponsered_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_sponser_payment`
--
ALTER TABLE `tbl_sponser_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_sponser_registration`
--
ALTER TABLE `tbl_sponser_registration`
  MODIFY `sponser_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_user_position`
--
ALTER TABLE `tbl_user_position`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_user_registration`
--
ALTER TABLE `tbl_user_registration`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
