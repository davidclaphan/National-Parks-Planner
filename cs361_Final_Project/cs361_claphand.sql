-- phpMyAdmin SQL Dump
-- version 5.2.0-1.el7.remi
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 25, 2023 at 03:05 PM
-- Server version: 10.6.11-MariaDB-log
-- PHP Version: 8.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs361_claphand`
--

-- --------------------------------------------------------

--
-- Table structure for table `diagnostic`
--

CREATE TABLE `diagnostic` (
  `id` int(11) NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `diagnostic`
--

INSERT INTO `diagnostic` (`id`, `text`) VALUES
(1, 'claphand 361 MySQL is working!');

-- --------------------------------------------------------

--
-- Table structure for table `Hikes`
--

CREATE TABLE `Hikes` (
  `id` int(11) NOT NULL,
  `location` varchar(10) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `difficulty` varchar(10) DEFAULT NULL,
  `distance` varchar(10) DEFAULT NULL,
  `elevation` varchar(10) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `link` varchar(500) DEFAULT NULL,
  `ParkName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `Hikes`
--

INSERT INTO `Hikes` (`id`, `location`, `NAME`, `difficulty`, `distance`, `elevation`, `type`, `link`, `ParkName`) VALUES
(1, 'GTNP', 'Cascade Canyon Trail', 'Moderate', '9.1 mi', '1102 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/wyoming/cascade-canyon-trail', 'Grand Teton National Park'),
(2, 'GTNP', 'Delta Lake via Lupine Meadows Access', 'Hard', '7.4 mi', '2299 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/wyoming/delta-lake-via-lupine-meadows-access', 'Grand Teton National Park'),
(3, 'GTNP', 'Taggart Lake Loop', 'Easy', '3.8 mi', '419 ft', 'Loop', 'https://www.alltrails.com/trail/us/wyoming/taggart-lake-loop--2', 'Grand Teton National Park'),
(4, 'GTNP', 'Jenny Lake Trail', 'Moderate', '7.9 mi', '623 ft', 'Loop', 'https://www.alltrails.com/trail/us/wyoming/jenny-lake-trail', 'Grand Teton National Park'),
(5, 'JTNP', 'Ryan Mountain', 'Moderate', '2.9 mi', '1062 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/california/ryan-mountain-trail', 'Joshua Tree National Park'),
(6, 'JTNP', 'Barker Dam', 'Easy', '1.1 mi', '59 ft', 'Loop', 'https://www.alltrails.com/trail/us/california/barker-dam--2', 'Joshua Tree National Park'),
(7, 'JTNP', 'Arch Rock Trail', 'Easy', '1.4 mi', '88 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/california/arch-rock-trail--2', 'Joshua Tree National Park'),
(8, 'JTNP', 'Hidden Valley', 'Easy', '1.0 mi', '118 ft', 'Loop', 'https://www.alltrails.com/trail/us/california/hidden-valley--3', 'Joshua Tree National Park'),
(9, 'JTNP', 'Fortynine Palms Oasis Trail', 'Moderate', '3.0 mi', '636 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/california/fortynine-palms-oasis-trail--2', 'Joshua Tree National Park'),
(10, 'JTNP', 'Panorama Loop', 'Moderate', '6.6 mi', '1194 ft', 'Loop', 'https://www.alltrails.com/trail/us/california/panorama-loop--3', 'Joshua Tree National Park'),
(11, 'GTNP', 'Taggart Lake and Bradley Lake Loop', 'Moderate', '6.0 mi', '761 ft', 'Loop', 'https://www.alltrails.com/trail/us/wyoming/taggart-lake-and-bradley-lake', 'Grand Teton National Park'),
(12, 'GTNP', 'Surprise and Amphitheater Lakes Trail', 'Hard', '10.1 mi', '3001 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/wyoming/surprise-and-amphitheater-lakes-trail', 'Grand Teton National Park'),
(13, 'GTNP', 'Hidden Falls via String Lake Trail', 'Easy', '4.6 mi', '472 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/wyoming/hidden-falls-via-string-lake-trail', 'Grand Teton National Park'),
(14, 'GTNP', 'Lake Solitude via Cascade Canyon Trail', 'Hard', '14.7 mi', '2395 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/wyoming/lake-solitude-via-lake-solitude-and-cascade-canyon-trail', 'Grand Teton National Park'),
(15, 'GTNP', 'Phelps Lake Overlook', 'Easy', '2.0 mi', '413 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/wyoming/phelps-lake-overlook', 'Grand Teton National Park'),
(16, 'YOSE', 'Glacier Point Trail', 'Easy', '0.6 mi', '137 ft', 'Loop', 'https://www.alltrails.com/trail/us/california/glacier-point-trail', 'Yosemite National Park'),
(17, 'YOSE', 'Lower Yosemite Falls Trail', 'Easy', '1.2 mi', '55 ft', 'Loop', 'https://www.alltrails.com/trail/us/california/lower-yosemite-falls-trail', 'Yosemite National Park'),
(18, 'YOSE', 'Mirror Lake Paved Trail', 'Easy', '2.1 mi', '114 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/california/mirror-lake-paved-trail', 'Yosemite National Park'),
(19, 'YOSE', 'Mirror Lake via Valley Loop Trail', 'Moderate', '4.4 mi', '301 ft', 'Loop', 'https://www.alltrails.com/trail/us/california/mirror-lake-via-valley-loop-trail', 'Yosemite National Park'),
(20, 'YOSE', 'Columbia Rock Trail', 'Moderate', '2.2 mi', '1013 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/california/columbia-rock-trail', 'Yosemite National Park'),
(21, 'YOSE', 'Sentinel Dome Trail', 'Moderate', '2.2 mi', '459 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/california/sentinel-dome-trail', 'Yosemite National Park'),
(22, 'YOSE', 'Vernal and Nevada Falls via Mist Trail', 'Hard', '6.4 mi', '2208 ft', 'Loop', 'https://www.alltrails.com/trail/us/california/vernal-and-nevada-falls-via-the-mist-trail', 'Yosemite National Park'),
(23, 'YOSE', 'Upper Yosemite Falls Trail', 'Hard', '6.6 mi', '3254 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/california/upper-yosemite-falls-trail', 'Yosemite National Park'),
(24, 'YOSE', 'Half Dome via the John Muir Trail (JMT)', 'Hard', '15.3 mi', '5213 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/california/half-dome-via-the-john-muir-trail-jmt', 'Yosemite National Park'),
(25, 'YELL', 'Grand Prismatic Hot Spring', 'Easy', '1.5 mi', '200 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/wyoming/grand-prismatic-hot-spring', 'Yellowstone National Park'),
(26, 'YELL', 'Fairy Falls Trail', 'Easy', '4.8 mi', '170 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/wyoming/fairy-falls--4', 'Yellowstone National Park'),
(27, 'YELL', 'Artist Point', 'Easy', '0.2 mi', '16 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/wyoming/artist-point-trail', 'Yellowstone National Park'),
(28, 'YELL', 'Upper Geyser Basin and Old Faithful Observation Point Loop', 'Moderate', '4.9 mi', '357 ft', 'Loop', 'https://www.alltrails.com/trail/us/wyoming/upper-geyser-basin-and-old-faithful-observation-point-loop', 'Yellowstone National Park'),
(29, 'YELL', 'Brink of the Lower Falls Trail', 'Moderate', '0.7 mi', '265 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/wyoming/brink-of-the-lower-falls', 'Yellowstone National Park'),
(30, 'YELL', 'Mystic Falls, Fairy Creek and Little Firehold Loop', 'Moderate', '3.5 mi', '606 ft', 'Loop', 'https://www.alltrails.com/trail/us/wyoming/mystic-falls-fairy-creek-and-little-firehole-loop', 'Yellowstone National Park'),
(31, 'YELL', 'Avalanche Peak Trail', 'Hard', '4.5 mi', '2070 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/wyoming/avalanche-peak', 'Yellowstone National Park'),
(32, 'YELL', 'Old Faithful Geyser Loop', 'Easy', '0.7 mi', '19 ft', 'Loop', 'https://www.alltrails.com/trail/us/wyoming/observation-point-loop-trail', 'Yellowstone National Park'),
(33, 'YELL', 'Biscuit Basin Interpretive Trail', 'Easy', '0.7 mi', '26 ft', 'Loop', 'https://www.alltrails.com/trail/us/wyoming/biscuit-basin-interpretive-trail', 'Yellowstone National Park'),
(34, 'GCNP', 'Yavapai Point via Rim Trail', 'Easy', '1.6 mi', '82 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/arizona/yavapai-point-via-rim-trail', 'Grand Canyon National Park'),
(35, 'GCNP', 'Grand Canyon Rim Trail', 'Easy', '12.7 mi', '583 ft', 'Point to point', 'https://www.alltrails.com/trail/us/arizona/grand-canyon-rim-trail--3', 'Grand Canyon National Park'),
(36, 'GCNP', 'Coconino Overlook', 'Easy', '1.3 mi', '469 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/arizona/coconino-overlook', 'Grand Canyon National Park'),
(37, 'GCNP', 'South Kaibab Trail to Ooh Aah Point', 'Moderate', '1.8 mi', '685 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/arizona/south-kaibab-trail-to-ooh-aah-point', 'Grand Canyon National Park'),
(38, 'GCNP', '1.5 Mile Resthouse via Bright Angel Trail', 'Moderate', '3.2 mi', '1184 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/arizona/15-mile-resthouse-via-bright-angel-trail', 'Grand Canyon National Park'),
(39, 'GCNP', 'Grand Canyon Rim: Mather Point to Bright Angel Trailhead', 'Moderate', '6.0 mi', '413 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/arizona/grand-canyon-rim-mules-to-mather-point', 'Grand Canyon National Park'),
(40, 'GCNP', 'Bright Angel Trail', 'Hard', '15.3 mi', '4478 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/arizona/bright-angel-trail--11', 'Grand Canyon National Park'),
(41, 'GCNP', '3-Mile Resthouse via Bright Angel Trail', 'Hard', '6.0 mi', '2112 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/arizona/three-mile-resthouse-via-bright-angel-trail', 'Grand Canyon National Park'),
(42, 'GCNP', 'South Kaibab Trail to Skeleton Point', 'Hard', '5.8 mi', '2027 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/arizona/south-kaibab-trail-to-skeleton-point', 'Grand Canyon National Park'),
(43, 'NCNP', 'Traiil of the Cedars Nature Walk', 'Easy', '0.6 mi', '26 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/washington/trail-of-the-cedars-nature-walk', 'North Cascades National Park'),
(44, 'NCNP', 'Gorge Creek Falls Trail', 'Easy', '0.5 mi', '39 ft', 'Loop', 'https://www.alltrails.com/trail/us/washington/gorge-creek-falls-trail', 'North Cascades National Park'),
(45, 'NCNP', 'Skagit River Loop Trail', 'Easy', '1.9 mi', '95 ft', 'Loop', 'https://www.alltrails.com/trail/us/washington/skagit-river-trail', 'North Cascades National Park'),
(46, 'NCNP', 'Cascade Pass Trail', 'Moderate', '6.7 mi', '1784 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/washington/cascade-pass-trail--3', 'North Cascades National Park'),
(47, 'NCNP', 'Fourth of July Pass via Thunder Creek Trail', 'Moderate', '9.3 mi', '2493 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/washington/fourth-of-july-pass-via-thunder-creek-trail', 'North Cascades National Park'),
(48, 'NCNP', 'Eldorado Peak', 'Hard', '8.0 mi', '6758 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/washington/eldorado-peak--2', 'North Cascades National Park'),
(49, 'NCNP', 'Cascade Pass and Sahale Arm Trail', 'Hard', '12.1 mi', '5029 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/washington/cascade-pass-and-sahale-arm-trail--2', 'North Cascades National Park'),
(50, 'NCNP', 'Pierce Mountain Camp via Sourdough Mountain Trail', 'Hard', '10.5 mi', '5702 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/washington/pierce-mountain-camp-via-sourdough-mountain-trail', 'North Cascades National Park'),
(51, 'NCNP', 'Sourdough Mountain Camp via Sourdough Lookout Trail', 'Hard', '7.6 mi', '4166 ft', 'Out & Back', 'https://www.alltrails.com/trail/us/washington/sourdough-mountain-camp-via-sourdough-lookout-trail', 'North Cascades National Park'),
(52, 'JTNP', 'Warren Peak via Black Rock Trail and Panorama Loop', 'Hard', '7.7 mi', '1689 ft', 'Loop', 'https://www.alltrails.com/trail/us/california/warren-peak-via-black-rock-trail-and-panorama-loop', 'Joshua Tree National Park'),
(53, 'JTNP', 'Boy Scout Trail', 'Hard', '8.0 mi', '226 ft', 'Point to point', 'https://www.alltrails.com/trail/us/california/boy-scout-trail--8', 'Joshua Tree National Park');

-- --------------------------------------------------------

--
-- Table structure for table `Parks`
--

CREATE TABLE `Parks` (
  `id` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `ABBR` varchar(10) DEFAULT NULL,
  `SEASON` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `Parks`
--

INSERT INTO `Parks` (`id`, `NAME`, `ABBR`, `SEASON`) VALUES
(0, 'Grand Teton National Park', 'GTNP', 'Fall'),
(1, 'Yellowstone National Park', 'YELL', 'Summer'),
(2, 'Yosemite National Park', 'YOSE', 'Fall'),
(3, 'Joshua Tree National Park', 'JTNP', 'Winter'),
(4, 'Grand Canyon National Park', 'GCNP', 'Spring'),
(5, 'North Cascades National Park', 'NCNP', 'Summer');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL,
  `month` varchar(15) DEFAULT NULL,
  `monthNum` int(11) DEFAULT NULL,
  `visitors` int(11) DEFAULT NULL,
  `year` varchar(5) DEFAULT NULL,
  `ParkName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `month`, `monthNum`, `visitors`, `year`, `ParkName`) VALUES
(1, 'January', 1, 59920, '2022', 'Grand Teton National Park'),
(2, 'February', 2, 62198, '2022', 'Grand Teton National Park'),
(3, 'March', 3, 66862, '2022', 'Grand Teton National Park'),
(4, 'April', 4, 67541, '2022', 'Grand Teton National Park'),
(5, 'May', 5, 235020, '2022', 'Grand Teton National Park'),
(6, 'June', 6, 497531, '2022', 'Grand Teton National Park'),
(7, 'July', 7, 558710, '2022', 'Grand Teton National Park'),
(8, 'August', 8, 539171, '2022', 'Grand Teton National Park'),
(9, 'September', 9, 441995, '2022', 'Grand Teton National Park'),
(10, 'October', 10, 196727, '2022', 'Grand Teton National Park'),
(11, 'November', 11, 33348, '2022', 'Grand Teton National Park'),
(12, 'December', 12, 47200, '2022', 'Grand Teton National Park'),
(13, 'January', 1, 46615, '2022', 'Yellowstone National Park'),
(14, 'February', 2, 47300, '2022', 'Yellowstone National Park'),
(15, 'March', 3, 35593, '2022', 'Yellowstone National Park'),
(16, 'April', 4, 80283, '2022', 'Yellowstone National Park'),
(17, 'May', 5, 523680, '2022', 'Yellowstone National Park'),
(18, 'June', 6, 525363, '2022', 'Yellowstone National Park'),
(19, 'July', 7, 596562, '2022', 'Yellowstone National Park'),
(20, 'August', 8, 582211, '2022', 'Yellowstone National Park'),
(21, 'September', 9, 567587, '2022', 'Yellowstone National Park'),
(22, 'October', 10, 236567, '2022', 'Yellowstonen National Park'),
(23, 'November', 11, 17687, '2022', 'Yellowstone National Park'),
(24, 'December', 12, 30794, '2022', 'Yellowstone National Park'),
(25, 'January', 1, 137057, '2022', 'Yosemite National Park'),
(26, 'February', 2, 170196, '2022', 'Yosemite National Park'),
(27, 'March', 3, 192634, '2022', 'Yosemite National Park'),
(28, 'April', 4, 285601, '2022', 'Yosemite National Park'),
(29, 'May', 5, 380905, '2022', 'Yosemite National Park'),
(30, 'June', 6, 470045, '2022', 'Yosemite National Park'),
(31, 'July', 7, 396833, '2022', 'Yosemite National Park'),
(32, 'August', 8, 518407, '2022', 'Yosemite National Park'),
(33, 'September', 9, 424374, '2022', 'Yosemite National Park'),
(34, 'October', 10, 381612, '2022', 'Yosemite National Park'),
(35, 'November', 11, 178786, '2022', 'Yosemite National Park'),
(36, 'December', 12, 131100, '2022', 'Yosemite National Park'),
(37, 'January', 1, 277128, '2022', 'Joshua Tree National Park'),
(38, 'February', 2, 302834, '2022', 'Joshua Tree National Park'),
(39, 'March', 3, 431849, '2022', 'Joshua Tree National Park'),
(40, 'April', 4, 358701, '2022', 'Joshua Tree National Park'),
(41, 'May', 5, 228627, '2022', 'Joshua Tree National Park'),
(42, 'June', 6, 159177, '2022', 'Joshua Tree National Park'),
(43, 'July', 7, 149070, '2022', 'Joshua Tree National Park'),
(44, 'August', 8, 135137, '2022', 'Joshua Tree National Park'),
(45, 'September', 9, 150533, '2022', 'Joshua Tree National Park'),
(46, 'October', 10, 222629, '2022', 'Joshua Tree National Park'),
(47, 'November', 11, 316911, '2022', 'Joshua Tree National Park'),
(48, 'December', 12, 325698, '2022', 'Joshua Tree National Park'),
(49, 'January', 1, 180094, '2022', 'Grand Canyon National Park'),
(50, 'February', 2, 191984, '2022', 'Grand Canyon National Park'),
(51, 'March', 3, 392273, '2022', 'Grand Canyon National Park'),
(52, 'April', 4, 438579, '2022', 'Grand Canyon National Park'),
(53, 'May', 5, 496238, '2022', 'Grand Canyon National Park'),
(54, 'June', 6, 510239, '2022', 'Grand Canyon National Park'),
(55, 'July', 7, 543760, '2022', 'Grand Canyon National Park'),
(56, 'August', 8, 500265, '2022', 'Grand Canyon National Park'),
(57, 'September', 9, 439611, '2022', 'Grand Canyon National Park'),
(58, 'October', 10, 442697, '2022', 'Grand Canyon National Park'),
(59, 'November', 11, 323112, '2022', 'Grand Canyon National Park'),
(60, 'December', 12, 273252, '2022', 'Grand Canyon National Park'),
(61, 'January', 1, 11, '2022', 'North Cascades National Park'),
(62, 'February', 2, 4, '2022', 'North Cascades National Park'),
(63, 'March', 3, 52, '2022', 'North Cascades National Park'),
(64, 'April', 4, 66, '2022', 'North Cascades National Park'),
(65, 'May', 5, 993, '2022', 'North Cascades National Park'),
(66, 'June', 6, 1324, '2022', 'North Cascades National Park'),
(67, 'July', 7, 5493, '2022', 'North Cascades National Park'),
(68, 'August', 8, 10832, '2022', 'North Cascades National Park'),
(69, 'September', 9, 8745, '2022', 'North Cascades National Park'),
(70, 'October', 10, 2590, '2022', 'North Cascades National Park'),
(71, 'November', 11, 44, '2022', 'North Cascades National Park'),
(72, 'December', 12, 0, '2022', 'North Cascades National Park');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diagnostic`
--
ALTER TABLE `diagnostic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Hikes`
--
ALTER TABLE `Hikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Parks`
--
ALTER TABLE `Parks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diagnostic`
--
ALTER TABLE `diagnostic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
