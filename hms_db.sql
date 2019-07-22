-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2018 at 07:49 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admitpatient_room`
--

CREATE TABLE `admitpatient_room` (
  `AdmitID` int(11) NOT NULL,
  `PatientID` varchar(50) NOT NULL,
  `Disease` text NOT NULL,
  `RoomNo` varchar(50) NOT NULL,
  `AdmitDate` text NOT NULL,
  `DoctorID` varchar(50) NOT NULL,
  `AP_Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admitpatient_room`
--

INSERT INTO `admitpatient_room` (`AdmitID`, `PatientID`, `Disease`, `RoomNo`, `AdmitDate`, `DoctorID`, `AP_Remarks`) VALUES
(1, 'P-1', 'Malariya', '101', '22/02/2018', '1', ''),
(2, 'P-3', 'Heart Diseases', '103', '12/03/2018', '2', ''),
(3, 'P-2', 'Small Problem', '101', '06/04/2018', '2', ''),
(4, 'P-4', 'Kichuina', '104', '06/04/2018', 'D-3', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `admitpatient_ward`
--

CREATE TABLE `admitpatient_ward` (
  `AdmitID` int(11) NOT NULL,
  `PatientID` varchar(50) NOT NULL,
  `Disease` text NOT NULL,
  `Wardname` varchar(100) NOT NULL,
  `AdmitDate` text NOT NULL,
  `DoctorID` varchar(50) NOT NULL,
  `AP_Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admitpatient_ward`
--

INSERT INTO `admitpatient_ward` (`AdmitID`, `PatientID`, `Disease`, `Wardname`, `AdmitDate`, `DoctorID`, `AP_Remarks`) VALUES
(1, 'P-2', 'Belly Pain', 'F', '25/02/2018', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `bill_room`
--

CREATE TABLE `bill_room` (
  `BillNo` int(11) NOT NULL,
  `DischargeID` int(11) NOT NULL,
  `BillingDate` text NOT NULL,
  `NoOfDays` int(11) NOT NULL,
  `RoomCharges` double NOT NULL,
  `TotalRoomCharges` double NOT NULL,
  `ServiceCharges` double NOT NULL,
  `TotalCharges` double NOT NULL,
  `PaymentMode` text NOT NULL,
  `PaymentModeDetails` text NOT NULL,
  `ChargesPaid` double NOT NULL,
  `DueCharges` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bill_room`
--

INSERT INTO `bill_room` (`BillNo`, `DischargeID`, `BillingDate`, `NoOfDays`, `RoomCharges`, `TotalRoomCharges`, `ServiceCharges`, `TotalCharges`, `PaymentMode`, `PaymentModeDetails`, `ChargesPaid`, `DueCharges`) VALUES
(1, 1, '24/02/2018', 2, 1200, 2400, 2300, 4700, 'by Cash', '', 4700, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bill_ward`
--

CREATE TABLE `bill_ward` (
  `BillNo` int(11) NOT NULL,
  `DischargeID` int(11) NOT NULL,
  `BillingDate` text NOT NULL,
  `BedCharges` double NOT NULL,
  `NoOfDays` int(11) NOT NULL,
  `TotalBedCharges` double NOT NULL,
  `ServiceCharges` double NOT NULL,
  `TotalCharges` double NOT NULL,
  `PaymentMode` text NOT NULL,
  `PaymentModeDetails` text NOT NULL,
  `ChargesPaid` double NOT NULL,
  `DueCharges` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dischargepatient_room`
--

CREATE TABLE `dischargepatient_room` (
  `ID` int(11) NOT NULL,
  `AdmitID` int(11) NOT NULL,
  `DischargeDate` text NOT NULL,
  `DP_Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dischargepatient_room`
--

INSERT INTO `dischargepatient_room` (`ID`, `AdmitID`, `DischargeDate`, `DP_Remarks`) VALUES
(1, 1, '24/02/2018', ''),
(2, 2, '16/03/2018', ''),
(3, 3, '08/04/2018', ''),
(4, 4, '06/04/2018', '');

-- --------------------------------------------------------

--
-- Table structure for table `dischargepatient_ward`
--

CREATE TABLE `dischargepatient_ward` (
  `ID` int(11) NOT NULL,
  `AdmitID` int(11) NOT NULL,
  `DischargeDate` text NOT NULL,
  `DP_Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dischargepatient_ward`
--

INSERT INTO `dischargepatient_ward` (`ID`, `AdmitID`, `DischargeDate`, `DP_Remarks`) VALUES
(1, 1, '28/02/2018', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DoctorID` varchar(50) NOT NULL,
  `DoctorName` text NOT NULL,
  `FatherName` text NOT NULL,
  `Address` text NOT NULL,
  `ContactNo` text NOT NULL,
  `Email` text NOT NULL,
  `Qualifications` text NOT NULL,
  `Specialization` text NOT NULL,
  `Gender` text NOT NULL,
  `Bloodgroup` text NOT NULL,
  `DateOfJoining` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`DoctorID`, `DoctorName`, `FatherName`, `Address`, `ContactNo`, `Email`, `Qualifications`, `Specialization`, `Gender`, `Bloodgroup`, `DateOfJoining`) VALUES
('1', 'Md Omar Faruk', 'Dr. Md Shahzahan Kabir', 'Comilla', '01830730994', 'Omarfaruk8709@yahoo.com', 'MBBS', 'Heart', 'M', 'O+', '01/01/2018'),
('2', 'Dr. Md. Zahid Hasan', 'ABCD', 'Dhaka', '01672580748', 'Zahid@diu.edu.bd', 'BMBS', 'Surgery', 'M', 'B+', '04/04/2018'),
('D-3', 'Dr Sheakh Rashed Haider Noori', 'ZZZZZ', 'Mirpur Dhaka', '019652356', 'Noori.cse@diu.edu.bd', 'FCPS', 'Diabetes', 'M', 'O+', '05/04/2018');

-- --------------------------------------------------------

--
-- Table structure for table `patientregistration`
--

CREATE TABLE `patientregistration` (
  `PatientID` varchar(50) NOT NULL,
  `Patientname` text NOT NULL,
  `Fathername` text NOT NULL,
  `Address` text NOT NULL,
  `ContactNo` text NOT NULL,
  `Email` text NOT NULL,
  `Age` int(11) NOT NULL,
  `Gen` text NOT NULL,
  `BG` text NOT NULL,
  `Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patientregistration`
--

INSERT INTO `patientregistration` (`PatientID`, `Patientname`, `Fathername`, `Address`, `ContactNo`, `Email`, `Age`, `Gen`, `BG`, `Remarks`) VALUES
('P-1', 'Ruhul Amin Raju', 'Abcd', 'Rajshahi', '01521420385', 'raju@gmail.com', 21, 'M', 'A+', ''),
('P-2', 'Mafiz Uddin', 'M A', 'Dhaka', '0167458', 'Mafiz@yahoo.com', 20, 'M', 'A+', ''),
('P-3', 'Hasan Toufiq', 'F F F', 'Sirajgang Sadar', '017842666', 'toufiq@gmail.com', 22, 'M', 'O-', ''),
('P-4', 'Omar', 'Shahzahan', 'Homna Comilla', '01611556561', 'OmarFaruk2468@gmail.com', 21, 'M', 'O+', '');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `NameOfUser` varchar(250) NOT NULL,
  `ContactNo` varchar(15) NOT NULL,
  `Email` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`username`, `password`, `NameOfUser`, `ContactNo`, `Email`) VALUES
('Faruk', '12345', 'Md Omar Faruk', '01771844336', 'Omar15-8709@diu.edu.bd');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `RoomNo` varchar(50) NOT NULL,
  `RoomType` varchar(100) NOT NULL,
  `RoomCharges` int(11) NOT NULL,
  `RoomStatus` varchar(100) NOT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=8192 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`RoomNo`, `RoomType`, `RoomCharges`, `RoomStatus`) VALUES
('101', 'General', 1200, 'Vacant'),
('102', 'Deluxe', 2200, 'Vacant'),
('103', 'Deluxe', 1800, 'Booked'),
('104', 'General', 1000, 'Vacant');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `ServiceID` int(11) NOT NULL,
  `ServiceName` varchar(250) NOT NULL,
  `ServiceDate` varchar(50) NOT NULL,
  `PatientID` varchar(50) NOT NULL,
  `ServiceCharges` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`ServiceID`, `ServiceName`, `ServiceDate`, `PatientID`, `ServiceCharges`) VALUES
(1, 'X-ray Test', '23/02/2018', 'P-1', 2300),
(2, 'Ultra', '25/02/2018', 'P-2', 1200),
(3, 'Echocardiography', '12/03/2018', 'P-3', 2500),
(4, 'Arthroscopy', '06/04/2018', 'P-4', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `user_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `user_password`) VALUES
('Faruk', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `ward`
--

CREATE TABLE `ward` (
  `wardname` varchar(100) NOT NULL,
  `wardtype` varchar(50) NOT NULL,
  `NoOfBeds` int(11) NOT NULL,
  `Charges` int(11) NOT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=8192 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ward`
--

INSERT INTO `ward` (`wardname`, `wardtype`, `NoOfBeds`, `Charges`) VALUES
('A', 'General', 4, 1300),
('B', 'Special', 4, 3400),
('C', 'General', 6, 1200),
('D', 'General', 6, 2100),
('F', 'Special', 4, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `wardboy_nurse_tbl`
--

CREATE TABLE `wardboy_nurse_tbl` (
  `ID` varchar(50) NOT NULL,
  `W_N_Name` varchar(250) NOT NULL,
  `Category` varchar(250) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `ContactNo` varchar(15) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Qualifications` varchar(250) NOT NULL,
  `BloodGroup` varchar(50) NOT NULL,
  `DateOfJoining` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wardboy_nurse_tbl`
--

INSERT INTO `wardboy_nurse_tbl` (`ID`, `W_N_Name`, `Category`, `Address`, `ContactNo`, `Email`, `Qualifications`, `BloodGroup`, `DateOfJoining`) VALUES
('202', 'Sharmin Akter', 'Nurse', 'Uttara Dhaka', '0168542215', 'Sharmin@gmail.com', 'BSc', 'O+', '05/04/2018'),
('203', 'Elora', 'Nurse', 'Gulshan Dhaka', '01958423365', 'Elora@gmail.com', 'BSc', 'A-', '08/04/2018');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admitpatient_room`
--
ALTER TABLE `admitpatient_room`
  ADD PRIMARY KEY (`AdmitID`),
  ADD KEY `DoctorID` (`DoctorID`),
  ADD KEY `DoctorID_2` (`DoctorID`),
  ADD KEY `PatientID` (`PatientID`),
  ADD KEY `RoomNo` (`RoomNo`);

--
-- Indexes for table `admitpatient_ward`
--
ALTER TABLE `admitpatient_ward`
  ADD PRIMARY KEY (`AdmitID`),
  ADD KEY `DoctorID` (`DoctorID`),
  ADD KEY `PatientID` (`PatientID`),
  ADD KEY `Wardname` (`Wardname`);

--
-- Indexes for table `bill_room`
--
ALTER TABLE `bill_room`
  ADD PRIMARY KEY (`BillNo`),
  ADD KEY `DischargeID` (`DischargeID`),
  ADD KEY `DischargeID_2` (`DischargeID`);

--
-- Indexes for table `bill_ward`
--
ALTER TABLE `bill_ward`
  ADD PRIMARY KEY (`BillNo`),
  ADD KEY `DischargeID` (`DischargeID`);

--
-- Indexes for table `dischargepatient_room`
--
ALTER TABLE `dischargepatient_room`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AdmitID` (`AdmitID`);

--
-- Indexes for table `dischargepatient_ward`
--
ALTER TABLE `dischargepatient_ward`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AdmitID` (`AdmitID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`DoctorID`);

--
-- Indexes for table `patientregistration`
--
ALTER TABLE `patientregistration`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`RoomNo`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`ServiceID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `ward`
--
ALTER TABLE `ward`
  ADD PRIMARY KEY (`wardname`);

--
-- Indexes for table `wardboy_nurse_tbl`
--
ALTER TABLE `wardboy_nurse_tbl`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admitpatient_room`
--
ALTER TABLE `admitpatient_room`
  MODIFY `AdmitID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admitpatient_ward`
--
ALTER TABLE `admitpatient_ward`
  MODIFY `AdmitID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bill_room`
--
ALTER TABLE `bill_room`
  MODIFY `BillNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bill_ward`
--
ALTER TABLE `bill_ward`
  MODIFY `BillNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dischargepatient_room`
--
ALTER TABLE `dischargepatient_room`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dischargepatient_ward`
--
ALTER TABLE `dischargepatient_ward`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `ServiceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admitpatient_room`
--
ALTER TABLE `admitpatient_room`
  ADD CONSTRAINT `admitpatient_room_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patientregistration` (`PatientID`),
  ADD CONSTRAINT `admitpatient_room_ibfk_2` FOREIGN KEY (`RoomNo`) REFERENCES `room` (`RoomNo`),
  ADD CONSTRAINT `admitpatient_room_ibfk_3` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`);

--
-- Constraints for table `admitpatient_ward`
--
ALTER TABLE `admitpatient_ward`
  ADD CONSTRAINT `admitpatient_ward_ibfk_1` FOREIGN KEY (`Wardname`) REFERENCES `ward` (`wardname`),
  ADD CONSTRAINT `admitpatient_ward_ibfk_2` FOREIGN KEY (`PatientID`) REFERENCES `patientregistration` (`PatientID`),
  ADD CONSTRAINT `admitpatient_ward_ibfk_3` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`);

--
-- Constraints for table `bill_room`
--
ALTER TABLE `bill_room`
  ADD CONSTRAINT `bill_room_ibfk_1` FOREIGN KEY (`DischargeID`) REFERENCES `dischargepatient_room` (`ID`);

--
-- Constraints for table `bill_ward`
--
ALTER TABLE `bill_ward`
  ADD CONSTRAINT `bill_ward_ibfk_1` FOREIGN KEY (`DischargeID`) REFERENCES `dischargepatient_ward` (`ID`);

--
-- Constraints for table `dischargepatient_room`
--
ALTER TABLE `dischargepatient_room`
  ADD CONSTRAINT `dischargepatient_room_ibfk_1` FOREIGN KEY (`AdmitID`) REFERENCES `admitpatient_room` (`AdmitID`);

--
-- Constraints for table `dischargepatient_ward`
--
ALTER TABLE `dischargepatient_ward`
  ADD CONSTRAINT `dischargepatient_ward_ibfk_1` FOREIGN KEY (`AdmitID`) REFERENCES `admitpatient_ward` (`AdmitID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`username`) REFERENCES `registration` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
