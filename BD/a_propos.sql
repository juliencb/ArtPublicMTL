-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mar 13 Décembre 2016 à 19:17
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `artpublicmtl`
--

-- --------------------------------------------------------

--
-- Structure de la table `a_propos`
--

CREATE TABLE IF NOT EXISTS `a_propos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sommesT` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `sommesD` varchar(3000) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `missionT` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `missionD` varchar(3000) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `joindreT` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `joindreD` varchar(3000) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `partenaireT` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `partenaireD` varchar(3000) CHARACTER SET latin1 NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `a_propos`
--

INSERT INTO `a_propos` (`id`, `sommesT`, `sommesD`, `missionT`, `missionD`, `joindreT`, `joindreD`, `partenaireT`, `partenaireD`) VALUES
(1, 'Qui sommes nous', 'Bacon ipsum dolor amet shankle ball tip picanha sausage venison doner. Filet mignon bresaola salami, flank ground round short loin chicken shank alcatra shankle picanha fatback burgdoggen leberkas. T-bone kielbasa bresaola kevin turkey. Meatball salami kielbasa sausage, swine picanha pancetta jowl beef chuck filet mignon burgdoggen. Landjaeger bacon pastrami fatback, salami jerky meatball venison t-bone.', 'Notre mission', 'En sillonnant les rues de MontrÃ©al, il vous est sans doute dÃ©jà arrivÃ© de tomber, par hasard, sur une œuvre d’art placée là, tout bonnement, au coin de la rue ou vous travaillez, par exemple, ou au café que vous affectionnez. Qui sait? Des œuvres, à l’effigie de Paul Émile Borduas, de Félix Leclerc en passant par la chasse Galerie jusqu’à Gilles Vigneault. Oui, MontrÃ©al  regorge de plus de 300 œuvres rappelant que Montréal est bel est bien une ville culturellement riche. Qui a dit qu’admirer des œuvres d’art se faisait seulement à l’intérieur des murs d’un musée? Ici, l’art est public! Et, constituer un répertoire de ces œuvres est précisément la toute première mission d’ARTPUBLIC.', 'Nous joindre', 'Pour nous joindre, contactez: artpublic@montreal.qc ', 'Nos partenaire', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
