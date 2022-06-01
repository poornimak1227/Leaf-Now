-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2021 at 06:52 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(10, 13, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Fruit plants', 'Fruit plants'),
(2, 'Ornamental plants', 'Ornamental plants'),
(3, 'medicinal plants ', 'medicinal plants '),
(4, 'Flowers ', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'Mango Plant', '<p>Common Name-Mango\r\nBotanical Name-Mangifera indica\r\nFamily- Anacardiaceae\r\nPlant Type -Fruit, tree\r\nSize -Up to 100 ft. tall, 35 ft. wide\r\nSun Exposure -Full sun\r\nSoil Type -Loamy, moist, well-drained.</p>\r\n', 'Mango Plant', 899, 'mango-plant.jpg', '2021-09-30', 4),
(2, 1, 'Coconut Plant', '<p>The coconut tree (Cocos nucifera) is a member of the palm tree family (Arecaceae) and the only living species of the genus Cocos.[1] The term \"coconut\" (or the archaic \"cocoanut\")[2] can refer to the whole coconut palm, the seed, or the fruit, which botanically is a drupe, not a nut.</p>\r\n', 'Coconut Plant', 799, 'Coconut-Plant.jpg', '2021-09-28', 3),
(3, 1, 'Dragon Fruit Plant', '<p>Pitaya usually refers to fruit of the genus Stenocereus, while pitahaya or dragon fruit refers to fruit of the genus Selenicereus (formerly Hylocereus), both in the family Cactaceae. Dragon fruit is cultivated in Mexico, Southeast Asia, India, the United States, the Caribbean, Australia, Mesoamerica and throughout tropical and subtropical world regions. </p>\r\n', 'Dragon Fruit Plant', 599, 'hybrid-dragon-fruit-plants-922.jpg', '2021-09-28', 1),
(4, 1, 'Guava Plant', '<p>-Guava is a common tropical fruit cultivated in many tropical and subtropical regions.[2] Psidium guajava (common guava, lemon guava) is a small tree in the myrtle family (Myrtaceae), native to Mexico, Central America, the Caribbean and northern South America.[2] Although related plants may also be called guavas, they belong to other species or genera, such as the pineapple guava, Feijoa sellowiana. In 2019, 55 million tonnes of guavas were produced worldwide, led by India with 45% of the total. Botanically, guavas are berries. .</p>\r\n', 'Guava Plant', 399, 'guava-plant-500x500.jpg', '2021-09-28', 3),
(5, 3, 'Aloevera', '<p>It is used in many consumer products, including beverages, skin lotion, cosmetics, ointments or in the form of gel for minor burns and sunburns. There is little clinical evidence for the effectiveness or safety of Aloe vera extract as a cosmetic or topical drug</p>\r\n\r\n', 'Aloevera', 339, 'Aloevera.jpg', '2021-09-29', 1),
(6, 1, 'Papaya Plant', '<p>The papaya is a small, sparsely branched tree, usually with a single stem growing from 5 to 10 m (16 to 33 ft) tall, with spirally arranged leaves confined to the top of the trunk. The lower trunk is conspicuously scarred where leaves and fruit were borne. The leaves are large, 50–70 cm (20–28 in) in diameter, deeply palmately lobed, with seven lobes</p>\r\n', 'Papaya Plant', 449.99, 'Papaya-Plant.jpg', '2021-09-28', 0),
(7, 3, 'Tulsi Plant', '<p>Tulsi is cultivated for religious and traditional medicine purposes, and also for its essential oil. It is widely used as a herbal tea, commonly used in Ayurveda, and has a place within the Vaishnava tradition of Hinduism, in which devotees perform worship involving holy basil plants or leaves. </p>\r\n', 'Tulsi Plant', 619, 'Growing-Tulsi-2.jpg', '2021-09-29', 1),
(8, 1, 'Strawberry Plant', '<p>The garden strawberry is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries, which are cultivated worldwide for their fruit. The fruit is widely appreciated for its characteristic aroma, bright red color, juicy texture, and sweetness. It is consumed in large quantities, either fresh or in such prepared foods as jam, juice, pies, ice cream, milkshakes, and chocolates.</p>\r\n', 'Strawberry Plant', 549.99, 'Strawberry-Plant.jpg', '2021-09-28', 0),
(9, 2, 'Fibre Optic Grass Plant', '<p>Fiber optic grass is a fun plant (even though it isn’t really a grass) that most people acquire because of its unusual appearance. Isolepis cernua (=Scirpus cernuus), in the sedge family (Cyperaceae), is a variable evergreen species with a mop-like tuft of fine green stems. It is found in wet places, growing as a marginal water plant or in sandy or peaty areas near the sea in its native range of western and southern Europe, the British Isles, North Africa, the west coast of North America (California to British Columbia and Alaska), and Australia and New Zealand.</p>\r\n', 'Fibre Optic Grass Plant', 599.99, 'fibre-optic-grass-plant.jpg', '2021-09-28', 0),
(10, 2, 'Snake Plant', '<p>It is an evergreen perennial plant forming dense stands, spreading by way of its creeping rhizome, which is sometimes above ground, sometimes underground. Its stiff leaves grow vertically from a basal rosette. Mature leaves are dark green with light gray-green cross-banding and usually range from 70–90 centimetres (2.3–3.0 ft) long and 5–6 centimetres (2.0–2.4 in) wide, though it can reach heights above 2 m (6 ft) in optimal conditionsThe plant exchanges oxygen and carbon dioxide using the crassulacean acid metabolism process, which allows them to withstand drought..</p>\r\n', 'Snake Plant', 599.99, 'snake-plants.jpg', '2021-09-30', 1),
(11, 2, 'Peace Lily', '<p>Several species are popular indoor houseplants. It lives best in shade and needs little sunlight to thrive, and is watered approximately once a week. The soil is best left moist but only needs watering if the soil is dry</p>\r\n', 'Peace Lily', 489.98, 'peace-lily.jpg', '2021-09-28', 1),
(12, 2, 'Chinese Money Plant', '<p>evergreen perennial plant, with shiny, dark green, circular leaves up to 10 cm (4 in) in diameter on long petioles.[5] The leaves are described as peltate—circular, with the petiole attached near the centre. The plant is completely hairless. It grows to around 30 cm (12 in) tall and wide in the wild, sometimes more indoors. The stem is greenish to dark brown, usually unbranched and upright, and lignified at the base when mature. In poor growing conditions, it loses its leaves in the lower part of the stem and assumes a distinctive habit. The flowers are inconspicuous</p>\r\n', 'Chinese Money Plant', 749.99, 'chinese-money-plant.jpg', '2021-09-28', 3),
(13, 2, 'Water Bamboo', '<p>Features the latest quad core Intel i5 processor and discrete graphics. With this power, you&rsquo;re ready to take on any activity from making digital art to conquering new worlds in VR.</p>\r\n\r\n<p>Choose the performance and storage you need. Boot up in seconds with to 128 GB SSD.</p>\r\n\r\n<p>Ditch the dull grey box, this desktop comes infused with style. A new angular bezel and bold green and black design give your workspace just the right amount of attitude.</p>\r\n\r\n<p>A perennial herb reaching a height of 100 cm (39 in), the plant has slightly twisted leaves of grey-green colour, with a length of which is up to 23 cm (9 in). The stem is fleshy, which distinguishes it from bamboo. It requires bright, ventilated areas. It tolerates dry air and does not require constant spraying. A very tenacious plant, it is rather difficult to destroy it.</p>\r\n', 'Water Bamboo', 799.99, 'chinese-water-bamboo-plant.jpg', '2021-09-28', 1),
(14, 2, 'Bonsai', '<p>Purposes of bonsai are primarily contemplation for the viewer, and the pleasant exercise of effort and ingenuity for the grower. By contrast with other plant cultivation practices, bonsai is not intended for production of food or for medicine. Instead, bonsai practice focuses on long-term cultivation and shaping of one or more small trees growing in a container..</p>\r\n', 'Bonsai', 899.99, 'bonsai-plant.jpg', '2021-09-28', 13),
(15, 2, 'Bunny Ear Cactus', '<p>- NVIDIA GeForce GTX graphics for stunning gaming visuals<br />\r\n<br />\r\n- Made for eSports with a speedy 7th generation Intel&reg; Core&trade; i5 processor<br />\r\n<br />\r\n- GeForce technology lets you directly update drivers, record your gaming and more<br />\r\n<br />\r\nThe PC Specialist&nbsp;<strong>Vortex Minerva XT-R Gaming PC</strong>&nbsp;is part of our Gaming range, which offers the most powerful PCs available. Its high-performance graphics and processing are made to meet the needs of serious gamers.</p>\r\n', 'Bunny Ear Cactus', 999.99, 'bunny-ear-cactus.jpg', '2021-09-28', 1),
(16, 2, 'silver-nerve Plant', '<p>Processor: Intel&reg; CoreTM i3-6100 Processor- Dual-core- 3.7 GHz- 3 MB cache</p>\r\n\r\n<p>Fittonia (also known as the Nerve Plant, Mosaic Plant or Net Plant) might just be the cutest little drama queen you’ve ever met. Why the drama? Neglect your watering routine on your fittonia and it will wilt like a coffee fiend on a caffeine fast. Luckily for you, fittonia just wants attention and will perk back up after you give it a drink.</p>\r\n', 'silver-nerve Plant', 649.99, 'silver-nerve-plant.jpg', '2021-09-28', 2),
(17, 3, 'Gingko Plant', '<p>Ginkgos are large trees, normally reaching a height of 20–35 m (66–115 ft),[14] with some specimens in China being over 50 m (165 ft). The tree has an angular crown and long, somewhat erratic branches, and is usually deep rooted and resistant to wind and snow damage. Young trees are often tall and slender, and sparsely branched; the crown becomes broader as the tree ages. During autumn, the leaves turn a bright yellow, then fall, sometimes within a short space of time (one to 15 days).</p>\r\n', 'Gingko Plant', 49.99, 'Gingko Plant.jpg', '2021-09-28', 1),
(18, 3, 'Evening primrose', '<p>he species vary in size from small alpine plants 10 centimeters tall, such as O. acaulis from Chile, to vigorous lowland species growing to 3 meters, such as O. stubbei from Mexico. The leaves form a basal rosette at ground level and spiral up to the flowering stems. The blades are dentate or deeply lobed (pinnatifid). The flowers of many species open in the evening, hence the name \"evening primrose\". They may open in under a minute. Most species have yellow flowers, but some have white, purple, pink, or red..</p>\r\n', 'Evening primrose', 79.99, 'Evening-primrose.jpg', '2021-09-28', 2),
(19, 3, 'Tea Tree', '<p>Tea tree (Melaleuca alternifolia) is a Myrtaceae evergreen tree, from whose leaves the. Tea tree (Thea sinensis)Melaleuca alternifolia, commonly known as tea tree, is a species of tree or tall shrub in the myrtle family, Myrtaceae..</p>\r\n', 'Tea Tree', 99.99, 'Tea-Tree.jpg', '2021-09-28', 1),
(20, 3, 'Echinacea', '<p>Echinacea species are herbaceous, drought-tolerant perennial plants growing up to 140 cm or 4 feet, in height. They grow from taproots, except E. purpurea, which grows from a short caudex with fibrous roots. They have erect stems that in most species are unbranched. Both the basal and cauline (stem) leaves are arranged alternately. The leaves are normally hairy with a rough texture, having uniseriate trichomes (1–4 rings of cells) but sometimes they lack hairs. The basal leaves and the lower stem leaves have petioles, and as the leaves progress up the stem the petioles often decrease in length</p>\r\n', 'Echinacea', 339, 'Echinacea-plant.jpg', '2021-09-29', 2),
(27, 1, 'Lemon Plant', '<p>The lemon (Citrus limon) is a species of small evergreen tree in the flowering plant family Rutaceae, native to Asia, primarily Northeast India (Assam), Northern Myanmar or ChinaThe tree\'s ellipsoidal yellow fruit is used for culinary and non-culinary purposes throughout the world, primarily for its juice, which has both culinary and cleaning uses.[2] The pulp and rind are also used in cooking and baking. The juice of the lemon is about 5% to 6% citric acid, with a pH of around 2.2, giving it a sour taste.</p>\r\n', 'Lemon Plant', 1599, 'Lemon-plant.jpg', '2021-09-28', 9),
(28, 4, 'Hibiscus Plant', '<p>Hibiscus is a genus of flowering plants in the mallow family, Malvaceae. The genus is quite large, comprising several hundred species that are native to warm temperate, subtropical and tropical regions throughout the world. Member species are renowned for their large, showy flowers and those species are commonly known simply as \"hibiscus\", or less widely known as rose mallow. Other names include hardy hibiscus, rose of sharon, and tropical hibiscus.  </p>\r\n', 'Hibiscus Plant', 829, 'Hibiscus-Plant.jpg', '2021-09-30', 1),
(29, 4, 'Rose Plant', '\r\n<p>A rose is a woody perennial flowering plant of the genus Rosa, in the family Rosaceae, or the flower it bears. There are over three hundred species and tens of thousands of cultivars. They form a group of plants that can be erect shrubs, climbing, or trailing, with stems that are often armed with sharp prickles.</p>\r\n', 'Rose Plant', 889.99, 'Rose-Plant.jpg', '2021-09-30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Vinay', 'R', '', '', '', 1, '', '', '2018-05-01'),
(13, 'ramub@gmail.com', '$2y$10$K1BY9uqm9OrFgotyLdyyzumCIH0qTm.9xSWNTLFfy0WNtqWrhc7lG', 0, 'Ramu', 'B', '', '', '', 1, '', '', '0000-00-00'),
(14, 'ramub@gmail.com', '$2y$10$VTVcttANga3B3FN3SZ1OkOu99n06oXblJ7pB9gn/c1FgcTUsARGmK', 0, 'Ramu', 'B', '', '', '', 1, '', '', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
