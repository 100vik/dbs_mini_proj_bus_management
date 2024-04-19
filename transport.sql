-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: MAR, 2023
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transport`
--

DELIMITER $$
--
-- Procedures
--

DELIMITER //

CREATE PROCEDURE CalculateTotalRevenue(IN p_bus_id INT, OUT p_total_revenue DECIMAL(10, 2))
BEGIN
    -- Declare variables to store fare per seat and total booked seats
    DECLARE fare_per_seat DECIMAL(10, 2);
    DECLARE total_booked_seats INT;
    
    -- Get the fare per seat for the specified bus
    SELECT fare INTO fare_per_seat FROM bus_details WHERE bus_id = p_bus_id;
    
    -- Calculate the total booked seats for the specified bus
    SELECT SUM(no_seat) INTO total_booked_seats FROM ticket WHERE bus_id = p_bus_id;
    
    -- Calculate the total revenue
    SET p_total_revenue = fare_per_seat * total_booked_seats;
END //

DELIMITER ;



CREATE DEFINER=`root`@`localhost` PROCEDURE `abcd` (IN `push` INT)  NO SQL
SELECT* from user_info$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `nishu` (IN `bus` INT)  NO SQL
SELECT* from bus_details$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `raj` (IN `raj` INT)  NO SQL
SELECT* from ticket$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `psw` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `name`, `psw`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `booking_det`
--

CREATE TABLE `booking_det` (
  `bus_id` int(11) NOT NULL,
  `vacant` int(11) NOT NULL,
  `jdate` varchar(30) NOT NULL,
  `bfrom` varchar(30) NOT NULL,
  `bto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_det`
--

INSERT INTO `booking_det` (`bus_id`, `vacant`, `jdate`, `bfrom`, `bto`) VALUES

(1, 80, '2024-05-16', 'Udupi ', 'Mysore'),
(12, 80, '2024-05-16', 'Udupi ', 'Mysore'),
(8, 80, '2024-05-16', 'Udupi ', 'Mysore'),
(13, 80, '2024-05-16', 'Udupi ', 'Mysore'),

(2,80, '2024-05-16', 'Ooty ', 'Bangalore'),
(14, 80, '2024-05-16', 'Ooty ', 'Bangalore'),


(1, 78, '2024-05-17', 'Udupi ', 'Mysore'),
(12, 80, '2024-05-17', 'Udupi ', 'Mysore'),
(8, 80, '2024-05-17', 'Udupi ', 'Mysore'),
(13, 80, '2024-05-17', 'Udupi ', 'Mysore'),

(2, 76, '2024-05-17', 'Ooty ', 'Bangalore'),
(14, 80, '2024-05-17', 'Ooty ', 'Bangalore'),

(1, 80, '2024-05-18', 'Udupi ', 'Mysore'),
(12, 80, '2024-05-18', 'Udupi ', 'Mysore'),
(8, 80, '2024-05-18', 'Udupi ', 'Mysore'),
(13, 80, '2024-05-18', 'Udupi ', 'Mysore'),

(2, 80, '2024-05-18', 'Ooty ', 'Bangalore'),
(14, 80, '2024-05-18', 'Ooty ', 'Bangalore'),


(1, 80, '2024-05-19', 'Udupi ', 'Mysore'),
(12, 80, '2024-05-19', 'Udupi ', 'Mysore'),
(8, 80, '2024-05-19', 'Udupi ', 'Mysore'),
(13, 80, '2024-05-19', 'Udupi ', 'Mysore'),

(2, 80, '2024-05-19', 'Ooty ', 'Bangalore'),
(14, 80, '2024-05-19', 'Ooty ', 'Bangalore'),







(3, 78, '2024-05-16', 'Bangalore', 'Murudeshwar'),
(3, 77, '2024-05-17', 'Bangalore', 'Murudeshwar'),



(4, 80, '2024-05-17', 'Coorg ', 'Bangalore'),
(5, 70, '2024-05-17', 'Badami ', 'Bangalore'),
(6, 80, '2024-05-18', 'Ooty ', 'Murudeshwar'),
(7, 80, '2024-05-18', 'Chikmangaluru ', 'Coorg'),
(8, 80, '2024-05-18', 'Udupi ', 'Mysore'), 
(9, 80, '2024-05-19', 'Bangalore ', 'Mysore'), 
(10,80, '2024-05-19', 'Ooty ', 'Badami'),
(11,80, '2024-05-19', 'Udupi ', 'Bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `bus_details`
--

CREATE TABLE `bus_details` (
  `bus_id` int(11) NOT NULL,
  `bname` varchar(30) NOT NULL,
  `bno` varchar(20) NOT NULL,
  `bfrom` varchar(30) NOT NULL,
  `bto` varchar(30) NOT NULL,
  `time` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `no_seat` int(11) NOT NULL,
  `fare` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_details`
--

INSERT INTO `bus_details` (`bus_id`, `bname`, `bno`, `bfrom`, `bto`, `time`, `type`, `no_seat`, `fare`) VALUES
(1, 'Cheetah', 'Uk 30 sa 0134', 'Udupi ', 'Mysore', '6pm', 'Ac', 80, 1000),
(2, 'Toofan Express', 'mp 30 sc 0137', 'Ooty ', 'Bangalore', '6pm', 'Ac', 80, 1000),
(3, 'Satabdi Express', 'MP07 Se1212', 'Bangalore', 'Murudeshwar', '7 pm', 'Non Ac', 80, 500),
(4, 'Janrath', 'up16sc1212', 'Coorg ', 'Bangalore', '6am', 'Ac', 80, 350),
(5, 'Taj express', 'mp30Ka1213', 'Badami ', 'Bangalore', '8AM', 'Ac', 80, 5000),
(6, 'MurliDhan Express', 'Kl16ac1212', 'Ooty ', 'Murudeshwar', '6am', 'Ac', 80, 1000),
(7, 'Jenny Local', 'Del21cs1247', 'Chikmangaluru ', 'Coorg', '7am', 'Ac', 80, 800),
(8, 'Jay Bharath Express', 'up16sc1214', 'Udupi ', 'Mysore', '8pm', 'Ac', 80, 1500),
(9, 'Jay N Veeru', 'WbCs3940', 'Bangalore ', 'Mysore', '9am', 'Ac', 80, 350),
(10, 'Gofast Express', 'Ooty ', 'Badami', 'gorakhpur', '7pm', 'Ac', 80, 1800),
(11, 'Night Moon Local', 'WbCs6294', 'Udupi ', 'Bangalore', '8pm', 'Ac', 80, 500),
(12, 'Night Owl Express', 'Mp0012456 ', 'Udupi', 'Mysore', '10pm', 'Ac', 80, 2800),
(13, 'king Fish Express', 'ka00125258 ', 'Udupi', 'Mysore', '11pm', 'NAc', 80, 600),
(14, 'Chetak Express', 'mp 40 sc 0147', 'Ooty ', 'Bangalore', '10pm', 'Ac', 80, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `tid` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `seat_no` varchar(30) NOT NULL,
  `no_seat` int(11) NOT NULL,
  `ticket_status` varchar(30) NOT NULL,
  `jdate` varchar(30) NOT NULL,
  `booking_date` date NOT NULL,
  `pname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`tid`, `bus_id`, `uid`, `seat_no`, `no_seat`, `ticket_status`, `jdate`, `booking_date`, `pname`) VALUES
(1, 3, 1, '2 1 ', 2, 'Confirm', '2024-05-16', '2024-05-01', 'Souvik_Goswami'),
(2, 2, 1, ' 1 2', 2, 'Confirm', '2024-05-17', '2024-04-30', 'Rahul_Mahato'),
(3, 1, 1, ' 1 2', 2, 'Confirm', '2024-05-17', '2024-04-30', 'Snikta_Modak'),
(4, 2, 2, ' 1 2', 2, 'Confirm', '2024-05-17', '2024-04-30', 'Arnab_Sen'),
(5, 5, 3, ' 1 2 3 4 5 6 7 8 9 10', 10, 'Confirm', '2024-05-16', '2024-04-22', 'Prathit_Kapil'),
(6, 3, 4, ' 3 4 5', 3, 'Confirm', '2024-05-17', '2024-04-29', 'Tushar_Sharma');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `uid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `age` varchar(30) NOT NULL,
  `adhar_no` varchar(30) NOT NULL,
  `psw` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`uid`, `name`, `uname`, `age`, `adhar_no`, `psw`, `email`) VALUES
(1, 'Souvik_Goswami', 'souvik', '22', '123456', 'souvik', 'souvik@gmail.com'),
(2, 'Arnab_Sen', 'arnab', '22', '12345', 'arnab', 'ar@gmail.com'),
(3, 'Prathit_Kapil', 'prathit', '23', '1234567', 'prathit', 'prathit@gmail.com'),
(4, 'Tushar_Sharma', 'tushar', '22', '12345', 'tushar', 'tus@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `bus_details`
--
ALTER TABLE `bus_details`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bus_details`
--
ALTER TABLE `bus_details`
  MODIFY `bus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



----------------------------------------------------------procedures-------------------------------------------------------------------
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetBusTravelDetails`(IN bus_id_value INT, IN journey_date_value VARCHAR(30))
BEGIN
    SELECT ticket.pname AS Passenger_Name,
           ticket.seat_no AS Seat_No,
           ticket.no_seat AS Number_of_Seat,
           bus_details.fare AS Fare,
           ticket.ticket_status AS Status,
           ticket.jdate AS Journey_Date
    FROM ticket
    INNER JOIN bus_details ON ticket.bus_id = bus_details.bus_id
    WHERE ticket.bus_id = bus_id_value AND ticket.jdate = journey_date_value;
END$$
DELIMITER ;

------------------------------------------------------------------------------------------------------------------

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetBusTravelDetails`(IN bus_id_value INT, IN journey_date_value VARCHAR(30))
BEGIN
    SELECT ticket.pname AS Passenger_Name,
           ticket.seat_no AS Seat_No,
           ticket.no_seat AS Number_of_Seat,
           bus_details.fare AS Fare,
           ticket.ticket_status AS Status,
           ticket.jdate AS Journey_Date
    FROM ticket
    INNER JOIN bus_details ON ticket.bus_id = bus_details.bus_id
    WHERE ticket.bus_id = bus_id_value AND ticket.jdate = journey_date_value;
END$$
DELIMITER ;

------------------------------------------------------------------------------------------------------------------
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ViewBookingHistory`(
    IN p_user_id INT
)
BEGIN
    SELECT 
        t.tid AS booking_id,
        b.bname AS bus_name,
        bd.bfrom AS departure_city,
        bd.bto AS destination_city,
        t.jdate AS journey_date,
        t.seat_no AS booked_seats,
        t.ticket_status AS booking_status
    FROM ticket t
    INNER JOIN bus_details b ON t.bus_id = b.bus_id
    INNER JOIN booking_det bd ON t.bus_id = bd.bus_id
    WHERE t.uid = p_user_id;
END$$
DELIMITER ;

----------------------------------------------------------procedures-------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS user_activity_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    activity_type VARCHAR(255),
    activity_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

----------------------------------------------------------TRIGGERS-------------------------------------------------------------------

CREATE TRIGGER `log_user_activity` AFTER INSERT ON `ticket`
 FOR EACH ROW BEGIN
    
    IF NEW.uid IS NOT NULL THEN
       
        INSERT INTO user_activity_log (user_id, activity_type)
        VALUES (NEW.uid, 'Ticket Booking');
    END IF;
END
------------------------------------------------------------------------------------------------------------------
CREATE TRIGGER `log_user_creation` AFTER INSERT ON `user_info`
 FOR EACH ROW BEGIN
    INSERT INTO user_activity_log (user_id, activity_type)
    VALUES (NEW.uid, 'User Creation');
END
--------------------------------------------------------------------------------------------------------------------
CREATE TRIGGER `log_user_deletion` AFTER DELETE ON `user_info`
 FOR EACH ROW BEGIN
    INSERT INTO user_activity_log (user_id, activity_type)
    VALUES (OLD.uid, 'User Deletion');
END
----------------------------------------------------------TRIGGERS-------------------------------------------------------------------