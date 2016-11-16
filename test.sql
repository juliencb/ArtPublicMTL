-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mer 02 Novembre 2016 à 16:37
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE IF NOT EXISTS `administrateur` (
  `nom` varchar(20) NOT NULL DEFAULT '',
  `motDePasse` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`nom`),
  UNIQUE KEY `nom` (`nom`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `arrondissement`
--

CREATE TABLE IF NOT EXISTS `arrondissement` (
  `nom` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`nom`),
  UNIQUE KEY `nom` (`nom`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `arrondissement`
--

INSERT INTO `arrondissement` (`nom`) VALUES
('ici'),
('là');

-- --------------------------------------------------------

--
-- Structure de la table `artiste`
--

CREATE TABLE IF NOT EXISTS `artiste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noInterne` tinyint(4) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `nomCollectif` varchar(50) DEFAULT NULL,
  `biographie` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `noInterne` (`noInterne`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `artiste`
--

INSERT INTO `artiste` (`id`, `noInterne`, `nom`, `prenom`, `nomCollectif`, `biographie`) VALUES
(1, NULL, 'Hub', 'Tape', NULL, NULL),
(2, NULL, 'Gauthier', 'Mélo', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `caroussel`
--

CREATE TABLE IF NOT EXISTS `caroussel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idOeuvre` int(11) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `nom` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`nom`),
  UNIQUE KEY `nom` (`nom`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`nom`) VALUES
('lll'),
('mmm'),
('ppp');

-- --------------------------------------------------------

--
-- Structure de la table `oeuvre`
--

CREATE TABLE IF NOT EXISTS `oeuvre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noInterne` int(11) DEFAULT NULL,
  `titre` varchar(50) NOT NULL,
  `titreVariante` varchar(50) DEFAULT NULL,
  `nomCollection` varchar(50) DEFAULT NULL,
  `categorieObjet` varchar(50) DEFAULT NULL,
  `sousCategorieObjet` varchar(50) DEFAULT NULL,
  `modeAcquisition` varchar(50) DEFAULT NULL,
  `dateAccession` varchar(50) DEFAULT NULL,
  `materiaux` varchar(50) DEFAULT NULL,
  `support` varchar(50) DEFAULT NULL,
  `technique` varchar(50) DEFAULT NULL,
  `dimensionsGenerales` varchar(50) DEFAULT NULL,
  `parc` varchar(50) DEFAULT NULL,
  `batiment` varchar(50) DEFAULT NULL,
  `adresseCivique` varchar(50) DEFAULT NULL,
  `coordonneeLatitude` varchar(50) DEFAULT NULL,
  `coordonneeLongitude` varchar(50) DEFAULT NULL,
  `mediums` varchar(50) DEFAULT NULL,
  `numeroAccession` varchar(20) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `urlImage` varchar(50) DEFAULT NULL,
  `arrondissement` varchar(50) DEFAULT NULL,
  `categorie` varchar(20) DEFAULT NULL,
  `valide` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `arrondissement` (`arrondissement`),
  KEY `categorie` (`categorie`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `oeuvre`
--

INSERT INTO `oeuvre` (`id`, `noInterne`, `titre`, `titreVariante`, `nomCollection`, `categorieObjet`, `sousCategorieObjet`, `modeAcquisition`, `dateAccession`, `materiaux`, `support`, `technique`, `dimensionsGenerales`, `parc`, `batiment`, `adresseCivique`, `coordonneeLatitude`, `coordonneeLongitude`, `mediums`, `numeroAccession`, `description`, `urlImage`, `arrondissement`, `categorie`, `valide`) VALUES
(5, NULL, 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', NULL, NULL, NULL, 0),
(6, NULL, 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', NULL, NULL, NULL, 0),
(7, NULL, 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', '', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `oeuvreartiste`
--

CREATE TABLE IF NOT EXISTS `oeuvreartiste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idOeuvre` int(11) NOT NULL,
  `idArtiste` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `idOeuvre` (`idOeuvre`),
  KEY `idArtiste` (`idArtiste`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `oeuvreartiste`
--

INSERT INTO `oeuvreartiste` (`id`, `idOeuvre`, `idArtiste`) VALUES
(1, 6, 2),
(2, 5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `soumission`
--

CREATE TABLE IF NOT EXISTS `soumission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formulaire` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `oeuvre`
--
ALTER TABLE `oeuvre`
  ADD CONSTRAINT `oeuvre_ibfk_1` FOREIGN KEY (`arrondissement`) REFERENCES `arrondissement` (`nom`),
  ADD CONSTRAINT `oeuvre_ibfk_2` FOREIGN KEY (`categorie`) REFERENCES `categorie` (`nom`);

--
-- Contraintes pour la table `oeuvreartiste`
--
ALTER TABLE `oeuvreartiste`
  ADD CONSTRAINT `oeuvreartiste_ibfk_1` FOREIGN KEY (`idOeuvre`) REFERENCES `oeuvre` (`id`),
  ADD CONSTRAINT `oeuvreartiste_ibfk_2` FOREIGN KEY (`idArtiste`) REFERENCES `artiste` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
