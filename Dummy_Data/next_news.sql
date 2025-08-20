-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2025 at 11:52 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `next_news`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Spotlight', '2023-12-29 21:33:17', '2023-12-29 21:33:17'),
(2, 'Insights', '2023-12-29 21:33:17', '2023-12-29 21:33:17'),
(3, 'History', '2023-12-29 21:33:17', '2023-12-29 21:33:17'),
(4, 'Environment', '2023-12-29 21:33:17', '2023-12-29 21:33:17'),
(6, 'Travel', '2023-12-29 21:33:17', '2023-12-29 21:33:17'),
(7, 'Health', '2023-12-29 21:33:17', '2023-12-29 21:33:17'),
(8, 'Economy', '2023-12-29 21:33:17', '2023-12-29 21:33:17'),
(9, 'Art', '2023-12-29 21:33:17', '2023-12-29 21:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `postID` int(11) NOT NULL,
  `descriptions` varchar(1000) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `userID`, `postID`, `descriptions`, `createdAt`, `updatedAt`) VALUES
(29, 2, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2024-01-27 22:40:47', '2024-01-27 22:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `news_list`
--

CREATE TABLE `news_list` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `short_des` varchar(400) NOT NULL,
  `img1` varchar(300) NOT NULL,
  `img2` varchar(300) NOT NULL,
  `img3` varchar(300) NOT NULL,
  `img4` varchar(300) NOT NULL,
  `keywords` varchar(300) NOT NULL,
  `long_des` longtext NOT NULL,
  `type` varchar(200) NOT NULL,
  `catID` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_list`
--

INSERT INTO `news_list` (`id`, `title`, `short_des`, `img1`, `img2`, `img3`, `img4`, `keywords`, `long_des`, `type`, `catID`, `createdAt`, `updatedAt`) VALUES
(1, 'Sample News OSTAD Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://images.template.net/wp-content/uploads/2015/12/Newspaper-Headline-Template.jpeg', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<h3>Marayan Tong, Bandarban</h3>\n\n<p>Marayan Tong is the name of a hill belonging to the Marinja Range. This hilltop in Bandarban&rsquo;s Alikadam area is extremely popular for camping among the nature lovers. From the peak as far as the eyes can travel, there are only hills covered in lush green. And in the morning, there are faraway hills covered in sheer clouds to be amazed at. It&rsquo;s an extraordinary experience to enjoy sunrise from up there. As soon as the sun rises, the whole valley gets flooded with its golden rays. And as the hour passes away, the natural beauty of the hill keeps changing constantly throughout the day.</p>\n\n<h3>Char Kukri-Mukri, Bhola</h3>\n\n<p>Though its called a char (shoal), Kukri-Mukri is an island actually. This island from Bhola&rsquo;s Char Fashion is located at the confluence of Meghna and Tentulia rivers right on the edge of the Bay of Bengal.Seeing the dense forest and the crowd of mangrove trees in Char Kukri-Mukri, you would get the feeling of being deep inside the Sundarbans.The forest and the surrounding waters easily make you forget the complexity of the urban life. And you can spend hours looking at the star-studded sky in the silence of the night.</p>\n\n<h3>Sonadia Island, Cox&rsquo;s Bazar &nbsp;</h3>\n\n<p>Cox&rsquo;s Bazar sea beach is at the top of traveler&rsquo;s list of favourite destinations. But for people who don&rsquo;t like the crowd of tourists, there is Sonadia sea beach.There&rsquo;s nothing but the sound of the sea in Moheshkhali&rsquo;s Sonadia. The night stay in tent on this beach could be one of the best moments of your life. And, if it&rsquo;s a full moon night nothing can be better than that.Then you can take a walk barefoot on the beach basking in the golden ray of the rising sun. You can also enjoy a bit of hide and seek with the red crabs on the beach during this time. And, you can spend hours without a break swaying on a hammock tied inside the grove of tamarisk (Jhau) trees.</p>\n\n<h3>Rema-Kalenga, Habiganj</h3>\n\n<p>I had read somewhere that forests should be visited at night for its environment and the beauty keeps changing with the depth of night. But, I believe if you want to feel the forest in your heart, you can just arrive in the Rema-Kalenga reserved forest with a tent. A deep silence possesses the forest at night. The orchestra of crickets in the forest keeps chirping relentlessly with full enthusiasm. But that sound gets blended seamlessly with the environment of the forest. The Rema-Kalenga reserved forest is located in Chunarughat upazila of Habiganj.</p>\n\n<h3>Monpura, Bhola</h3>\n\n<p>Monpura is the perfect destination for cycling and camping. This island upazila of Bhola is surrounded by the river Meghna on three sides and by the Bay of Bengal on the other side. Also there&rsquo;s not much hassle to reach Monpura. If you board any Betua or Hatia bound launch from Sadarghat, it will drop you off at Monpura even before the sunrise. One of the significant attractions of this island is its mangrove forest stretched for miles after miles. And the forest is surrounded by rivers on all sides. You can easily spend an amusing night setting up the tent on the banks of the river. Besides, Sakuchia sea beach, Upazila parishad&rsquo;s Pach Dighi, Chowwdhury Fisheries Project and Monpura landing station are the popular tourist sites there.</p>\n\n<h3>Nijhum Dwip, Noakhali</h3>\n\n<p>Nijhum Dwip is located inside the Bay of Bengal on the estuary of Meghna River. This island detached from the mainland of Hatia is a government-announced national park.In the past, spotted deer had been released in this park and they now roam freely there in herds. And in winter, migratory birds arrive in flocks. You can set up the tent near the beach or the forest. Even the forest department can arrange for the tents. If you contact beforehand, you can comfortably spend two nights there in rented tents.</p>\n\n<h3>Kaptai, Rangamati</h3>\n\n<p>The banks of the Karnaphuli river, the banks of the lake or the base of the high hills, no matter wherever you set up the tent in Kaptai it turns into a great camping site in a jiffy. Seeing the beauty of the lake covered in the blanket of fog through the opening of the tent takes you to land of dreams. There isn&rsquo;t the solitude of the forest or the unnecessary hostility of noise there. And that&rsquo;s why many commercial camping sites have mushroomed in Kaptai. Alongside tenting, you can go for a swim or go kayaking in the crystal-clear lake. &nbsp;</p>\n', 'Slider', 9, '2023-12-29 21:36:22', '2023-12-29 21:36:22'),
(2, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://blogs.bl.uk/.a/6a00d8341c464853ef01b8d1bef6d0970c-pi', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Featured', 8, '2023-12-29 21:36:22', '2023-12-29 21:36:22'),
(4, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://www.mgh.de/storage/app/uploads/public/5fb/be5/5a5/thumb_1909_952_0_0_0_exact.png', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9s51snlkwJ5n1RYU2OgBcoC8k2Bvsko7uzQ&s', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9s51snlkwJ5n1RYU2OgBcoC8k2Bvsko7uzQ&s', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9s51snlkwJ5n1RYU2OgBcoC8k2Bvsko7uzQ&s', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Popular', 8, '2023-12-29 21:36:22', '2023-12-29 21:36:22'),
(5, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://i0.wp.com/blogs.archives.qld.gov.au/wp-content/uploads/2023/06/Black-Hand-newspaper-clipping-from-Jean-Morris-file-4190294019-e1687840143820.jpg?fit=720%2C446&ssl=1', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Popular', 7, '2023-12-29 21:36:22', '2023-12-29 21:36:22'),
(7, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://static-cdn.toi-media.com/blogs/uploads/2020/06/1161-1-1-e1591789134406-640x400.jpg', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Popular', 7, '2023-12-29 21:36:22', '2023-12-29 21:36:22'),
(8, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://www.researchgate.net/profile/Neelke-Doorn/publication/329829724/figure/fig5/AS:772232024444928@1561125870503/Newspaper-articles-from-1988-about-Bangladesh-floods.png', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Slider', 6, '2023-12-29 21:36:22', '2023-12-29 21:36:22'),
(9, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://cdn.prod.website-files.com/66671b800c367e1fd46c54bc/66ac0b62260cb71d971d635a_668c4ae461626adc10defb35_canva-black-and-white-vintage-newspaper-motivational-quote-poster-dryUb8SjMjo.jpeg', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Regular', 6, '2023-12-29 21:36:22', '2023-12-29 21:36:22'),
(10, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://images.prismic.io/findmypast-titan/65a168f1-1eb5-4f1c-879c-467922807099_Blog-pearl-harbor.jpg?auto=compress,format&rect=0,0,1200,575&w=1200&h=575', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Regular', 4, '2023-12-29 21:36:22', '2023-12-29 21:36:22'),
(11, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://civilwar.gratzpa.org/wp-content/uploads/2012/09/paper1.jpg', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Regular', 4, '2023-12-29 21:36:22', '2023-12-29 21:36:22'),
(12, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://www.bookmyad.com/media/blog/small/1545309436Times%20of%20india.jpg', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Regular', 3, '2023-12-29 21:36:22', '2023-12-29 21:36:22'),
(13, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://media.licdn.com/dms/image/v2/C5612AQFW4jcLasd59A/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1633027867875?e=2147483647&v=beta&t=ouzhpZ_nDCEEAxYLHPemAqTad8rrFgCf3xjcodyTMls', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Regular', 3, '2023-12-29 21:36:22', '2023-12-29 21:36:22'),
(14, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://media.licdn.com/dms/image/v2/D4E12AQGzbty2r8bGNA/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1675014698741?e=2147483647&v=beta&t=cm5P4StkjeuqC3dqhFUyYah7f3CgpsoUxxUWgF2kJII', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Regular', 2, '2023-12-29 21:36:22', '2023-12-29 21:36:22'),
(15, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://www.versobooks.com/cdn/shop/articles/newspaper-april-1942.jpg?v=1677632599', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Regular', 2, '2023-12-29 21:36:22', '2023-12-29 21:36:22'),
(16, 'Sample News OSTAD Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://img.freepik.com/free-vector/newspaper-template-design-with-financial-articles-news-advertising-information-flat_1284-32052.jpg', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<h3>Marayan Tong, Bandarban</h3>\r\n\r\n<p>Marayan Tong is the name of a hill belonging to the Marinja Range. This hilltop in Bandarban&rsquo;s Alikadam area is extremely popular for camping among the nature lovers. From the peak as far as the eyes can travel, there are only hills covered in lush green. And in the morning, there are faraway hills covered in sheer clouds to be amazed at. It&rsquo;s an extraordinary experience to enjoy sunrise from up there. As soon as the sun rises, the whole valley gets flooded with its golden rays. And as the hour passes away, the natural beauty of the hill keeps changing constantly throughout the day.</p>\r\n\r\n<h3>Char Kukri-Mukri, Bhola</h3>\r\n\r\n<p>Though its called a char (shoal), Kukri-Mukri is an island actually. This island from Bhola&rsquo;s Char Fashion is located at the confluence of Meghna and Tentulia rivers right on the edge of the Bay of Bengal.Seeing the dense forest and the crowd of mangrove trees in Char Kukri-Mukri, you would get the feeling of being deep inside the Sundarbans.The forest and the surrounding waters easily make you forget the complexity of the urban life. And you can spend hours looking at the star-studded sky in the silence of the night.</p>\r\n\r\n<h3>Sonadia Island, Cox&rsquo;s Bazar &nbsp;</h3>\r\n\r\n<p>Cox&rsquo;s Bazar sea beach is at the top of traveler&rsquo;s list of favourite destinations. But for people who don&rsquo;t like the crowd of tourists, there is Sonadia sea beach.There&rsquo;s nothing but the sound of the sea in Moheshkhali&rsquo;s Sonadia. The night stay in tent on this beach could be one of the best moments of your life. And, if it&rsquo;s a full moon night nothing can be better than that.Then you can take a walk barefoot on the beach basking in the golden ray of the rising sun. You can also enjoy a bit of hide and seek with the red crabs on the beach during this time. And, you can spend hours without a break swaying on a hammock tied inside the grove of tamarisk (Jhau) trees.</p>\r\n\r\n<h3>Rema-Kalenga, Habiganj</h3>\r\n\r\n<p>I had read somewhere that forests should be visited at night for its environment and the beauty keeps changing with the depth of night. But, I believe if you want to feel the forest in your heart, you can just arrive in the Rema-Kalenga reserved forest with a tent. A deep silence possesses the forest at night. The orchestra of crickets in the forest keeps chirping relentlessly with full enthusiasm. But that sound gets blended seamlessly with the environment of the forest. The Rema-Kalenga reserved forest is located in Chunarughat upazila of Habiganj.</p>\r\n\r\n<h3>Monpura, Bhola</h3>\r\n\r\n<p>Monpura is the perfect destination for cycling and camping. This island upazila of Bhola is surrounded by the river Meghna on three sides and by the Bay of Bengal on the other side. Also there&rsquo;s not much hassle to reach Monpura. If you board any Betua or Hatia bound launch from Sadarghat, it will drop you off at Monpura even before the sunrise. One of the significant attractions of this island is its mangrove forest stretched for miles after miles. And the forest is surrounded by rivers on all sides. You can easily spend an amusing night setting up the tent on the banks of the river. Besides, Sakuchia sea beach, Upazila parishad&rsquo;s Pach Dighi, Chowwdhury Fisheries Project and Monpura landing station are the popular tourist sites there.</p>\r\n\r\n<h3>Nijhum Dwip, Noakhali</h3>\r\n\r\n<p>Nijhum Dwip is located inside the Bay of Bengal on the estuary of Meghna River. This island detached from the mainland of Hatia is a government-announced national park.In the past, spotted deer had been released in this park and they now roam freely there in herds. And in winter, migratory birds arrive in flocks. You can set up the tent near the beach or the forest. Even the forest department can arrange for the tents. If you contact beforehand, you can comfortably spend two nights there in rented tents.</p>\r\n\r\n<h3>Kaptai, Rangamati</h3>\r\n\r\n<p>The banks of the Karnaphuli river, the banks of the lake or the base of the high hills, no matter wherever you set up the tent in Kaptai it turns into a great camping site in a jiffy. Seeing the beauty of the lake covered in the blanket of fog through the opening of the tent takes you to land of dreams. There isn&rsquo;t the solitude of the forest or the unnecessary hostility of noise there. And that&rsquo;s why many commercial camping sites have mushroomed in Kaptai. Alongside tenting, you can go for a swim or go kayaking in the crystal-clear lake. &nbsp;</p>\r\n', 'Slider', 9, '2023-12-29 21:36:22', '2023-12-29 21:36:22'),
(19, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://www.shutterstock.com/image-vector/vintage-newspaper-old-magazine-front-260nw-1892430025.jpg', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Popular', 1, '2023-12-29 21:36:22', '2023-12-29 21:36:22'),
(20, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://www.shutterstock.com/image-photo/business-newspaper-on-wooden-background-260nw-381840133.jpg', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Popular', 1, '2023-12-29 21:36:22', '2023-12-29 21:36:22');

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` int(11) NOT NULL,
  `long_des` longtext NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `long_des`, `type`) VALUES
(1, '<h3>Marayan Tong, Bandarban</h3>  <p>Marayan Tong is the name of a hill belonging to the Marinja Range. This hilltop in Bandarban&rsquo;s Alikadam area is extremely popular for camping among the nature lovers. From the peak as far as the eyes can travel, there are only hills covered in lush green. And in the morning, there are faraway hills covered in sheer clouds to be amazed at. It&rsquo;s an extraordinary experience to enjoy sunrise from up there. As soon as the sun rises, the whole valley gets flooded with its golden rays. And as the hour passes away, the natural beauty of the hill keeps changing constantly throughout the day.</p>  <h3>Char Kukri-Mukri, Bhola</h3>  <p>Though its called a char (shoal), Kukri-Mukri is an island actually. This island from Bhola&rsquo;s Char Fashion is located at the confluence of Meghna and Tentulia rivers right on the edge of the Bay of Bengal.Seeing the dense forest and the crowd of mangrove trees in Char Kukri-Mukri, you would get the feeling of being deep inside the Sundarbans.The forest and the surrounding waters easily make you forget the complexity of the urban life. And you can spend hours looking at the star-studded sky in the silence of the night.</p>  <h3>Sonadia Island, Cox&rsquo;s Bazar &nbsp;</h3>  <p>Cox&rsquo;s Bazar sea beach is at the top of traveler&rsquo;s list of favourite destinations. But for people who don&rsquo;t like the crowd of tourists, there is Sonadia sea beach.There&rsquo;s nothing but the sound of the sea in Moheshkhali&rsquo;s Sonadia. The night stay in tent on this beach could be one of the best moments of your life. And, if it&rsquo;s a full moon night nothing can be better than that.Then you can take a walk barefoot on the beach basking in the golden ray of the rising sun. You can also enjoy a bit of hide and seek with the red crabs on the beach during this time. And, you can spend hours without a break swaying on a hammock tied inside the grove of tamarisk (Jhau) trees.</p>  <h3>Rema-Kalenga, Habiganj</h3>  <p>I had read somewhere that forests should be visited at night for its environment and the beauty keeps changing with the depth of night. But, I believe if you want to feel the forest in your heart, you can just arrive in the Rema-Kalenga reserved forest with a tent. A deep silence possesses the forest at night. The orchestra of crickets in the forest keeps chirping relentlessly with full enthusiasm. But that sound gets blended seamlessly with the environment of the forest. The Rema-Kalenga reserved forest is located in Chunarughat upazila of Habiganj.</p>  <h3>Monpura, Bhola</h3>  <p>Monpura is the perfect destination for cycling and camping. This island upazila of Bhola is surrounded by the river Meghna on three sides and by the Bay of Bengal on the other side. Also there&rsquo;s not much hassle to reach Monpura. If you board any Betua or Hatia bound launch from Sadarghat, it will drop you off at Monpura even before the sunrise. One of the significant attractions of this island is its mangrove forest stretched for miles after miles. And the forest is surrounded by rivers on all sides. You can easily spend an amusing night setting up the tent on the banks of the river. Besides, Sakuchia sea beach, Upazila parishad&rsquo;s Pach Dighi, Chowwdhury Fisheries Project and Monpura landing station are the popular tourist sites there.</p>  <h3>Nijhum Dwip, Noakhali</h3>  <p>Nijhum Dwip is located inside the Bay of Bengal on the estuary of Meghna River. This island detached from the mainland of Hatia is a government-announced national park.In the past, spotted deer had been released in this park and they now roam freely there in herds. And in winter, migratory birds arrive in flocks. You can set up the tent near the beach or the forest. Even the forest department can arrange for the tents. If you contact beforehand, you can comfortably spend two nights there in rented tents.</p>  <h3>Kaptai, Rangamati</h3>  <p>The banks of the Karnaphuli river, the banks of the lake or the base of the high hills, no matter wherever you set up the tent in Kaptai it turns into a great camping site in a jiffy. Seeing the beauty of the lake covered in the blanket of fog through the opening of the tent takes you to land of dreams. There isn&rsquo;t the solitude of the forest or the unnecessary hostility of noise there. And that&rsquo;s why many commercial camping sites have mushroomed in Kaptai. Alongside tenting, you can go for a swim or go kayaking in the crystal-clear lake. &nbsp;</p>', 'terms'),
(2, '<h3>Marayan Tong, Bandarban</h3>  <p>Marayan Tong is the name of a hill belonging to the Marinja Range. This hilltop in Bandarban&rsquo;s Alikadam area is extremely popular for camping among the nature lovers. From the peak as far as the eyes can travel, there are only hills covered in lush green. And in the morning, there are faraway hills covered in sheer clouds to be amazed at. It&rsquo;s an extraordinary experience to enjoy sunrise from up there. As soon as the sun rises, the whole valley gets flooded with its golden rays. And as the hour passes away, the natural beauty of the hill keeps changing constantly throughout the day.</p>  <h3>Char Kukri-Mukri, Bhola</h3>  <p>Though its called a char (shoal), Kukri-Mukri is an island actually. This island from Bhola&rsquo;s Char Fashion is located at the confluence of Meghna and Tentulia rivers right on the edge of the Bay of Bengal.Seeing the dense forest and the crowd of mangrove trees in Char Kukri-Mukri, you would get the feeling of being deep inside the Sundarbans.The forest and the surrounding waters easily make you forget the complexity of the urban life. And you can spend hours looking at the star-studded sky in the silence of the night.</p>  <h3>Sonadia Island, Cox&rsquo;s Bazar &nbsp;</h3>  <p>Cox&rsquo;s Bazar sea beach is at the top of traveler&rsquo;s list of favourite destinations. But for people who don&rsquo;t like the crowd of tourists, there is Sonadia sea beach.There&rsquo;s nothing but the sound of the sea in Moheshkhali&rsquo;s Sonadia. The night stay in tent on this beach could be one of the best moments of your life. And, if it&rsquo;s a full moon night nothing can be better than that.Then you can take a walk barefoot on the beach basking in the golden ray of the rising sun. You can also enjoy a bit of hide and seek with the red crabs on the beach during this time. And, you can spend hours without a break swaying on a hammock tied inside the grove of tamarisk (Jhau) trees.</p>  <h3>Rema-Kalenga, Habiganj</h3>  <p>I had read somewhere that forests should be visited at night for its environment and the beauty keeps changing with the depth of night. But, I believe if you want to feel the forest in your heart, you can just arrive in the Rema-Kalenga reserved forest with a tent. A deep silence possesses the forest at night. The orchestra of crickets in the forest keeps chirping relentlessly with full enthusiasm. But that sound gets blended seamlessly with the environment of the forest. The Rema-Kalenga reserved forest is located in Chunarughat upazila of Habiganj.</p>  <h3>Monpura, Bhola</h3>  <p>Monpura is the perfect destination for cycling and camping. This island upazila of Bhola is surrounded by the river Meghna on three sides and by the Bay of Bengal on the other side. Also there&rsquo;s not much hassle to reach Monpura. If you board any Betua or Hatia bound launch from Sadarghat, it will drop you off at Monpura even before the sunrise. One of the significant attractions of this island is its mangrove forest stretched for miles after miles. And the forest is surrounded by rivers on all sides. You can easily spend an amusing night setting up the tent on the banks of the river. Besides, Sakuchia sea beach, Upazila parishad&rsquo;s Pach Dighi, Chowwdhury Fisheries Project and Monpura landing station are the popular tourist sites there.</p>  <h3>Nijhum Dwip, Noakhali</h3>  <p>Nijhum Dwip is located inside the Bay of Bengal on the estuary of Meghna River. This island detached from the mainland of Hatia is a government-announced national park.In the past, spotted deer had been released in this park and they now roam freely there in herds. And in winter, migratory birds arrive in flocks. You can set up the tent near the beach or the forest. Even the forest department can arrange for the tents. If you contact beforehand, you can comfortably spend two nights there in rented tents.</p>  <h3>Kaptai, Rangamati</h3>  <p>The banks of the Karnaphuli river, the banks of the lake or the base of the high hills, no matter wherever you set up the tent in Kaptai it turns into a great camping site in a jiffy. Seeing the beauty of the lake covered in the blanket of fog through the opening of the tent takes you to land of dreams. There isn&rsquo;t the solitude of the forest or the unnecessary hostility of noise there. And that&rsquo;s why many commercial camping sites have mushroomed in Kaptai. Alongside tenting, you can go for a swim or go kayaking in the crystal-clear lake. &nbsp;</p>', 'privacy');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` int(11) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `youtube` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `about` text NOT NULL,
  `address` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `facebook`, `youtube`, `twitter`, `linkedin`, `about`, `address`, `createdAt`, `updatedAt`) VALUES
(1, 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2024-01-01 18:43:43', '2024-01-01 18:43:43');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `createdAt`, `updatedAt`) VALUES
(1, 'info@dip.com', '2024-01-28 07:40:48', '2024-01-28 07:40:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `mobile`, `password`, `otp`, `createdAt`, `updatedAt`) VALUES
(1, 'Dip', 'Saha', 'nayansahadip99@gmail.com', '01627834556', '12345', '0', '2025-03-21 01:13:50', '2025-08-18 23:15:12'),
(2, 'Dip', 'Saha', 'dip@yahoo.com', '01785388919', '12345', '0', '2023-12-29 15:46:27', '2024-01-28 07:54:52');

-- --------------------------------------------------------

--
-- Table structure for table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('8fb7db23-d43c-427c-bf72-b4d8d33945c4', '3aa217888cd3825c4098844a369aea2c767864d2d83cd359035540e3fa367a07', '2024-10-05 03:40:05.292', '20231127200511_news_next_database', NULL, NULL, '2024-10-05 03:40:04.961', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_key` (`name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_userID_fkey` (`userID`),
  ADD KEY `comments_postID_fkey` (`postID`);

--
-- Indexes for table `news_list`
--
ALTER TABLE `news_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_list_catID_fkey` (`catID`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_key` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_key` (`email`);

--
-- Indexes for table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `news_list`
--
ALTER TABLE `news_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_postID_fkey` FOREIGN KEY (`postID`) REFERENCES `news_list` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_userID_fkey` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `news_list`
--
ALTER TABLE `news_list`
  ADD CONSTRAINT `news_list_catID_fkey` FOREIGN KEY (`catID`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
