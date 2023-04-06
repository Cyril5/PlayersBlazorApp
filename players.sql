-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : jeu. 06 avr. 2023 à 21:23
-- Version du serveur :  10.5.4-MariaDB
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `players`
--

-- --------------------------------------------------------

--
-- Structure de la table `players`
--

DROP TABLE IF EXISTS `players`;
CREATE TABLE IF NOT EXISTS `players` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `size` int(11) NOT NULL DEFAULT 100,
  `man` tinyint(1) NOT NULL DEFAULT 1,
  `photoIndex` int(11) NOT NULL DEFAULT 1,
  `sport` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `players`
--

INSERT INTO `players` (`id`, `firstname`, `lastname`, `size`, `man`, `photoIndex`, `sport`) VALUES
(19, 'Henry', 'Olphman', 176, 1, 4, 'Tennis'),
(11, 'Marine', 'Lamuru', 217, 0, 5, 'Tennis'),
(22, 'Patrick', 'Lozak', 183, 1, 4, 'Soccer'),
(21, 'Chris', 'Palmano', 174, 1, 2, 'Formula'),
(16, 'Arnaud', 'Becker', 176, 1, 3, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
