-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 11 juil. 2024 à 13:41
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion_courrier`
--

-- --------------------------------------------------------

--
-- Structure de la table `courrier`
--

CREATE TABLE `courrier` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `contenu` text NOT NULL,
  `date_reception` date NOT NULL,
  `etat` varchar(50) NOT NULL DEFAULT 'En attente',
  `reponse` text DEFAULT NULL,
  `signature_numero` varchar(50) DEFAULT NULL,
  `signature_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `courrier`
--

INSERT INTO `courrier` (`id`, `type`, `contenu`, `date_reception`, `etat`, `reponse`, `signature_numero`, `signature_date`) VALUES
(6, 'FAX', 'countenu de courrier 6 \r\n', '2024-07-11', 'GESTION', 'merci mr', NULL, NULL),
(7, 'MAIL', 'test5', '2024-07-11', 'ETUDE', '123', NULL, NULL),
(8, 'FAX', '213', '2024-07-11', 'GESTION', '123123123', NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `courrier`
--
ALTER TABLE `courrier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `courrier`
--
ALTER TABLE `courrier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
