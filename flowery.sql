-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:4306
-- Généré le : jeu. 01 juin 2023 à 20:29
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `flowery`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `title`, `description`) VALUES
(1, 'Cactuses', ''),
(2, 'Exotic', ''),
(3, 'Greens', ''),
(4, 'Popular', ''),
(5, 'Various', ''),
(6, 'Winter', '');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`items`)),
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(255) NOT NULL,
  `total_price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `items`, `date`, `user_id`, `total_price`) VALUES
(20, '[{\"id\":1,\"name\":\"Rock Soapwort\",\"description\":\"Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla utmetus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, telluseget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante\",\"quantity\":3,\"price\":\"259\",\"image_name\":\"shop-9-img.jpg\",\"category_id\":1,\"weight\":\"1 kg\",\"dimensions\":\"30 \\u00d7 30 \\u00d7 5\",\"images\":[\"shop-9-gallery-4.jpg\",\"shop-9-gallery-3.jpg\",\"shop-9-gallery-2.jpg\",\"shop-9-gallery-1.jpg\"],\"qnt\":1}]', '2023-03-30 19:38:41', 47, 859),
(21, '[{\"id\":1,\"name\":\"Rock Soapwort\",\"description\":\"Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla utmetus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, telluseget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante\",\"quantity\":3,\"price\":\"259\",\"image_name\":\"shop-9-img.jpg\",\"category_id\":1,\"weight\":\"1 kg\",\"dimensions\":\"30 \\u00d7 30 \\u00d7 5\",\"images\":[\"shop-9-gallery-4.jpg\",\"shop-9-gallery-3.jpg\",\"shop-9-gallery-2.jpg\",\"shop-9-gallery-1.jpg\"],\"qnt\":1}]', '2023-03-30 19:38:55', 47, 859),
(22, '[{\"id\":1,\"name\":\"Rock Soapwort\",\"description\":\"Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla utmetus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, telluseget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante\",\"quantity\":3,\"price\":\"259\",\"image_name\":\"shop-9-img.jpg\",\"category_id\":1,\"weight\":\"1 kg\",\"dimensions\":\"30 \\u00d7 30 \\u00d7 5\",\"images\":[\"shop-9-gallery-4.jpg\",\"shop-9-gallery-3.jpg\",\"shop-9-gallery-2.jpg\",\"shop-9-gallery-1.jpg\"],\"qnt\":1}]', '2023-03-30 19:39:23', 47, 859),
(23, '[{\"id\":5,\"name\":\"Wild Roses\",\"description\":\"Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\",\"quantity\":200,\"price\":\"259\",\"image_name\":\"shop-7-img.jpg\",\"category_id\":2,\"weight\":\"0\",\"dimensions\":null,\"images\":[\"shop-7-gallery-1.jpg\",\"shop-7-gallery-4.jpg\",\"shop-7-gallery-3.jpg\",\"shop-7-gallery-2.jpg\",\"shop-7-gallery-2.jpg\"],\"qnt\":1},{\"id\":7,\"name\":\"Orange Amaryllis\",\"description\":\"Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\",\"quantity\":200,\"price\":\"259\",\"image_name\":\"shop-2-img.jpg\",\"category_id\":2,\"weight\":\"0\",\"dimensions\":null,\"images\":null,\"qnt\":1},{\"id\":26,\"name\":\"Wild Roses\",\"description\":\"Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\",\"quantity\":200,\"price\":\"259\",\"image_name\":\"shop-7-img.jpg\",\"category_id\":2,\"weight\":\"0\",\"dimensions\":null,\"images\":null,\"qnt\":1}]', '2023-03-30 19:42:09', 47, 1377),
(24, '[{\"id\":5,\"name\":\"Wild Roses\",\"description\":\"Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\",\"quantity\":200,\"price\":\"259\",\"image_name\":\"shop-7-img.jpg\",\"category_id\":2,\"weight\":\"0\",\"dimensions\":null,\"images\":[\"shop-7-gallery-1.jpg\",\"shop-7-gallery-4.jpg\",\"shop-7-gallery-3.jpg\",\"shop-7-gallery-2.jpg\",\"shop-7-gallery-2.jpg\"],\"qnt\":1},{\"id\":14,\"name\":\"Spring Snowflake\",\"description\":\"Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\",\"quantity\":200,\"price\":\"170\",\"image_name\":\"shop-11-img.jpg\",\"category_id\":4,\"weight\":\"1 kg\",\"dimensions\":\"30 \\u00d7 30 \\u00d75\",\"images\":[\"shop-11-gallery-4.jpg\",\"shop-11-gallery-3.jpg\",\"shop-11-gallery-2.jpg\",\"shop-11-gallery-1.jpg\"],\"qnt\":4}]', '2023-03-30 21:40:00', 47, 1539),
(25, '[{\"id\":1,\"name\":\"Rock Soapwort\",\"description\":\"Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla utmetus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, telluseget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante\",\"quantity\":3,\"price\":\"259\",\"image_name\":\"shop-9-img.jpg\",\"category_id\":1,\"weight\":\"1 kg\",\"dimensions\":\"30 \\u00d7 30 \\u00d7 5\",\"images\":[\"shop-9-gallery-4.jpg\",\"shop-9-gallery-3.jpg\",\"shop-9-gallery-2.jpg\",\"shop-9-gallery-1.jpg\"],\"qnt\":1}]', '2023-04-06 10:28:43', 45, 859),
(26, '[{\"id\":1,\"name\":\"Rock Soapwort\",\"description\":\"Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla utmetus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, telluseget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante\",\"quantity\":3,\"price\":\"259\",\"image_name\":\"shop-9-img.jpg\",\"category_id\":1,\"weight\":\"1 kg\",\"dimensions\":\"30 \\u00d7 30 \\u00d7 5\",\"images\":[\"shop-9-gallery-4.jpg\",\"shop-9-gallery-3.jpg\",\"shop-9-gallery-2.jpg\",\"shop-9-gallery-1.jpg\"],\"owner_id\":46,\"qnt\":1}]', '2023-05-12 16:36:37', 45, 859),
(27, '[{\"id\":1,\"name\":\"Rock Soapwort\",\"description\":\"Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla utmetus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, telluseget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante\",\"quantity\":3,\"price\":\"259\",\"image_name\":\"shop-9-img.jpg\",\"category_id\":1,\"weight\":\"1 kg\",\"dimensions\":\"30 \\u00d7 30 \\u00d7 5\",\"images\":[\"shop-9-gallery-4.jpg\",\"shop-9-gallery-3.jpg\",\"shop-9-gallery-2.jpg\",\"shop-9-gallery-1.jpg\"],\"owner_id\":46,\"qnt\":1}]', '2023-05-12 18:18:41', 45, 859),
(28, '[{\"id\":1,\"name\":\"Rock Soapwort\",\"description\":\"Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla utmetus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, telluseget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante\",\"quantity\":3,\"price\":\"259\",\"image_name\":\"shop-9-img.jpg\",\"category_id\":1,\"weight\":\"1 kg\",\"dimensions\":\"30 \\u00d7 30 \\u00d7 5\",\"images\":[\"shop-9-gallery-4.jpg\",\"shop-9-gallery-3.jpg\",\"shop-9-gallery-2.jpg\",\"shop-9-gallery-1.jpg\"],\"owner_id\":46,\"qnt\":1}]', '2023-05-12 18:21:30', 45, 859),
(29, '[{\"id\":1,\"name\":\"Rock Soapwort\",\"description\":\"Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla utmetus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, telluseget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante\",\"quantity\":3,\"price\":\"259\",\"image_name\":\"shop-9-img.jpg\",\"category_id\":1,\"weight\":\"1 kg\",\"dimensions\":\"30 \\u00d7 30 \\u00d7 5\",\"images\":[\"shop-9-gallery-4.jpg\",\"shop-9-gallery-3.jpg\",\"shop-9-gallery-2.jpg\",\"shop-9-gallery-1.jpg\"],\"owner_id\":46,\"qnt\":1}]', '2023-05-12 18:22:51', 45, 859),
(30, '[{\"id\":1,\"name\":\"Rock Soapwort\",\"description\":\"Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla utmetus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, telluseget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante\",\"quantity\":3,\"price\":\"259\",\"image_name\":\"shop-9-img.jpg\",\"category_id\":1,\"weight\":\"1 kg\",\"dimensions\":\"30 \\u00d7 30 \\u00d7 5\",\"images\":[\"shop-9-gallery-4.jpg\",\"shop-9-gallery-3.jpg\",\"shop-9-gallery-2.jpg\",\"shop-9-gallery-1.jpg\"],\"owner_id\":46,\"qnt\":1}]', '2023-05-12 18:25:28', 45, 859);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `image_name` varchar(256) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `weight` varchar(11) NOT NULL,
  `dimensions` varchar(20) NOT NULL,
  `images` varchar(256) DEFAULT NULL,
  `owner_id` int(11) NOT NULL,
  `video_name` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `quantity`, `price`, `image_name`, `category_id`, `weight`, `dimensions`, `images`, `owner_id`, `video_name`) VALUES
(1, 'Rock Soapwort llllll', 'Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla utmetus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, telluseget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante', 3, 259, 'jUluLH62w1RvVh0MHpsx6j7J5a39N9AWTgoHNWVA.jpg', 1, '1 Kg', '30 × 30 × 5', '[\"shop-9-gallery-4.jpg\",\"shop-9-gallery-3.jpg\",\"shop-9-gallery-2.jpg\",\"shop-9-gallery-1.jpg\"]\r\n', 50, '4FMIQfCeMornhfsTysGgQksencg8jGAcWbhoQDuV.mp4'),
(3, 'Wild Cactus\r\n', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\r\n\r\n', 200, 159, 'shop-5-img.jpg', 1, '1 kg', ' 30 × 30 × 5', '', 50, NULL),
(4, 'Cactus In Orange\r\n', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\r\n\r\n', 200, 259, 'shop-3-img.jpg', 1, '1 kg', ' 30 × 30 × 5', '[\"shop-3-gallery-1.jpg\",\"shop-3-gallery-4.jpg\",\"shop-3-gallery-3.jpg\"]\r\n', 50, NULL),
(5, 'Wild Roses', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.', 200, 259, 'NfIXQHxhgEnqOQtH9e8Px85OCV9mw85rzUFQGxPD.jpg', 2, '0', '30 × 30 × 5', '[\"shop-7-gallery-1.jpg\",\"shop-7-gallery-4.jpg\",\"shop-7-gallery-3.jpg\",\"shop-7-gallery-2.jpg\",\"shop-7-gallery-2.jpg\"]\r\n', 50, NULL),
(6, 'Colorful Tulips\r\n', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\r\n\r\n', 200, 350, 'shop-6-img.jpg', 2, '0', '', '', 50, NULL),
(7, 'Orange Amaryllis', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.', 200, 259, 'kIXWuQRE3up7P01IvZpCEWkDsCK9IshMi9jSKoji.jpg', 2, '0', '30 × 30 × 5', '', 50, NULL),
(8, 'Summer Savory\r\n', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\r\n\r\n', 200, 259, 'shop-8-img.jpg', 3, '1 kg', '30 × 30 × 5', '[\"shop-8-gallery-4\",\"shop-8-gallery-3\",\"shop-8-gallery-2\",\"shop-8-gallery-1\"]\r\n', 0, NULL),
(9, 'Pink Flower Tree\r\n', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\r\n\r\n', 200, 350, 'shop-4-img.jpg', 3, '0', '', '', 50, NULL),
(10, 'Schefflera', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\r\n\r\n', 200, 259, 'shop-1-img.jpg', 3, '0', '', '', 50, NULL),
(11, 'Majesty Palm\r\n', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\r\n\r\n', 200, 259, 'shop-14-img.jpg', 4, '1 kg', '30 × 30 ×5', '[\"shop-14-gallery-4.jpg\",\"shop-14-gallery-3.jpg\",\"shop-14-gallery-2.jpg\",\"shop-14-gallery-1.jpg\"]', 50, NULL),
(12, 'Foxglove Flower\r\n', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\r\n\r\n', 200, 259, 'shop-13-img.jpg', 4, '1 kg', '30 × 30 ×5', '[\"shop-13-gallery-4.jpg\",\"shop-13-gallery-3.jpg\",\"shop-13-gallery-2.jpg\",\"shop-13-gallery-1.jpg\"]', 50, NULL),
(13, 'Sweet Alyssum\r\n', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\r\n\r\n', 200, 259, 'shop-10-img.jpg', 4, '1 kg', '30 × 30 ×5', '[\"shop-10-gallery-4.jpg\",\"shop-10-gallery-3.jpg\",\"shop-10-gallery-2.jpg\",\"shop-10-gallery-1.jpg\"]', 46, NULL),
(14, 'Spring Snowflake\r\n', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\r\n\r\n', 200, 170, 'shop-11-img.jpg', 4, '1 kg', '30 × 30 ×5', '[\"shop-11-gallery-4.jpg\",\"shop-11-gallery-3.jpg\",\"shop-11-gallery-2.jpg\",\"shop-11-gallery-1.jpg\"]\r\n', 46, NULL),
(15, 'Scarlet Sage\r\n', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\r\n\r\n', 200, 159, 'shop-12-img.jpg', 4, '1 kg', '30 × 30 ×5', '[\"shop-12-gallery-2.jpg\",\"shop-12-gallery-1.jpg\",\"shop-12-gallery-4.jpg\",\"shop-12-gallery-3.jpg\"]\r\n', 46, NULL),
(16, 'Rock Soapwort\r\n', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\r\n\r\n', 200, 259, 'shop-9-img.jpg', 5, '0', '', '', 46, NULL),
(17, 'Summer Savory\r\n', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\r\n\r\n', 200, 259, 'shop-8-img.jpg', 5, '0', '', '', 46, NULL),
(18, 'Wild Roses\r\n', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\r\n\r\n', 200, 259, 'shop-7-img.jpg', 5, '0', '', '', 46, NULL),
(19, 'Colorful Tulips\r\n', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\r\n\r\n', 200, 350, 'shop-6-img.jpg', 5, '0', '', '', 46, NULL),
(20, 'Wild Cactus\r\n', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\r\n\r\n', 200, 159, 'shop-5-img.jpg', 5, '0', '', '', 46, NULL),
(21, 'Pink Flower Tree\r\n', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\r\n\r\n', 200, 180, 'shop-4-img.jpg', 5, '0', '', '', 46, NULL),
(22, '', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\r\n\r\n', 200, 259, 'shop-3-img.jpg', 5, '0', '', '', 0, NULL),
(23, 'Majesty Palm\r\n', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\r\n\r\n', 200, 259, 'shop-14-img.jpg', 6, '0', '', '', 0, NULL),
(24, 'Foxglove Flower\r\n', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\r\n\r\n', 200, 259, 'shop-13-img.jpg', 6, '0', '', '', 0, NULL),
(25, 'Sweet Alyssum\r\n', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\r\n\r\n', 200, 259, 'shop-10-img.jpg', 6, '0', '', '', 0, NULL),
(26, 'Wild Roses\r\n', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\r\n\r\n', 200, 259, 'shop-7-img.jpg', 2, '0', '', '', 0, NULL),
(27, 'Orange Amaryllis\r\n', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\r\n\r\n', 200, 259, 'shop-2-img.jpg', 2, '0', '', '', 0, NULL),
(28, 'Pink Flower Tree\r\n', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.\r\n\r\n', 200, 350, 'shop-4-img.jpg', 3, '0', '', '', 0, NULL),
(36, 'scs', 'cssc', 12, 1222, 'RqXt35gpwlrBXAzNaiSpgbZrQDEBmcr6iXgbsNZy.jpg', 2, '1 kg', '30 × 30 × 5', NULL, 48, 't0acSuZzvTJtbDZ8ECfW0zMHSVcbxeXa2ROPYtst.mp4');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(255) UNSIGNED NOT NULL,
  `name` varchar(256) NOT NULL,
  `family_name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone_number` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `type` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `family_name`, `email`, `phone_number`, `address`, `password`, `type`) VALUES
(45, 'Ferdaous', 'Benrouba', 'benrouba@gmail.com', '+213699256432', 'Allée, Voie de Paris 195 Rousseau Delesseux', '$2y$10$/cfcWHbBhHqk.aTckladmOveSM4qCun9VPY..aeaL3XUrESmgIZum', 'client'),
(46, 'Ferdaous', 'Benrouba', 'benrouba.ferdaous@gmail.com', '+213699256432', 'Allée, Voie de Paris 195 Rousseau Delesseux', '$2y$10$hlhhDBc9graL8gTSZgm/qev88SjDqXCZp5tsUmNoPO04qDC15kZa2', 'store_owner'),
(47, 'Ferdaous', 'BENROUBA', 'benrouba@yahoo.com', '+213699256432', 'Allée, Voie de Paris 195 Rousseau Delesseux', '$2y$10$bOHXEjoFZcLixrbbWceg0.HIkjrFBkBOpcDR0yhRbVLEEVhzS99wy', 'client'),
(48, 'Ferdaous', 'Benrouba', 'benrouba_ferdaous@gmail.com', '+213699256432', 'Allée, Voie de Paris 195 Rousseau Delesseux', '$2y$10$M7ZoxFZqfdmJIMtd0GVlxuuFyKI65YLyDaKyixWA8ySs/sRkpXwWa', 'store_owner'),
(49, 'Amir', 'mesken', 'amir@gmail.com', '+213699256432', 'Allée, Voie de Paris 195 Rousseau Delesseux', '$2y$10$X8terpe.xxnxMhWIvbuJG.sBsvc2yPN/XEGTdqLee/tRhUWZF6Jk6', 'store_owner'),
(50, 'labiod', 'yassine', 'yassine@gmail.com', '+213699256432', 'Allée, Voie de Paris 195 Rousseau Delesseux', '$2y$10$NVyLtuc6oqxtE0DG9lwSVu2GeJyjL4qYtUVtdM6gUnsQ4KA3LuXlu', 'store_owner');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
