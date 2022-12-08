-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 08, 2022 at 10:46 AM
-- Server version: 10.2.3-MariaDB
-- PHP Version: 7.3.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recruitment_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `id` int(30) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `csalary` varchar(250) NOT NULL,
  `esalary` varchar(250) NOT NULL,
  `experience` varchar(250) NOT NULL,
  `dojoining` varchar(250) NOT NULL,
  `address` text NOT NULL,
  `cover_letter` text NOT NULL,
  `position_id` int(30) NOT NULL,
  `resume_path` text NOT NULL,
  `source` varchar(50) NOT NULL,
  `Comment_source` varchar(55) NOT NULL,
  `process_id` tinyint(30) NOT NULL DEFAULT 0 COMMENT '0=for review\r\n',
  `status` varchar(250) NOT NULL,
  `nextinterview` varchar(250) NOT NULL,
  `nextview` varchar(250) NOT NULL,
  `User_id` varchar(250) NOT NULL,
  `fStatus` varchar(250) NOT NULL,
  `rand_id` int(250) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `email`, `contact`, `csalary`, `esalary`, `experience`, `dojoining`, `address`, `cover_letter`, `position_id`, `resume_path`, `source`, `Comment_source`, `process_id`, `status`, `nextinterview`, `nextview`, `User_id`, `fStatus`, `rand_id`, `date_created`) VALUES
(10, 'Ishant', '', 'Kumar', 'Male', 'ishantitechnology@gmail.com', '9991837445', '35K', '45K', '3-5 Years', '15 Days', 'Gurgaon,Haryana', '', 44, '1663064820_Naukri_IshantKumar[3y_6m].doc', '', '', 0, 'MACHINE TEST', '', '', '25', 'FAIL', 32414579, '2022-09-13 15:57:03'),
(27, 'Md', 'Jubair', 'Ahmad', 'Male', 'mdjubair190@gmail.com', '8766234928', '28k', '32k', '1.5 Year', '15 Days', 'Mayur Vihar Phase-I', '', 45, '1663234740_Naukri_MdjubairAhmad[2y_6m].pdf', '', '', 0, 'TELEPHONIC ROUND', '', '', '25', 'FAIL', 11408379, '2022-09-15 15:09:23'),
(31, 'Rajkumar ', '', 'Gupta', 'Male', 'graj3617@gmail.com', '7803941462', '3 LPA', '4 LPA', '1-3 Year', '10 Days', 'B-Block  -sec 26  Noida (u.p.)', '', 44, '1663241580_Naukri_RajkumarGupta[3y_6m].docx', '', '', 0, 'TELEPHONIC ROUND', '', '', '25', 'FAIL', 67687628, '2022-09-15 17:03:11'),
(32, 'Naman', '', 'Hooda', 'Female', 'namanhooda86@gmail.com', '8059000064', '35K', '45K', '1-3 Year', 'Immediate', 'Jhajjar, Haryana', '', 45, '1663746420_Naukri_NamanHooda[2y_6m].pdf', '', '', 0, 'TELEPHONIC ROUND', '2022-09-27T16:00', 'MACHINE TEST', '25', 'PASS', 68348217, '2022-09-21 13:17:14'),
(33, 'Priyanka', '', 'Yadav', 'Female', 'priyay88086@gmail.com', '8707359181', '25k', '35k', '3-5 Years', 'Immediate', 'Mau, Lucknow', '', 44, '1663931940_Naukri_PriyankaYadav[3y_8m].pdf', '', '', 0, 'TELEPHONIC ROUND', '2022-09-24T18:42', 'MACHINE TEST', '25', 'PASS', 62404896, '2022-09-23 16:49:30'),
(34, 'Mahipal', '', 'Singh', 'Male', 'mahipalsingh093@gmail.com', '8126551812', '2.40 LPA', '3.60 LPA', '1-3 Year', '30 Days', 'Noida', '', 45, '1663932180_Mahipal Singh.pdf', '', '', 0, 'TELEPHONIC ROUND', '2022-10-07T17:00', 'MACHINE TEST', '25', 'PASS', 44057089, '2022-09-23 16:53:37'),
(35, 'Aman', '', 'Rawat', 'Male', 'Amanrawat429@gmail.com', '9599250832', '2.50 LPA', '5 LPA', '1-3 Year', '30 Days', 'Noida', '', 45, '1663932420_Aman Rawat.pdf', '', '', 0, 'TELEPHONIC ROUND', '2022-09-26T16:01', 'MACHINE TEST', '25', 'PASS', 39774476, '2022-09-23 16:57:46'),
(36, 'Nishant', '', 'Kumar', 'Male', 'nishantkumartondak@gmail.com', '9899056872', '45k', '60k', '3-5 Years', '15 Days', 'Delhi', '', 45, '1664010420_Resume (2).pdf', '', '', 0, 'TELEPHONIC ROUND', '', '', '25', 'FAIL', 59396390, '2022-09-24 14:37:24'),
(37, 'Chandan', '', 'Sharma', 'Male', 'dicsmail0575@gmail.com', '7217684233', '30 ctc', '35 ctc', '1.5 Year', '30 Days', 'Faridabad', '', 45, '1664012400_chandan new cv-converted.pdf', '', '', 0, 'MACHINE TEST', '', '', '25', 'FAIL', 47250810, '2022-09-24 15:10:06'),
(38, 'Subhash', '', 'Kumar', 'Female', 'subhashkumarmrt@gmail.com', '7836040027', '25k', '35k', '1-3 Year', '30 Days', 'Noida', '', 44, '1664364300_subhash kumar.pdf', '', '', 0, 'HR ROUND', '2022-09-28T17:00', 'TELEPHONIC ROUND', '25', 'PASS', 63907706, '2022-09-28 16:55:38'),
(39, 'Ashok', '', 'Verma', 'Male', 'ashok.verma1098@gmail.com', '9017164040', '3.6 LPA', '6 LPA', '3-5 Years', '15 Days', 'Gurugram', '', 45, '1664435400_Naukri_Ashok[3y_6m].pdf', '', '', 0, 'TELEPHONIC ROUND', '', '', '25', 'FAIL', 51200517, '2022-09-29 12:40:57'),
(40, 'Arun', '', 'Kumar', 'Male', 'Arun813057@gmail.com', '8130577813', '35K', '45K', '3-5 Years', 'Immediate', 'Delhi', '', 44, '1664436240_Naukri_ArunKumar[2y_4m].pdf', '', '', 0, 'HR ROUND', '2022-09-29T17:30', 'TELEPHONIC ROUND', '25', 'PASS', 42704200, '2022-09-29 12:54:40'),
(42, 'Devendra', 'Singh', 'Chauhan', 'Male', 'deveshchauhan170@gmail.com', '8630558285', '30 ctc', '40 ctc', '3-5 Years', '15 Days', 'Delhi', '', 45, '1665136680_Naukri_DEVENDRASINGHCHAUHAN[3y_1m].docx', '', '', 0, 'TELEPHONIC ROUND', '', '', '25', 'FAIL', 53298467, '2022-10-07 15:28:06'),
(43, 'Manish', '', 'Chaudhary', 'Male', 'vermamanish1666@gmail.com', '6387631666', '4.8 LPA', '6.5 LPA', '1-3 Year', '30 Days', 'Jaipur', '', 45, '1665396660_Naukri_ManishChaudhary[2y_8m].pdf', '', '', 0, 'TELEPHONIC ROUND', '2022-10-15T18:35', 'MACHINE TEST', '25', 'PASS', 88360682, '2022-10-10 15:41:06'),
(44, 'Shubham ', '', 'Bansal', 'Male', 'shubhambansal281@gmail.com', '8727939290', '25k', '35k', '1-3 Year', 'Immediate', 'Punjab', '', 45, '1665487560_Shubham Resume.pdf', '', '', 0, 'TELEPHONIC ROUND', '', '', '25', 'FAIL', 33137403, '2022-10-11 16:56:16'),
(45, 'Abhishek ', '', 'Singh', 'Male', 'abhisheksinghfuture@gmail.com', '6388875303', '20k', '30k', '1.5 Year', '30 Days', 'Noida', '', 45, '1665559320_Naukri_AbhishekSingh[2y_7m].doc', '', '', 0, 'HR ROUND', '', 'TELEPHONIC ROUND', '25', 'PASS', 33953620, '2022-10-12 12:52:43'),
(46, 'shaik', 'Md', 'Shafi', 'Male', 'shafimohamd786@gmail.com', '6281737300', '4.45 LPA', '6.5 LPA', '3-5 Years', '30 Days', 'Bangalore', '', 51, '1665567360_shafi_linux.docx.pdf', '', '', 0, 'HR ROUND', '', '', '25', 'FAIL', 71476048, '2022-10-12 15:06:58'),
(47, 'Gaurav', '', 'Bankura', 'Male', 'gauravlinux11@gmail.com', '9717762002', '3.3 LPA', '5.5 LPA', '3-5 Years', 'Immediate', 'Faridabad', '', 51, '1665567840_Linux cv.pdf', '', '', 0, 'HR ROUND', '', '', '25', 'FAIL', 58460928, '2022-10-12 15:14:09'),
(48, 'Rohit ', '', 'Kumar', 'Male', 'rohitkumar5322@gmail.com', '8700715910', '30 ctc', '50 ctc', '1-3 Year', '30 Days', 'Faridabad', '', 45, '1665827100_Naukri_Rohitkumar[2y_0m].pdf', '', '', 0, 'TELEPHONIC ROUND', '', '', '25', 'FAIL', 91347193, '2022-10-15 15:15:17'),
(49, 'Amaranadh ', '', 'Varada', 'Male', 'amaranadh.varada@gmail.com', '9071970640', '7 LPA', '10 LPA', '5-10 Years', '30 Days', 'Bangalore', '', 51, '1666000860_WhatsApp Image 2022-10-13 at 12.39.49 PM.jpeg', '', '', 0, 'OUT OF RANGE', '', '', '25', 'FAIL', 15461178, '2022-10-17 15:31:03'),
(50, 'VamiKrishna ', '', 'Kolla', 'Male', 'kvkrishnalinux@gmail.com', '7842663869', '8.3 lpa', '10 LPA', '3-5 Years', 'Immediate', 'Bangalore', '', 51, '1666001220_Vamsikrishna Kolla - Linux Administrator.docx.pdf', '', '', 0, 'OUT OF RANGE', '', '', '25', 'FAIL', 37745232, '2022-10-17 15:37:48'),
(51, 'Neha', '', 'Rai', 'Female', 'rneha1027@gmail.com', '9166204268', '', '', '', '', 'Jaipur', '', 51, '1666001580_1578555135954.pdf', '', '', 0, 'OUT OF RANGE', '', '', '25', 'FAIL', 43026141, '2022-10-17 15:43:00'),
(52, 'MastRam', '', 'Yadav', 'Male', 'mastramyadav67@gmail.com', '7734947516', '5 LPA', '8 LPA', '3-5 Years', 'Immediate', 'Ghaziabad', '', 51, '1666002420_MASTRAMâ€™S resume.pdf', '', '', 0, 'HR ROUND', '', '', '25', 'FAIL', 55928074, '2022-10-17 15:57:06'),
(53, 'Raghavendra', '', 'Sharma', 'Male', 'raghavendradubey1993@gmail.com', '9468678812', '5.8 LPA', '8 LPA', '3-5 Years', '15 Days', 'NOIDA', '', 51, '1666003080_Raghav_Resume.pdf', '', '', 0, 'TELEPHONIC ROUND', '2022-10-18T16:09', 'TELEPHONIC ROUND', '25', 'PASS', 45599794, '2022-10-17 16:08:44'),
(54, 'Vivek ', '', 'Sharma', 'Male', 'abcd@gmail.com', '7508530837', '', '', '', '', 'Noida', '', 51, '', '', '', 0, 'OUT OF RANGE', '', '', '25', 'FAIL', 56935558, '2022-10-17 16:12:51'),
(55, 'Suman ', '', 'Rajput', 'Female', 'suman.rajput8614@gmail.com', '7906548614', '5.5 LPA', '7 lpa', '3-5 Years', 'Immediate', 'Noida', '', 51, '1666005960_Resume_Suman (1)11111.pdf', '', '', 0, 'TELEPHONIC ROUND', '', '', '25', 'FAIL', 21848870, '2022-10-17 16:56:06'),
(56, 'Sheetal', '', 'Dangwal', 'Male', 'sheetaldangwal1993@gmail.com', '9971831401', '16 LPA', '10%', '5-10 Years', 'Immediate', 'noida', '', 51, '1666006320_Sheetal Dangwal ResumeV1.pdf', '', '', 0, 'OUT OF RANGE', '', '', '25', 'FAIL', 42452492, '2022-10-17 17:02:07'),
(57, 'Hajari', '', 'Singh', 'Male', 'singhhajari475@gmail.com', '8272012832', '5.7 Lpa', '7.5 Lpa', '3-5 Years', '15 Days', 'Noida', '', 51, '1666006740_Resume_hajari singh_-1.pdf', '', '', 0, 'New', '', '', '25', '', 20972061, '2022-10-17 17:09:21'),
(58, 'Atul', 'Arjun', 'Jambhale', 'Male', 'atuljambhale98@gmail.com', '9834535794', '5 LPA', '8 LPA', '1.5 Year', '30 Days', 'Pune', '', 51, '1666086840_Atul Jambhale CV.pdf', '', '', 0, 'OUT OF RANGE', '', '', '25', 'FAIL', 31220038, '2022-10-18 15:24:21'),
(59, 'Madhuri', 'Bhagwan ', 'Patil', 'Female', 'maddypatil47@gmail.com', '7972200203', '2.5 LPA', '5 LPA', '3-5 Years', 'Immediate', 'Pune', '', 51, '1666087080_Resume_Madhuri_Linux_RHEL.pdf', '', '', 0, 'HR ROUND', '', 'OUT OF RANGE', '25', 'FAIL', 29273135, '2022-10-18 15:28:05'),
(60, 'Pawan', 'Kumar', 'Dasaradhi Guppi', 'Male', 'pawan.guppi@gmail.com', '9029916128', '8.10 lpa', '16 lpa', '5-10 Years', '30 Days', 'Mumbai', '', 51, '1666088400_Pawankumar Resume 17 Oct 2022.docx', '', '', 0, 'HR ROUND', '', '', '25', 'FAIL', 98568809, '2022-10-18 15:50:01'),
(61, 'Naresh', '', 'Kumar', 'Male', 'Nareshattri1994@gmail.com', '8171435206', '2.40 LPA', '3.50 lpa', '1-3 Year', 'Immediate', 'Mathura', '', 51, '1666088880_naresh12345.docx', '', '', 0, 'HR ROUND', '', 'TELEPHONIC ROUND', '25', 'PASS', 35369976, '2022-10-18 15:58:37'),
(62, 'Krishna', '', 'Murari', 'Male', 'krishna.lucky383@gmail.com', '7536018148', '48k', '60+', '3-5 Years', '30 Days', 'sector-125, Noida', '', 51, '1666089600_Krishna CV.pdf', '', '', 0, 'HR ROUND', '', 'TELEPHONIC ROUND', '25', 'PASS', 99998962, '2022-10-18 16:10:29'),
(63, 'Shahbaz ', '', 'Alam', 'Male', 'alamshahbaz36@gmail.com', '8989674631', '', '', '', '30 Days', 'mumbai', '', 51, '1666093140_Shahbaz Alam.docx (1).pdf', '', '', 0, 'HR ROUND', '', '', '25', 'FAIL', 99938746, '2022-10-18 17:09:02'),
(64, 'Ashish ', '', 'Kumar', 'Male', 'ash9897ishtiwari@gmail.com', '7078623216', '10k', '10k', 'Fresher', 'Immediate', 'Etawah', '', 52, '1666095000_RESUME (6).pdf', '', '', 0, 'HR ROUND', '2022-10-20T11:30', 'Face to Face', '25', 'PASS', 59135580, '2022-10-18 17:40:45'),
(65, 'Gaurav', 'Prakash', 'Pawar', 'Male', 'gaurv020@gmail.com', '7588756591', '', '', '5-10 Years', '30 Days', 'Pune', '', 51, '1666157220_Resume (7).pdf', '', '', 0, 'HR ROUND', '', '', '25', 'FAIL', 88015766, '2022-10-19 10:57:55'),
(66, 'Bhagyashri', '', 'Kumaran', 'Female', 'bkkumaran1992@gmail.com', '8600298920', '', '', '5-10 Years', '30 Days', 'Pune, Maharashtra', '', 51, '1666157760_Resume (1).pdf.pdf', '', '', 0, 'HR ROUND', '', '', '25', 'FAIL', 36211907, '2022-10-19 11:06:28'),
(67, 'Sunil', '', 'Kumar', 'Male', 'chsunil1515@gmail.com', '7579735836', '', '', '1.5 Year', '30 Days', 'Agra', '', 51, '1666158420_Sunil Kumar cv_1662215076093_Sunil_1665481612618_Sunil.docx', '', '', 0, 'New', '', '', '25', '', 80439681, '2022-10-19 11:17:35'),
(68, 'Kamal ', 'Singh ', 'Yadav', 'Male', 'kamalsinghyadavpbh@gmail.com', '8218781197', '33k', '45k', '1-3 Year', '30 Days', 'Ghaziabad', '', 44, '1666159920_Naukri_kamalsinghyadav[2y_6m].pdf', '', '', 0, 'New', '', '', '25', '', 16207697, '2022-10-19 11:42:47'),
(69, 'Mohit', '', 'Yadav', 'Male', 'mohit.8090.rbl@gmail.com', '8090501601', '', '', '3-5 Years', '30 Days', 'Noida', '', 52, '1666420080_MOHIT-CV-2 (1).docx', '', '', 0, 'HR ROUND', '', '', '25', 'FAIL', 90573934, '2022-10-22 11:58:46'),
(70, 'Kamini', '', 'Katiyar', 'Female', 'kaminikatiyar8@gmail.com', '7049002670', '', '', '', '30 Days', 'Noida\r\n', '', 44, '1666431780_Kamini Katiyar.docx', '', '', 0, 'HR ROUND', '', '', '25', 'FAIL', 33450499, '2022-10-22 15:13:51'),
(71, 'Yash', '', 'Jain', 'Male', 'Jainyash93680@gmail.com', '7467005157', '3.40 Lpa', '4.20 Lpa', '1.5 Year', '30 Days', 'Noida', '', 51, '1666432920_yash jain 6_Yash Jain _Yash Jain _Yash Jain _Yash Jain _Yash Jain _Yash Jain  (1).pdf', '', '', 0, 'HR ROUND', '', '', '25', 'FAIL', 21784292, '2022-10-22 15:32:08'),
(72, 'Shashikant', '', 'Mishra', 'Male', 'shashikmishra1981@gmail.com', '9999293084', '5 LPA', '5.60 LPA', '5-10 Years', '30 Days', 'Noida', '', 51, '1666433460_Resume_Shashi Kant Mishra (1).docx', '', '', 0, 'Face to Face', '2022-10-28T11:42', 'FINAL ROUND', '25', 'PASS', 82785111, '2022-10-22 15:41:27'),
(73, 'Rajesh ', '', 'Paswan', 'Male', 'rajesh60319766@gmail.com', '7909047304', '4.8 LPA', '8 LPA', '3-5 Years', 'Immediate', 'Delhi', '', 51, '1666435020_CV  (1).pdf', '', '', 0, 'OUT OF RANGE', '', '', '25', 'FAIL', 87839145, '2022-10-22 16:07:45'),
(74, 'Shikha', '', 'Sahu', 'Female', 'sahushikha956@gmail.com', '9354644737', '4 LPA', '5 LPA', '1-3 Year', '30 Days', 'Ahmedabad', '', 45, '1666850400_Naukri_shikhasahu[2y_0m].pdf', '', '', 0, 'New', '', '', '25', '', 10543479, '2022-10-27 11:30:48'),
(75, 'Ishwar', 'Arjun', 'Shinde', 'Male', 'ishushinde545@gmail.com', '8412061402', '3 LPA', '7 lpa', '1-3 Year', '30 Days', 'Nashik', '', 51, '1666851780_ISHWAR  RESUME......pdf', '', '', 0, 'HR ROUND', '', 'TELEPHONIC ROUND', '25', 'PASS', 60573319, '2022-10-27 11:53:38'),
(76, 'Vinod ', 'Kumar', 'Vishwakarma', 'Male', 'vkv4052@gmail.com', '7390865055', '30k', '35k', '1-3 Year', '10 Days', 'Noida sector 62', '', 45, '1666855020_Vinod .docx', '', '', 0, 'MACHINE TEST', '', '', '25', 'FAIL', 38945720, '2022-10-27 12:47:45'),
(77, 'Masiur', '', 'Rahman', 'Male', 'alrahman687786@gmail.com', '6395036898', '3.6 LPA', '5 LPA', '1-3 Year', 'Immediate', 'Mayur Vihar, New Delhi', '', 44, '1666861020_MasiurRahman.pdf', '', '', 0, 'TELEPHONIC ROUND', '', 'MACHINE TEST', '25', 'PASS', 52598639, '2022-10-27 14:27:11'),
(78, 'Naqueeb', '', 'Ayub', 'Male', 'naqueebayub@gmail.com', '9582148486', '8 Lpa', '10 LPA', '3-5 Years', '30 Days', 'Gurugram', '', 51, '1666955040_Naqueeb Resume (1).pdf', '', '', 0, 'HR ROUND', '', '', '25', 'FAIL', 57761624, '2022-10-28 16:34:49'),
(79, 'Ravi ', '', 'Kumar', 'Male', '........@gmail.com', '6305156573', '', '', '1-3 Year', 'Immediate', '.......', '', 51, '', '', '', 0, 'HR ROUND', '', '', '25', 'FAIL', 54707268, '2022-10-29 10:17:36'),
(80, 'Jyothsna', '', 'Purushotama', 'Female', 'Pjyothsnap@gmail.com', '9886376142', '', '', '5-10 Years', '30 Days', 'Bangalore', '', 54, '1667021100_Jyothsna_Resume_2014.pdf', '', '', 0, 'New', '', '', '25', '', 29113966, '2022-10-29 10:55:39'),
(81, 'Sagar', 'Arun', 'Patil', 'Male', 'patilsagar636@gmail.com', '8793444606', '', '', '5-10 Years', '30 Days', 'Nashik', '', 51, '1667032560_sagar 2022-PDF.pdf', '', '', 0, 'HR ROUND', '', '', '25', 'FAIL', 17045437, '2022-10-29 14:06:33'),
(82, 'Saurabh ', '', 'Raizada', 'Male', 'raizada.saurabh@gmail.com', '9555418238', '6.6 LPA', 'as per company standard', '5-10 Years', '30 Days', 'Ghaziabad', '', 51, '1667036700_Saurabh resume.pdf', '', '', 0, 'HR ROUND', '', 'Face to Face', '25', 'PASS', 61738780, '2022-10-29 15:15:28'),
(83, 'Nithin', '', 'Pavithran', 'Male', 'ubique2nith@gmail.com', '9916968413', '', '', '5-10 Years', '30 Days', 'Bangalore', '', 51, '1667037900_Resume - Nithin Pavithran.pdf', '', '', 0, 'HR ROUND', '', '', '25', 'FAIL', 28693460, '2022-10-29 15:35:41'),
(84, 'Vikram', '', 'Kumar', 'Male', 'vikramskumar23@gmail.com', '9741984273', '', '', '5-10 Years', '30 Days', 'bangalore', '', 51, '1667039640_ResumeVikram.docx.pdf', '', '', 0, 'New', '', '', '25', '', 17088617, '2022-10-29 16:04:18'),
(85, 'L', '', 'Dayananda', 'Male', 'dayanand3954@gmail.com', '6300419323', '3.2 LPA', '5 LPA', '1-3 Year', '15 Days', 'Bangalore', '', 51, '1667040780_DAYANANDA-Linux Administrator L1 -RESUME-1.pdf', '', '', 0, 'New', '', '', '25', '', 25052337, '2022-10-29 16:23:40'),
(86, 'Venkaiah ', 'Naidu', 'A', 'Male', 'akkamala95@gmail.com', '9000707996', '', '', '1-3 Year', '30 Days', 'Bangalore', '', 51, '1667042520_Akkamala Venkaiah Naidu -2+yrs _Linux.docx', '', '', 0, 'New', '', '', '25', '', 62355858, '2022-10-29 16:52:54'),
(87, 'Shubham ', '', 'Tripathi', 'Male', 'shubhamtr6@gmail.com', '7599456641', '2.40 LPA', '3 LPA', '1-3 Year', 'Immediate', 'U.P', '', 45, '1667454960_Naukri_ShubhamTripathi[4y_6m].pdf', '', '', 0, 'HR ROUND', '', '', '25', 'FAIL', 39794253, '2022-11-03 11:26:51'),
(88, 'Ranu', '', 'Singh', 'Male', 'send2ranu@gmail.com', '7210968536', '18k', '22k', '1.5 Year', '', 'New Delhi', '', 44, '1667463900_Ranu_Cv_new.pdf', '', '', 0, 'New', '', '', '25', '', 55268842, '2022-11-03 13:55:32'),
(99, 'Ankit', '', 'Bisht', 'Male', 'bishtsonu25105@gmail.com', '7210056451', '20k', '40K', '1.5 Year', '30 Days', 'Malviya Nagar, New Delhi', '', 45, '1668069420_Ankit s Resume (4).pdf', '', '', 0, 'MACHINE TEST', '', '', '25', 'FAIL', 86637303, '2022-11-10 14:07:47'),
(100, 'Gaurav', '', 'Agarwal', 'Male', 'gav.agr@gmail.com', '8303758399', '32k', '40K', '1-3 Year', '30 Days', 'Delhi', '', 44, '1668070080_Resum- Gaurav.docx', '', '', 0, 'New', '', '', '25', '', 56574095, '2022-11-10 14:18:00'),
(101, 'Pragya', '', 'Shukla', 'Female', 'sruti21694shukla@gmail.com', '9027331012', '12k', '12k', '0-1 Year', 'Immediate', 'Munerka, Delhi', '', 52, '', '', '', 0, 'HIRED', '', '', '25', 'Hierd', 84216773, '2022-11-10 14:20:49'),
(102, 'Gulshan', '', 'Kumar', 'Male', 'gulshanrssa@gmail.com', '7037397843', '12k', '12k', 'Fresher', 'Immediate', 'Hathras', '', 52, '1668071040_GULLU1.docx', '', '', 0, 'FACE TO FACE', '', '', '25', 'FAIL', 16292801, '2022-11-10 14:34:01'),
(103, 'Mohd', '', 'Akhlak', 'Male', 'mhd.akhlak0786@gmail.com', '9810241051', '36k', '45k', '5-10 Years', '30 Days', 'noida sector 2', '', 45, '1668072540_akhlak_cv.pdf', '', '', 0, 'TELEPHONIC ROUND', '', '', '25', 'FAIL', 75592842, '2022-11-10 14:59:45'),
(104, 'Sandeep ', '', 'Rajpoot', 'Male', 'indiansandeeprajpoot@gmail.com', '8527664557', '25k', '40K', '1-3 Year', '30 Days', '.....', '', 45, '1668248160_CV_2022-11-04.pdf', '', '', 0, 'HR ROUND', '', '', '25', 'FAIL', 79387271, '2022-11-12 15:46:18'),
(105, 'Nirmal', 'Kumar', 'Sharma', 'Male', 'ns9086125@gmail.com', '7906620854', '25k', '35k', '3-5 Years', '30 Days', 'Hapur', '', 44, '1668249840_Nirmal+Kumar+Sharma(+freelancer).docx', '', '', 0, 'MACHINE TEST', '', '', '25', 'FAIL', 59064531, '2022-11-12 16:14:47'),
(111, 'jatin', 'kumar', 'arora', 'Male', 'admin@gmail.com', '1234567854', '20000', '25000', '0-1 Year', '10 Days', 'fgnhgfhgf', '', 45, '1668748620_Image_created_with_a_mobile_phone.png', '', '', 0, 'New', '', '', '26', '', 80614898, '2022-11-18 10:47:50'),
(113, 'Monika', '', 'Shukla', 'Female', 'sruti21694shukla@gmail.com', '8188980989', '8K', '8K', 'Fresher', 'Immediate', 'Kanpur Nagar Kanpur', '', 61, '', '', '', 0, 'HIRED', '', '', '25', 'Hierd', 84616753, '2022-11-18 11:20:49'),
(114, 'vishal', '', 'Kumar', 'Male', 'vishalchauhan02191123@gmail.com', '6398954342', '10k', '15k', '0-1 Year', 'Immediate', 'rampur', '', 63, '', 'Any Reference', 'Workindia', 0, 'New', '', '', '25', '', 99532006, '2022-11-18 11:27:11'),
(115, 'anil', '', 'kumar', 'Male', '', '9821956026', '12k', '12k', '1-3 Year', 'Immediate', 'noida-62,noida', '', 63, '', 'Linkedin', 'naukri.com', 0, 'New', '', '', '26', '', 66537056, '2022-11-18 11:40:08'),
(116, 'Vishal', '', 'Kumar', 'Male', '', '8130438077', '12000', '12000', '5-10 Years', 'Immediate', 'Sector 76,Noida', '', 63, '', '', '', 0, 'New', '', '', '26', '', 87702881, '2022-11-18 11:47:18'),
(117, 'Vishal', '', 'Thakur', 'Male', '', '6398954342', '10000', '10000', 'Fresher', 'Immediate', 'sec-49, Barola', '', 63, '', 'Any Reference', 'Workindia', 0, 'HR ROUND', '', '', '25', 'FAIL', 94881229, '2022-11-18 11:52:08'),
(118, 'Atul', 'Bahadur ', 'Chhatri', 'Male', '', '8076864904', '12000', '12000', '5-10 Years', 'Immediate', 'New Friends Colony, New Delhi', '', 63, '', '', 'Workindia', 0, 'HR ROUND', '', '', '25', 'PASS', 55008303, '2022-11-18 12:38:55'),
(119, 'Arjun', '', 'Kumar', 'Male', '', '8377022381', '12000', '12000', '1-3 Year', 'Immediate', 'sec-58, Noida', '', 63, '', '', 'Workindia', 0, 'HR ROUND', '', '', '25', 'Hierd', 90929578, '2022-11-18 12:40:35'),
(120, 'Ajay ', '', 'Rawat', 'Male', '', '8368430316', '20k', '27k', '1-3 Year', '15 Days', 'Pratab Vihar, Ghaziabad', '', 45, '', 'Any Reference', 'Workindia', 0, 'MACHINE TEST', '', '', '25', 'FAIL', 39695467, '2022-11-18 13:04:55'),
(121, 'Rohit ', '', 'Kumar', 'Male', '', '8700715910', '3.6 LPA', '6 LPA', '1-3 Year', '30 Days', 'darbhanga ', '', 45, '1668760620_Resume@Rohit-converted-1.pdf', 'Consultancy', 'Mera online Business', 0, 'HR ROUND', '2022-11-19T16:00', 'TELEPHONIC ROUND', '25', 'PASS', 51733517, '2022-11-18 14:07:34'),
(122, 'Sanjay', '', 'Kumar', 'Male', '', '8271719407', '35 ctc', '40 ctc', '3-5 Years', '15 Days', 'Arysmraj Road, New Delhi\r\n', '', 44, '1668761640_latest resume(1) (1).pdf', 'Consultancy', 'Mera Online Business', 0, 'TELEPHONIC ROUND', '', '', '25', 'FAIL', 54166295, '2022-11-18 14:24:17'),
(123, 'Mukesh ', '', 'Singh', 'Male', '', '9039200453', '20k', '30k', '1.5 Year', '30 Days', 'sector-73, Noida', '', 45, '1668763260_MukeshSingh[2y_0m].pdf', 'Any Reference', 'Prime search', 0, 'HR ROUND', '2022-11-19T18:00', 'TELEPHONIC ROUND', '25', 'PASS', 41577117, '2022-11-18 14:51:40'),
(124, 'Jitender', '', 'Kashyap', 'Male', '', '7053400328', '3 LPA', '4.2 LPA', '1-3 Year', '30 Days', 'Brahmpuri, New Delhi', '', 44, '1668763860_JitenderKashyap_PHP.docx', 'Consultancy', 'Prime search', 0, 'HR ROUND', '', '', '25', 'FAIL', 82044415, '2022-11-18 15:01:13'),
(125, 'Pankaj', '', 'Uprati', 'Male', '', '9310424744', '15000', '15000', '1-3 Year', 'Immediate', 'Sector-63,Noida', '', 63, '', 'Any Reference', 'Workindia', 0, 'New', '', '', '25', '', 27362838, '2022-11-18 15:04:04'),
(126, 'Dixit', '', 'Malia', 'Male', 'dishumalia@gmail.com', '9582514211', '5 LPA', '6 LPA', '0-1 Year', '30 Days', 'Delhi', '', 47, '1668842640_Dixit s Resume.pdf.pdf', 'Linkedin', 'Linkedin', 0, 'HR ROUND', '', '', '25', 'FAIL', 43697372, '2022-11-19 12:54:36'),
(127, 'Sachin', '', 'Kumar', 'Male', 'Sachinkumar.linux@gmail.com', '9818656830', '', '', '5-10 Years', '30 Days', 'Sector-63, Noida', '', 47, '1668842820_Sachin Resume .docx.pdf', 'Linkedin', 'Linkedin', 0, 'HR ROUND', '2022-11-21T12:00', 'HR ROUND', '25', 'Nextdate', 85060538, '2022-11-19 12:57:34'),
(128, 'Arun ', '', 'Kumar', 'Male', 'arunyadav79499@gmail.com', '9162765464', '', '', '1.5 Year', '30 Days', 'Bhopal', '', 45, '1668846420_ArunKumar__Delhi_1.03_yrs.pdf', 'Consultancy', 'Mera Online Business', 0, 'HR ROUND', '2022-11-29T16:00', 'TELEPHONIC ROUND', '25', 'PASS', 94329992, '2022-11-19 13:57:43'),
(129, 'gourav', '', 'Kushwah', 'Male', 'gouravkushwah00090@gmail.com', '9131418874', '20k', '40K', '0-1 Year', '30 Days', 'Gwalior', '', 45, '1668848280_Naukri_GouravKushwah[1y_0m].pdf', 'Consultancy', 'mera online business', 0, 'HR ROUND', '', '', '25', 'FAIL', 51122796, '2022-11-19 14:28:30'),
(130, 'Pawan', '', 'Kumar', 'Male', 'pawankumar753172@gmail.com', '8368739224', '25k', '40k', '1-3 Year', 'Immediate', 'Noida', '', 44, '1668858960_Pawan New Resume-1.docx', 'Linkedin', 'linkedin', 0, 'HR ROUND', '', '', '25', 'FAIL', 49218585, '2022-11-19 17:26:10'),
(131, 'Vasit', '', 'Khan', 'Male', 'vasitkhanazad786@gmail.com', '9956530385', '35K', '40K', '1-3 Year', 'Immediate', 'Noida', '', 44, '1668861780_Naukri_VasitKhan[2y_0m].docx', 'Consultancy', 'Mera Online Business', 0, 'HR ROUND', '', '', '25', 'FAIL', 68348300, '2022-11-19 18:13:11'),
(132, 'Shivam ', 'Kumar', 'Chaudhary', 'Male', 'skchy61@gmail.com', '9973274939', '3.5 LPA', '6 LPA', '1.5 Year', '30 Days', 'Gurugram', '', 45, '1669011540_Resume 4_1667389906233_shivam kumar chaudhary.docx', 'Consultancy', 'Mera Online Business', 0, 'HR ROUND', '', '', '25', 'FAIL', 34154018, '2022-11-21 11:49:43'),
(133, 'Gangadhar', '', 'Patil', 'Male', 'gangadharpatil005@gmail.com', '7058669586', '5.52 LPA', '10 LPA', '3-5 Years', '30 Days', 'Pune', '', 51, '1669106760_Gangadhar Patil Linux Admin.docx', 'Linkedin', 'linkedin', 0, 'New', '', '', '25', '', 69650518, '2022-11-22 14:16:36'),
(134, 'Samim', '', 'Akhtar', 'Male', 'iamsamimakhtar@gmail.com', '8777597223', '', '', '5-10 Years', '', 'Kolkata', '', 51, '1669113060_SAMIM AKHTAR.pdf', 'Linkedin', 'linkedin', 0, 'HR ROUND', '', '', '25', 'FAIL', 69142838, '2022-11-22 16:01:03'),
(135, 'Nisha', '', 'Rawat', 'Female', 'nrawat2682001@gmail.com', '8076747340', '', '', '1.5 Year', '30 Days', 'Nangloi,New Delhi', '', 45, '1669364220_Nisha_rawat (1).pdf', 'Any Reference', '', 0, 'New', '', '', '25', '', 98499654, '2022-11-25 13:47:17'),
(136, 'Gyanendra', '', 'Kumar', 'Male', 'gyankmr27@gmail.com', '8090415262', '', '', '3-5 Years', '30 Days', 'Noida sector 15', '', 44, '1669376520_Gyanendra Kumar s HR Resume.pdf', 'Consultancy', 'Prime search', 0, 'HR ROUND', '', '', '25', 'FAIL', 18516077, '2022-11-25 17:12:01'),
(137, 'mamta', '', 'Kumari', 'Female', 'mamtamishra.msp98@gmail.com', '9069152903', '27k', '30k', '1.5 Year', '15 Days', 'Prem Nagar, New Delhi', '', 44, '1669376760_Mamta Kumari s HR Resume.pdf', 'Consultancy', 'Prime search', 0, 'HR ROUND', '2022-11-26T12:00', 'TELEPHONIC ROUND', '25', 'PASS', 24443386, '2022-11-25 17:16:44'),
(138, 'Pulkit', '', 'Goel', 'Male', 'goelpulkit97@gmail.com', '9582147194', '6.6 LPA', '10 LPA', '3-5 Years', '30 Days', 'ghaziabad', '', 44, '1669378380_Pulkit Goel resume.pdf', 'Linkedin', 'linkedin', 0, 'HR ROUND', '', '', '25', 'FAIL', 81108147, '2022-11-25 17:43:44'),
(139, 'Sachin', '', 'Pandey', 'Male', 'sp0180913@gmail.com', '9406667430', '10k', '12k', '0-1 Year', 'Immediate', 'sector-59, Mamura', '', 44, '1669614540_SACHIN_PANDEY_Resume_23-09-2022-21-18-17.pdf', 'Linkedin', 'linkedin', 0, 'TELEPHONIC ROUND', '', '', '25', 'FAIL', 64885921, '2022-11-28 11:19:20'),
(140, 'Kajal', '', '....', 'Female', 'kajalthakur9989@gmail.com', '7457879002', '', '', '0-1 Year', '30 Days', 'Ghaziabad', '', 62, '1669615080_kajal.docx', 'Linkedin', 'linkedin', 0, 'HR ROUND', '', '', '25', 'FAIL', 62294160, '2022-11-28 11:28:43'),
(141, 'Kiran', '', 'Singh', 'Male', 'singhkiran5081@gmail.com', '8603280872', '', '', '5-10 Years', '30 Days', '.....', '', 45, '1669615320_1632273989062 (1).pdf', 'Linkedin', 'linkedin', 0, 'HR ROUND', '', '', '25', 'FAIL', 34849476, '2022-11-28 11:32:03'),
(144, 'Vikas', '', '....', 'Male', 'vksverka94@gmail.com', '6239291665', '25k', '35k', '0-1 Year', '30 Days', 'Noida Sector-3', '', 44, '1669621140_Vikasresume.pdf', 'Consultancy', '', 0, 'HR ROUND', '2022-11-29T15:30', 'TELEPHONIC ROUND', '25', 'PASS', 81205977, '2022-11-28 13:09:20'),
(145, 'Kanchan ', '', 'Priya', 'Female', '', '7050849904', '', '', '0-1 Year', '30 Days', '....', '', 62, '', 'Any Reference', 'hirect', 0, 'HR ROUND', '', '', '25', 'FAIL', 68389904, '2022-11-28 17:43:10'),
(146, 'Shivam', '', 'Sahu', 'Male', 'shivamsahu17770@gmail.com', '7770991012', '2.10 LPA', '4.5 LPA', '1-3 Year', '30 Days', 'Indore', '', 45, '1669702260_Naukri_shivamsahu[2y_0m].pdf', 'Consultancy', 'Mera Online business', 0, 'TELEPHONIC ROUND', '', '', '25', 'FAIL', 67275092, '2022-11-29 11:41:14');

-- --------------------------------------------------------

--
-- Table structure for table `Emp_details`
--

CREATE TABLE `Emp_details` (
  `id` int(11) NOT NULL,
  `umique_id` varchar(250) NOT NULL,
  `employee_name` varchar(250) NOT NULL,
  `pancard_no` varchar(250) NOT NULL,
  `aadhar_card_no` varchar(250) NOT NULL,
  `pancd` varchar(250) NOT NULL,
  `10th` varchar(250) NOT NULL,
  `12th` varchar(250) NOT NULL,
  `highest_qualification` varchar(250) NOT NULL,
  `cancel_check` varchar(250) NOT NULL,
  `pay_bank` varchar(250) NOT NULL,
  `relieving_experience` varchar(250) NOT NULL,
  `photograph` varchar(250) NOT NULL,
  `police_verification` enum('0','1') NOT NULL DEFAULT '0',
  `hr_verification` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `ID` int(11) NOT NULL,
  `status` varchar(250) NOT NULL,
  `fStatus` varchar(250) NOT NULL,
  `nextinterview` varchar(250) NOT NULL,
  `nextview` varchar(250) NOT NULL,
  `interview_stime` varchar(250) NOT NULL,
  `interview_etime` text NOT NULL,
  `feedback_text` varchar(250) NOT NULL,
  `feedback_id` int(250) NOT NULL,
  `userid` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `feedback_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`ID`, `status`, `fStatus`, `nextinterview`, `nextview`, `interview_stime`, `interview_etime`, `feedback_text`, `feedback_id`, `userid`, `user_name`, `feedback_time`) VALUES
(6, 'TELEPHONIC ROUND', 'PASS', '2022-09-14T18:59', '', '15:57', '16:59', ' Its Excellent approved for the next round', 99364805, '25', 'Hr.Anjali Dixit', '2022-09-13 10:28:33'),
(7, 'TELEPHONIC ROUND', 'PASS', '', '', '14:30', '15:00', ' ', 32414579, '25', 'Hr.Anjali Dixit', '2022-09-14 06:23:16'),
(38, 'FINAL ROUND', 'FAIL', '', '', '', '', ' testing', 78394631, '26', 'ADMIN', '2022-09-21 10:33:05'),
(15, 'MACHINE TEST', 'FAIL', '', '', '', '', ' Rejected', 32414579, '25', 'Hr.Anjali Dixit', '2022-09-15 05:57:47'),
(39, 'FINAL ROUND', 'FAIL', '', '', '', '', ' testing', 78394631, '26', 'ADMIN', '2022-09-21 10:33:21'),
(37, 'TELEPHONIC ROUND', 'PASS', '2022-09-02T16:01', 'TELEPHONIC ROUND', '', '', ' testing', 78394631, '26', 'ADMIN', '2022-09-21 10:32:01'),
(36, 'TELEPHONIC ROUND', 'PASS', '2022-09-24T16:29', 'MACHINE TEST', '', '', 'Telephonic Round is Average.........Lack Of knowledge about APIs .\r\nArrange a machine test for Better Understanding', 68348217, '26', 'ADMIN', '2022-09-21 09:59:14'),
(32, 'TELEPHONIC ROUND', 'FAIL', '', '', '', '', ' Rejected', 11408379, '25', 'Hr.Anjali Dixit', '2022-09-15 09:39:50'),
(33, 'MACHINE TEST', 'FAIL', '', '', '', '', ' Rejected', 32414579, '25', 'Hr.Anjali Dixit', '2022-09-15 10:01:51'),
(34, 'TELEPHONIC ROUND', 'FAIL', '', '', '', '', ' Rejected', 67687628, '25', 'Hr.Anjali Dixit', '2022-09-15 11:34:01'),
(35, 'HR ROUND', 'PASS', '2022-09-21T14:30', 'TELEPHONIC ROUND', '', '', ' ', 68348217, '25', 'Hr.Anjali Dixit', '2022-09-21 07:49:51'),
(40, 'TELEPHONIC ROUND', 'FAIL', '', '', '', '', ' testing', 78394631, '26', 'ADMIN', '2022-09-21 10:36:05'),
(41, 'TELEPHONIC ROUND', 'FAIL', '', '', '', '', ' testing', 78394631, '26', 'ADMIN', '2022-09-21 10:37:38'),
(42, 'FINAL ROUND', 'FAIL', '', '', '', '', ' fail', 78394631, '26', 'ADMIN', '2022-09-21 10:38:07'),
(43, 'TELEPHONIC ROUND', 'PASS', '2022-09-23T16:00', 'MACHINE TEST', '', '', ' ', 68348217, '25', 'Hr.Anjali Dixit', '2022-09-23 07:31:35'),
(44, 'HR ROUND', 'PASS', '2022-09-23T17:00', 'TELEPHONIC ROUND', '', '', ' Average', 62404896, '25', 'Hr.Anjali Dixit', '2022-09-23 11:20:34'),
(45, 'HR ROUND', 'PASS', '2022-09-23T18:00', 'TELEPHONIC ROUND', '', '', 'Good', 44057089, '25', 'Hr.Anjali Dixit', '2022-09-23 11:24:59'),
(46, 'TELEPHONIC ROUND', 'PASS', '2022-09-24T16:00', 'MACHINE TEST', '', '', ' Average', 68348217, '25', 'Hr.Anjali Dixit', '2022-09-23 11:26:01'),
(47, 'HR ROUND', 'PASS', '2022-09-24T14:00', 'TELEPHONIC ROUND', '', '', ' Having an offer of 4 LPA', 39774476, '25', 'Hr.Anjali Dixit', '2022-09-23 11:28:39'),
(48, 'TELEPHONIC ROUND', 'PASS', '2022-09-30T17:30', 'MACHINE TEST', '', '', ' Web Developer only(PHP) ,Lack of Knowledge about(Javascript,Jquery,Ajax), API (No),', 62404896, '28', 'Er.Rishabh Mishra', '2022-09-23 12:03:28'),
(50, 'HR ROUND', 'PASS', '2022-09-24T17:00', 'TELEPHONIC ROUND', '', '', ' good\r\n', 59396390, '25', 'Hr.Anjali Dixit', '2022-09-24 09:08:45'),
(51, 'HR ROUND', 'PASS', '2022-09-24T15:30', 'TELEPHONIC ROUND', '', '', ' Average', 47250810, '25', 'Hr.Anjali Dixit', '2022-09-24 09:40:44'),
(52, 'TELEPHONIC ROUND', 'PASS', '2022-09-19T15:57', 'MACHINE TEST', '', '', ' Average,API(No),InnerJoins(No),Array_merge(No),Array_combine(No),', 47250810, '28', 'Er.Rishabh Mishra', '2022-09-24 10:29:20'),
(53, 'TELEPHONIC ROUND', 'PASS', '2022-09-26T16:01', 'MACHINE TEST', '', '', ' Average,API(No),Inner-Joins(No), Lack of knowledge About javascript & Jquery', 39774476, '28', 'Er.Rishabh Mishra', '2022-09-24 10:31:40'),
(54, 'TELEPHONIC ROUND', 'FAIL', '', '', '', '', ' Lack of knowledge', 59396390, '28', 'Er.Rishabh Mishra', '2022-09-24 12:00:58'),
(55, 'TELEPHONIC ROUND', 'PASS', '2022-09-26T18:34', 'MACHINE TEST', '', '', '  Average, Arrange a machine test for better understanding.', 44057089, '28', 'Er.Rishabh Mishra', '2022-09-24 13:05:27'),
(57, 'TELEPHONIC ROUND', 'PASS', '2022-09-27T16:00', 'MACHINE TEST', '', '', ' good', 44057089, '25', 'Hr.Anjali Dixit', '2022-09-26 09:55:53'),
(58, 'TELEPHONIC ROUND', 'PASS', '2022-09-27T17:00', 'MACHINE TEST', '', '', ' good', 47250810, '25', 'Hr.Anjali Dixit', '2022-09-26 12:20:34'),
(59, 'TELEPHONIC ROUND', 'PASS', '2022-09-27T16:00', 'MACHINE TEST', '', '', ' good', 68348217, '25', 'Hr.Anjali Dixit', '2022-09-26 12:21:39'),
(60, 'MACHINE TEST', 'FAIL', '', '', '', '', ' He is denied to give online machine round because he is in office.', 44057089, '28', 'Er.Rishabh Mishra', '2022-09-27 11:54:29'),
(61, 'MACHINE TEST', 'FAIL', '', '', '', '', ' ', 47250810, '28', 'Er.Rishabh Mishra', '2022-09-27 12:32:22'),
(62, 'MACHINE TEST', 'FAIL', '', '', '', '', 'He closed the remote and denied to complete the task.', 47250810, '28', 'Er.Rishabh Mishra', '2022-09-27 12:33:17'),
(63, 'HR ROUND', 'PASS', '2022-09-28T17:00', 'TELEPHONIC ROUND', '', '', ' Average', 63907706, '25', 'Hr.Anjali Dixit', '2022-09-28 11:26:25'),
(64, 'HR ROUND', 'PASS', '2022-09-29T14:00', 'TELEPHONIC ROUND', '', '', 'Having basic knowledge', 51200517, '25', 'Hr.Anjali Dixit', '2022-09-29 07:12:20'),
(65, 'HR ROUND', 'PASS', '2022-09-29T17:30', 'TELEPHONIC ROUND', '', '', 'Having good knowledge and 3+ yrs of experience in Core PHP', 42704200, '25', 'Hr.Anjali Dixit', '2022-09-29 07:26:53'),
(66, 'TELEPHONIC ROUND', 'FAIL', '', '', '', '', ' Lack of Basic Knowledge,', 51200517, '28', 'Er.Rishabh Mishra', '2022-09-30 11:52:04'),
(67, 'TELEPHONIC ROUND', 'PASS', '2022-10-07T17:00', 'MACHINE TEST', '', '', ' Good Candidate', 44057089, '25', 'Hr.Anjali Dixit', '2022-10-07 05:41:48'),
(68, 'HR ROUND', 'PASS', '2022-10-07T14:50', 'MACHINE TEST', '', '', 'TESTING', 57690481, '26', 'ADMIN', '2022-10-07 09:20:49'),
(69, 'HR ROUND', 'PASS', '2022-10-07T16:00', 'TELEPHONIC ROUND', '', '', ' Good candidate, having 3+ years of experience in laravel', 53298467, '25', 'Hr.Anjali Dixit', '2022-10-07 09:59:34'),
(70, 'TELEPHONIC ROUND', 'FAIL', '', '', '', '', ' Rejected,Least knowledge on (APIs ,Joins,array)', 53298467, '28', 'Er.Rishabh Mishra', '2022-10-07 11:13:11'),
(71, 'HR ROUND', 'PASS', '2022-10-11T14:30', 'TELEPHONIC ROUND', '', '', 'having 1.5 years of experience in Laravel ', 88360682, '25', 'Hr.Anjali Dixit', '2022-10-10 10:12:36'),
(72, 'TELEPHONIC ROUND', 'PASS', '', 'MACHINE TEST', '', '', ' Arrange Machine test for better understanding .', 88360682, '28', 'Er.Rishabh Mishra', '2022-10-11 11:00:08'),
(73, 'HR ROUND', 'PASS', '2022-10-11T17:30', 'TELEPHONIC ROUND', '', '', ' Average ', 33137403, '25', 'Hr.Anjali Dixit', '2022-10-11 11:28:48'),
(74, 'TELEPHONIC ROUND', 'FAIL', '', '', '', '', '  Lack of knowledge about(APIs,Array,Str_replace,Print_r,Joins(MYSQL))', 33137403, '28', 'Er.Rishabh Mishra', '2022-10-11 12:20:00'),
(75, 'HR ROUND', 'PASS', '', 'TELEPHONIC ROUND', '', '', ' ', 33953620, '25', 'Hr.Anjali Dixit', '2022-10-12 07:32:43'),
(76, 'HR ROUND', 'FAIL', '', '', '', '', ' ', 58460928, '25', 'Hr.Anjali Dixit', '2022-10-12 09:45:04'),
(77, 'HR ROUND', 'FAIL', '', '', '', '', ' Lack of Knowledge', 71476048, '25', 'Hr.Anjali Dixit', '2022-10-12 09:46:00'),
(78, 'TELEPHONIC ROUND', 'PASS', '2022-10-14T18:35', 'MACHINE TEST', '', '', ' good Knowledge ', 88360682, '25', 'Hr.Anjali Dixit', '2022-10-13 07:50:53'),
(79, 'HR ROUND', 'PASS', '2022-10-15T17:00', 'TELEPHONIC ROUND', '', '', ' Average', 91347193, '25', 'Hr.Anjali Dixit', '2022-10-15 09:46:54'),
(80, 'TELEPHONIC ROUND', 'PASS', '2022-10-15T18:35', 'MACHINE TEST', '', '', 'Having good knowledge and overall good candidate', 88360682, '25', 'Hr.Anjali Dixit', '2022-10-15 09:49:44'),
(81, 'OUT OF RANGE', 'FAIL', '', '', '', '', ' Package and location constraint', 15461178, '25', 'Hr.Anjali Dixit', '2022-10-17 10:03:00'),
(82, 'OUT OF RANGE', 'FAIL', '', '', '', '', 'High Expectation\r\n', 37745232, '25', 'Hr.Anjali Dixit', '2022-10-17 10:10:09'),
(83, 'OUT OF RANGE', 'FAIL', '', '', '', '', ' not looking for change\r\n', 43026141, '25', 'Hr.Anjali Dixit', '2022-10-17 10:19:12'),
(84, 'HR ROUND', 'FAIL', '', '', '', '', ' Lack of confidence', 55928074, '25', 'Hr.Anjali Dixit', '2022-10-17 10:28:16'),
(85, 'TELEPHONIC ROUND', 'PASS', '2022-10-18T16:09', 'TELEPHONIC ROUND', '', '', ' Having good knowledge', 45599794, '25', 'Hr.Anjali Dixit', '2022-10-17 10:39:38'),
(86, 'OUT OF RANGE', 'FAIL', '', '', '', '', ' not looking for change', 56935558, '25', 'Hr.Anjali Dixit', '2022-10-17 10:43:31'),
(87, 'HR ROUND', 'PASS', '2022-10-18T16:56', 'TELEPHONIC ROUND', '', '', 'Having good knowledge', 21848870, '25', 'Hr.Anjali Dixit', '2022-10-17 11:27:05'),
(88, 'OUT OF RANGE', 'FAIL', '', '', '', '', ' Package issue\r\n', 42452492, '25', 'Hr.Anjali Dixit', '2022-10-17 11:33:36'),
(89, 'OUT OF RANGE', 'FAIL', '', '', '', '', ' looking for Cloud Engineer Profile\r\n', 31220038, '25', 'Hr.Anjali Dixit', '2022-10-18 09:55:41'),
(90, 'HR ROUND', 'FAIL', '', 'OUT OF RANGE', '', '', ' Looking for WFH\r\n', 29273135, '25', 'Hr.Anjali Dixit', '2022-10-18 10:01:42'),
(91, 'HR ROUND', 'FAIL', '', '', '', '', ' package issue', 98568809, '25', 'Hr.Anjali Dixit', '2022-10-18 10:20:29'),
(92, 'HR ROUND', 'PASS', '', 'TELEPHONIC ROUND', '', '', ' will update\r\n', 35369976, '25', 'Hr.Anjali Dixit', '2022-10-18 10:29:22'),
(93, 'HR ROUND', 'PASS', '', 'TELEPHONIC ROUND', '', '', ' will update\r\n', 99998962, '25', 'Hr.Anjali Dixit', '2022-10-18 10:41:14'),
(94, 'HR ROUND', 'FAIL', '', '', '', '', ' not looking for change', 99938746, '25', 'Hr.Anjali Dixit', '2022-10-18 11:39:30'),
(95, 'HR ROUND', 'PASS', '2022-10-20T11:30', 'Face to Face', '', '', ' Fresher, Having experience of tele calling', 59135580, '25', 'Hr.Anjali Dixit', '2022-10-18 12:13:48'),
(96, 'HR ROUND', 'FAIL', '', '', '', '', ' Location Constraint Looking for Pune or Nasik\r\n', 88015766, '25', 'Hr.Anjali Dixit', '2022-10-19 05:29:32'),
(97, 'HR ROUND', 'FAIL', '', '', '', '', ' looking for Pune or Bangalore', 36211907, '25', 'Hr.Anjali Dixit', '2022-10-19 05:37:38'),
(98, 'TELEPHONIC ROUND', 'FAIL', '', '', '', '', ' Lack of knowledge for Authenticated APIs,Joins, MD-arrays', 91347193, '28', 'Er.Rishabh Mishra', '2022-10-19 08:47:33'),
(99, 'HR ROUND', 'FAIL', '', '', '', '', ' Not getting any call', 90573934, '25', 'Hr.Anjali Dixit', '2022-10-22 06:29:24'),
(100, 'HR ROUND', 'FAIL', '', '', '', '', ' will call after deepawali', 21784292, '25', 'Hr.Anjali Dixit', '2022-10-22 10:03:19'),
(101, 'HR ROUND', 'FAIL', '', '', '', '', ' not receiving any call', 33450499, '25', 'Hr.Anjali Dixit', '2022-10-22 10:03:51'),
(102, 'Face to Face', 'PASS', '2022-10-28T11:42', 'FINAL ROUND', '', '', 'waiting for notice period update\r\n', 82785111, '25', 'Hr.Anjali Dixit', '2022-10-22 10:13:18'),
(103, 'OUT OF RANGE', 'FAIL', '', '', '', '', ' working as freelancer and looking for immediate joining in permanent job', 87839145, '25', 'Hr.Anjali Dixit', '2022-10-22 10:39:16'),
(104, 'HR ROUND', 'PASS', '', 'TELEPHONIC ROUND', '', '', ' good candidate but location is Nashik and having 2 months notice period not negotiated', 60573319, '25', 'Hr.Anjali Dixit', '2022-10-27 06:35:30'),
(105, 'HR ROUND', 'PASS', '2022-10-28T15:30', 'TELEPHONIC ROUND', '', '', ' having overall 4 yrs of experience in laravel and wordpress', 38945720, '25', 'Hr.Anjali Dixit', '2022-10-27 07:19:43'),
(106, 'HR ROUND', 'PASS', '2022-10-27T15:00', 'TELEPHONIC ROUND', '', '', ' having 2.5 months of experience in core php ', 52598639, '25', 'Hr.Anjali Dixit', '2022-10-27 09:07:27'),
(107, 'TELEPHONIC ROUND', 'PASS', '', 'MACHINE TEST', '', '', ' Average ...! Kindly arrange Machine Test for Better Understanding', 52598639, '28', 'Er.Rishabh Mishra', '2022-10-27 09:56:17'),
(108, 'TELEPHONIC ROUND', 'PASS', '', 'MACHINE TEST', '', '', 'Mainly worked on wordpress further will be clarified with machine test\r\nso, schedule machine test', 38945720, '26', 'ADMIN', '2022-10-28 08:45:51'),
(109, 'HR ROUND', 'FAIL', '', '', '', '', ' Package issue', 57761624, '25', 'Hr.Anjali Dixit', '2022-10-28 11:05:10'),
(110, 'HR ROUND', 'FAIL', '', '', '', '', ' Looking for wfh\r\n', 54707268, '25', 'Hr.Anjali Dixit', '2022-10-29 04:48:27'),
(111, 'TELEPHONIC ROUND', 'PASS', '2022-10-29T17:30', 'MACHINE TEST', '', '', ' having 2 yrs of knowledge in Php/laravel and other in wordpress.', 38945720, '25', 'Hr.Anjali Dixit', '2022-10-29 05:57:46'),
(112, 'HR ROUND', 'FAIL', '', '', '', '', ' looking for wfh', 17045437, '25', 'Hr.Anjali Dixit', '2022-10-29 08:37:05'),
(113, 'HR ROUND', 'PASS', '', 'Face to Face', '', '', ' having expertise in linux \r\n', 61738780, '25', 'Hr.Anjali Dixit', '2022-10-29 09:54:45'),
(114, 'HR ROUND', 'FAIL', '', '', '', '', ' Not looking for job', 28693460, '25', 'Hr.Anjali Dixit', '2022-10-29 10:34:48'),
(115, 'TELEPHONIC ROUND', 'FAIL', '', '', '', '', ' rejected by manikant sir', 21848870, '25', 'Hr.Anjali Dixit', '2022-10-29 10:56:38'),
(116, 'MACHINE TEST', 'FAIL', '', '', '', '', ' Task not done properly', 38945720, '26', 'ADMIN', '2022-10-29 13:12:34'),
(117, 'HR ROUND', 'FAIL', '', '', '', '', ' Looking for wfh\r\n', 39794253, '25', 'Hr.Anjali Dixit', '2022-11-03 05:58:02'),
(118, 'HR ROUND', 'PASS', '2022-11-10T17:01', 'TELEPHONIC ROUND', '', '', ' Good candidate....having 14 months of experience', 86637303, '25', 'Hr.Anjali Dixit', '2022-11-10 08:39:21'),
(119, 'HIRED', 'Hierd', '', '', '', '', ' will join from 11-11-22', 84216773, '25', 'Hr.Anjali Dixit', '2022-11-10 08:51:40'),
(120, 'FACE TO FACE', 'FAIL', '', '', '', '', ' Rejected due to less confidence', 16292801, '25', 'Hr.Anjali Dixit', '2022-11-10 09:04:45'),
(121, 'TELEPHONIC ROUND', 'FAIL', '', '', '', '', ' Looking for 5days working', 75592842, '25', 'Hr.Anjali Dixit', '2022-11-10 09:30:26'),
(122, 'HR ROUND', 'PASS', '2022-11-14T16:00', 'TELEPHONIC ROUND', '', '', ' having 5 yr experience in core php', 59064531, '25', 'Hr.Anjali Dixit', '2022-11-14 06:11:33'),
(123, 'HR ROUND', 'PASS', '2022-11-14T12:00', 'TELEPHONIC ROUND', '', '', ' Having good knowledge....', 86637303, '25', 'Hr.Anjali Dixit', '2022-11-14 06:27:01'),
(124, 'TELEPHONIC ROUND', 'PASS', '', 'MACHINE TEST', '', '', 'Good Knowledge....Arrange machinetest or WALK-IN-Interview for better understanding.', 86637303, '28', 'Er.Rishabh Mishra', '2022-11-14 06:53:19'),
(125, 'HR ROUND', 'FAIL', '', '', '', '', ' Fresher', 94881229, '25', 'Hr.Anjali Dixit', '2022-11-18 06:22:51'),
(126, 'HR ROUND', 'Hierd', '', '', '', '', ' Selected', 90929578, '25', 'Hr.Anjali Dixit', '2022-11-18 07:30:11'),
(127, 'HR ROUND', 'PASS', '', '', '', '', ' Cv on Hold', 55008303, '25', 'Hr.Anjali Dixit', '2022-11-18 07:30:42'),
(128, 'HR ROUND', 'PASS', '2022-11-19T11:00', 'Face to Face', '', '', ' Having good knowledge about laravel and work experience about 1.9 yrs\r\n', 39695467, '25', 'Hr.Anjali Dixit', '2022-11-18 07:37:27'),
(129, 'HR ROUND', 'PASS', '2022-11-19T16:00', 'TELEPHONIC ROUND', '', '', ' having 2 yrs of work experience in Laravel', 51733517, '25', 'Hr.Anjali Dixit', '2022-11-18 08:39:13'),
(130, 'HR ROUND', 'PASS', '2022-11-18T15:26', 'TELEPHONIC ROUND', '', '', ' Having 3.5 years of work experience in Core PHP', 54166295, '25', 'Hr.Anjali Dixit', '2022-11-18 08:56:59'),
(131, 'TELEPHONIC ROUND', 'FAIL', '', '', '', '', 'Lack of knowledge on (APIs),(Arrays)and Joins(MySQL).Moreover He cut the call in mid of the interview and didnt pick again.', 54166295, '26', 'ADMIN', '2022-11-18 09:16:55'),
(132, 'HR ROUND', 'PASS', '2022-11-19T18:00', 'TELEPHONIC ROUND', '', '', ' having good knowledge in laravel and work experience about 1.6 years', 41577117, '25', 'Hr.Anjali Dixit', '2022-11-18 09:24:36'),
(133, 'HR ROUND', 'FAIL', '', '', '', '', ' Cut the call in mid of interview', 82044415, '25', 'Hr.Anjali Dixit', '2022-11-18 09:32:05'),
(134, 'TELEPHONIC ROUND', 'PASS', '2022-11-19T12:00', 'MACHINE TEST', '', '', '...', 86637303, '25', 'Hr.Anjali Dixit', '2022-11-18 09:35:42'),
(135, 'TELEPHONIC ROUND', 'PASS', '2022-11-19T12:00', 'MACHINE TEST', '', '', ' ....', 59064531, '25', 'Hr.Anjali Dixit', '2022-11-18 09:36:33'),
(136, 'HR ROUND', 'FAIL', '', '', '', '', ' call not pick', 79387271, '25', 'Hr.Anjali Dixit', '2022-11-18 09:39:15'),
(137, 'HR ROUND', 'FAIL', '', '', '', '', ' Due to 6 months of work experience in asterisk developer', 43697372, '25', 'Hr.Anjali Dixit', '2022-11-19 07:25:25'),
(138, 'HR ROUND', 'Nextdate', '2022-11-21T12:00', 'HR ROUND', '', '', ' He is busy today, said call me on Monday again', 85060538, '25', 'Hr.Anjali Dixit', '2022-11-19 07:28:39'),
(139, 'TELEPHONIC ROUND', 'PASS', '2022-11-19T15:00', 'TELEPHONIC ROUND', '', '', 'having 8 months experience in Laravel and 6 months in Core PHP', 94329992, '25', 'Hr.Anjali Dixit', '2022-11-19 08:31:30'),
(140, 'MACHINE TEST', 'FAIL', '', '', '', '', 'Leave the task in mid session,and didnt pick the call...', 86637303, '26', 'ADMIN', '2022-11-19 08:52:28'),
(141, 'HR ROUND', 'FAIL', '', '', '', '', ' Higher expectation......lack of knowledge', 51122796, '25', 'Hr.Anjali Dixit', '2022-11-19 08:59:16'),
(142, 'MACHINE TEST', 'FAIL', '', '', '', '', ' Left the task in mid ', 59064531, '26', 'ADMIN', '2022-11-19 11:41:52'),
(143, 'HR ROUND', 'FAIL', '', '', '', '', ' joined somewhere else', 49218585, '25', 'Hr.Anjali Dixit', '2022-11-19 11:56:41'),
(144, 'HR ROUND', 'FAIL', '', '', '', '', ' Having knowledge in code igniter only', 68348300, '25', 'Hr.Anjali Dixit', '2022-11-19 12:44:50'),
(145, 'HR ROUND', 'FAIL', '', '', '', '', ' High package expectation', 34154018, '25', 'Hr.Anjali Dixit', '2022-11-21 06:49:17'),
(146, 'HR ROUND', 'FAIL', '', '', '', '', ' Rejected......not ready to reallocate to Noida Location', 69142838, '25', 'Hr.Anjali Dixit', '2022-11-22 10:31:51'),
(147, 'MACHINE TEST', 'FAIL', '', '', '', '', ' Did not work accoording to our expectations ( Slow and wrong outputs)', 39695467, '26', 'ADMIN', '2022-11-23 11:31:28'),
(148, 'HR ROUND', 'FAIL', '', '', '', '', 'not interested\r\n', 18516077, '25', 'Hr.Anjali Dixit', '2022-11-25 11:43:49'),
(149, 'HR ROUND', 'PASS', '2022-11-26T12:00', 'TELEPHONIC ROUND', '', '', ' Having 1.6 yrs of work experience in php', 24443386, '25', 'Hr.Anjali Dixit', '2022-11-25 11:48:16'),
(150, 'HR ROUND', 'FAIL', '', '', '', '', ' Higher expectation', 81108147, '25', 'Hr.Anjali Dixit', '2022-11-25 12:14:24'),
(151, 'HR ROUND', 'PASS', '2022-11-28T12:00', 'TELEPHONIC ROUND', '', '', ' interested in development not in support', 64885921, '25', 'Hr.Anjali Dixit', '2022-11-28 05:50:35'),
(152, 'HR ROUND', 'FAIL', '', '', '', '', 'Recently joined\r\n', 62294160, '25', 'Hr.Anjali Dixit', '2022-11-28 05:59:26'),
(153, 'HR ROUND', 'FAIL', '', '', '', '', ' call not connected\r\n', 34849476, '25', 'Hr.Anjali Dixit', '2022-11-28 06:02:42'),
(154, 'HR ROUND', 'PASS', '2022-11-28T17:00', 'TELEPHONIC ROUND', '', '', ' having 1 yr work experience', 81205977, '25', 'Hr.Anjali Dixit', '2022-11-28 10:42:25'),
(155, 'HR ROUND', 'FAIL', '', '', '', '', ' not looking for change', 68389904, '25', 'Hr.Anjali Dixit', '2022-11-28 12:13:32'),
(156, 'HR ROUND', 'PASS', '2022-11-29T15:30', 'TELEPHONIC ROUND', '', '', 'having 1 yr of work experience in Core PHP', 81205977, '25', 'Hr.Anjali Dixit', '2022-11-29 05:11:34'),
(157, 'HR ROUND', 'PASS', '2022-11-29T12:30', 'TELEPHONIC ROUND', '', '', 'having 5 months of internship only ', 64885921, '25', 'Hr.Anjali Dixit', '2022-11-29 05:19:40'),
(158, 'HR ROUND', 'PASS', '2022-11-29T12:00', 'TELEPHONIC ROUND', '', '', ' having experience on Node', 67275092, '25', 'Hr.Anjali Dixit', '2022-11-29 06:13:10'),
(159, 'HR ROUND', 'PASS', '2022-11-29T16:00', 'TELEPHONIC ROUND', '', '', 'immediate joiner', 94329992, '25', 'Hr.Anjali Dixit', '2022-11-29 06:45:56'),
(160, 'TELEPHONIC ROUND', 'FAIL', '', '', '', '', ' Lack of Knowledge and cut the call during interview', 67275092, '26', 'ADMIN', '2022-11-29 06:48:39'),
(161, 'TELEPHONIC ROUND', 'FAIL', '', '', '', '', 'No Experience,', 64885921, '26', 'ADMIN', '2022-11-29 07:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `manage_application`
--

CREATE TABLE `manage_application` (
  `id` int(11) NOT NULL,
  `aadhar_card` int(40) NOT NULL,
  `employee_name` varchar(250) NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `employee_location` varchar(250) NOT NULL,
  `reference_name_1` varchar(100) NOT NULL,
  `reference_n0_1` varchar(100) NOT NULL,
  `reference_name_2` varchar(250) NOT NULL,
  `reference_n0_2` varchar(100) NOT NULL,
  `umique_id` varchar(250) NOT NULL,
  `User_id` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recruitment_status`
--

CREATE TABLE `recruitment_status` (
  `id` int(30) NOT NULL,
  `status_label` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recruitment_status`
--

INSERT INTO `recruitment_status` (`id`, `status_label`, `status`) VALUES
(18, 'TELEPHONIC ROUND', 1),
(19, 'MACHINE TEST', 1),
(20, 'FINAL ROUND', 1),
(21, 'HIRED', 1),
(22, 'OUT OF RANGE', 1),
(23, 'MISBEHAVE', 1),
(24, 'HR ROUND', 1),
(25, 'Face to Face', 0),
(26, 'FACE TO FACE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Vert-age', 'vert-age@gmail.com', '+11402985635', '1662555960_Screenshot (1).png', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;ABOUT US&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/b&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;#x2019;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;&lt;h2 style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;Where does it come from?&lt;/h2&gt;&lt;p style=&quot;text-align: center; margin-bottom: 15px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400;&quot;&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.&lt;/p&gt;&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `doctor_id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `contact` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `groupname` varchar(250) NOT NULL,
  `g_id` varchar(250) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=admin , 2 = staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `doctor_id`, `name`, `address`, `contact`, `username`, `password`, `groupname`, `g_id`, `type`) VALUES
(25, 0, 'Hr.Anjali Dixit', '', '', 'HrAnjali', 'hrxspl@123', 'Group5,group3', '', 2),
(26, 0, 'ADMIN', '', '', 'admin', 'xspl@123', 'Group5,group3,Group1', '', 1),
(27, 0, 'test', '', '', 'test', 'test', 'group3', '', 2),
(28, 0, 'Er.Rishabh Mishra', '', '', 'Er.Rishabh Mishra', 'Rishabh@123', 'Group1', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `groupname` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `groupname`, `status`) VALUES
(46, 'Group5', ''),
(48, 'group3', ''),
(45, 'Group1', '');

-- --------------------------------------------------------

--
-- Table structure for table `vacancy`
--

CREATE TABLE `vacancy` (
  `id` int(30) NOT NULL,
  `position` varchar(200) NOT NULL,
  `availability` int(30) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vacancy`
--

INSERT INTO `vacancy` (`id`, `position`, `availability`, `description`, `status`, `date_created`) VALUES
(44, 'PHP Developer', 30, '&lt;p class=&quot;dang-inner-html&quot; style=&quot;padding: 0px; margin-top: 10px; margin-bottom: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word; line-height: 18px;&quot;&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;b style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Title:&lt;/b&gt;&amp;nbsp;PHP Developer - Freshers can apply&lt;/p&gt;&lt;br style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif;&quot;&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;b style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Exp:&lt;/b&gt;&amp;nbsp;0 to 2 yrs - 2 Position&lt;br style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif;&quot;&gt;2 to 5 Yrs - 1 Position&lt;/p&gt;&lt;br style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif;&quot;&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;b style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Location:&lt;/b&gt;&amp;nbsp;Vadodara&lt;/p&gt;&lt;br style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif;&quot;&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;b style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Responsibilities:&lt;/b&gt;&lt;/p&gt;&lt;ul style=&quot;padding: 0px 0px 0px 1em; margin: 1em 0px 1em 1em; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;li style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Conducting analysis of website and application requirements.&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Troubleshoot, test and maintain the core product software and databases to ensure strong optimization and functionality.&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Contribute in all phases of the development life cycle.&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Create documentation for software created.&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Utilize source debuggers and write or modify client software.&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Produce results effectively and within the deadlines set.&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Updating and altering application features to enhance performance.&lt;/li&gt;&lt;/ul&gt;&lt;br style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif;&quot;&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;b style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Requirements:&lt;/b&gt;&lt;/p&gt;&lt;ul style=&quot;padding: 0px 0px 0px 1em; margin: 1em 0px 1em 1em; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;li style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;B.E/B.Tech or MCA in computer or IT&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Excellent knowledge of object-oriented programming.&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Strong knowledge of PHP web frameworks such as Laravel, CodeIgnitor, Yii, etc&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Understanding the fully synchronous behavior of PHP&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Understanding of MVC design patterns&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Understanding of client/server architecture&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Integration of multiple data sources and databases into one system&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Familiarity with limitations of PHP as a platform and its workarounds&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Familiarity with SQL databases and their declarative query languages&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Basic knowledge about JavaScript and jQuery&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Basic understanding of front-end technologies, such as JavaScript, HTML5, and CSS3&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Good Communication skills&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Creative ability to produce effective solutions to client problems.&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Good team player that is enthusiastic about delivering results.&lt;/li&gt;&lt;/ul&gt;&lt;br style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif;&quot;&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;b style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Interested candidates please send your resume.&lt;/b&gt;&lt;/p&gt;&lt;br style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif;&quot;&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;b style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;About Company:&lt;/b&gt;&lt;br style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif;&quot;&gt;Adroit Infosol (https://adroitinfosol.com), is a growing IT services company located in Vadodara. We are providing various IT services to overseas clients in the area of mobile and web application development.&lt;/p&gt;&lt;br style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif;&quot;&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Thank you!&lt;br style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif;&quot;&gt;Kalpana Patel&lt;br style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif;&quot;&gt;https://adroitinfosol.com&lt;/p&gt;&lt;br style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif;&quot;&gt;&lt;/p&gt;&lt;p class=&quot;other-details&quot; style=&quot;padding: 0px; margin-top: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 16px; vertical-align: baseline; overflow-wrap: break-word; color: rgb(0, 0, 0);&quot;&gt;&lt;p class=&quot;details&quot; style=&quot;padding: 0px; margin-bottom: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 16px; vertical-align: baseline; overflow-wrap: break-word; line-height: 20px;&quot;&gt;&lt;label style=&quot;padding: 0px; margin: 0px 9px 0px 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: top; overflow-wrap: break-word; color: rgb(153, 153, 153); width: 110px;&quot;&gt;Role&lt;/label&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word; display: inline-block; width: 630px;&quot;&gt;&lt;a href=&quot;https://www.naukri.com/it-services-consulting-jobs&quot; target=&quot;_blank&quot; style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; color: rgb(51, 51, 51); border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word; text-decoration-line: none; cursor: pointer;&quot;&gt;IT Services &amp;amp; Consulting&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;details&quot; style=&quot;padding: 0px; margin-bottom: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 16px; vertical-align: baseline; overflow-wrap: break-word; line-height: 20px;&quot;&gt;&lt;label style=&quot;padding: 0px; margin: 0px 9px 0px 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: top; overflow-wrap: break-word; color: rgb(153, 153, 153); width: 110px;&quot;&gt;Functional Area&lt;/label&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word; display: inline-block; width: 630px;&quot;&gt;&lt;a href=&quot;https://www.naukri.com/engineering-software-qa-jobs&quot; target=&quot;_blank&quot; style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; color: rgb(51, 51, 51); border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word; text-decoration-line: none; cursor: pointer;&quot;&gt;Engineering - Software &amp;amp; QA&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;details&quot; style=&quot;padding: 0px; margin-bottom: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 16px; vertical-align: baseline; overflow-wrap: break-word; line-height: 20px;&quot;&gt;&lt;label style=&quot;padding: 0px; margin: 0px 9px 0px 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: top; overflow-wrap: break-word; color: rgb(153, 153, 153); width: 110px;&quot;&gt;Employment Type&lt;/label&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word; display: inline-block; width: 630px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Full Time, Permanent&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;details&quot; style=&quot;padding: 0px; margin-bottom: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 16px; vertical-align: baseline; overflow-wrap: break-word; line-height: 20px;&quot;&gt;&lt;label style=&quot;padding: 0px; margin: 0px 9px 0px 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: top; overflow-wrap: break-word; color: rgb(153, 153, 153); width: 110px;&quot;&gt;Role Category&lt;/label&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Software Development&lt;/span&gt;&lt;/p&gt;&lt;/p&gt;&lt;p class=&quot;education&quot; style=&quot;padding: 0px; margin-top: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 16px; vertical-align: baseline; overflow-wrap: break-word; line-height: 20px; color: rgb(0, 0, 0);&quot;&gt;&lt;p class=&quot;heading&quot; style=&quot;padding: 0px; margin-bottom: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Education&lt;/p&gt;&lt;p class=&quot;details&quot; style=&quot;padding: 0px; margin-bottom: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 16px; vertical-align: baseline; overflow-wrap: break-word; line-height: 20px;&quot;&gt;&lt;label style=&quot;padding: 0px; margin: 0px 9px 0px 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: top; overflow-wrap: break-word; color: rgb(153, 153, 153); width: 110px;&quot;&gt;UG :&lt;/label&gt;&lt;span class=&quot;&quot; style=&quot;padding: 0px; margin: 0px; font-family: Roboto, sans-serif; border: 0px; font-size: 13px; vertical-align: baseline; overflow-wrap: break-word; display: inline-block; width: 630px;&quot;&gt;B.Tech/B.E. in Computers&lt;/span&gt;&lt;/p&gt;&lt;/p&gt;', 1, '2022-09-01 18:25:14'),
(45, 'Laravel Developer', 1, '&lt;p style=&quot;margin-bottom: 0px; font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;font-weight: bolder; font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Exp:&lt;/span&gt;&amp;nbsp;0 to 2 yrs - 2 Position&lt;br style=&quot;font-family: Roboto, sans-serif; padding: 0px; margin: 0px;&quot;&gt;2 to 5 Yrs - 1 Position&lt;/p&gt;&lt;br style=&quot;font-family: Roboto, sans-serif; padding: 0px; margin: 0px;&quot;&gt;&lt;p style=&quot;margin-bottom: 0px; font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;font-weight: bolder; font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Location:&lt;/span&gt;&amp;nbsp;Vadodara&lt;/p&gt;&lt;br style=&quot;font-family: Roboto, sans-serif; padding: 0px; margin: 0px;&quot;&gt;&lt;p style=&quot;margin-bottom: 0px; font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;font-weight: bolder; font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Responsibilities:&lt;/span&gt;&lt;/p&gt;&lt;ul style=&quot;margin: 1em 0px 1em 1em; font-family: Roboto, sans-serif; font-size: 13px; padding: 0px 0px 0px 1em; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;li style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Conducting analysis of website and application requirements.&lt;/li&gt;&lt;li style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Troubleshoot, test and maintain the core product software and databases to ensure strong optimization and functionality.&lt;/li&gt;&lt;li style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Contribute in all phases of the development life cycle.&lt;/li&gt;&lt;li style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Create documentation for software created.&lt;/li&gt;&lt;li style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Utilize source debuggers and write or modify client software.&lt;/li&gt;&lt;li style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Produce results effectively and within the deadlines set.&lt;/li&gt;&lt;li style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Updating and altering application features to enhance performance.&lt;/li&gt;&lt;/ul&gt;&lt;br style=&quot;font-family: Roboto, sans-serif; padding: 0px; margin: 0px;&quot;&gt;&lt;p style=&quot;margin-bottom: 0px; font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;font-weight: bolder; font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Requirements:&lt;/span&gt;&lt;/p&gt;&lt;ul style=&quot;margin: 1em 0px 1em 1em; font-family: Roboto, sans-serif; font-size: 13px; padding: 0px 0px 0px 1em; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;li style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;B.E/B.Tech or MCA in computer or IT&lt;/li&gt;&lt;li style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Excellent knowledge of object-oriented programming.&lt;/li&gt;&lt;li style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Strong knowledge of PHP web frameworks such as Laravel, CodeIgnitor, Yii, etc&lt;/li&gt;&lt;li style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Understanding the fully synchronous behavior of PHP&lt;/li&gt;&lt;li style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Understanding of MVC design patterns&lt;/li&gt;&lt;li style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Understanding of client/server architecture&lt;/li&gt;&lt;li style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Integration of multiple data sources and databases into one system&lt;/li&gt;&lt;li style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Familiarity with limitations of PHP as a platform and its workarounds&lt;/li&gt;&lt;li style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Familiarity with SQL databases and their declarative query languages&lt;/li&gt;&lt;li style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Basic knowledge about JavaScript and jQuery&lt;/li&gt;&lt;li style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Basic understanding of front-end technologies, such as JavaScript, HTML5, and CSS3&lt;/li&gt;&lt;li style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Good Communication skills&lt;/li&gt;&lt;li style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Creative ability to produce effective solutions to client problems.&lt;/li&gt;&lt;li style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Good team player that is enthusiastic about delivering results.&lt;/li&gt;&lt;/ul&gt;&lt;br style=&quot;font-family: Roboto, sans-serif; padding: 0px; margin: 0px;&quot;&gt;&lt;p style=&quot;margin-bottom: 0px; font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;font-weight: bolder; font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Interested candidates please send your resume.&lt;/span&gt;&lt;/p&gt;&lt;br style=&quot;font-family: Roboto, sans-serif; padding: 0px; margin: 0px;&quot;&gt;&lt;p style=&quot;margin-bottom: 0px; font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;font-weight: bolder; font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;About Company:&lt;/span&gt;&lt;br style=&quot;font-family: Roboto, sans-serif; padding: 0px; margin: 0px;&quot;&gt;Adroit Infosol (https://adroitinfosol.com), is a growing IT services company located in Vadodara. We are providing various IT services to overseas clients in the area of mobile and web application development.&lt;/p&gt;&lt;br style=&quot;font-family: Roboto, sans-serif; padding: 0px; margin: 0px;&quot;&gt;&lt;p style=&quot;margin-bottom: 0px; font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Thank you!&lt;br style=&quot;font-family: Roboto, sans-serif; padding: 0px; margin: 0px;&quot;&gt;Kalpana Patel&lt;br style=&quot;font-family: Roboto, sans-serif; padding: 0px; margin: 0px;&quot;&gt;https://adroitinfosol.com&lt;/p&gt;&lt;br style=&quot;font-family: Roboto, sans-serif; padding: 0px; margin: 0px;&quot;&gt;&lt;p&gt;&lt;/p&gt;&lt;p class=&quot;other-details&quot; style=&quot;margin-top: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px; padding: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;/p&gt;&lt;p class=&quot;details&quot; style=&quot;margin-bottom: 0px; font-family: Roboto, sans-serif; font-size: 16px; padding: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word; line-height: 20px;&quot;&gt;&lt;label style=&quot;margin: 0px 9px 0px 0px; color: rgb(153, 153, 153); font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; border: 0px; vertical-align: top; overflow-wrap: break-word; width: 110px;&quot;&gt;Role&lt;/label&gt;&lt;span style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word; display: inline-block; width: 630px;&quot;&gt;&lt;a href=&quot;https://www.naukri.com/it-services-consulting-jobs&quot; target=&quot;_blank&quot; style=&quot;color: rgb(51, 51, 51); text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word; cursor: pointer;&quot;&gt;IT Services &amp;amp; Consulting&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;details&quot; style=&quot;margin-bottom: 0px; font-family: Roboto, sans-serif; font-size: 16px; padding: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word; line-height: 20px;&quot;&gt;&lt;label style=&quot;margin: 0px 9px 0px 0px; color: rgb(153, 153, 153); font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; border: 0px; vertical-align: top; overflow-wrap: break-word; width: 110px;&quot;&gt;Functional Area&lt;/label&gt;&lt;span style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word; display: inline-block; width: 630px;&quot;&gt;&lt;a href=&quot;https://www.naukri.com/engineering-software-qa-jobs&quot; target=&quot;_blank&quot; style=&quot;color: rgb(51, 51, 51); text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word; cursor: pointer;&quot;&gt;Engineering - Software &amp;amp; QA&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;details&quot; style=&quot;margin-bottom: 0px; font-family: Roboto, sans-serif; font-size: 16px; padding: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word; line-height: 20px;&quot;&gt;&lt;label style=&quot;margin: 0px 9px 0px 0px; color: rgb(153, 153, 153); font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; border: 0px; vertical-align: top; overflow-wrap: break-word; width: 110px;&quot;&gt;Employment Type&lt;/label&gt;&lt;span style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word; display: inline-block; width: 630px;&quot;&gt;&lt;span style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Full Time, Permanent&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;details&quot; style=&quot;margin-bottom: 0px; font-family: Roboto, sans-serif; font-size: 16px; padding: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word; line-height: 20px;&quot;&gt;&lt;label style=&quot;margin: 0px 9px 0px 0px; color: rgb(153, 153, 153); font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; border: 0px; vertical-align: top; overflow-wrap: break-word; width: 110px;&quot;&gt;Role Category&lt;/label&gt;&lt;span style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Software Development&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p class=&quot;education&quot; style=&quot;margin-top: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px; padding: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word; line-height: 20px;&quot;&gt;&lt;/p&gt;&lt;p class=&quot;heading&quot; style=&quot;margin-bottom: 0px; font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Education&lt;/p&gt;&lt;p class=&quot;details&quot; style=&quot;margin-bottom: 0px; font-family: Roboto, sans-serif; font-size: 16px; padding: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word; line-height: 20px;&quot;&gt;&lt;label style=&quot;margin: 0px 9px 0px 0px; color: rgb(153, 153, 153); font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; border: 0px; vertical-align: top; overflow-wrap: break-word; width: 110px;&quot;&gt;UG :&lt;/label&gt;&lt;span class=&quot;&quot; style=&quot;font-family: Roboto, sans-serif; font-size: 13px; padding: 0px; margin: 0px; border: 0px; vertical-align: baseline; overflow-wrap: break-word; display: inline-block; width: 630px;&quot;&gt;B.Tech/B.E. in Computers&lt;/span&gt;&lt;/p&gt;', 1, '2022-09-01 18:25:55'),
(46, 'Web Designer', 0, '', 1, '2022-09-01 18:39:35'),
(47, 'Asterisk Developer', 0, '', 1, '2022-09-01 18:40:25'),
(48, 'Accountant', 0, '', 1, '2022-09-01 18:41:16'),
(49, 'HR', 0, '', 1, '2022-09-01 18:41:30'),
(50, 'Debugger/Tester', 0, '', 1, '2022-09-01 18:42:11'),
(51, 'Linux Administrator', 1, 'JD', 1, '2022-10-10 17:23:57'),
(52, 'Support Engineer', 5, 'JD', 1, '2022-10-10 17:24:38'),
(53, 'Digital Marketing', 1, '', 0, '2022-10-22 12:16:43'),
(54, 'Senior Specialist', 1, '', 1, '2022-10-29 10:35:31'),
(55, 'Assistant Sales Manager', 1, '', 1, '2022-11-08 17:28:26'),
(56, 'Sales Manager', 1, '', 1, '2022-11-08 17:28:55'),
(57, 'HR Intern', 1, '', 1, '2022-11-08 17:29:22'),
(58, 'HR Executive ', 1, '', 1, '2022-11-08 17:31:37'),
(59, 'Accountant Intern', 1, '', 1, '2022-11-08 17:32:17'),
(60, 'Accountant', 1, '', 1, '2022-11-08 17:33:12'),
(61, 'Junior Sales', 1, 'hgfhgfh', 1, '2022-11-08 17:33:54'),
(62, 'Sales Intern', 1, '', 1, '2022-11-08 17:34:18'),
(63, 'Office Boy', 1, '', 1, '2022-11-15 12:19:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Emp_details`
--
ALTER TABLE `Emp_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `manage_application`
--
ALTER TABLE `manage_application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recruitment_status`
--
ALTER TABLE `recruitment_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vacancy`
--
ALTER TABLE `vacancy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `Emp_details`
--
ALTER TABLE `Emp_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `manage_application`
--
ALTER TABLE `manage_application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recruitment_status`
--
ALTER TABLE `recruitment_status`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `vacancy`
--
ALTER TABLE `vacancy`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
