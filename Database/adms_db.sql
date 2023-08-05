-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2023 at 03:22 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `biddingcars`
--

CREATE TABLE `biddingcars` (
  `id` int(11) NOT NULL,
  `model_id` int(30) NOT NULL,
  `mv_number` int(11) NOT NULL,
  `plate_number` int(11) NOT NULL,
  `variant` varchar(50) NOT NULL,
  `mileage` varchar(20) NOT NULL,
  `engine_number` varchar(100) NOT NULL,
  `chasis_number` varchar(100) NOT NULL,
  `start_bid` float NOT NULL DEFAULT 0,
  `Year` int(4) NOT NULL,
  `Description` varchar(700) NOT NULL,
  `Technologies` varchar(500) DEFAULT NULL,
  `Cylinder` varchar(50) NOT NULL,
  `Pic` varchar(100) NOT NULL,
  `bid_end_datetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = Available, 1=Sold',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `biddingcars`
--

INSERT INTO `biddingcars` (`id`, `model_id`, `mv_number`, `plate_number`, `variant`, `mileage`, `engine_number`, `chasis_number`, `start_bid`, `Year`, `Description`, `Technologies`, `Cylinder`, `Pic`, `bid_end_datetime`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(9, 4, 158773, 36985, 'Red', '100000', '879645', '367548', 5000, 2019, 'The 2019 Nissan Maxima is a stunning used sedan that offers an ideal balance of style, comfort, and performance. This particular model is in excellent condition and has been well-maintained, making it a great value for its price. The exterior design is sleek and sporty, with a low-slung roofline and bold lines that give it a distinctive look. The interior is just as impressive, with premium materials and a well-designed cabin that provides a luxurious feel. The seats are comfortable and supportive, with plenty of legroom and headroom for all passengers.', 'The 2019 Maxima is packed with advanced technologies that make it a pleasure to drive. It features a 3.5-liter V6 engine that produces 300 horsepower and 261 lb-ft of torque, providing impressive performance on the road. The engine is paired with a continuously variable transmission (CVT), providing smooth and efficient shifts. The Maxima also features a variety of advanced safety and driver assistance technologies, including blind-spot warning, rear cross-traffic alert, and automatic emergency ', '6-Cylinder Engine', 'https://www.hdcarwallpapers.com/walls/2019_nissan_altima_platinum_edition_one_4k-HD.jpg', '2023-05-30 06:09:17', 0, 0, '2023-04-30 06:11:44', '2023-04-30 06:11:44');

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `id` int(11) NOT NULL,
  `car_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `hights_bid` int(20) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=ongoing,2=finished'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`id`, `car_id`, `user_id`, `hights_bid`, `status`) VALUES
(1, 9, 2, 10000, 1),
(2, 9, 3, 25000, 1),
(7, 9, 2, 30000, 1),
(20, 9, 2, 40000, 1),
(21, 9, 2, 45000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `brand_list`
--

CREATE TABLE `brand_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand_list`
--

INSERT INTO `brand_list` (`id`, `name`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Mercedes-benz', 1, 0, '2022-06-02 08:55:33', '2022-06-02 08:55:33'),
(2, 'Toyota', 1, 0, '2022-06-02 08:55:47', '2022-06-02 08:55:47'),
(3, 'Ford', 1, 0, '2022-06-02 08:56:01', '2022-06-02 08:56:01'),
(4, 'Hyundai', 1, 0, '2022-06-02 08:56:49', '2022-06-02 08:56:49'),
(5, 'Chevrolet', 1, 0, '2022-06-02 08:56:54', '2022-06-02 08:56:54'),
(6, 'Honda', 1, 0, '2022-06-02 08:57:05', '2022-06-02 08:57:05'),
(7, 'Nissan', 1, 0, '2022-06-02 08:58:03', '2022-06-02 08:58:03'),
(8, 'Jeep', 1, 0, '2022-06-02 08:58:15', '2022-06-02 08:58:15'),
(9, 'Volkswagen', 1, 0, '2022-06-02 08:58:22', '2022-06-02 08:58:22'),
(10, 'Volvo', 1, 0, '2022-06-02 08:58:30', '2022-06-02 08:58:30'),
(11, 'Audi', 1, 0, '2022-06-02 08:58:39', '2022-06-02 08:58:39'),
(12, 'Land Rover', 1, 0, '2022-06-02 08:58:54', '2022-06-02 08:58:54'),
(13, 'Rolls Royce', 1, 0, '2022-06-02 08:59:18', '2022-06-02 08:59:18'),
(14, 'Bugati', 1, 0, '2022-06-02 08:59:27', '2022-06-02 08:59:27'),
(15, 'Porsche', 1, 0, '2022-06-02 08:59:40', '2022-06-02 08:59:40'),
(16, 'BMW', 1, 0, '2022-06-02 08:59:49', '2022-06-02 08:59:49'),
(17, 'Tesla', 1, 0, '2022-06-02 08:59:58', '2022-06-02 08:59:58'),
(18, 'Ferarri', 1, 0, '2023-05-05 05:20:21', '2023-05-05 05:20:21'),
(19, 'Lamborghini', 1, 0, '2023-05-05 05:20:42', '2023-05-05 05:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `car_type_list`
--

CREATE TABLE `car_type_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car_type_list`
--

INSERT INTO `car_type_list` (`id`, `name`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Sedan', 1, 0, '2022-06-02 09:13:24', '2022-06-02 09:13:24'),
(2, 'Coupe', 1, 0, '2022-06-02 09:13:51', '2022-06-02 09:13:51'),
(3, 'Sports', 1, 0, '2022-06-02 09:14:00', '2022-06-02 09:14:00'),
(4, 'Station Wagon', 1, 0, '2022-06-02 09:14:28', '2022-06-02 09:14:28'),
(5, 'Hatchback', 1, 0, '2022-06-02 09:14:42', '2022-06-02 09:14:42'),
(6, 'Sports-Utility Vehicle (SUV)', 1, 0, '2022-06-02 09:15:13', '2022-06-02 09:15:13'),
(7, 'Minivan', 1, 0, '2022-06-02 09:15:25', '2022-06-02 09:15:25'),
(8, 'Pickup Truck ', 1, 0, '2022-06-02 09:15:43', '2022-06-02 09:15:43'),
(9, 'test - updated', 1, 1, '2022-06-02 09:16:19', '2022-06-02 09:16:36');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `PhoneNumber` varchar(30) NOT NULL,
  `Password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Password`) VALUES
(2, 'Abdelrahman', 'Sherif', 'abodua24@gmail.com', '0562588105', '$2y$10$E3FdXbj8LdnkRf9paBuGjuaNI0mrtUrXdRm/W0WS8vuFoaE9WuPsq'),
(3, 'Baker', 'Duher', 'baker@gmail.com', '+971565821508', '$2y$10$j6bG/0oLS6Z1QsuMY/An2uiXOu7Q7l7H4TIGFILhxSQ/lcQ.eoIQm');

-- --------------------------------------------------------

--
-- Table structure for table `commoffers`
--

CREATE TABLE `commoffers` (
  `ID` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Phone` int(15) NOT NULL,
  `Company` varchar(25) NOT NULL,
  `Model` varchar(25) NOT NULL,
  `Year` int(4) NOT NULL,
  `Mileage` int(15) NOT NULL,
  `AskingPrice` int(15) NOT NULL,
  `Options` varchar(500) NOT NULL,
  `Specifications` varchar(500) NOT NULL,
  `Description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `commoffers`
--

INSERT INTO `commoffers` (`ID`, `Name`, `Phone`, `Company`, `Model`, `Year`, `Mileage`, `AskingPrice`, `Options`, `Specifications`, `Description`) VALUES
(7, 'sherif ezzat', 562588105, 'Nissan', 'sunny', 2022, 100000, 200000, 'Full Options', 'class A ', 'Good Shape');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `car_id` int(100) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `car_id`, `image`) VALUES
(37, 5, 'CarPics/img1/max18red.jpg'),
(38, 5, 'CarPics/img1/2019-nissan-maxima_100681147_h.jpg'),
(39, 5, 'CarPics/img1/2019-nissan-maxima_100681149_h.jpg'),
(41, 5, 'CarPics/img1/2020-nissan-maxima_100680753_h.jpg'),
(42, 5, 'CarPics/img1/2020-nissan-maxima_100680756_h.jpg'),
(43, 5, 'CarPics/img1/2020-nissan-maxima_100680760_h.jpg'),
(44, 5, 'CarPics/img1/2020-nissan-maxima_100680761_h.jpg'),
(45, 5, 'CarPics/img1/max18red.jpg'),
(46, 5, 'CarPics/img1/2019-nissan-maxima_100681123_h.jpg'),
(47, 5, 'CarPics/img1/2019-nissan-maxima_100681125_h.jpg'),
(48, 5, 'CarPics/img1/2019-nissan-maxima_100681127_h.jpg'),
(49, 5, 'CarPics/img1/2019-nissan-maxima_100681129_h.jpg'),
(50, 5, 'CarPics/img1/2019-nissan-maxima_100681131_h.jpg'),
(51, 5, 'CarPics/img1/2019-nissan-maxima_100681133_h.jpg'),
(52, 5, 'CarPics/img1/2019-nissan-maxima_100681135_h.jpg'),
(53, 5, 'CarPics/img1/2019-nissan-maxima_100681137_h.jpg'),
(54, 5, 'CarPics/img1/2019-nissan-maxima_100681139_h.jpg'),
(55, 5, 'CarPics/img1/2019-nissan-maxima_100681141_h.jpg'),
(60, 6, 'CarPics/img1/2021-Toyota-GR-Yaris-67.jpg'),
(61, 6, 'CarPics/img1/2021-Toyota-GR-Yaris-69.jpg'),
(62, 6, 'CarPics/img1/2021-Toyota-GR-Yaris-61.jpg'),
(63, 6, 'CarPics/img1/2021-Toyota-GR-Yaris-64.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `model_list`
--

CREATE TABLE `model_list` (
  `id` int(30) NOT NULL,
  `brand_id` int(30) NOT NULL,
  `model` text NOT NULL,
  `engine_type` text NOT NULL,
  `transmission_type` text NOT NULL,
  `car_type_id` int(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `model_list`
--

INSERT INTO `model_list` (`id`, `brand_id`, `model`, `engine_type`, `transmission_type`, `car_type_id`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(2, 2, 'Wigo 1.0 E MT', 'Gasoline', 'Manual', 5, 1, 0, '2022-06-02 09:49:08', '2023-03-26 21:39:30'),
(4, 7, 'Maxima', 'VQ V6 Engine', 'Automatic', 1, 1, 0, '2023-03-27 00:43:17', '2023-03-27 17:10:54'),
(5, 2, 'Yaris', '1.5 Dual VVT-i Engine', 'Manual', 5, 1, 0, '2023-03-27 01:01:14', '2023-03-27 01:01:14'),
(6, 7, 'Altima', 'DIG Engine', 'CVT', 1, 1, 0, '2023-03-27 01:12:04', '2023-03-27 17:09:26'),
(7, 7, 'Pathfinder ', '3.5-liter V6 engine', 'Automatic', 6, 1, 0, '2023-03-27 01:32:23', '2023-03-27 16:51:47'),
(8, 3, 'Mustang', 'V8 engine', 'Speed Manual', 3, 1, 0, '2023-03-27 16:11:45', '2023-03-27 16:11:45'),
(9, 16, 'X7 XDrive40i', '3000cc Petrol engine', 'Automatic', 6, 1, 0, '2023-03-27 16:21:20', '2023-03-27 16:28:31'),
(10, 5, 'Corvette', '6200cc Petrol engine', 'Automatic', 3, 1, 0, '2023-03-27 16:42:16', '2023-03-27 16:42:16'),
(11, 2, 'Prado', '4000cc Petrol engine', 'Automatic', 6, 1, 0, '2023-03-27 16:49:18', '2023-03-27 16:49:18'),
(12, 18, 'SF90 FIORANO', 'Hybrid powertrain', 'Automatic', 2, 1, 0, '2023-05-05 05:25:37', '2023-05-05 05:25:37'),
(13, 18, '488 SPIDER', 'V8 twin-turbocharged.', 'Automatic', 3, 1, 0, '2023-05-05 05:35:22', '2023-05-05 05:35:22'),
(14, 14, 'VEYRON ', 'Quad-Turbocharged.', 'Automatic', 3, 1, 0, '2023-05-05 06:12:05', '2023-05-05 06:12:05'),
(15, 19, 'HURACAN ', 'V10 Naturally Aspirated.', 'Automatic', 3, 1, 0, '2023-05-05 06:38:07', '2023-05-05 06:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `Pic` varchar(500) NOT NULL,
  `Title` varchar(500) NOT NULL,
  `Descriptionn` varchar(5000) DEFAULT NULL,
  `Description1` varchar(3000) DEFAULT NULL,
  `Description2` varchar(3000) DEFAULT NULL,
  `Description3` varchar(3000) DEFAULT NULL,
  `NewsLink` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `Pic`, `Title`, `Descriptionn`, `Description1`, `Description2`, `Description3`, `NewsLink`) VALUES
(2, 'https://hips.hearstapps.com/hmg-prod/images/2022-ford-f-150-lightning-tested-102-1656624439.jpg?crop=1.00xw:0.847xh;0,0.0415xh&resize=1200:*', 'We Name the EV Tax Credit Winners and Losers', 'The Department of Energy has released full information on the tax incentives and what vehicles are eligible (or not). See the full list here. Separately, while Volkswagen told Car and Driver it expects its U.S.-built ID.4 to qualify for the full $7500 federal incentive, it is waiting on one final certification from a supplier before it can attest to the Treasury Department that the ID.4 is fully compliant.\r\n\r\nLast August, President Biden signed the Inflation Reduction Act. Among its hundreds of pages were measures to restructure the federal tax incentive for buying a plug-in vehicle and boost U.S. production of EVs and their batteries. Much confusion ensued.', 'Final guidance was issued by the U.S. Treasury on March 31, meaning next Tuesday, April 18, is the day everything changes. That day, only battery-electric and plug-in-hybrid vehicles assembled in North America (U.S., Canada, or Mexico), with MSRPs less than $55,000 for cars and $80,000 for SUVs and light trucks, will qualify for purchase incentives up to $7500. Equally challenging, the sources of certain percentages of their battery minerals and components are restricted to a specific list of countries—one that notably does not include China, by far the world\'s largest source of those components today.\r\n\r\nRegrettably, the EPA says it will not revise its list of eligible EVs until April 17—the day before the new rules come into effect. And note that commercial-fleet customers that lease their EVs can qualify for the full incentives regardless of the factors above.\r\n\r\nIn a statement, Alliance for Automotive Innovation CEO John Bozzella told Reuters the requirement that EVs must be assembled in North America to qualify for any credit eliminated 70 percent of EV models on sale today.', 'Car and Driver reached out to automakers to ask whether their batteries and minerals were compliant with the new regulations as well. The short answer? It\'s complicated.\r\n\r\nLooking at the EVs on the market for 2023, winners and losers in the incentives game start to emerge based on where they\'re built. Here is our non-comprehensive list of where we stand for retail buyers a week before the new rules take effect.', '', 'https://www.caranddriver.com/news/a43576877/ev-tax-incentive-winners-losers/'),
(3, 'https://www.manoramaonline.com/content/dam/mm/mo/fasttrack/auto-news/images/2021/4/3/mg-cyberster-3.jpg', 'Official: MG Cyberster revealed ahead of UK arrival in 2024', 'MG has officially revealed the design of the new MG Cyberster, its all-electric, drop-top sportscar, and has announced the model will go on sale in the UK in 2024. \r\n\r\nPresented in a series of images by the SAIC-owned firm, the Cyberster premieres a sleek new design language reminiscent of MG\'s historic sporting heritage. \r\n\r\nThe model\'s design was leaked earlier this month by government filings in China, which suggested it will measure 4535mm long, 1913mm wide and 1329mm high - slightly larger than the Porsche 718 Boxster and significantly bigger than the Mazda MX-5. ', 'The Cyberster’s powertrain line-up was also detailed, revealing the Cyberster would be offered in both single- and dual-motor specifications. Entry-level, single-motor models offer 309bhp, while dual-motor models offer up to 536bhp.Weight varies depending on the specification, with single-motor variants tipping the scales at 1850kg. In its heaviest form, the Cyberster weighs 1985kg. Several wheel designs and badge styles were also revealed. \r\n\r\nInside, meanwhile, the Cyberster makes use of a Tesla-style yoke steering wheel and several digital screens for infotainment and driving data.\r\n\r\nThe Cyberster will be launched in 2024 with the aim of attracting new buyers in new segments.\r\n\r\nSet to help MG continue its steep growth trajectory, the Cyberster will also significantly expand the brand\'s product portfolio as it approaches its centenary in 2024. ', 'In the 16 years since being acquired by the Chinese state-owned SAIC, MG has established itself as a leading maker of value-oriented yet well-equipped and safe family cars, selling more than 100,000 across Europe last year.\r\n\r\nCrucial to this goal will be the introduction of new cars. The MG 5 SW EV estate and ZS EV crossover are already among the most popular EVs in Europe, and MG will look to build on this success by appealing to younger drivers and enthusiasts with an all-new product line, designated Cyber in reference to its five primary priorities: co-creating, young, beyond, evolution and recreation.\r\n\r\nThe initiative was first outlined last year with the unveiling of the Cyberster concept – an electric roadster that at once nodded to MG’s heritage as a British sports car manufacturer and previewed the technical capabilities and functionality of its future cars.', 'Cyberster production was approved after the Shanghai motor show as a result of a successful crowdfunding campaign in which more than 5000 prospective buyers signed up to MG’s interactive Cybercube platform, allowing them to inform development of the production car. It’s now set to be launched as part of MG’s centenary celebrations.\r\n\r\nA brand spokesman said: “We are working on a surprise for you guys. Of course we know we were the affordable sports car brand in the past, and now we are the new electric vehicle brand, and we will surprise you. We will be in markets that nobody has been in before.”\r\n\r\nIndeed, no mainstream brand has yet launched an affordable, convertible electric sports car.\r\n\r\nWhile some of the concept’s more outlandish features will be lost, MG’s UK design boss, Carl Gotham, hinted that a toned-down version will make it to dealerships, calling it “a bold statement that looks strongly into MG’s future, touching on our heritage but more importantly building on our cutting-edge technology and advanced design”.', 'https://www.autocar.co.uk/car-news/new-cars/official-mg-cyberster-revealed-ahead-uk-arrival-2024'),
(4, 'https://www.xtrafondos.com/wallpapers/mercedes-amg-gt-63-s-e-performance-10986.jpg', 'Mercedes-AMG GT63 S E Performance 2023 UK first drive', 'As I write I’ve just spent a couple of hours in central London, during which my expensive Mercedes spotto count read: G-Classes seven, AMG GT 4 -Door Coupés nil.\r\n\r\nOnly anecdotal evidence, I know. But there are only ever a few used GT 4-Doors in the classifieds, too, and tell me, reader, have you ever seen one?\r\n\r\nI can’t shake the feeling that AMG’s bespoke coupé-saloon (technically a five-door hatchback), introduced in 2018, is a very rare groove, a niche option. But if you prefer to roll around in a G-Class then I think you’re missing out.', 'So far we’ve had the 63 S variant in the UK, plus the less powerful 63, now dropped but continuing abroad. British buyers like high-spec cars so we’ve settled on the one with 630bhp from its 4.0-litre V8, and a price of £153,755.\r\n\r\nThat’s now joined by this £177,715 variant, the 63 S E Performance, which keeps the V8 in the same tune and gains another 201bhp from an electric motor mounted at the back axle for a combined 831bhp. That makes it the second-most-powerful AMG behind the One hypercar.\r\n\r\nI would say 831bhp in a big coupé/hatchback thing ought to be plenty. The most powerful comparable Audi RS, BMW M and Porsche models don’t get that close.', 'The 63 S E Performance is a pluggable hybrid. On top of the motor is a 6.1kWh battery. It gives just 7.5 miles of electric-only range because, say the engineers, it’s more about performance than distance.On that point, this car will do 0-62mph in 2.9sec (0.3sec faster than the 63 S) and go on to 196mph (the same), while the combined economy test, often ultra-generous to PHEVs, rates it at just 35.8mpg.\r\n\r\nFrom a practicality standpoint (I know you’re worried about it), the electric gubbins at the rear, including a two-speed gearbox for the electric motor, eats into the boot floor, reducing luggage capacity from 461 to 335 litres. Maybe that’s why everyone buys a G-Class instead. But probably not.\r\n\r\nKerb weight understandably takes a hike from 2205kg to 2494kg, so the PHEV gets carbon-ceramic brakes the 63 S is denied.', 'Inside, this being a variant of a car that arrived in the previous decade, you won’t find Mercedes’ very latest infotainment system, which means it retains a trackpad on the centre console and has a transmission tunnel busy with buttons for driving functions. That said, the steering wheel is updated to the latest split-spoke kind, including rotary drive mode selectors. The inclusion of an ‘electric’ mode as you scroll through them is a rare obvious note that this is the PHEV rather than a pure-ICE car.\r\n\r\nThat fact is rather more obvious on the move, as you would hope. My hour-long test started with a nearly flat battery, so I can’t tell you much about electric-only driving other than it’s smooth. But even when the battery is depleted, the 63 S E Performance will still gain some charge under braking, which it then uses to aid throttle response.For torque filing, this is rather nice. There’s no need to stir the gearshift paddles or wait for the turbochargers to spool. At 158bhp per litre, the V8 isn’t overly stressed by modern standards, but it still takes a moment to wake up. Here, there’s urgency right away, yet it comes with a live-wire burble and crackle of the V8, which the motor first drags along, then accompanies and later gets left behind by.', 'https://www.autocar.co.uk/car-review/mercedes-amg/gt63-s-e-performance/first-drives/mercedes-amg-gt63-s-e-performance-2023-uk'),
(5, 'https://cdn.bmwblog.com/wp-content/uploads/2022/04/bmw-760i-xdrive-2023-23.jpg', 'BMW i7 M70 becomes brand\'s most powerful EV with 650bhp', 'BMW\'s M Performance car division has lifted the veil on the new BMW i7 M70 xDrive – the company\'s most powerful electric model to date.\r\n\r\nSet to see UK sales during the second half of 2023 following its unveiling at the Shanghai motor show, the upmarket saloon arrives with a newly developed dual-motor drivetrain offering a combined 650bhp – some 40bhp more than the system used by the iX M60 xDrive launched in 2022.\r\n\r\nAt the heart of the latest electric-powered M Performance model is a front electric motor with 255bhp and a heavily revised rear electric motor delivering up to 483bhp.', 'The latter is claimed to provide a new standard of power density at 2.41kW per kg owing, in part, to a patented six-coil design within the stator.\r\n\r\nAll up, the two electric motors provide the i7 M70 xDrive with a combined 749lb ft of torque, with up to 811lb ft available for short periods of full-throttle acceleration when the new model\'s M Launch Control and M Sport Boost functions are activated.\r\n\r\nBy comparison, the dual motor electric drivetrain used by the standard i7 xDrive60 develops 536kW and 549lb ft.', 'It also compares to the nominal 649bhp and 701lb ft of the Mercedes-AMG EQS 53 4Matic+. Although, with an AMG Dynamic Plus system, the i7 M60 xDrive\'s closest rival ups its reserves to 751bhp and 752lb ft.\r\n\r\nWhile it is yet to provide a kerb weight figure for the flagship i7 model, BMW M says it will hit 62mph from a standstill in 3.7sec and reach a top speed limited to 155mph.\r\n\r\nElectric energy is provided by a 101.7kWh lithium-ion battery mounted within the new saloon\'s CLAR platform. Equipped with its own uniquely programmed power electronics system, it is claimed to provide the i7 M70 xDrive with a range of between 303 and 348 miles on the WLTP test cycle, with the combined consumption put at between 23.8 and 20.8kWh/100km.', 'This is achieved in a new \'Max Range\' driving mode that limits the output of the electric drivetrain and top speed. Up to 228kW of electric energy can be recovered during braking, according to BMW M.\r\n\r\nLATEST DRIVES\r\nMercedes AMG GT63 S E Performance 001 cornering front\r\nMercedes-AMG GT63 S E Performance 2023 UK first drive\r\nMercedes-AMG GT63 S E Performance 2023 UK first drive\r\nford focus st track pack 2023 004 action\r\nFord Focus ST Track Pack 2023 UK first drive\r\nFord Focus ST Track Pack 2023 UK first drive\r\nBentley Continental GT Mulliner w12 2023 001 cornering front\r\nBentley Continental GT W12 Mulliner 2023 UK first drive\r\nBentley Continental GT W12 Mulliner 2023 UK first drive\r\nmazda cx 60 2023 review 001 tracking front\r\nMazda CX-60 3.3 e-Skyactiv D AWD\r\nMazda CX-60 3.3 e-Skyactiv D AWD\r\nds7 2023 001 cornering front\r\nDS 7 E-Tense 225 Performance Line 2023 UK first drive\r\nDS 7 E-Tense 225 Performance Line 2023 UK first drive\r\nView all latest drives\r\n\r\nRead our review\r\nCAR REVIEW\r\n01 BMW I7 RT 2023 lead driving\r\nBMW i7\r\nMunich’s new flagship arrives as technology-laden electric luxury saloon to rival.\r\n\r\nThe EQS53, which uses a 107.8kWh batter, boasts WLTP range figures of between 329 and 364 miles, with consumption put at between 23.9 and 21.5kW/100km.', 'https://www.autocar.co.uk/car-news/new-cars/bmw-i7-m70-becomes-brands-most-powerful-ev-650bhp'),
(6, 'https://i.pinimg.com/originals/06/39/3c/06393cc60f57777b4d1c23aea5276cac.jpg', 'Lancia Delta Integrale returns as 662bhp EV rallycross weapon', 'A fearsome electric reworking of the legendary Lancia Delta Integrale has been revealed by a motorsport engineering specialist for competition in the World Rallycross Championship (WRX).\r\n\r\nThe new Lancia Delta Evo-e RXs is powered by two 331bhp motors on each axle, providing a total output of 662bhp for a 0-62mph time of 1.8sec - claimed to be 0.7sec faster than an Formula 1 car. \r\n\r\nIt was designed and manufactured by GCK Performance, a French motorsport engineering firm.', 'The two cars made their track debut last November at the Nürburgring. Both will appear on 21 May at the Charade Super Show in France and will then be used by Special One Racing, GCK\'s competition outfit, for at least the next three seasons of the now electric-only WRX.   They will be driven by Guerlain Chicherit and nine-time World Rally Championship winner Sébastien Loeb.\r\n\r\nLoeb\'s last appearance in the WRX was in 2018, when he drove a Peugeot 208 RX for Hansen Motorsport, taking victory in Belgium.\r\n\r\nChicherit founded Special One Racing and has 40 starts in the premier category after making his debut in the French Rally Cup. ', 'Loeb said: \"I\'m from a generation that was brought up seeing wins by Lancia Deltas in rally racing, so I naturally have a weakness for this car. Then I tried it in December 2022, and I was immediately won over by its dynamic qualities.\"', 'Chicherit added: \"It\'s a dream of mine to be able to align two cars of my own brand with the World RX, one of which is entrusted to a sports legend. From this season, we\'ll have the opportunity to make history, becoming the first to have a retrofitted car win a World Championship race.”\r\n\r\nThe 2023 WRX season will start in Montalegre in Portugal, this first of nine rounds taking place on 3-4 June. The series will then return to the UK for the first time since 2019 for round five, at Lydden Hill on 22-23 July.', 'https://www.autocar.co.uk/car-news/new-cars/lancia-delta-integrale-returns-662bhp-ev-rallycross-weapon'),
(7, 'https://e0.pxfuel.com/wallpapers/134/945/desktop-wallpaper-audi-rs2.jpg', 'Used car buying guide: Audi RS2', 'Teamwork makes the dream work, as they say. For proof of concept, you need only to look at the Audi RS2 Avant. The story of its creation is remarkable – and so is the car itself. \r\n\r\nIn the early 1990s, Audi wanted to build a performance car that would boost its image and keep BMW’s M division awake at night. It had an estate car, the 80 Avant, to base it on, along with the S2’s five-cylinder turbocharged engine and Quattro four-wheel drive system to work with. However, all of this wasn’t enough to make Audi’s idea into a reality. \r\n\r\nSo it looked for outside help. Porsche answered the call and agreed to co-develop what became known internally as the P1. Audi would get its performance car and, in return, Porsche would get an influx of money. It might be hard to imagine, but the sports car maker wasn’t swimming in cash back then. ', 'The firm’s expertise was also harnessed to redesign the existing suspension and braking systems. The S2’s 2.2-litre engine was upgraded, too, including the addition of a much larger turbocharger, which helped result in 311bhp and 302lb ft. \r\n\r\nThe RS2 was then assembled at Zuffenhausen, the facility responsible for both the Porsche 959 and the Mercedes-Benz 500E, remaining in production from 1994 to 1995. A total of 2891 RS2s were built – more than the 2200 originally planned, due to high demand. \r\n\r\nAll these years later, you can understand why. Take one for a spin today and straight away the driving experience is more modern and refined than you might expect. The steering is light (more so at speed) yet somewhat communicative, while the ride feels firm feels firm but fait. It isn’t uncomfortable. However, there is considerable turbo lag: floor the throttle and little happens below 3000rpm. Get past that point, though, and it’s just as if this German shepherd just spotted the ball you threw. ', 'In fact, when Autocar timed the RS2 from 0-30mph back in 1994, it turned out to be quicker than the McLaren F1. And although 0-60mph is officially rated at 5.4sec, it’s capable of completing the sprint in just 4.8sec. So yes, it still feels pretty rapid even today. \r\n\r\nOn a twisty road, it doesn’t mind some enthusiasm, with strong grip and that powerful turbo helping you to make good progress. You also have a direct six-speed manual gearshift to play with. \r\n\r\nThe RS2 doesn’t really encourage you to push it and finds its limits, mind you. Its handling remains capable and secure, rather than particularly playful and engaging. \r\n\r\nThen again, from the get-go, the RS2 never seems like it’s trying to replicate the driving experience of a serious sports car or even its chief rival, the BMW M3. It remains a practical, easy-to-use estate, despite the Porsche-infused pace. \r\n\r\nIt’s similar to its RS4 successors in this way, but the RS2 is arguably the most characterful one of the lot. ', 'Alex Green, Fontain Motors: “Cosworth a bit gauche? Integrale too fragile? With a pleasingly alliterative blend of performance, personality and practicality, an RS2 is what you need. It’ll win any game of Top Trumps against its workaday four-cylinder peers, and because it was a sensible estate car when new, it still works as one today. They’re not cheap any more and parts can be difficult, but the wait-wait-whoosh power delivery is properly addictive, depreciation is non-existent and the classic Audi community is active and enthusiastic if you need a hand. Kids in the back, dog in the boot, aim for the horizon and the whole family can enjoy your investment as its maker intended. The ultimate usable classic?”', 'https://www.autocar.co.uk/car-news/used-cars-used-car-buying-guides/used-car-buying-guide-audi-rs2'),
(9, 'https://hips.hearstapps.com/hmg-prod/images/2024-porsche-cayenne-exterior-108-643d826948ae5.jpg?crop=1.00xw:1.00xh;0,0&resize=1200:*', '2024 Porsche Cayenne Gives You More of Everything', 'The 2024 Porsche Cayenne is much changed from last year\'s model, even though this is nominally only a mid-cycle refresh. Among the changes are upgraded screens and the addition of the Porsche Driver Experience, which optimizes the driver\'s control of frequently used functions. The engine lineup is fresh, too, including a turbo V-8 in the midlevel Cayenne S and a new 174-hp electric motor in the E-Hybrid that increases total power to 463 hp. The 2024 Cayenne will start arriving at U.S. dealerships this summer. Some mid-cycle refreshes arrive with a whimper instead of a bang, throwing new paint colors or wheel designs into the mix but generally avoiding alterations to the core formula. The 2024 Porsche Cayenne does not fall into this class. In this case, Porsche saw fit to throw everything but the kitchen sink at its mid-size SUV\'s update, and the result is mighty compelling.', NULL, NULL, NULL, 'https://www.caranddriver.com/news/a43623033/2024-porsche-cayenne-specs-pricing-revealed/');

-- --------------------------------------------------------

--
-- Table structure for table `requstcars`
--

CREATE TABLE `requstcars` (
  `ID` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Phone` int(25) NOT NULL,
  `Company` varchar(25) NOT NULL,
  `Model` varchar(25) NOT NULL,
  `Year` int(4) NOT NULL,
  `Mileage` int(15) NOT NULL,
  `OfferingPrice` int(15) NOT NULL,
  `Options` varchar(500) NOT NULL,
  `Specifications` varchar(500) NOT NULL,
  `Description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requstcars`
--

INSERT INTO `requstcars` (`ID`, `Name`, `Phone`, `Company`, `Model`, `Year`, `Mileage`, `OfferingPrice`, `Options`, `Specifications`, `Description`) VALUES
(2, 'Abdelrahman sherif', 562588105, 'Nissan', 'Maxima', 2022, 100000, 200000, 'Full Options', 'class A ', 'Good Shape');

-- --------------------------------------------------------

--
-- Table structure for table `sellsoffers`
--

CREATE TABLE `sellsoffers` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Phone` int(25) NOT NULL,
  `Company` varchar(25) NOT NULL,
  `Model` varchar(25) NOT NULL,
  `Year` int(4) NOT NULL,
  `Mileage` int(15) NOT NULL,
  `AskingPrice` int(15) NOT NULL,
  `Options` varchar(500) NOT NULL,
  `Specifications` varchar(500) NOT NULL,
  `Description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sellsoffers`
--

INSERT INTO `sellsoffers` (`ID`, `Name`, `Phone`, `Company`, `Model`, `Year`, `Mileage`, `AskingPrice`, `Options`, `Specifications`, `Description`) VALUES
(76, 'Omar sherif', 562588105, 'Nissan', 'Altima', 2022, 200000, 200000, 'Full Options', 'class A ', 'Good Shape');

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `Suggestions` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'ASANES Used cars Dealership Management '),
(6, 'short_name', 'ASANES'),
(11, 'logo', 'uploads/logo.png?v=1654130795'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover.png?v=1654130796'),
(17, 'phone', '456-987-1231'),
(18, 'mobile', '09123456987 / 094563212222 '),
(19, 'email', 'info@sample.com'),
(20, 'address', '7087 Henry St. Clifton Park, NY 12065 - updated address');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_list`
--

CREATE TABLE `transaction_list` (
  `id` int(30) NOT NULL,
  `vehicle_id` int(30) NOT NULL,
  `agent_name` text NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `sex` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `contact` text NOT NULL,
  `email` text DEFAULT NULL,
  `address` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_list`
--

INSERT INTO `transaction_list` (`id`, `vehicle_id`, `agent_name`, `firstname`, `middlename`, `lastname`, `sex`, `dob`, `contact`, `email`, `address`, `date_created`, `date_updated`) VALUES
(5, 7, 'zoz', 'ahmed', 'ali', 'mohamed', 'Male', '2001-03-16', '0562588105', 'sane@gmail.com', 'ajman', '2023-05-13 02:00:17', '2023-05-13 02:00:17'),
(6, 13, 'bac', 'mohamed', 'ali', 'salam', 'Male', '1999-06-22', '0562588105', 'ziad@gmail.com', 'test', '2023-05-14 09:35:44', '2023-05-14 09:35:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='2';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', '', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatars/1.png?v=1649834664', NULL, 1, '2021-01-20 14:02:37', '2022-05-16 14:17:49'),
(8, 'Abdelrahman', '', 'Sherif', 'sherif', '5f3fd7b4a5fc6c60890b11da3f6864c3', NULL, NULL, 1, '2023-03-22 17:32:25', '2023-03-22 17:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_list`
--

CREATE TABLE `vehicle_list` (
  `id` int(30) NOT NULL,
  `model_id` int(30) NOT NULL,
  `mv_number` text NOT NULL,
  `plate_number` text NOT NULL,
  `variant` text NOT NULL,
  `mileage` varchar(20) NOT NULL,
  `engine_number` varchar(100) NOT NULL,
  `chasis_number` varchar(100) NOT NULL,
  `price` float(12,2) NOT NULL DEFAULT 0.00,
  `Year` int(4) NOT NULL,
  `Description` varchar(700) NOT NULL,
  `Technologies` varchar(500) DEFAULT NULL,
  `Cylinder` varchar(50) NOT NULL,
  `Pic` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = Available,\r\n1=Sold',
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_list`
--

INSERT INTO `vehicle_list` (`id`, `model_id`, `mv_number`, `plate_number`, `variant`, `mileage`, `engine_number`, `chasis_number`, `price`, `Year`, `Description`, `Technologies`, `Cylinder`, `Pic`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(5, 4, '158773', '36985', 'Red', '100000', '879645', '367548', 50000.00, 2019, 'The 2019 Nissan Maxima is a stunning used sedan that offers an ideal balance of style, comfort, and performance. This particular model is in excellent condition and has been well-maintained, making it a great value for its price. The exterior design is sleek and sporty, with a low-slung roofline and bold lines that give it a distinctive look. The interior is just as impressive, with premium materials and a well-designed cabin that provides a luxurious feel. The seats are comfortable and supportive, with plenty of legroom and headroom for all passengers.', 'The 2019 Maxima is packed with advanced technologies that make it a pleasure to drive. It features a 3.5-liter V6 engine that produces 300 horsepower and 261 lb-ft of torque, providing impressive performance on the road. The engine is paired with a continuously variable transmission (CVT), providing smooth and efficient shifts. The Maxima also features a variety of advanced safety and driver assistance technologies, including blind-spot warning, rear cross-traffic alert, and automatic emergency ', '6-Cylinder Engine', 'assets/img/nissanmaxima.png', 0, 0, '2023-03-27 00:47:05', '2023-04-14 17:06:36'),
(6, 5, '584514', '2578', 'White', '250000', '215523', '869257', 10000.00, 2021, 'The 2021 Toyota Yaris is a sleek and stylish used hatchback that offers a perfect balance of performance and comfort. This model is in excellent condition and has been well-maintained, making it a great value for its price. The exterior design is modern and sophisticated, with sharp lines and a distinctive front grille that give it a sporty yet elegant appearance. The interior is spacious and refined, with comfortable seats and a well-designed cabin that provides a luxurious feel. The Yaris is practical yet stylish, with enough room for passengers and cargo to make it a versatile car for daily driving.', 'The 2021 Yaris is packed with advanced technologies that make it a pleasure to drive. It features a fuel-efficient 1.5-liter four-cylinder engine that produces 106 horsepower and 103 lb-ft of torque, providing smooth and responsive acceleration on the road. The engine is paired with a continuously variable transmission (CVT) that provides seamless and efficient shifts. The Yaris also features a variety of modern safety and driver assistance technologies, including automatic emergency braking, la', '4-Cylinder Engine', 'assets/img/yaris2020white.png', 0, 0, '2023-03-27 01:02:17', '2023-04-14 17:07:37'),
(7, 6, '584515', '6985', 'Black', '232000', '158364', '247517', 15000.00, 2012, 'The 2012 Nissan Altima is an excellent used sedan that&#039;s perfect for those looking for a reliable and comfortable daily driver. Despite its age, this model is in great condition and has been well-maintained by its previous owner. The exterior design is sleek and stylish, with a look that has aged well. The interior is comfortable and spacious, with plenty of headroom and legroom for both the driver and passengers. The seats are supportive and comfortable, making it easy to enjoy long drives.', 'The 2012 Altima may not have the advanced technologies of newer models, but it still has plenty of features that make it a great used car. It features a 2.5-liter four-cylinder engine that provides adequate power for daily driving. The engine is paired with a continuously variable transmission (CVT), providing smooth and efficient shifts. The Altima also includes a variety of standard features, such as air conditioning, power windows and locks, and an AM/FM/CD audio system. Additionally, the Alt', '6-Cylinder Engine', 'assets/img/altima.png', 1, 0, '2023-03-27 01:13:33', '2023-05-13 02:00:17'),
(8, 2, '151545', '2287', 'White', '3362020', '262626', '658525', 25000.00, 2021, 'The 2021 Toyota Wigo is a compact and sporty used hatchback that is perfect for city driving. This model is in excellent condition and has been well-maintained, making it a great value for its price. The exterior design is modern and stylish, with a sleek front grille and aerodynamic lines that give it a sporty and youthful appearance. The interior is cozy and well-designed, with comfortable seats and a simple yet functional dashboard layout that provides a practical and ergonomic feel. The Wigo is small but mighty, with enough space for passengers and cargo to make it an ideal car for urban lifestyles.', 'The 2021 Wigo is equipped with a variety of advanced technologies that make it a joy to drive. It features a fuel-efficient 1.0-liter three-cylinder engine that produces 66 horsepower and 89 lb-ft of torque, providing peppy acceleration and nimble handling on the road. The engine is paired with a five-speed manual transmission, providing a smooth and responsive shifting experience. The Wigo also features a variety of modern safety and convenience features, including anti-lock brakes, airbags, a ', '3-Cylinder Engine', 'assets/img/wigo.png', 0, 0, '2023-03-27 16:00:22', '2023-04-14 17:07:24'),
(9, 8, '518484', '1999', 'Blue', '150000', '15151', '367415', 130000.00, 2021, 'If you&#039;re looking for a used sports car that offers an exhilarating driving experience, the 2021 Ford Mustang is a fantastic choice. This particular model is in excellent condition and has been well-maintained, making it a great value for its price. The Mustang&#039;s iconic design is sure to turn heads on the road, with its sleek lines and aggressive stance. The interior is just as impressive, with a driver-focused cockpit that&#039;s designed to enhance the driving experience. The seats are comfortable and supportive, and there&#039;s plenty of headroom and legroom for both the driver and passenger.', 'The 2021 Mustang is packed with advanced technologies that make it a joy to drive. It features a 2.3-liter EcoBoost engine that produces 310 horsepower and 350 lb-ft of torque, providing impressive performance on the road. The engine is paired with a six-speed manual transmission, providing precise and engaging shifts. The Mustang also features a variety of advanced safety and driver assistance technologies, including lane departure warning, automatic emergency braking, and adaptive cruise contr', '6-Cylinder Engine', 'assets/img/mustang.png', 0, 0, '2023-03-27 16:13:08', '2023-04-14 17:06:06'),
(10, 9, '115185', '7855', 'White', '3362020', '784598', '365478', 630290.00, 2021, 'If you&#039;re in the market for a used luxury SUV, the 2021 BMW X7 XDrive40i is an excellent choice. Despite being a used car, it still looks and feels like new. The exterior is sleek and stylish, with a modern design that&#039;s sure to turn heads. The interior is just as impressive, with a spacious and comfortable cabin that has been well-maintained by its previous owner. This particular model has low mileage and is in excellent condition, making it an excellent value for the price.', 'The 2021 BMW X7 XDrive40i is loaded with advanced technologies that make it a joy to drive. The 3.0-liter turbocharged engine is paired with an eight-speed automatic transmission and all-wheel drive, providing plenty of power and traction on any road. The X7 XDrive40i also features a 12.3-inch touchscreen infotainment system that&#039;s compatible with Apple CarPlay and Android Auto, a 12.3-inch digital instrument cluster, and a wireless charging pad for your phone. It also boasts a suite of adv', '6-Cylinder Engine', 'assets/img/x7.png', 0, 0, '2023-03-27 16:27:20', '2023-04-14 17:04:51'),
(11, 7, '657825', '2257', 'Red', '3362020', '697415', '257841', 161160.00, 2023, 'The 2023 Nissan Pathfinder is a dynamic used SUV that offers a perfect blend of style, comfort, and capability. This model is in excellent condition and has been well-maintained, making it a great value for its price. The exterior design is rugged and sporty, with a bold front grille and muscular lines that give it a commanding presence on the road. The interior is spacious and well-appointed, with premium materials and a thoughtful design that provides a comfortable and luxurious feel. The seats are supportive and comfortable, with plenty of room for passengers and cargo.', 'The 2023 Pathfinder is packed with advanced technologies that make it a joy to drive. It features a powerful 3.5-liter V6 engine that produces 284 horsepower and 259 lb-ft of torque, providing impressive performance on the road. The engine is paired with a continuously variable transmission (CVT), providing smooth and efficient shifts. The Pathfinder also features a variety of advanced safety and driver assistance technologies, including blind-spot warning, rear cross-traffic alert, and automati', '6-Cylinder Engine', 'assets/img/pathfinder.png', 0, 0, '2023-03-27 16:31:26', '2023-04-14 17:07:01'),
(12, 10, '584635', '8597', 'White', '250000', '854985', '364789', 295698.00, 2023, 'The 2023 Chevrolet Corvette is an exciting sports car that&#039;s perfect for driving enthusiasts. If you&#039;re looking for a used sports car, this particular model is an excellent choice. Despite being a used car, it&#039;s in great condition and has been well-maintained by its previous owner. The exterior is sleek and aerodynamic, with a design that&#039;s sure to turn heads. The interior is just as impressive, with a driver-focused cockpit that&#039;s designed to enhance the driving experience. This particular model has low mileage, making it an excellent value for the price.', 'The 2023 Corvette is loaded with advanced technologies that make it a joy to drive. It features a 6.2-liter V8 engine that produces 490 horsepower and 465 lb-ft of torque, giving it incredible performance on the road. The engine is paired with an eight-speed dual-clutch automatic transmission, providing smooth and precise shifts. The Corvette also features a new Z51 Performance Package that adds performance upgrades such as a sport-tuned suspension, larger brakes, and a performance exhaust. The ', '8-Cylinder Engine', 'assets/img/corvette.png', 0, 0, '2023-03-27 16:44:53', '2023-04-14 17:05:51'),
(13, 11, '244789', '366952', 'White', '100000', '364582', '288558', 167900.00, 2023, 'The 2023 Toyota Prado is a versatile used SUV that offers a perfect blend of ruggedness and refinement. This model is in excellent condition and has been well-maintained, making it a great value for its price. The exterior design is tough and muscular, with a bold front grille and sharp lines that give it a distinctive look. The interior is spacious and comfortable, with premium materials and a well-designed cabin that provides a luxurious feel. The seats are supportive and comfortable, with plenty of room for passengers and cargo.', 'The 2023 Prado is packed with advanced technologies that make it a pleasure to drive. It features a powerful 2.8-liter diesel engine that produces 201 horsepower and 369 lb-ft of torque, providing impressive performance on the road. The engine is paired with a six-speed automatic transmission, providing smooth and efficient shifts. The Prado also features a variety of advanced safety and driver assistance technologies, including adaptive cruise control, lane departure warning, and automatic emer', '6-Cylinder Engine', 'assets/img/prado.png', 1, 0, '2023-03-27 16:50:37', '2023-05-14 09:35:44'),
(14, 12, '125466', '328', 'Red', '4000', '951478', '357415', 2299000.00, 2021, 'The used Ferrari SF90 Stradale is a high-performance hybrid sports car that combines the latest technology and engineering to deliver an unparalleled driving experience. The SF90 Stradale is based on Ferrari&#039;s experience in motorsports, particularly in Formula One racing, and features a lightweight construction, aerodynamic design, and advanced materials to achieve maximum performance. The SF90 Stradale also features a luxurious and high-tech interior, with features like a 16-inch curved digital instrument cluster and a high-end sound system. The SF90 Stradale is not only a powerful and fast car, but also a stylish and luxurious one, making it a great choice for those looking for a high', 'The used Ferrari SF90 Stradale features several advanced technologies that make it one of the most impressive and powerful sports cars on the market. The first major technology is its hybrid powertrain, which consists of a 4.0-liter V8 engine and three electric motors. The hybrid powertrain delivers an impressive 986 horsepower and 590 lb-ft of torque, allowing the SF90 Stradale to go from 0 to 60 mph in just 2.5 seconds. The hybrid powertrain also features an electric-only mode, allowing the SF', '8-Cylinder Engine', 'assets/img/ferari.png', 0, 0, '2023-05-05 05:33:20', '2023-05-06 01:49:40'),
(15, 13, '358964', '2245', 'Blue', '32000', '358469', '587413', 845000.00, 2017, 'The 2017 Ferrari 488 Spider is a stunning convertible supercar that combines Ferrari&#039;s legendary performance with a sleek and stylish design. The car&#039;s exterior features flowing lines and curves that are both aerodynamic and visually striking, while the interior is spacious and luxurious, with high-quality materials and advanced technology. The 488 Spider also features a retractable hardtop roof that can be opened or closed in just 14 seconds, allowing for an open-air driving experience whenever the mood strikes. With its exceptional performance, advanced technologies, and luxurious design, the 2017 Ferrari 488 Spider is a true marvel of engineering and design.', 'The 2017 Ferrari 488 Spider is a high-performance supercar that features several advanced technologies to deliver an unparalleled driving experience. The car&#039;s twin-turbocharged 3.9-liter V8 engine produces 661 horsepower and 561 lb-ft of torque, and it&#039;s paired with a 7-speed dual-clutch automatic transmission that delivers lightning-fast gear changes. The engine also features advanced technologies like direct injection, variable boost management, and a flat-plane crankshaft, which he', '8-Cylinder Engine', 'assets/img/fer2.png', 0, 0, '2023-05-05 05:45:25', '2023-05-06 01:49:40'),
(16, 14, '485269', '784592', 'Black', '22000', '951478', '15968', 4800000.00, 2010, 'The Bugatti Veyron 16.4 Super Sport is a true engineering marvel, with a sleek and aerodynamic design that is both visually stunning and highly functional. The car&#039;s exterior features a unique blend of curves and angles that help reduce drag and improve aerodynamics, while the interior is luxurious and high-tech, with premium materials and advanced technology throughout. The Veyron is also designed to be incredibly fast, with a top speed of 267 mph and the ability to go from 0 to 60 mph in just 2.4 seconds. With its combination of advanced technologies and stunning design, the Bugatti Veyron 16.4 Super Sport is one of the most impressive and sought-after supercars ever created.', 'The Bugatti Veyron 16.4 Super Sport is a high-performance supercar that features some of the most advanced automotive technologies available. The heart of the Veyron is its quad-turbocharged W16 engine, which produces a staggering 1,200 horsepower and 1,106 lb-ft of torque. The engine is mated to a 7-speed dual-clutch automatic transmission that delivers lightning-fast gear changes, and the car&#039;s all-wheel-drive system ensures maximum traction and performance. The Veyron also features advan', '8-Cylinder Engine', 'assets/img/bgg.png', 0, 0, '2023-05-05 06:16:46', '2023-05-06 01:49:40'),
(17, 14, '158743', '258741', 'Black - Orange', '2000', '654781', '321456', 7300000.00, 2009, 'The Bugatti Veyron 16.4 Super Sport is a true engineering marvel, with a sleek and aerodynamic design that is both visually stunning and highly functional. The car&#039;s exterior features a unique blend of curves and angles that help reduce drag and improve aerodynamics, while the interior is luxurious and high-tech, with premium materials and advanced technology throughout. The Veyron is also designed to be incredibly fast, with a top speed of 267 mph and the ability to go from 0 to 60 mph in just 2.4 seconds. With its combination of advanced technologies and stunning design, the Bugatti Veyron 16.4 Super Sport is one of the most impressive and sought-after supercars ever created.', 'The Bugatti Veyron 16.4 Super Sport is a high-performance supercar that features some of the most advanced automotive technologies available. The heart of the Veyron is its quad-turbocharged W16 engine, which produces a staggering 1,200 horsepower and 1,106 lb-ft of torque. The engine is mated to a 7-speed dual-clutch automatic transmission that delivers lightning-fast gear changes, and the car&#039;s all-wheel-drive system ensures maximum traction and performance. The Veyron also features advan', '8-Cylinder Engine', 'assets/img/bgg1.png', 0, 0, '2023-05-05 06:30:39', '2023-05-06 01:49:40'),
(18, 15, '154879', '358479', 'White', '400', '364875', '154789', 1099000.00, 2022, 'The Lamborghini Huracan 2022 is a stunning supercar that combines Lamborghini&#039;s legendary performance with a sleek and stylish design. The car&#039;s exterior features sharp lines and aggressive curves that are both aerodynamic and visually striking, while the interior is luxurious and high-tech, with premium materials and advanced technology throughout. The Huracan is also designed to be incredibly fast, with a top speed of over 200 mph and the ability to go from 0 to 60 mph in just 2.9 seconds. The Huracan is a true driver&#039;s car, with a responsive and precise steering system that provides excellent feedback and allows the driver to feel connected to the road. With its combination', 'The Lamborghini Huracan 2022 is a high-performance supercar that features some of the most advanced automotive technologies available. The heart of the Huracan is its naturally aspirated 5.2-liter V10 engine, which produces 631 horsepower and 442 lb-ft of torque. The engine is mated to a 7-speed dual-clutch automatic transmission that delivers lightning-fast gear changes, and the car&#039;s all-wheel-drive system ensures maximum traction and performance. The Huracan also features advanced aerody', '8-Cylinder Engine', 'assets/img/lam.png', 0, 0, '2023-05-05 06:41:56', '2023-05-06 01:49:40');

-- --------------------------------------------------------

--
-- Table structure for table `vids`
--

CREATE TABLE `vids` (
  `id` int(11) NOT NULL,
  `car_id` int(100) NOT NULL,
  `vids` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vids`
--

INSERT INTO `vids` (`id`, `car_id`, `vids`) VALUES
(5, 5, 'CarVids/vids/videoplayback.mp4'),
(6, 6, 'CarVids/vids/yaris.mp4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biddingcars`
--
ALTER TABLE `biddingcars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test` (`model_id`);

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1` (`user_id`),
  ADD KEY `fk2` (`car_id`);

--
-- Indexes for table `brand_list`
--
ALTER TABLE `brand_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_type_list`
--
ALTER TABLE `car_type_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commoffers`
--
ALTER TABLE `commoffers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_list`
--
ALTER TABLE `model_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `car_type_id` (`car_type_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requstcars`
--
ALTER TABLE `requstcars`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sellsoffers`
--
ALTER TABLE `sellsoffers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk3` (`user_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_list`
--
ALTER TABLE `transaction_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_list`
--
ALTER TABLE `vehicle_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `model_id` (`model_id`);

--
-- Indexes for table `vids`
--
ALTER TABLE `vids`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biddingcars`
--
ALTER TABLE `biddingcars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `brand_list`
--
ALTER TABLE `brand_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `car_type_list`
--
ALTER TABLE `car_type_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `commoffers`
--
ALTER TABLE `commoffers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `model_list`
--
ALTER TABLE `model_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `requstcars`
--
ALTER TABLE `requstcars`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sellsoffers`
--
ALTER TABLE `sellsoffers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `transaction_list`
--
ALTER TABLE `transaction_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vehicle_list`
--
ALTER TABLE `vehicle_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `vids`
--
ALTER TABLE `vids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `biddingcars`
--
ALTER TABLE `biddingcars`
  ADD CONSTRAINT `test` FOREIGN KEY (`model_id`) REFERENCES `model_list` (`id`);

--
-- Constraints for table `bids`
--
ALTER TABLE `bids`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`user_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `fk2` FOREIGN KEY (`car_id`) REFERENCES `biddingcars` (`id`);

--
-- Constraints for table `model_list`
--
ALTER TABLE `model_list`
  ADD CONSTRAINT `brand_id_fk_ml` FOREIGN KEY (`brand_id`) REFERENCES `brand_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `car_type_id_fk_ml` FOREIGN KEY (`car_type_id`) REFERENCES `car_type_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD CONSTRAINT `fk3` FOREIGN KEY (`user_id`) REFERENCES `clients` (`id`);

--
-- Constraints for table `transaction_list`
--
ALTER TABLE `transaction_list`
  ADD CONSTRAINT `vehicle_id` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `vehicle_list`
--
ALTER TABLE `vehicle_list`
  ADD CONSTRAINT `model_id_fk_vl` FOREIGN KEY (`model_id`) REFERENCES `model_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
