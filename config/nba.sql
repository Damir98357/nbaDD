-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2022 at 02:28 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nba`
--

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `id` int(11) NOT NULL,
  `teamid` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `position` varchar(20) NOT NULL,
  `year` int(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`id`, `teamid`, `name`, `nationality`, `position`, `year`, `created_at`) VALUES
(2, 3, 'Derick Rose', 'United States', 'Point Guard', 1988, '2022-11-16 13:22:04'),
(3, 16, 'Nikola Jokić', 'Serbia', 'Center', 1995, '2022-11-16 13:22:28'),
(4, 23, 'Lebron James', 'United States', 'Small Forward', 1984, '2022-11-16 13:23:06'),
(5, 2, 'Kevin Durant', 'United States', 'Power Forward', 1988, '2022-11-16 13:23:32'),
(6, 21, 'Stephen Curry', 'United States', 'Point Guard', 1988, '2022-11-16 13:23:53'),
(7, 23, 'Russel Westbrook', 'United States', 'Point Guard', 1988, '2022-11-16 13:24:16'),
(8, 4, 'James Harden', 'United States', 'Shooting Guard', 1989, '2022-11-16 13:24:49'),
(9, 10, 'G. Antetokounmpo', 'Greece', 'Power Forward', 1994, '2022-11-16 13:25:41'),
(10, 23, 'Anthony Davis', 'United States', 'Center', 1993, '2022-11-16 13:26:04'),
(11, 4, 'Joel Embiid', 'France', 'Center', 1994, '2022-11-16 13:26:46'),
(12, 8, 'Bojan Bogdanović', 'Croatia', 'Shooting Guard', 1989, '2022-11-16 13:27:39'),
(13, 11, 'Bogdan Bogdanović', 'Serbia', 'Shooting Guard', 1992, '2022-11-16 13:28:04');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `manager` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `titles` int(2) NOT NULL,
  `founded` int(4) NOT NULL,
  `stadium` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `manager`, `city`, `titles`, `founded`, `stadium`, `img`) VALUES
(1, 'Boston Celtics', 'Joe Mazzulla', 'Boston', 17, 1946, 'TD Garden', 'img/teams/boston.png'),
(2, 'Brooklyn Nets', 'Joseph C. Tsai', 'New York', 2, 1967, 'Barclays Center', 'img/teams/nets.png'),
(3, 'New York Knicks', 'Scott Perry', 'New York', 2, 1946, 'Madison Square Garden', 'img/teams/knicks.png'),
(4, 'Philadelphia 76ers', 'Elton Brand', 'Philadelphia', 3, 1946, 'Wells Fargo Center', 'img/teams/76.png'),
(5, 'Toronto Raptors', 'Nick Nurse', 'Toronto', 1, 1995, 'Scotiabank Arena', 'img/teams/raptors.png'),
(6, 'Chicago Bulls', 'Marc Eversley', 'Chicago', 6, 1966, 'United Center', 'img/teams/bulls.png'),
(7, 'Cleveland Cavaliers', 'J. B. Bickerstaff', 'Cleveland', 1, 1970, 'Rocket Mortgage FieldHouse', 'img/teams/cleveland.png'),
(8, 'Detroit Pistons', 'Troy Weaver', 'Detroit', 3, 1941, 'Little Caesars Arena', 'img/teams/pistons.png'),
(9, 'Indiana Pacers', 'Rick Carlisle', 'Indianapolis', 0, 1967, 'Gainbridge Fieldhouse', 'img/teams/pacers.png'),
(10, 'Milwaukee Bucks', 'Mike Budenholzer', 'Milwaukee', 2, 1968, 'Fiserv Forum', 'img/teams/bucks.png'),
(11, 'Atlanta Hawks', 'Nate McMillan', 'Atlanta', 1, 1946, 'State Farm Arena', 'img/teams/hawks.png'),
(12, 'Charlotte Hornets', 'Steve Clifford', 'Charlotte', 0, 1988, 'Spectrum Center', 'img/teams/hornets.png'),
(13, 'Miami Heat', 'Erik Spoelstra', 'Miami', 3, 1988, 'FTX Arena', 'img/teams/heat.png'),
(14, 'Orlando Magic', 'Jamahl Mosley', 'Orlando', 0, 1989, 'Amway Center', 'img/teams/magic.png'),
(15, 'Washington Wizards', 'Wes Unseld Jr.', 'Washington', 1, 1961, 'Capital One Arena', 'img/teams/wizards.png'),
(16, 'Denver Nuggets', 'Michael Malone', 'Denver', 0, 1967, 'Ball Arena', 'img/teams/denver.png'),
(17, 'Minnesota Timberwolves', 'Tim Connelly', 'Minneapolis', 0, 1989, 'Target Center', 'img/teams/mt.png'),
(18, 'Oklahoma City Thunder', 'Sam Presti', 'Oklahoma City', 0, 2008, 'Paycom Center', 'img/teams/okc.png'),
(19, 'Portland Trail Blazers', 'Chauncey Billups', 'Portland', 1, 1970, 'Moda Center', 'img/teams/portland.png'),
(20, 'Utah Jazz', 'Will Hardy', 'Salt Lake City', 0, 1974, 'Vivint Arena', 'img/teams/jazz.png'),
(21, 'Golden State Warriors', 'Steve Kerr', 'San Francisco', 6, 1946, 'Chase Center', 'img/teams/gsw.png'),
(22, 'Los Angeles Clippers', 'Tyronn Lue', 'Los Angeles', 0, 1970, 'Crypto.com Arena', 'img/teams/lac.png'),
(23, 'Los Angeles Lakers', 'Rob Pelinka', 'Los Angeles', 18, 1947, 'Crypto.com Arena', 'img/teams/lal.png'),
(24, 'Phoenix Suns', 'Monty Williams', 'Phoenix', 0, 1968, 'Footprint Center', 'img/teams/suns.png'),
(25, 'Sacramento Kings', 'Golden 1 Center', 'Sacramento', 1, 1923, 'Monte McNair', 'img/teams/kings.png'),
(26, 'Dallas Mavericks', 'Jason Kidd', 'Dallas', 1, 1980, 'American Airlines Center', 'img/teams/dallas.png'),
(27, 'Houston Rockets', 'Stephen Silas', 'Houston', 2, 1967, 'Toyota Center', 'img/teams/hr.png'),
(28, 'Memphis Grizzlies', 'Taylor Jenkins', 'Memphis', 0, 1995, 'FedExForum', 'img/teams/mg.png'),
(29, 'New Orleans Pelicans', 'Willie Green', 'New Orleans', 0, 1988, 'Smoothie King Center', 'img/teams/pelicans.png'),
(30, 'San Antonio Spurs', 'Gregg Popovich', 'San Antonio', 5, 1967, 'AT&T Center', 'img/teams/spurs.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teamid` (`teamid`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `player_ibfk_1` FOREIGN KEY (`teamid`) REFERENCES `team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
