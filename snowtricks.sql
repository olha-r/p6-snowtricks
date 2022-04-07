-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : jeu. 07 avr. 2022 à 14:05
-- Version du serveur :  5.7.32
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `snowtricks`
--
CREATE DATABASE IF NOT EXISTS `snowtricks` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `snowtricks`;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(29, 'Grabs'),
(30, 'Rotations'),
(31, 'Flips'),
(32, 'Rotations désaxées'),
(33, 'Slides'),
(34, 'One foot'),
(35, 'Old school');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `trick_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `content`, `created_at`, `trick_id`, `user_id`) VALUES
(329, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 137, 64),
(330, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 135, 62),
(331, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 125, 56),
(332, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 121, 61),
(333, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 132, 57),
(334, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 121, 54),
(335, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 127, 55),
(336, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 137, 58),
(337, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 127, 58),
(338, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 134, 62),
(339, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 131, 64),
(340, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 131, 64),
(341, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 124, 57),
(342, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 134, 59),
(343, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 123, 59),
(344, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 127, 57),
(345, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 128, 63),
(346, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 131, 58),
(347, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 131, 56),
(348, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 131, 59),
(349, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 131, 64),
(350, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 133, 57),
(351, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 135, 56),
(352, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 122, 53),
(353, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 121, 53),
(354, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 121, 59),
(355, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 127, 57),
(356, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 124, 58),
(357, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 135, 59),
(358, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 130, 62),
(359, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 127, 61),
(360, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 128, 60),
(361, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 131, 62),
(362, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 131, 56),
(363, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 125, 62),
(364, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 131, 62),
(365, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 130, 55),
(366, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 121, 62),
(367, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 134, 57),
(368, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 126, 57),
(369, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 129, 53),
(370, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 137, 57),
(371, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 132, 60),
(372, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 121, 62),
(373, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 125, 61),
(374, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 137, 55),
(375, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 136, 63),
(376, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 126, 58),
(377, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 129, 64),
(378, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 137, 55),
(379, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 129, 53),
(380, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 137, 61),
(381, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 133, 61),
(382, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 124, 64),
(383, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 124, 55),
(384, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 131, 62),
(385, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 127, 53),
(386, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 136, 63),
(387, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 135, 53),
(388, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 128, 60),
(389, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 135, 59),
(390, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 132, 56),
(391, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 129, 56),
(392, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 131, 53),
(393, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 136, 58),
(394, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 127, 59),
(395, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 123, 62),
(396, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 137, 54),
(397, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 128, 62),
(398, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 130, 55),
(399, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 122, 54),
(400, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 132, 59),
(401, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 121, 61),
(402, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 122, 55),
(403, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 131, 59),
(404, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 130, 63),
(405, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 135, 59),
(406, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 130, 56),
(407, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 121, 62),
(408, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 125, 57),
(409, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 130, 61),
(410, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 125, 54),
(411, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 125, 62),
(412, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 133, 54),
(413, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 133, 63),
(414, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 127, 60),
(415, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 129, 61),
(416, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 131, 56),
(417, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 128, 58),
(418, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 125, 61),
(419, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 133, 61),
(420, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 121, 57),
(421, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 134, 59),
(422, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 131, 58),
(423, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 124, 60),
(424, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 135, 59),
(425, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 125, 54),
(426, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 133, 55),
(427, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 124, 59),
(428, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.\n                                                      </p>', '2022-03-31 08:51:52', 123, 58),
(430, 'Super!', '2022-04-07 13:19:39', 121, 79);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20211220182139', '2021-12-20 18:21:54', 53),
('DoctrineMigrations\\Version20211220183543', '2021-12-20 18:35:48', 82),
('DoctrineMigrations\\Version20211220211229', '2021-12-20 21:12:42', 151),
('DoctrineMigrations\\Version20211220211511', '2021-12-20 21:15:19', 143),
('DoctrineMigrations\\Version20211220233917', '2021-12-21 10:08:20', 76);

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `trick_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `media`
--

INSERT INTO `media` (`id`, `trick_id`, `name`) VALUES
(442, 122, 'snowboarding1.jpeg'),
(443, 129, 'snowboarding13.jpeg'),
(444, 137, 'snowboarding7.jpeg'),
(445, 124, 'snowboarding1.jpeg'),
(446, 133, 'snowboarding11.jpeg'),
(447, 126, 'snowboarding8.jpeg'),
(448, 122, 'snowboarding10.jpeg'),
(449, 137, 'snowboarding8.jpeg'),
(450, 132, 'snowboarding9.jpeg'),
(451, 132, 'snowboarding8.jpeg'),
(452, 129, 'snowboarding4.jpeg'),
(453, 131, 'snowboarding9.jpeg'),
(454, 137, 'snowboarding14.jpeg'),
(455, 136, 'snowboarding2.jpeg'),
(456, 125, 'snowboarding12.jpeg'),
(457, 133, 'snowboarding7.jpeg'),
(458, 134, 'snowboarding7.jpeg'),
(459, 130, 'snowboarding1.jpeg'),
(460, 132, 'snowboarding11.jpeg'),
(462, 125, 'snowboarding14.jpeg'),
(463, 132, 'snowboarding9.jpeg'),
(464, 137, 'snowboarding14.jpeg'),
(465, 124, 'snowboarding9.jpeg'),
(466, 124, 'snowboarding8.jpeg'),
(467, 128, 'snowboarding5.jpeg'),
(468, 122, 'snowboarding1.jpeg'),
(469, 124, 'snowboarding5.jpeg'),
(470, 123, 'snowboarding11.jpeg'),
(471, 133, 'snowboarding3.jpeg'),
(472, 129, 'snowboarding11.jpeg'),
(473, 131, 'snowboarding10.jpeg'),
(474, 128, 'snowboarding10.jpeg'),
(475, 125, 'snowboarding8.jpeg'),
(476, 129, 'snowboarding6.jpeg'),
(477, 122, 'snowboarding7.jpeg'),
(478, 130, 'snowboarding1.jpeg'),
(479, 134, 'snowboarding1.jpeg'),
(480, 131, 'snowboarding8.jpeg'),
(481, 130, 'snowboarding7.jpeg'),
(482, 137, 'snowboarding7.jpeg'),
(483, 127, 'snowboarding6.jpeg'),
(484, 121, 'snowboarding7.jpeg'),
(485, 135, 'snowboarding14.jpeg'),
(486, 128, 'snowboarding10.jpeg'),
(487, 126, 'snowboarding5.jpeg'),
(488, 137, 'snowboarding8.jpeg'),
(489, 134, 'snowboarding14.jpeg'),
(490, 137, 'snowboarding8.jpeg'),
(491, 130, 'snowboarding12.jpeg'),
(492, 121, 'snowboarding12.jpeg'),
(493, 124, 'snowboarding9.jpeg'),
(494, 132, 'snowboarding12.jpeg'),
(495, 129, 'snowboarding7.jpeg'),
(496, 133, 'snowboarding8.jpeg'),
(497, 126, 'snowboarding11.jpeg'),
(498, 130, 'snowboarding11.jpeg'),
(499, 125, 'snowboarding4.jpeg'),
(500, 127, 'snowboarding13.jpeg'),
(501, 137, 'snowboarding8.jpeg'),
(502, 137, 'snowboarding11.jpeg'),
(503, 136, 'snowboarding9.jpeg'),
(504, 137, 'snowboarding10.jpeg'),
(505, 122, 'snowboarding7.jpeg'),
(506, 126, 'snowboarding1.jpeg'),
(507, 133, 'snowboarding6.jpeg'),
(508, 135, 'snowboarding3.jpeg'),
(509, 137, 'snowboarding5.jpeg'),
(510, 135, 'snowboarding13.jpeg'),
(511, 135, 'snowboarding11.jpeg'),
(512, 135, 'snowboarding7.jpeg'),
(513, 125, 'snowboarding1.jpeg'),
(514, 126, 'snowboarding10.jpeg'),
(515, 124, 'snowboarding9.jpeg'),
(516, 127, 'snowboarding10.jpeg'),
(517, 122, 'snowboarding1.jpeg'),
(518, 131, 'snowboarding4.jpeg'),
(519, 124, 'snowboarding11.jpeg'),
(520, 125, 'snowboarding12.jpeg'),
(521, 126, 'snowboarding12.jpeg'),
(522, 124, 'snowboarding9.jpeg'),
(523, 130, 'snowboarding6.jpeg'),
(524, 129, 'snowboarding10.jpeg'),
(525, 123, 'snowboarding13.jpeg'),
(526, 130, 'snowboarding7.jpeg'),
(527, 133, 'snowboarding12.jpeg'),
(528, 123, 'snowboarding13.jpeg'),
(529, 131, 'snowboarding11.jpeg'),
(530, 133, 'snowboarding6.jpeg'),
(531, 128, 'snowboarding12.jpeg'),
(533, 130, 'snowboarding12.jpeg'),
(534, 135, 'snowboarding13.jpeg'),
(535, 126, 'snowboarding6.jpeg'),
(536, 136, 'snowboarding12.jpeg'),
(537, 137, 'snowboarding6.jpeg'),
(538, 128, 'snowboarding14.jpeg'),
(539, 132, 'snowboarding6.jpeg'),
(540, 124, 'snowboarding4.jpeg'),
(541, 134, 'snowboarding13.jpeg'),
(542, NULL, 'snowboard-62461808ef472.jpg'),
(543, NULL, 'snow-62461808f2171.jpg'),
(544, NULL, 'snowbo-624619df7a852.jpg'),
(545, NULL, 'snow-624619f6c144a.jpg'),
(546, NULL, 'snowbo-62461a09e50f5.jpg'),
(547, NULL, 'snowbo-62461a2e469f6.jpg'),
(548, NULL, 'admin-62461a39ad706.png'),
(549, NULL, 'snowbo-62461a4a22fd4.jpg'),
(550, NULL, 'admin-62461a4fcc9ec.png'),
(551, NULL, 'snowbo-62461abd06fd2.jpg'),
(552, NULL, 'snow-62461ecbcf673.jpg'),
(553, NULL, 'snow-6246277a10f62.jpg'),
(554, NULL, 'snowbo-6246277a1c8a4.jpg'),
(555, NULL, 'snow-624628054b72d.jpg'),
(556, NULL, 'snowbo-624628054de61.jpg'),
(557, NULL, 'snow-624628266aa01.jpg'),
(558, NULL, 'snowbo-624628266c334.jpg'),
(559, NULL, 'snowbo-6246284f56728.jpg'),
(560, NULL, 'snow-62462869ed234.jpg'),
(561, NULL, 'snowbo-62462869ee2e4.jpg'),
(562, NULL, 'admin-62462869ee949.png'),
(563, NULL, 'snow-62462870626c0.jpg'),
(564, NULL, 'snowbo-6246287063639.jpg'),
(565, NULL, 'admin-6246287063e9a.png'),
(566, NULL, 'snowboard-624629ce4db5d.jpg'),
(567, NULL, 'snow-624629ce4fc10.jpg'),
(568, NULL, 'snowbo-624629ce502b4.jpg'),
(569, NULL, 'snowboard-624714ada2a6b.jpg'),
(570, NULL, 'snow-624714adb9202.jpg'),
(571, NULL, 'snowbo-624714adb9ee5.jpg'),
(572, NULL, 'snowboard-62472301ce909.jpg'),
(573, NULL, 'snow-62472301e3eed.jpg'),
(574, NULL, 'snowbo-62472301e58bc.jpg'),
(575, NULL, 'snowboard-624723d46d3f5.jpg'),
(576, NULL, 'snow-624723d47686e.jpg'),
(577, NULL, 'snowboard-624723eb6588a.jpg'),
(578, NULL, 'snow-624723eb69dbe.jpg'),
(579, NULL, 'snowboard-62472710ea4d8.jpg'),
(580, NULL, 'snow-62472710f37d5.jpg'),
(581, NULL, 'snowbo-6247271103538.jpg'),
(582, NULL, 'snowboard-6247277bcb2d4.jpg'),
(583, NULL, 'snow-6247277bce4a0.jpg'),
(584, NULL, 'snowbo-6247277bd2f1a.jpg'),
(585, NULL, 'snowboard-624727cc651b4.jpg'),
(586, NULL, 'snow-624727cc66e7f.jpg'),
(587, NULL, 'snowbo-624727cc67807.jpg'),
(588, NULL, 'snowboard-6247288949e76.jpg'),
(589, NULL, 'snow-6247288953d3b.jpg'),
(590, NULL, 'snowbo-624728895a59d.jpg'),
(591, NULL, 'snowboard-624728c85fba0.jpg'),
(592, NULL, 'snow-624728c866ed4.jpg'),
(593, NULL, 'snowbo-624728c868757.jpg'),
(594, NULL, 'snowboard-624762b63124d.jpg'),
(595, NULL, 'snow-624762b634591.jpg'),
(596, NULL, 'snowbo-624762b634d13.jpg'),
(597, NULL, 'snowboard-624762eae228c.jpg'),
(598, NULL, 'snow-624762eae3f3e.jpg'),
(599, NULL, 'snowboard-6247693990a05.jpg'),
(600, NULL, 'snow-62476939928eb.jpg'),
(601, NULL, 'snowbo-6247693993685.jpg'),
(612, NULL, 'snowboard-624775574ac2c.jpg'),
(613, NULL, 'snow-624775574d31e.jpg'),
(614, NULL, 'snowbo-624775574ddd9.jpg'),
(615, NULL, 'snowboard-624c2c42a83d3.jpg'),
(616, NULL, 'snow-624c2c42b2a7b.jpg'),
(617, NULL, 'snowbo-624c2c42b384a.jpg'),
(619, NULL, 'snowboard-624ea7422c7d5.jpg'),
(620, NULL, 'snow-624ea752119ac.jpg'),
(621, NULL, 'snowboard-624ecb7b36a75.jpg'),
(622, NULL, 'snowbo-624ed383c04fb.jpg'),
(623, 121, 'snowbo-624ed38c1832a.jpg'),
(624, NULL, 'snowboard-624ee4665c747.jpg'),
(625, NULL, 'snow-624ee4666082a.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `reset_password_request`
--

CREATE TABLE `reset_password_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reset_password_request`
--

INSERT INTO `reset_password_request` (`id`, `user_id`, `selector`, `hashed_token`, `requested_at`, `expires_at`) VALUES
(1, 79, 'xpN8298gafcpkGMuDlTv', 'BbtdRbC0iojTeIksaS6bUqrnWUKDBbM+mmGy43Y2r8U=', '2022-04-07 13:23:57', '2022-04-07 14:23:57');

-- --------------------------------------------------------

--
-- Structure de la table `trick`
--

CREATE TABLE `trick` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `trick`
--

INSERT INTO `trick` (`id`, `name`, `description`, `created_at`, `updated_at`, `category_id`, `user_id`, `slug`) VALUES
(121, 'Mute', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dapibus magna sed mauris blandit varius. Fusce enim ex, dignissim et eros a, maximus eleifend sapien. Aliquam imperdiet sem a auctor finibus. Fusce id molestie risus, eu facilisis felis. Mauris at massa a justo mattis ultrices. Vivamus varius nec elit at efficitur. In hac habitasse platea dictumst. Etiam semper consectetur tellus, convallis feugiat elit placerat at. Curabitur nec auctor nisl, et congue ligula. Aenean molestie, lacus nec ultricies ornare, neque neque vulputate justo, euismod pulvinar elit elit vitae turpis. Pellentesque porta ipsum in sapien malesuada, eget tincidunt velit convallis. Vivamus at purus in eros faucibus vulputate eu quis est.\r\n\r\nEtiam tempor fringilla fringilla. Donec in risus nec risus gravida consectetur sit amet bibendum massa. Nulla neque augue, aliquet non elit nec, faucibus elementum ex. Phasellus id mi id dui rutrum laoreet vitae eu ipsum. Vivamus in condimentum lectus. Maecenas ultrices nibh sed accumsan dictum. Nam pellentesque elementum feugiat. Praesent et sagittis lorem, et aliquam leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nSuspendisse et bibendum augue. Maecenas mauris purus, placerat in gravida nec, ornare id tellus. Donec vestibulum vel sapien ut porttitor. Nunc sit amet lacus ut leo consequat hendrerit. Quisque ullamcorper sapien tortor, ut dapibus nulla vehicula quis. Praesent sed sollicitudin ligula. Praesent lacinia dolor dapibus, semper tortor in, dapibus quam. Vivamus tempus eu turpis quis fringilla. Integer semper efficitur eleifend. Nullam eleifend at ex sit amet efficitur. Ut hendrerit et massa sed mattis. Nam id tempor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in metus urna. Nulla a lectus a enim maximus sagittis. Suspendisse tempor justo nec tortor ultricies, eu rhoncus dolor elementum.\r\n\r\nMorbi leo sapien, mollis vel ultrices sed, condimentum quis diam. Mauris quis ullamcorper risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet odio in augue aliquet, et rhoncus mauris lacinia. Fusce rhoncus accumsan ante sed malesuada. In ultricies cursus sem, nec ornare dolor vestibulum rutrum. Suspendisse potenti. Nullam gravida, libero at semper tincidunt, eros enim maximus magna, eleifend posuere lectus nibh ut arcu. Vivamus tempor cursus ex vitae finibus. Cras accumsan magna a porttitor tempus. Fusce eleifend tempor lectus quis ullamcorper. Phasellus eget consectetur dolor, at luctus augue. Nullam nibh neque, cursus at gravida eget, accumsan eu risus. Integer gravida sodales mauris ut fermentum.', '2022-03-31 08:51:52', '2022-04-07 12:05:34', 30, 53, 'Mute'),
(122, 'sad ou melancholie ou style week', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dapibus magna sed mauris blandit varius. Fusce enim ex, dignissim et eros a, maximus eleifend sapien. Aliquam imperdiet sem a auctor finibus. Fusce id molestie risus, eu facilisis felis. Mauris at massa a justo mattis ultrices. Vivamus varius nec elit at efficitur. In hac habitasse platea dictumst. Etiam semper consectetur tellus, convallis feugiat elit placerat at. Curabitur nec auctor nisl, et congue ligula. Aenean molestie, lacus nec ultricies ornare, neque neque vulputate justo, euismod pulvinar elit elit vitae turpis. Pellentesque porta ipsum in sapien malesuada, eget tincidunt velit convallis. Vivamus at purus in eros faucibus vulputate eu quis est.\n\nEtiam tempor fringilla fringilla. Donec in risus nec risus gravida consectetur sit amet bibendum massa. Nulla neque augue, aliquet non elit nec, faucibus elementum ex. Phasellus id mi id dui rutrum laoreet vitae eu ipsum. Vivamus in condimentum lectus. Maecenas ultrices nibh sed accumsan dictum. Nam pellentesque elementum feugiat. Praesent et sagittis lorem, et aliquam leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\n\nSuspendisse et bibendum augue. Maecenas mauris purus, placerat in gravida nec, ornare id tellus. Donec vestibulum vel sapien ut porttitor. Nunc sit amet lacus ut leo consequat hendrerit. Quisque ullamcorper sapien tortor, ut dapibus nulla vehicula quis. Praesent sed sollicitudin ligula. Praesent lacinia dolor dapibus, semper tortor in, dapibus quam. Vivamus tempus eu turpis quis fringilla. Integer semper efficitur eleifend. Nullam eleifend at ex sit amet efficitur. Ut hendrerit et massa sed mattis. Nam id tempor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in metus urna. Nulla a lectus a enim maximus sagittis. Suspendisse tempor justo nec tortor ultricies, eu rhoncus dolor elementum.\n\nMorbi leo sapien, mollis vel ultrices sed, condimentum quis diam. Mauris quis ullamcorper risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet odio in augue aliquet, et rhoncus mauris lacinia. Fusce rhoncus accumsan ante sed malesuada. In ultricies cursus sem, nec ornare dolor vestibulum rutrum. Suspendisse potenti. Nullam gravida, libero at semper tincidunt, eros enim maximus magna, eleifend posuere lectus nibh ut arcu. Vivamus tempor cursus ex vitae finibus. Cras accumsan magna a porttitor tempus. Fusce eleifend tempor lectus quis ullamcorper. Phasellus eget consectetur dolor, at luctus augue. Nullam nibh neque, cursus at gravida eget, accumsan eu risus. Integer gravida sodales mauris ut fermentum.', '2022-03-31 08:51:52', NULL, 30, 55, 'sad-ou-melancholie-ou-style-week'),
(123, 'indy ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dapibus magna sed mauris blandit varius. Fusce enim ex, dignissim et eros a, maximus eleifend sapien. Aliquam imperdiet sem a auctor finibus. Fusce id molestie risus, eu facilisis felis. Mauris at massa a justo mattis ultrices. Vivamus varius nec elit at efficitur. In hac habitasse platea dictumst. Etiam semper consectetur tellus, convallis feugiat elit placerat at. Curabitur nec auctor nisl, et congue ligula. Aenean molestie, lacus nec ultricies ornare, neque neque vulputate justo, euismod pulvinar elit elit vitae turpis. Pellentesque porta ipsum in sapien malesuada, eget tincidunt velit convallis. Vivamus at purus in eros faucibus vulputate eu quis est.\n\nEtiam tempor fringilla fringilla. Donec in risus nec risus gravida consectetur sit amet bibendum massa. Nulla neque augue, aliquet non elit nec, faucibus elementum ex. Phasellus id mi id dui rutrum laoreet vitae eu ipsum. Vivamus in condimentum lectus. Maecenas ultrices nibh sed accumsan dictum. Nam pellentesque elementum feugiat. Praesent et sagittis lorem, et aliquam leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\n\nSuspendisse et bibendum augue. Maecenas mauris purus, placerat in gravida nec, ornare id tellus. Donec vestibulum vel sapien ut porttitor. Nunc sit amet lacus ut leo consequat hendrerit. Quisque ullamcorper sapien tortor, ut dapibus nulla vehicula quis. Praesent sed sollicitudin ligula. Praesent lacinia dolor dapibus, semper tortor in, dapibus quam. Vivamus tempus eu turpis quis fringilla. Integer semper efficitur eleifend. Nullam eleifend at ex sit amet efficitur. Ut hendrerit et massa sed mattis. Nam id tempor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in metus urna. Nulla a lectus a enim maximus sagittis. Suspendisse tempor justo nec tortor ultricies, eu rhoncus dolor elementum.\n\nMorbi leo sapien, mollis vel ultrices sed, condimentum quis diam. Mauris quis ullamcorper risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet odio in augue aliquet, et rhoncus mauris lacinia. Fusce rhoncus accumsan ante sed malesuada. In ultricies cursus sem, nec ornare dolor vestibulum rutrum. Suspendisse potenti. Nullam gravida, libero at semper tincidunt, eros enim maximus magna, eleifend posuere lectus nibh ut arcu. Vivamus tempor cursus ex vitae finibus. Cras accumsan magna a porttitor tempus. Fusce eleifend tempor lectus quis ullamcorper. Phasellus eget consectetur dolor, at luctus augue. Nullam nibh neque, cursus at gravida eget, accumsan eu risus. Integer gravida sodales mauris ut fermentum.', '2022-03-31 08:51:52', NULL, 33, 53, 'indy'),
(124, 'stalefish', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dapibus magna sed mauris blandit varius. Fusce enim ex, dignissim et eros a, maximus eleifend sapien. Aliquam imperdiet sem a auctor finibus. Fusce id molestie risus, eu facilisis felis. Mauris at massa a justo mattis ultrices. Vivamus varius nec elit at efficitur. In hac habitasse platea dictumst. Etiam semper consectetur tellus, convallis feugiat elit placerat at. Curabitur nec auctor nisl, et congue ligula. Aenean molestie, lacus nec ultricies ornare, neque neque vulputate justo, euismod pulvinar elit elit vitae turpis. Pellentesque porta ipsum in sapien malesuada, eget tincidunt velit convallis. Vivamus at purus in eros faucibus vulputate eu quis est.\r\n\r\nEtiam tempor fringilla fringilla. Donec in risus nec risus gravida consectetur sit amet bibendum massa. Nulla neque augue, aliquet non elit nec, faucibus elementum ex. Phasellus id mi id dui rutrum laoreet vitae eu ipsum. Vivamus in condimentum lectus. Maecenas ultrices nibh sed accumsan dictum. Nam pellentesque elementum feugiat. Praesent et sagittis lorem, et aliquam leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nSuspendisse et bibendum augue. Maecenas mauris purus, placerat in gravida nec, ornare id tellus. Donec vestibulum vel sapien ut porttitor. Nunc sit amet lacus ut leo consequat hendrerit. Quisque ullamcorper sapien tortor, ut dapibus nulla vehicula quis. Praesent sed sollicitudin ligula. Praesent lacinia dolor dapibus, semper tortor in, dapibus quam. Vivamus tempus eu turpis quis fringilla. Integer semper efficitur eleifend. Nullam eleifend at ex sit amet efficitur. Ut hendrerit et massa sed mattis. Nam id tempor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in metus urna. Nulla a lectus a enim maximus sagittis. Suspendisse tempor justo nec tortor ultricies, eu rhoncus dolor elementum.\r\n\r\nMorbi leo sapien, mollis vel ultrices sed, condimentum quis diam. Mauris quis ullamcorper risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet odio in augue aliquet, et rhoncus mauris lacinia. Fusce rhoncus accumsan ante sed malesuada. In ultricies cursus sem, nec ornare dolor vestibulum rutrum. Suspendisse potenti. Nullam gravida, libero at semper tincidunt, eros enim maximus magna, eleifend posuere lectus nibh ut arcu. Vivamus tempor cursus ex vitae finibus. Cras accumsan magna a porttitor tempus. Fusce eleifend tempor lectus quis ullamcorper. Phasellus eget consectetur dolor, at luctus augue. Nullam nibh neque, cursus at gravida eget, accumsan eu risus. Integer gravida sodales mauris ut fermentum.', '2022-03-31 08:51:52', '2022-03-31 22:29:05', 33, 56, 'stalefish'),
(125, 'tail grab', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dapibus magna sed mauris blandit varius. Fusce enim ex, dignissim et eros a, maximus eleifend sapien. Aliquam imperdiet sem a auctor finibus. Fusce id molestie risus, eu facilisis felis. Mauris at massa a justo mattis ultrices. Vivamus varius nec elit at efficitur. In hac habitasse platea dictumst. Etiam semper consectetur tellus, convallis feugiat elit placerat at. Curabitur nec auctor nisl, et congue ligula. Aenean molestie, lacus nec ultricies ornare, neque neque vulputate justo, euismod pulvinar elit elit vitae turpis. Pellentesque porta ipsum in sapien malesuada, eget tincidunt velit convallis. Vivamus at purus in eros faucibus vulputate eu quis est.\n\nEtiam tempor fringilla fringilla. Donec in risus nec risus gravida consectetur sit amet bibendum massa. Nulla neque augue, aliquet non elit nec, faucibus elementum ex. Phasellus id mi id dui rutrum laoreet vitae eu ipsum. Vivamus in condimentum lectus. Maecenas ultrices nibh sed accumsan dictum. Nam pellentesque elementum feugiat. Praesent et sagittis lorem, et aliquam leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\n\nSuspendisse et bibendum augue. Maecenas mauris purus, placerat in gravida nec, ornare id tellus. Donec vestibulum vel sapien ut porttitor. Nunc sit amet lacus ut leo consequat hendrerit. Quisque ullamcorper sapien tortor, ut dapibus nulla vehicula quis. Praesent sed sollicitudin ligula. Praesent lacinia dolor dapibus, semper tortor in, dapibus quam. Vivamus tempus eu turpis quis fringilla. Integer semper efficitur eleifend. Nullam eleifend at ex sit amet efficitur. Ut hendrerit et massa sed mattis. Nam id tempor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in metus urna. Nulla a lectus a enim maximus sagittis. Suspendisse tempor justo nec tortor ultricies, eu rhoncus dolor elementum.\n\nMorbi leo sapien, mollis vel ultrices sed, condimentum quis diam. Mauris quis ullamcorper risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet odio in augue aliquet, et rhoncus mauris lacinia. Fusce rhoncus accumsan ante sed malesuada. In ultricies cursus sem, nec ornare dolor vestibulum rutrum. Suspendisse potenti. Nullam gravida, libero at semper tincidunt, eros enim maximus magna, eleifend posuere lectus nibh ut arcu. Vivamus tempor cursus ex vitae finibus. Cras accumsan magna a porttitor tempus. Fusce eleifend tempor lectus quis ullamcorper. Phasellus eget consectetur dolor, at luctus augue. Nullam nibh neque, cursus at gravida eget, accumsan eu risus. Integer gravida sodales mauris ut fermentum.', '2022-03-31 08:51:52', NULL, 35, 53, 'tail-grab'),
(126, 'nose grab', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dapibus magna sed mauris blandit varius. Fusce enim ex, dignissim et eros a, maximus eleifend sapien. Aliquam imperdiet sem a auctor finibus. Fusce id molestie risus, eu facilisis felis. Mauris at massa a justo mattis ultrices. Vivamus varius nec elit at efficitur. In hac habitasse platea dictumst. Etiam semper consectetur tellus, convallis feugiat elit placerat at. Curabitur nec auctor nisl, et congue ligula. Aenean molestie, lacus nec ultricies ornare, neque neque vulputate justo, euismod pulvinar elit elit vitae turpis. Pellentesque porta ipsum in sapien malesuada, eget tincidunt velit convallis. Vivamus at purus in eros faucibus vulputate eu quis est.\n\nEtiam tempor fringilla fringilla. Donec in risus nec risus gravida consectetur sit amet bibendum massa. Nulla neque augue, aliquet non elit nec, faucibus elementum ex. Phasellus id mi id dui rutrum laoreet vitae eu ipsum. Vivamus in condimentum lectus. Maecenas ultrices nibh sed accumsan dictum. Nam pellentesque elementum feugiat. Praesent et sagittis lorem, et aliquam leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\n\nSuspendisse et bibendum augue. Maecenas mauris purus, placerat in gravida nec, ornare id tellus. Donec vestibulum vel sapien ut porttitor. Nunc sit amet lacus ut leo consequat hendrerit. Quisque ullamcorper sapien tortor, ut dapibus nulla vehicula quis. Praesent sed sollicitudin ligula. Praesent lacinia dolor dapibus, semper tortor in, dapibus quam. Vivamus tempus eu turpis quis fringilla. Integer semper efficitur eleifend. Nullam eleifend at ex sit amet efficitur. Ut hendrerit et massa sed mattis. Nam id tempor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in metus urna. Nulla a lectus a enim maximus sagittis. Suspendisse tempor justo nec tortor ultricies, eu rhoncus dolor elementum.\n\nMorbi leo sapien, mollis vel ultrices sed, condimentum quis diam. Mauris quis ullamcorper risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet odio in augue aliquet, et rhoncus mauris lacinia. Fusce rhoncus accumsan ante sed malesuada. In ultricies cursus sem, nec ornare dolor vestibulum rutrum. Suspendisse potenti. Nullam gravida, libero at semper tincidunt, eros enim maximus magna, eleifend posuere lectus nibh ut arcu. Vivamus tempor cursus ex vitae finibus. Cras accumsan magna a porttitor tempus. Fusce eleifend tempor lectus quis ullamcorper. Phasellus eget consectetur dolor, at luctus augue. Nullam nibh neque, cursus at gravida eget, accumsan eu risus. Integer gravida sodales mauris ut fermentum.', '2022-03-31 08:51:52', NULL, 34, 54, 'nose-grab'),
(127, 'japan ou japan air', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dapibus magna sed mauris blandit varius. Fusce enim ex, dignissim et eros a, maximus eleifend sapien. Aliquam imperdiet sem a auctor finibus. Fusce id molestie risus, eu facilisis felis. Mauris at massa a justo mattis ultrices. Vivamus varius nec elit at efficitur. In hac habitasse platea dictumst. Etiam semper consectetur tellus, convallis feugiat elit placerat at. Curabitur nec auctor nisl, et congue ligula. Aenean molestie, lacus nec ultricies ornare, neque neque vulputate justo, euismod pulvinar elit elit vitae turpis. Pellentesque porta ipsum in sapien malesuada, eget tincidunt velit convallis. Vivamus at purus in eros faucibus vulputate eu quis est.\n\nEtiam tempor fringilla fringilla. Donec in risus nec risus gravida consectetur sit amet bibendum massa. Nulla neque augue, aliquet non elit nec, faucibus elementum ex. Phasellus id mi id dui rutrum laoreet vitae eu ipsum. Vivamus in condimentum lectus. Maecenas ultrices nibh sed accumsan dictum. Nam pellentesque elementum feugiat. Praesent et sagittis lorem, et aliquam leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\n\nSuspendisse et bibendum augue. Maecenas mauris purus, placerat in gravida nec, ornare id tellus. Donec vestibulum vel sapien ut porttitor. Nunc sit amet lacus ut leo consequat hendrerit. Quisque ullamcorper sapien tortor, ut dapibus nulla vehicula quis. Praesent sed sollicitudin ligula. Praesent lacinia dolor dapibus, semper tortor in, dapibus quam. Vivamus tempus eu turpis quis fringilla. Integer semper efficitur eleifend. Nullam eleifend at ex sit amet efficitur. Ut hendrerit et massa sed mattis. Nam id tempor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in metus urna. Nulla a lectus a enim maximus sagittis. Suspendisse tempor justo nec tortor ultricies, eu rhoncus dolor elementum.\n\nMorbi leo sapien, mollis vel ultrices sed, condimentum quis diam. Mauris quis ullamcorper risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet odio in augue aliquet, et rhoncus mauris lacinia. Fusce rhoncus accumsan ante sed malesuada. In ultricies cursus sem, nec ornare dolor vestibulum rutrum. Suspendisse potenti. Nullam gravida, libero at semper tincidunt, eros enim maximus magna, eleifend posuere lectus nibh ut arcu. Vivamus tempor cursus ex vitae finibus. Cras accumsan magna a porttitor tempus. Fusce eleifend tempor lectus quis ullamcorper. Phasellus eget consectetur dolor, at luctus augue. Nullam nibh neque, cursus at gravida eget, accumsan eu risus. Integer gravida sodales mauris ut fermentum.', '2022-03-31 08:51:52', NULL, 29, 56, 'japan-ou-japan-air'),
(128, 'seat belt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dapibus magna sed mauris blandit varius. Fusce enim ex, dignissim et eros a, maximus eleifend sapien. Aliquam imperdiet sem a auctor finibus. Fusce id molestie risus, eu facilisis felis. Mauris at massa a justo mattis ultrices. Vivamus varius nec elit at efficitur. In hac habitasse platea dictumst. Etiam semper consectetur tellus, convallis feugiat elit placerat at. Curabitur nec auctor nisl, et congue ligula. Aenean molestie, lacus nec ultricies ornare, neque neque vulputate justo, euismod pulvinar elit elit vitae turpis. Pellentesque porta ipsum in sapien malesuada, eget tincidunt velit convallis. Vivamus at purus in eros faucibus vulputate eu quis est.\n\nEtiam tempor fringilla fringilla. Donec in risus nec risus gravida consectetur sit amet bibendum massa. Nulla neque augue, aliquet non elit nec, faucibus elementum ex. Phasellus id mi id dui rutrum laoreet vitae eu ipsum. Vivamus in condimentum lectus. Maecenas ultrices nibh sed accumsan dictum. Nam pellentesque elementum feugiat. Praesent et sagittis lorem, et aliquam leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\n\nSuspendisse et bibendum augue. Maecenas mauris purus, placerat in gravida nec, ornare id tellus. Donec vestibulum vel sapien ut porttitor. Nunc sit amet lacus ut leo consequat hendrerit. Quisque ullamcorper sapien tortor, ut dapibus nulla vehicula quis. Praesent sed sollicitudin ligula. Praesent lacinia dolor dapibus, semper tortor in, dapibus quam. Vivamus tempus eu turpis quis fringilla. Integer semper efficitur eleifend. Nullam eleifend at ex sit amet efficitur. Ut hendrerit et massa sed mattis. Nam id tempor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in metus urna. Nulla a lectus a enim maximus sagittis. Suspendisse tempor justo nec tortor ultricies, eu rhoncus dolor elementum.\n\nMorbi leo sapien, mollis vel ultrices sed, condimentum quis diam. Mauris quis ullamcorper risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet odio in augue aliquet, et rhoncus mauris lacinia. Fusce rhoncus accumsan ante sed malesuada. In ultricies cursus sem, nec ornare dolor vestibulum rutrum. Suspendisse potenti. Nullam gravida, libero at semper tincidunt, eros enim maximus magna, eleifend posuere lectus nibh ut arcu. Vivamus tempor cursus ex vitae finibus. Cras accumsan magna a porttitor tempus. Fusce eleifend tempor lectus quis ullamcorper. Phasellus eget consectetur dolor, at luctus augue. Nullam nibh neque, cursus at gravida eget, accumsan eu risus. Integer gravida sodales mauris ut fermentum.', '2022-03-31 08:51:52', NULL, 29, 54, 'seat-belt'),
(129, 'truck driver', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dapibus magna sed mauris blandit varius. Fusce enim ex, dignissim et eros a, maximus eleifend sapien. Aliquam imperdiet sem a auctor finibus. Fusce id molestie risus, eu facilisis felis. Mauris at massa a justo mattis ultrices. Vivamus varius nec elit at efficitur. In hac habitasse platea dictumst. Etiam semper consectetur tellus, convallis feugiat elit placerat at. Curabitur nec auctor nisl, et congue ligula. Aenean molestie, lacus nec ultricies ornare, neque neque vulputate justo, euismod pulvinar elit elit vitae turpis. Pellentesque porta ipsum in sapien malesuada, eget tincidunt velit convallis. Vivamus at purus in eros faucibus vulputate eu quis est.\n\nEtiam tempor fringilla fringilla. Donec in risus nec risus gravida consectetur sit amet bibendum massa. Nulla neque augue, aliquet non elit nec, faucibus elementum ex. Phasellus id mi id dui rutrum laoreet vitae eu ipsum. Vivamus in condimentum lectus. Maecenas ultrices nibh sed accumsan dictum. Nam pellentesque elementum feugiat. Praesent et sagittis lorem, et aliquam leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\n\nSuspendisse et bibendum augue. Maecenas mauris purus, placerat in gravida nec, ornare id tellus. Donec vestibulum vel sapien ut porttitor. Nunc sit amet lacus ut leo consequat hendrerit. Quisque ullamcorper sapien tortor, ut dapibus nulla vehicula quis. Praesent sed sollicitudin ligula. Praesent lacinia dolor dapibus, semper tortor in, dapibus quam. Vivamus tempus eu turpis quis fringilla. Integer semper efficitur eleifend. Nullam eleifend at ex sit amet efficitur. Ut hendrerit et massa sed mattis. Nam id tempor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in metus urna. Nulla a lectus a enim maximus sagittis. Suspendisse tempor justo nec tortor ultricies, eu rhoncus dolor elementum.\n\nMorbi leo sapien, mollis vel ultrices sed, condimentum quis diam. Mauris quis ullamcorper risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet odio in augue aliquet, et rhoncus mauris lacinia. Fusce rhoncus accumsan ante sed malesuada. In ultricies cursus sem, nec ornare dolor vestibulum rutrum. Suspendisse potenti. Nullam gravida, libero at semper tincidunt, eros enim maximus magna, eleifend posuere lectus nibh ut arcu. Vivamus tempor cursus ex vitae finibus. Cras accumsan magna a porttitor tempus. Fusce eleifend tempor lectus quis ullamcorper. Phasellus eget consectetur dolor, at luctus augue. Nullam nibh neque, cursus at gravida eget, accumsan eu risus. Integer gravida sodales mauris ut fermentum.', '2022-03-31 08:51:52', NULL, 30, 56, 'truck-driver'),
(130, 'front flips', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dapibus magna sed mauris blandit varius. Fusce enim ex, dignissim et eros a, maximus eleifend sapien. Aliquam imperdiet sem a auctor finibus. Fusce id molestie risus, eu facilisis felis. Mauris at massa a justo mattis ultrices. Vivamus varius nec elit at efficitur. In hac habitasse platea dictumst. Etiam semper consectetur tellus, convallis feugiat elit placerat at. Curabitur nec auctor nisl, et congue ligula. Aenean molestie, lacus nec ultricies ornare, neque neque vulputate justo, euismod pulvinar elit elit vitae turpis. Pellentesque porta ipsum in sapien malesuada, eget tincidunt velit convallis. Vivamus at purus in eros faucibus vulputate eu quis est.\n\nEtiam tempor fringilla fringilla. Donec in risus nec risus gravida consectetur sit amet bibendum massa. Nulla neque augue, aliquet non elit nec, faucibus elementum ex. Phasellus id mi id dui rutrum laoreet vitae eu ipsum. Vivamus in condimentum lectus. Maecenas ultrices nibh sed accumsan dictum. Nam pellentesque elementum feugiat. Praesent et sagittis lorem, et aliquam leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\n\nSuspendisse et bibendum augue. Maecenas mauris purus, placerat in gravida nec, ornare id tellus. Donec vestibulum vel sapien ut porttitor. Nunc sit amet lacus ut leo consequat hendrerit. Quisque ullamcorper sapien tortor, ut dapibus nulla vehicula quis. Praesent sed sollicitudin ligula. Praesent lacinia dolor dapibus, semper tortor in, dapibus quam. Vivamus tempus eu turpis quis fringilla. Integer semper efficitur eleifend. Nullam eleifend at ex sit amet efficitur. Ut hendrerit et massa sed mattis. Nam id tempor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in metus urna. Nulla a lectus a enim maximus sagittis. Suspendisse tempor justo nec tortor ultricies, eu rhoncus dolor elementum.\n\nMorbi leo sapien, mollis vel ultrices sed, condimentum quis diam. Mauris quis ullamcorper risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet odio in augue aliquet, et rhoncus mauris lacinia. Fusce rhoncus accumsan ante sed malesuada. In ultricies cursus sem, nec ornare dolor vestibulum rutrum. Suspendisse potenti. Nullam gravida, libero at semper tincidunt, eros enim maximus magna, eleifend posuere lectus nibh ut arcu. Vivamus tempor cursus ex vitae finibus. Cras accumsan magna a porttitor tempus. Fusce eleifend tempor lectus quis ullamcorper. Phasellus eget consectetur dolor, at luctus augue. Nullam nibh neque, cursus at gravida eget, accumsan eu risus. Integer gravida sodales mauris ut fermentum.', '2022-03-31 08:51:52', NULL, 32, 54, 'front-flips'),
(131, 'back flips', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dapibus magna sed mauris blandit varius. Fusce enim ex, dignissim et eros a, maximus eleifend sapien. Aliquam imperdiet sem a auctor finibus. Fusce id molestie risus, eu facilisis felis. Mauris at massa a justo mattis ultrices. Vivamus varius nec elit at efficitur. In hac habitasse platea dictumst. Etiam semper consectetur tellus, convallis feugiat elit placerat at. Curabitur nec auctor nisl, et congue ligula. Aenean molestie, lacus nec ultricies ornare, neque neque vulputate justo, euismod pulvinar elit elit vitae turpis. Pellentesque porta ipsum in sapien malesuada, eget tincidunt velit convallis. Vivamus at purus in eros faucibus vulputate eu quis est.\r\n\r\nEtiam tempor fringilla fringilla. Donec in risus nec risus gravida consectetur sit amet bibendum massa. Nulla neque augue, aliquet non elit nec, faucibus elementum ex. Phasellus id mi id dui rutrum laoreet vitae eu ipsum. Vivamus in condimentum lectus. Maecenas ultrices nibh sed accumsan dictum. Nam pellentesque elementum feugiat. Praesent et sagittis lorem, et aliquam leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nSuspendisse et bibendum augue. Maecenas mauris purus, placerat in gravida nec, ornare id tellus. Donec vestibulum vel sapien ut porttitor. Nunc sit amet lacus ut leo consequat hendrerit. Quisque ullamcorper sapien tortor, ut dapibus nulla vehicula quis. Praesent sed sollicitudin ligula. Praesent lacinia dolor dapibus, semper tortor in, dapibus quam. Vivamus tempus eu turpis quis fringilla. Integer semper efficitur eleifend. Nullam eleifend at ex sit amet efficitur. Ut hendrerit et massa sed mattis. Nam id tempor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in metus urna. Nulla a lectus a enim maximus sagittis. Suspendisse tempor justo nec tortor ultricies, eu rhoncus dolor elementum.\r\n\r\nMorbi leo sapien, mollis vel ultrices sed, condimentum quis diam. Mauris quis ullamcorper risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet odio in augue aliquet, et rhoncus mauris lacinia. Fusce rhoncus accumsan ante sed malesuada. In ultricies cursus sem, nec ornare dolor vestibulum rutrum. Suspendisse potenti. Nullam gravida, libero at semper tincidunt, eros enim maximus magna, eleifend posuere lectus nibh ut arcu. Vivamus tempor cursus ex vitae finibus. Cras accumsan magna a porttitor tempus. Fusce eleifend tempor lectus quis ullamcorper. Phasellus eget consectetur dolor, at luctus augue. Nullam nibh neque, cursus at gravida eget, accumsan eu risus. Integer gravida sodales mauris ut fermentum.', '2022-03-31 08:51:52', '2022-04-05 13:07:35', 32, 53, 'back-flips'),
(132, 'nose slide', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dapibus magna sed mauris blandit varius. Fusce enim ex, dignissim et eros a, maximus eleifend sapien. Aliquam imperdiet sem a auctor finibus. Fusce id molestie risus, eu facilisis felis. Mauris at massa a justo mattis ultrices. Vivamus varius nec elit at efficitur. In hac habitasse platea dictumst. Etiam semper consectetur tellus, convallis feugiat elit placerat at. Curabitur nec auctor nisl, et congue ligula. Aenean molestie, lacus nec ultricies ornare, neque neque vulputate justo, euismod pulvinar elit elit vitae turpis. Pellentesque porta ipsum in sapien malesuada, eget tincidunt velit convallis. Vivamus at purus in eros faucibus vulputate eu quis est.\n\nEtiam tempor fringilla fringilla. Donec in risus nec risus gravida consectetur sit amet bibendum massa. Nulla neque augue, aliquet non elit nec, faucibus elementum ex. Phasellus id mi id dui rutrum laoreet vitae eu ipsum. Vivamus in condimentum lectus. Maecenas ultrices nibh sed accumsan dictum. Nam pellentesque elementum feugiat. Praesent et sagittis lorem, et aliquam leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\n\nSuspendisse et bibendum augue. Maecenas mauris purus, placerat in gravida nec, ornare id tellus. Donec vestibulum vel sapien ut porttitor. Nunc sit amet lacus ut leo consequat hendrerit. Quisque ullamcorper sapien tortor, ut dapibus nulla vehicula quis. Praesent sed sollicitudin ligula. Praesent lacinia dolor dapibus, semper tortor in, dapibus quam. Vivamus tempus eu turpis quis fringilla. Integer semper efficitur eleifend. Nullam eleifend at ex sit amet efficitur. Ut hendrerit et massa sed mattis. Nam id tempor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in metus urna. Nulla a lectus a enim maximus sagittis. Suspendisse tempor justo nec tortor ultricies, eu rhoncus dolor elementum.\n\nMorbi leo sapien, mollis vel ultrices sed, condimentum quis diam. Mauris quis ullamcorper risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet odio in augue aliquet, et rhoncus mauris lacinia. Fusce rhoncus accumsan ante sed malesuada. In ultricies cursus sem, nec ornare dolor vestibulum rutrum. Suspendisse potenti. Nullam gravida, libero at semper tincidunt, eros enim maximus magna, eleifend posuere lectus nibh ut arcu. Vivamus tempor cursus ex vitae finibus. Cras accumsan magna a porttitor tempus. Fusce eleifend tempor lectus quis ullamcorper. Phasellus eget consectetur dolor, at luctus augue. Nullam nibh neque, cursus at gravida eget, accumsan eu risus. Integer gravida sodales mauris ut fermentum.', '2022-03-31 08:51:52', NULL, 35, 57, 'nose-slide'),
(133, 'tail slide', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dapibus magna sed mauris blandit varius. Fusce enim ex, dignissim et eros a, maximus eleifend sapien. Aliquam imperdiet sem a auctor finibus. Fusce id molestie risus, eu facilisis felis. Mauris at massa a justo mattis ultrices. Vivamus varius nec elit at efficitur. In hac habitasse platea dictumst. Etiam semper consectetur tellus, convallis feugiat elit placerat at. Curabitur nec auctor nisl, et congue ligula. Aenean molestie, lacus nec ultricies ornare, neque neque vulputate justo, euismod pulvinar elit elit vitae turpis. Pellentesque porta ipsum in sapien malesuada, eget tincidunt velit convallis. Vivamus at purus in eros faucibus vulputate eu quis est.\r\n\r\nEtiam tempor fringilla fringilla. Donec in risus nec risus gravida consectetur sit amet bibendum massa. Nulla neque augue, aliquet non elit nec, faucibus elementum ex. Phasellus id mi id dui rutrum laoreet vitae eu ipsum. Vivamus in condimentum lectus. Maecenas ultrices nibh sed accumsan dictum. Nam pellentesque elementum feugiat. Praesent et sagittis lorem, et aliquam leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nSuspendisse et bibendum augue. Maecenas mauris purus, placerat in gravida nec, ornare id tellus. Donec vestibulum vel sapien ut porttitor. Nunc sit amet lacus ut leo consequat hendrerit. Quisque ullamcorper sapien tortor, ut dapibus nulla vehicula quis. Praesent sed sollicitudin ligula. Praesent lacinia dolor dapibus, semper tortor in, dapibus quam. Vivamus tempus eu turpis quis fringilla. Integer semper efficitur eleifend. Nullam eleifend at ex sit amet efficitur. Ut hendrerit et massa sed mattis. Nam id tempor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in metus urna. Nulla a lectus a enim maximus sagittis. Suspendisse tempor justo nec tortor ultricies, eu rhoncus dolor elementum.\r\n\r\nMorbi leo sapien, mollis vel ultrices sed, condimentum quis diam. Mauris quis ullamcorper risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet odio in augue aliquet, et rhoncus mauris lacinia. Fusce rhoncus accumsan ante sed malesuada. In ultricies cursus sem, nec ornare dolor vestibulum rutrum. Suspendisse potenti. Nullam gravida, libero at semper tincidunt, eros enim maximus magna, eleifend posuere lectus nibh ut arcu. Vivamus tempor cursus ex vitae finibus. Cras accumsan magna a porttitor tempus. Fusce eleifend tempor lectus quis ullamcorper. Phasellus eget consectetur dolor, at luctus augue. Nullam nibh neque, cursus at gravida eget, accumsan eu risus. Integer gravida sodales mauris ut fermentum.', '2022-03-31 08:51:52', '2022-03-31 18:02:31', 29, 57, 'tail-slide'),
(134, 'Japan air', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dapibus magna sed mauris blandit varius. Fusce enim ex, dignissim et eros a, maximus eleifend sapien. Aliquam imperdiet sem a auctor finibus. Fusce id molestie risus, eu facilisis felis. Mauris at massa a justo mattis ultrices. Vivamus varius nec elit at efficitur. In hac habitasse platea dictumst. Etiam semper consectetur tellus, convallis feugiat elit placerat at. Curabitur nec auctor nisl, et congue ligula. Aenean molestie, lacus nec ultricies ornare, neque neque vulputate justo, euismod pulvinar elit elit vitae turpis. Pellentesque porta ipsum in sapien malesuada, eget tincidunt velit convallis. Vivamus at purus in eros faucibus vulputate eu quis est.\n\nEtiam tempor fringilla fringilla. Donec in risus nec risus gravida consectetur sit amet bibendum massa. Nulla neque augue, aliquet non elit nec, faucibus elementum ex. Phasellus id mi id dui rutrum laoreet vitae eu ipsum. Vivamus in condimentum lectus. Maecenas ultrices nibh sed accumsan dictum. Nam pellentesque elementum feugiat. Praesent et sagittis lorem, et aliquam leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\n\nSuspendisse et bibendum augue. Maecenas mauris purus, placerat in gravida nec, ornare id tellus. Donec vestibulum vel sapien ut porttitor. Nunc sit amet lacus ut leo consequat hendrerit. Quisque ullamcorper sapien tortor, ut dapibus nulla vehicula quis. Praesent sed sollicitudin ligula. Praesent lacinia dolor dapibus, semper tortor in, dapibus quam. Vivamus tempus eu turpis quis fringilla. Integer semper efficitur eleifend. Nullam eleifend at ex sit amet efficitur. Ut hendrerit et massa sed mattis. Nam id tempor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in metus urna. Nulla a lectus a enim maximus sagittis. Suspendisse tempor justo nec tortor ultricies, eu rhoncus dolor elementum.\n\nMorbi leo sapien, mollis vel ultrices sed, condimentum quis diam. Mauris quis ullamcorper risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet odio in augue aliquet, et rhoncus mauris lacinia. Fusce rhoncus accumsan ante sed malesuada. In ultricies cursus sem, nec ornare dolor vestibulum rutrum. Suspendisse potenti. Nullam gravida, libero at semper tincidunt, eros enim maximus magna, eleifend posuere lectus nibh ut arcu. Vivamus tempor cursus ex vitae finibus. Cras accumsan magna a porttitor tempus. Fusce eleifend tempor lectus quis ullamcorper. Phasellus eget consectetur dolor, at luctus augue. Nullam nibh neque, cursus at gravida eget, accumsan eu risus. Integer gravida sodales mauris ut fermentum.', '2022-03-31 08:51:52', NULL, 30, 56, 'Japan-air'),
(135, 'rocket air', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dapibus magna sed mauris blandit varius. Fusce enim ex, dignissim et eros a, maximus eleifend sapien. Aliquam imperdiet sem a auctor finibus. Fusce id molestie risus, eu facilisis felis. Mauris at massa a justo mattis ultrices. Vivamus varius nec elit at efficitur. In hac habitasse platea dictumst. Etiam semper consectetur tellus, convallis feugiat elit placerat at. Curabitur nec auctor nisl, et congue ligula. Aenean molestie, lacus nec ultricies ornare, neque neque vulputate justo, euismod pulvinar elit elit vitae turpis. Pellentesque porta ipsum in sapien malesuada, eget tincidunt velit convallis. Vivamus at purus in eros faucibus vulputate eu quis est.\n\nEtiam tempor fringilla fringilla. Donec in risus nec risus gravida consectetur sit amet bibendum massa. Nulla neque augue, aliquet non elit nec, faucibus elementum ex. Phasellus id mi id dui rutrum laoreet vitae eu ipsum. Vivamus in condimentum lectus. Maecenas ultrices nibh sed accumsan dictum. Nam pellentesque elementum feugiat. Praesent et sagittis lorem, et aliquam leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\n\nSuspendisse et bibendum augue. Maecenas mauris purus, placerat in gravida nec, ornare id tellus. Donec vestibulum vel sapien ut porttitor. Nunc sit amet lacus ut leo consequat hendrerit. Quisque ullamcorper sapien tortor, ut dapibus nulla vehicula quis. Praesent sed sollicitudin ligula. Praesent lacinia dolor dapibus, semper tortor in, dapibus quam. Vivamus tempus eu turpis quis fringilla. Integer semper efficitur eleifend. Nullam eleifend at ex sit amet efficitur. Ut hendrerit et massa sed mattis. Nam id tempor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in metus urna. Nulla a lectus a enim maximus sagittis. Suspendisse tempor justo nec tortor ultricies, eu rhoncus dolor elementum.\n\nMorbi leo sapien, mollis vel ultrices sed, condimentum quis diam. Mauris quis ullamcorper risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet odio in augue aliquet, et rhoncus mauris lacinia. Fusce rhoncus accumsan ante sed malesuada. In ultricies cursus sem, nec ornare dolor vestibulum rutrum. Suspendisse potenti. Nullam gravida, libero at semper tincidunt, eros enim maximus magna, eleifend posuere lectus nibh ut arcu. Vivamus tempor cursus ex vitae finibus. Cras accumsan magna a porttitor tempus. Fusce eleifend tempor lectus quis ullamcorper. Phasellus eget consectetur dolor, at luctus augue. Nullam nibh neque, cursus at gravida eget, accumsan eu risus. Integer gravida sodales mauris ut fermentum.', '2022-03-31 08:51:52', NULL, 35, 55, 'rocket-air'),
(136, 'Backside Air', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dapibus magna sed mauris blandit varius. Fusce enim ex, dignissim et eros a, maximus eleifend sapien. Aliquam imperdiet sem a auctor finibus. Fusce id molestie risus, eu facilisis felis. Mauris at massa a justo mattis ultrices. Vivamus varius nec elit at efficitur. In hac habitasse platea dictumst. Etiam semper consectetur tellus, convallis feugiat elit placerat at. Curabitur nec auctor nisl, et congue ligula. Aenean molestie, lacus nec ultricies ornare, neque neque vulputate justo, euismod pulvinar elit elit vitae turpis. Pellentesque porta ipsum in sapien malesuada, eget tincidunt velit convallis. Vivamus at purus in eros faucibus vulputate eu quis est.\n\nEtiam tempor fringilla fringilla. Donec in risus nec risus gravida consectetur sit amet bibendum massa. Nulla neque augue, aliquet non elit nec, faucibus elementum ex. Phasellus id mi id dui rutrum laoreet vitae eu ipsum. Vivamus in condimentum lectus. Maecenas ultrices nibh sed accumsan dictum. Nam pellentesque elementum feugiat. Praesent et sagittis lorem, et aliquam leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\n\nSuspendisse et bibendum augue. Maecenas mauris purus, placerat in gravida nec, ornare id tellus. Donec vestibulum vel sapien ut porttitor. Nunc sit amet lacus ut leo consequat hendrerit. Quisque ullamcorper sapien tortor, ut dapibus nulla vehicula quis. Praesent sed sollicitudin ligula. Praesent lacinia dolor dapibus, semper tortor in, dapibus quam. Vivamus tempus eu turpis quis fringilla. Integer semper efficitur eleifend. Nullam eleifend at ex sit amet efficitur. Ut hendrerit et massa sed mattis. Nam id tempor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in metus urna. Nulla a lectus a enim maximus sagittis. Suspendisse tempor justo nec tortor ultricies, eu rhoncus dolor elementum.\n\nMorbi leo sapien, mollis vel ultrices sed, condimentum quis diam. Mauris quis ullamcorper risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet odio in augue aliquet, et rhoncus mauris lacinia. Fusce rhoncus accumsan ante sed malesuada. In ultricies cursus sem, nec ornare dolor vestibulum rutrum. Suspendisse potenti. Nullam gravida, libero at semper tincidunt, eros enim maximus magna, eleifend posuere lectus nibh ut arcu. Vivamus tempor cursus ex vitae finibus. Cras accumsan magna a porttitor tempus. Fusce eleifend tempor lectus quis ullamcorper. Phasellus eget consectetur dolor, at luctus augue. Nullam nibh neque, cursus at gravida eget, accumsan eu risus. Integer gravida sodales mauris ut fermentum.', '2022-03-31 08:51:52', NULL, 29, 56, 'Backside-Air'),
(137, 'Method Air', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dapibus magna sed mauris blandit varius. Fusce enim ex, dignissim et eros a, maximus eleifend sapien. Aliquam imperdiet sem a auctor finibus. Fusce id molestie risus, eu facilisis felis. Mauris at massa a justo mattis ultrices. Vivamus varius nec elit at efficitur. In hac habitasse platea dictumst. Etiam semper consectetur tellus, convallis feugiat elit placerat at. Curabitur nec auctor nisl, et congue ligula. Aenean molestie, lacus nec ultricies ornare, neque neque vulputate justo, euismod pulvinar elit elit vitae turpis. Pellentesque porta ipsum in sapien malesuada, eget tincidunt velit convallis. Vivamus at purus in eros faucibus vulputate eu quis est.\n\nEtiam tempor fringilla fringilla. Donec in risus nec risus gravida consectetur sit amet bibendum massa. Nulla neque augue, aliquet non elit nec, faucibus elementum ex. Phasellus id mi id dui rutrum laoreet vitae eu ipsum. Vivamus in condimentum lectus. Maecenas ultrices nibh sed accumsan dictum. Nam pellentesque elementum feugiat. Praesent et sagittis lorem, et aliquam leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\n\nSuspendisse et bibendum augue. Maecenas mauris purus, placerat in gravida nec, ornare id tellus. Donec vestibulum vel sapien ut porttitor. Nunc sit amet lacus ut leo consequat hendrerit. Quisque ullamcorper sapien tortor, ut dapibus nulla vehicula quis. Praesent sed sollicitudin ligula. Praesent lacinia dolor dapibus, semper tortor in, dapibus quam. Vivamus tempus eu turpis quis fringilla. Integer semper efficitur eleifend. Nullam eleifend at ex sit amet efficitur. Ut hendrerit et massa sed mattis. Nam id tempor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in metus urna. Nulla a lectus a enim maximus sagittis. Suspendisse tempor justo nec tortor ultricies, eu rhoncus dolor elementum.\n\nMorbi leo sapien, mollis vel ultrices sed, condimentum quis diam. Mauris quis ullamcorper risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet odio in augue aliquet, et rhoncus mauris lacinia. Fusce rhoncus accumsan ante sed malesuada. In ultricies cursus sem, nec ornare dolor vestibulum rutrum. Suspendisse potenti. Nullam gravida, libero at semper tincidunt, eros enim maximus magna, eleifend posuere lectus nibh ut arcu. Vivamus tempor cursus ex vitae finibus. Cras accumsan magna a porttitor tempus. Fusce eleifend tempor lectus quis ullamcorper. Phasellus eget consectetur dolor, at luctus augue. Nullam nibh neque, cursus at gravida eget, accumsan eu risus. Integer gravida sodales mauris ut fermentum.', '2022-03-31 08:51:52', NULL, 32, 57, 'Method-Air');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`, `email`, `token`, `user_picture`, `full_name`) VALUES
(53, 'Mark', '[\"ROLE_USER\"]', '$2y$13$mc7pIFZFcDR1qy4okeQrq.lde8QnKkNljPiARr9tAC4JHk1yfRLOS', 'mark@mark-mail.com', NULL, 'user_Mark.png', 'Mark'),
(54, 'Lucia', '[\"ROLE_USER\"]', '$2y$13$EPswYKWt9axuUhID4FhnI.LWCV6NZhQ587RJQilf/FO/0uuQJPgBO', 'lucia@lucia-mail.com', NULL, 'user_Lucia.png', 'Lucia'),
(55, 'Alex', '[\"ROLE_USER\"]', '$2y$13$S.ZT7E8xd0RhAH9MlsPv5O/CCBjckR6QxQZtgd.oQAZg/9CFCUWxC', 'alex@alex-mail.com', NULL, 'user_Alex.png', 'Alex'),
(56, 'Paul', '[\"ROLE_USER\"]', '$2y$13$V8AOaELOk6MJoZu0HmFAgujUTbHJ3E.pHnXgdJnV0fCxHqCWBQOxW', 'paul@paul-mail.com', NULL, 'user_Paul.png', 'Paul'),
(57, 'Mario', '[\"ROLE_USER\"]', '$2y$13$b5ZgBWnqvkhLvPbB0Xgp1uaLCLsiSGgjKmSbaDrswIi1TnOJllPs.', 'mario@mario-mail.com', NULL, 'user_Mario.png', 'Mario'),
(58, 'Maria', '[\"ROLE_USER\"]', '$2y$13$tbzJR5Ypkj8X7GwoiwUbWuAkoHBdDPaHbQ5WhIfrWd5ngXSTWwoZq', 'maria@maria-mail.com', NULL, 'user_Maria.png', 'Maria'),
(59, 'Olivia', '[\"ROLE_USER\"]', '$2y$13$sfPT2LZcZfq.42/Z9wP8Geyp4k7jPogCzjeUODQJz7F0CwbZkg4AS', 'olivia@olivia-mail.com', NULL, 'user_Olivia.png', 'Olivia'),
(60, 'Alexia', '[\"ROLE_USER\"]', '$2y$13$ORkJceiSjWT39ZbWLs2/5uRTpj0v.Wl7yAU1EK6ZWEH0dfxzERaXu', 'alexia@alexia-mail.com', NULL, 'user_Alexia.png', 'Alexia'),
(61, 'Luca', '[\"ROLE_USER\"]', '$2y$13$Xqer21f7FbL0RptmO.2gdew0ResNEh5.r1VTDLEF7SLH09Lp4oE/C', 'luca@luca-mail.com', NULL, 'user_Luca.png', 'Luca'),
(62, 'Fred', '[\"ROLE_USER\"]', '$2y$13$lY.n5cnpfrxknoy8W/073eB/Qe.Lq/IuNBQCVRRFd4/Q0YZdmx1Vy', 'fred@fred-mail.com', NULL, 'user_Fred.png', 'Fred'),
(63, 'Michel', '[\"ROLE_USER\"]', '$2y$13$yNjumRBFIaWV4JdyMwdJ2OMuazgJ/rNf4NCE5U9j7fM06Fp03we.K', 'michel@michel-mail.com', NULL, 'user_Michel.png', 'Michel'),
(64, 'Chris', '[\"ROLE_USER\"]', '$2y$13$6UqGkBDALCTuk5s96SiSheFXSVtRZBDLU/v3GV227pRd/vdUfVuXS', 'chris@chris-mail.com', NULL, 'user_Chris.png', 'Chris'),
(65, 'admin', '[\"ROLE_USER\"]', '$2y$13$GDSC7kGWsizM9rNrqSy3BegNBlsdKcGrEMDZuU9DSWxYG0kvmL9M.', 'admin@snowtrick.com', NULL, 'admin-624ecb9ff414a.png', 'Admin SnowTrick'),
(79, 'Usertest', '[\"ROLE_USER\"]', '$2y$13$YhyM/OZ.7LV9TOZvrwICYe9pWMB4Q5gL/nLqXwkSrxZXi1MU1pLGu', 'user@gmail.com', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `trick_id` int(11) NOT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `video`
--

INSERT INTO `video` (`id`, `trick_id`, `video_url`) VALUES
(404, 128, 'https://www.youtube.com/embed/nt97YgBtl1g'),
(405, 121, 'https://www.youtube.com/embed/YAABnJfKJ5w'),
(406, 137, 'https://www.youtube.com/embed/YAABnJfKJ5w'),
(407, 134, 'https://www.youtube.com/embed/SSi7FyUnXVA'),
(408, 129, 'https://www.youtube.com/embed/nt97YgBtl1g'),
(409, 126, 'https://www.youtube.com/embed/V9xuy-rVj9w'),
(410, 127, 'https://www.youtube.com/embed/V9xuy-rVj9w'),
(411, 132, 'https://www.youtube.com/embed/dSZ7_TXcEdM'),
(412, 125, 'https://www.youtube.com/embed/dSZ7_TXcEdM'),
(413, 130, 'https://www.youtube.com/embed/1AibZIwxnuU'),
(414, 137, 'https://www.youtube.com/embed/YAABnJfKJ5w'),
(415, 131, 'https://www.youtube.com/embed/nt97YgBtl1g'),
(416, 124, 'https://www.youtube.com/embed/dSZ7_TXcEdM'),
(417, 121, 'https://www.youtube.com/embed/dSZ7_TXcEdM'),
(418, 133, 'https://www.youtube.com/embed/SSi7FyUnXVA'),
(419, 126, 'https://www.youtube.com/embed/nt97YgBtl1g'),
(420, 134, 'https://www.youtube.com/embed/YAABnJfKJ5w'),
(421, 122, 'https://www.youtube.com/embed/YAABnJfKJ5w'),
(422, 121, 'https://www.youtube.com/embed/SSi7FyUnXVA'),
(423, 127, 'https://www.youtube.com/embed/SSi7FyUnXVA'),
(424, 133, 'https://www.youtube.com/embed/SSi7FyUnXVA'),
(425, 130, 'https://www.youtube.com/embed/nt97YgBtl1g'),
(426, 135, 'https://www.youtube.com/embed/nt97YgBtl1g'),
(427, 129, 'https://www.youtube.com/embed/dSZ7_TXcEdM'),
(428, 131, 'https://www.youtube.com/embed/SSi7FyUnXVA'),
(429, 132, 'https://www.youtube.com/embed/V9xuy-rVj9w'),
(430, 127, 'https://www.youtube.com/embed/V9xuy-rVj9w'),
(431, 126, 'https://www.youtube.com/embed/nt97YgBtl1g'),
(432, 121, 'https://www.youtube.com/embed/V9xuy-rVj9w'),
(433, 123, 'https://www.youtube.com/embed/SSi7FyUnXVA'),
(434, 123, 'https://www.youtube.com/embed/V9xuy-rVj9w'),
(435, 131, 'https://www.youtube.com/embed/1AibZIwxnuU'),
(436, 127, 'https://www.youtube.com/embed/nt97YgBtl1g'),
(437, 129, 'https://www.youtube.com/embed/nt97YgBtl1g'),
(438, 129, 'https://www.youtube.com/embed/YAABnJfKJ5w'),
(439, 133, 'https://www.youtube.com/embed/YAABnJfKJ5w'),
(440, 132, 'https://www.youtube.com/embed/V9xuy-rVj9w'),
(441, 135, 'https://www.youtube.com/embed/nt97YgBtl1g'),
(442, 135, 'https://www.youtube.com/embed/YAABnJfKJ5w'),
(443, 132, 'https://www.youtube.com/embed/nt97YgBtl1g'),
(444, 123, 'https://www.youtube.com/embed/1AibZIwxnuU'),
(445, 122, 'https://www.youtube.com/embed/nt97YgBtl1g'),
(446, 128, 'https://www.youtube.com/embed/YAABnJfKJ5w'),
(447, 131, 'https://www.youtube.com/embed/SSi7FyUnXVA'),
(448, 122, 'https://www.youtube.com/embed/dSZ7_TXcEdM'),
(449, 124, 'https://www.youtube.com/embed/1AibZIwxnuU'),
(450, 132, 'https://www.youtube.com/embed/1AibZIwxnuU'),
(451, 132, 'https://www.youtube.com/embed/1AibZIwxnuU'),
(452, 134, 'https://www.youtube.com/embed/V9xuy-rVj9w'),
(453, 121, 'https://www.youtube.com/embed/nt97YgBtl1g'),
(454, 133, 'https://www.youtube.com/embed/V9xuy-rVj9w'),
(455, 131, 'https://www.youtube.com/embed/YAABnJfKJ5w'),
(456, 122, 'https://www.youtube.com/embed/YAABnJfKJ5w'),
(457, 125, 'https://www.youtube.com/embed/V9xuy-rVj9w'),
(458, 133, 'https://www.youtube.com/embed/YAABnJfKJ5w'),
(459, 136, 'https://www.youtube.com/embed/V9xuy-rVj9w'),
(460, 137, 'https://www.youtube.com/embed/dSZ7_TXcEdM'),
(461, 124, 'https://www.youtube.com/embed/dSZ7_TXcEdM'),
(462, 136, 'https://www.youtube.com/embed/nt97YgBtl1g'),
(463, 127, 'https://www.youtube.com/embed/SSi7FyUnXVA'),
(464, 137, 'https://www.youtube.com/embed/1AibZIwxnuU'),
(465, 121, 'https://www.youtube.com/embed/YAABnJfKJ5w'),
(466, 129, 'https://www.youtube.com/embed/dSZ7_TXcEdM'),
(467, 124, 'https://www.youtube.com/embed/dSZ7_TXcEdM'),
(468, 123, 'https://www.youtube.com/embed/SSi7FyUnXVA'),
(469, 128, 'https://www.youtube.com/embed/nt97YgBtl1g'),
(470, 122, 'https://www.youtube.com/embed/YAABnJfKJ5w'),
(471, 130, 'https://www.youtube.com/embed/dSZ7_TXcEdM'),
(472, 135, 'https://www.youtube.com/embed/SSi7FyUnXVA'),
(473, 135, 'https://www.youtube.com/embed/V9xuy-rVj9w'),
(474, 132, 'https://www.youtube.com/embed/1AibZIwxnuU'),
(475, 124, 'https://www.youtube.com/embed/YAABnJfKJ5w'),
(476, 132, 'https://www.youtube.com/embed/dSZ7_TXcEdM'),
(477, 132, 'https://www.youtube.com/embed/nt97YgBtl1g'),
(478, 135, 'https://www.youtube.com/embed/nt97YgBtl1g'),
(479, 132, 'https://www.youtube.com/embed/nt97YgBtl1g'),
(480, 132, 'https://www.youtube.com/embed/dSZ7_TXcEdM'),
(481, 130, 'https://www.youtube.com/embed/dSZ7_TXcEdM'),
(482, 122, 'https://www.youtube.com/embed/YAABnJfKJ5w'),
(483, 135, 'https://www.youtube.com/embed/YAABnJfKJ5w'),
(484, 129, 'https://www.youtube.com/embed/dSZ7_TXcEdM'),
(485, 128, 'https://www.youtube.com/embed/nt97YgBtl1g'),
(486, 125, 'https://www.youtube.com/embed/nt97YgBtl1g'),
(487, 135, 'https://www.youtube.com/embed/YAABnJfKJ5w'),
(488, 132, 'https://www.youtube.com/embed/YAABnJfKJ5w'),
(489, 123, 'https://www.youtube.com/embed/1AibZIwxnuU'),
(490, 130, 'https://www.youtube.com/embed/1AibZIwxnuU'),
(491, 131, 'https://www.youtube.com/embed/YAABnJfKJ5w'),
(492, 137, 'https://www.youtube.com/embed/YAABnJfKJ5w'),
(493, 122, 'https://www.youtube.com/embed/V9xuy-rVj9w'),
(494, 123, 'https://www.youtube.com/embed/dSZ7_TXcEdM'),
(495, 134, 'https://www.youtube.com/embed/SSi7FyUnXVA'),
(496, 132, 'https://www.youtube.com/embed/YAABnJfKJ5w'),
(497, 129, 'https://www.youtube.com/embed/nt97YgBtl1g'),
(498, 127, 'https://www.youtube.com/embed/dSZ7_TXcEdM'),
(499, 123, 'https://www.youtube.com/embed/SSi7FyUnXVA'),
(500, 126, 'https://www.youtube.com/embed/V9xuy-rVj9w'),
(501, 134, 'https://www.youtube.com/embed/V9xuy-rVj9w'),
(502, 126, 'https://www.youtube.com/embed/nt97YgBtl1g'),
(503, 133, 'https://www.youtube.com/embed/YAABnJfKJ5w'),
(504, 124, 'https://www.youtube.com/embed/SFYYzy0UF-8'),
(505, 124, 'https://www.youtube.com/embed/SFYYzy0UF-8'),
(506, 124, 'https://www.youtube.com/embed/SFYYzy0UF-8'),
(507, 124, 'https://www.youtube.com/embed/SFYYzy0UF-8'),
(508, 124, 'https://www.youtube.com/embed/SFYYzy0UF-8'),
(509, 124, 'https://www.youtube.com/embed/SFYYzy0UF-8');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526CB281BE2E` (`trick_id`),
  ADD KEY `IDX_9474526CA76ED395` (`user_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6A2CA10CB281BE2E` (`trick_id`);

--
-- Index pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CE748AA76ED395` (`user_id`);

--
-- Index pour la table `trick`
--
ALTER TABLE `trick`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D8F0A91E12469DE2` (`category_id`),
  ADD KEY `IDX_D8F0A91EA76ED395` (`user_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`);

--
-- Index pour la table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CC7DA2CB281BE2E` (`trick_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=431;

--
-- AUTO_INCREMENT pour la table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=626;

--
-- AUTO_INCREMENT pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `trick`
--
ALTER TABLE `trick`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT pour la table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=510;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_9474526CB281BE2E` FOREIGN KEY (`trick_id`) REFERENCES `trick` (`id`);

--
-- Contraintes pour la table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `FK_6A2CA10CB281BE2E` FOREIGN KEY (`trick_id`) REFERENCES `trick` (`id`);

--
-- Contraintes pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `trick`
--
ALTER TABLE `trick`
  ADD CONSTRAINT `FK_D8F0A91E12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_D8F0A91EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `FK_7CC7DA2CB281BE2E` FOREIGN KEY (`trick_id`) REFERENCES `trick` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
