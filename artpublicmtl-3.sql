-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 05 Décembre 2016 à 19:35
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
CREATE DATABASE IF NOT EXISTS `artpublicmtl` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `artpublicmtl`;

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE IF NOT EXISTS `administrateur` (
  `nom` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `motDePasse` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`nom`),
  UNIQUE KEY `nom` (`nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `arrondissement`
--

CREATE TABLE IF NOT EXISTS `arrondissement` (
  `nom` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  PRIMARY KEY (`nom`),
  UNIQUE KEY `nom` (`nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `arrondissement`
--

INSERT INTO `arrondissement` (`nom`) VALUES
('Ahuntsic-Cartierville'),
('Anjou'),
('Baie-d''UrfÃ©'),
('Beaconsfield'),
('CÃ´te-des-Neiges-Notre-Dame-de-GrÃ¢ce'),
('CÃ´te-Saint-Luc'),
('Dollard-des-Ormeaux'),
('Dorval'),
('Hampstead'),
('Kirkland'),
('L''ÃŽle-Bizard-Sainte-GeneviÃ¨ve'),
('L''ÃŽle-Dorval'),
('Lachine'),
('LaSalle'),
('Le Plateau-Mont-Royal'),
('Le Sud-Ouest'),
('Mercier-Hochelaga-Maisonneuve'),
('Mont-Royal'),
('MontrÃ©al-Est'),
('MontrÃ©al-Nord'),
('MontrÃ©al-Ouest'),
('Outremont'),
('Pierrefonds-Roxboro'),
('Pointe-Claire'),
('RiviÃ¨re-des-Prairies-Pointe-aux-Trembles'),
('Rosemont-La Petite-Patrie'),
('Saint-Laurent'),
('Saint-LÃ©onard'),
('Sainte-Anne-de-Bellevue'),
('Senneville'),
('Verdun'),
('Ville-Marie'),
('Villeray-Saint-Michel-Parc-Extension'),
('Westmount');

-- --------------------------------------------------------

--
-- Structure de la table `artiste`
--

CREATE TABLE IF NOT EXISTS `artiste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noInterne` int(11) DEFAULT NULL,
  `nom` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `prenom` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `nomCollectif` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `biographie` varchar(2000) CHARACTER SET latin1 DEFAULT NULL,
  `valide` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `noInterne` (`noInterne`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=444 ;

--
-- Contenu de la table `artiste`
--

INSERT INTO `artiste` (`id`, `noInterne`, `nom`, `prenom`, `nomCollectif`, `biographie`, `valide`) VALUES
(1, 960, 'Coutu', 'Patrick', NULL, NULL, 0),
(2, 1098, 'Alloucherie', 'Jocelyne', NULL, 'Je suis une biographie', 0),
(4, 1135, 'Angers', 'Pierre Yves', NULL, NULL, 0),
(6, 1152, 'Arsenault', 'Denise', NULL, NULL, 0),
(7, 1156, NULL, NULL, 'Atelier TAG', NULL, 0),
(8, 1173, 'Adam', 'Henri-Georges', NULL, NULL, 0),
(9, 1394, 'Antoci', 'Rosario', NULL, NULL, 0),
(10, 1396, 'Aquino', 'Eduardo', NULL, NULL, 0),
(11, 6661, 'Streubel', 'Heinrich', NULL, NULL, 0),
(12, 1398, 'Inconnu', 'Auteur', NULL, NULL, 0),
(16, 3091, 'Pootoogook', 'Elijah Pudlat', NULL, NULL, 0),
(19, 1408, 'Baier', 'Nicolas', NULL, NULL, 0),
(21, 1174, 'Balboni', 'Carlo', NULL, NULL, 0),
(22, 1424, 'BÃ©langer', 'Octave', NULL, NULL, 0),
(23, 1177, 'Benet', 'EugÃ¨ne-Paul', NULL, NULL, 0),
(24, 1179, 'Berezowsky', 'Liliana', NULL, NULL, 0),
(25, 1180, 'Bergeron', 'Germain', NULL, NULL, 0),
(26, 1433, 'BÃ©rubÃ©', 'Patrick', NULL, NULL, 0),
(27, 1183, 'Boisvert', 'Gilles', NULL, NULL, 0),
(29, 1184, 'Borduas', 'Paul', NULL, NULL, 0),
(30, 1453, 'Borduas', 'Paul-Ã‰mile', NULL, NULL, 0),
(36, 1458, 'Boudot', 'Lucien', NULL, NULL, 0),
(37, 1462, 'Bourassa', 'Guy', NULL, NULL, 0),
(38, 1185, 'Bourgault', 'Pierre', NULL, NULL, 0),
(39, 1186, 'Bourgeau', 'Annick', NULL, NULL, 0),
(41, 1187, 'Boyer', 'Gilbert', NULL, NULL, 0),
(43, 1473, 'BriÃ¨re', 'Marie-France', NULL, NULL, 0),
(44, 1188, 'Brunet', 'Ã‰mile', NULL, NULL, 0),
(46, 1189, 'Buren', 'Daniel', NULL, NULL, 0),
(47, 1190, 'Burman', 'Irving', NULL, NULL, 0),
(48, 1191, 'Cadieux', 'Alain', NULL, NULL, 0),
(49, 1192, 'Calder', 'Alexander', NULL, NULL, 0),
(50, 1193, 'Cantieni', 'Graham', NULL, NULL, 0),
(51, 1194, 'Cardenas', 'Augustin', NULL, NULL, 0),
(52, 1195, 'Carpentier', 'Jacques', NULL, NULL, 0),
(55, 1496, 'Cartier', 'Jean', NULL, NULL, 0),
(56, 1196, 'Casini', 'Guido', NULL, NULL, 0),
(58, 1197, 'Cavalli', 'Roger', NULL, NULL, 0),
(59, 1504, 'Charland-Favretti', 'Lyse', NULL, NULL, 0),
(60, 1198, 'Charney', 'Melvin', NULL, NULL, 0),
(61, 1199, 'Chavignier', 'Louis', NULL, NULL, 0),
(62, 1509, 'Comtois', 'Ulysse', NULL, NULL, 0),
(63, 1511, 'Connolly', 'Reynald', NULL, NULL, 0),
(64, 1200, NULL, NULL, 'Cooke-Sasseville', NULL, 0),
(66, 1515, 'Covit', 'Linda', NULL, NULL, 0),
(70, 1202, 'Daoust', 'Sylvia', NULL, NULL, 0),
(71, 1203, 'Dardel', 'RenÃ©', NULL, NULL, 0),
(72, 1204, 'Daudelin', 'Charles', NULL, NULL, 0),
(76, 1205, 'De Almeida', 'Charters', NULL, NULL, 0),
(77, 1206, 'De Broin', 'Michel', NULL, NULL, 0),
(79, 1207, 'De Leon Imao', 'Abdulmari Jr.', NULL, NULL, 0),
(80, 1208, 'De Palma', 'Armand', NULL, NULL, 0),
(81, 1547, 'De Tonnancour', 'Jacques', NULL, NULL, 0),
(82, 1209, 'DebrÃ©', 'Olivier', NULL, NULL, 0),
(83, 1210, 'Delavalle', 'Jean-Marie', NULL, NULL, 0),
(84, 1552, 'Delfosse', 'George', NULL, NULL, 0),
(85, 1211, 'DÃ©midoff-SÃ©guin', 'Tatiana', NULL, NULL, 0),
(87, 1212, 'Dubois', 'Pierre-Gilles', NULL, NULL, 0),
(88, 1213, 'Dubray', 'Vital', NULL, NULL, 0),
(89, 1214, 'Dumouchel', 'AgnÃ¨s', NULL, NULL, 0),
(90, 1215, 'Duval', 'Lucie', NULL, NULL, 0),
(92, 1219, 'Dyens', 'Georges', NULL, NULL, 0),
(93, 1220, 'Edstrom', 'Peter David', NULL, NULL, 0),
(94, 1221, 'Eloul', 'Kosso', NULL, NULL, 0),
(95, 1572, 'Faniel', 'Alfred', NULL, NULL, 0),
(96, 1574, 'Farley', 'Denis', NULL, NULL, 0),
(97, 1575, 'Filion', 'Armand', NULL, NULL, 0),
(99, 1576, 'Fiorucci', 'Vittorio', NULL, NULL, 0),
(101, 1223, 'Fontaine', 'Lorraine', NULL, NULL, 0),
(102, 1584, 'Fortin', 'Marc-AurÃ¨le', NULL, NULL, 0),
(103, 1222, 'Fournelle', 'AndrÃ©', NULL, NULL, 0),
(108, 1225, 'Galipeau', 'Benoit', NULL, NULL, 0),
(109, 1226, 'Gavoty', 'Jean-FranÃ§ois', NULL, NULL, 0),
(110, 1227, 'Gladstone', 'Gerald', NULL, NULL, 0),
(111, 1228, 'Gnass', 'Peter', NULL, NULL, 0),
(112, 1229, 'Gokakis', 'Spyros', NULL, NULL, 0),
(113, 1230, 'Gorduz', 'Vasile', NULL, NULL, 0),
(114, 1231, 'Goulet', 'Michel', NULL, NULL, 0),
(120, 1232, 'Goulet', 'Rose-Marie', NULL, NULL, 0),
(123, 1233, 'Granche', 'Pierre', NULL, NULL, 0),
(124, 1234, 'Granet', 'Roseline', NULL, NULL, 0),
(126, 1236, 'Hayeur', 'Isabelle', NULL, NULL, 0),
(127, 1645, 'HÃ©bert', 'Adrien', NULL, NULL, 0),
(128, 1237, 'HÃ©bert', 'Henri', NULL, NULL, 0),
(130, 1653, 'HÃ©bert', 'Jacques', NULL, NULL, 0),
(131, 1238, 'HÃ©bert', 'Louis-Philippe', NULL, NULL, 0),
(135, 1239, 'Heyvaert', 'Pierre', NULL, NULL, 0),
(136, 1240, 'Hill', 'George William', NULL, NULL, 0),
(139, 1671, 'Holgate', 'Edwin H.', NULL, NULL, 0),
(140, 1242, 'Hunt', 'Henry', NULL, NULL, 0),
(141, 1243, 'Hunter', 'Raoul', NULL, NULL, 0),
(143, 1246, 'Jarnuszkiewicz', 'Jacek', NULL, NULL, 0),
(144, 1681, 'Keyt', 'George', NULL, NULL, 0),
(289, 1247, 'Lachapelle', 'Guillaume', NULL, NULL, 0),
(291, 1248, 'LalibertÃ©', 'Alfred', NULL, NULL, 0),
(296, 1694, 'Lamarche', 'Claude', NULL, NULL, 0),
(299, 1249, 'Lancz', 'Paul', NULL, NULL, 0),
(302, 1250, 'Langevin', 'Roger', NULL, NULL, 0),
(304, 1707, 'Lapalme', 'Robert', NULL, NULL, 0),
(305, 1709, 'Lapointe', 'MichÃ¨le', NULL, NULL, 0),
(307, 1251, 'LarivÃ©e', 'Francine', NULL, NULL, 0),
(308, 1252, 'LariviÃ¨re', 'Gilles', NULL, NULL, 0),
(309, 1253, 'Lasalle', 'Jules', NULL, NULL, 0),
(314, 1254, 'Lawson', 'Georges Anderson', NULL, NULL, 0),
(315, 1255, 'Leblanc', 'Pierre', NULL, NULL, 0),
(321, 1257, 'Lebourg', 'Charles-Auguste', NULL, NULL, 0),
(322, 1258, 'Leclerc', 'Pierre E.', NULL, NULL, 0),
(323, 1256, 'LefÃ©bure', 'Jean', NULL, NULL, 0),
(324, 1260, 'Lemieux', 'F. Maurice', NULL, NULL, 0),
(329, 1259, 'Lemieux', 'Lisette', NULL, NULL, 0),
(333, 1262, NULL, NULL, 'Les Industries perdues', NULL, 0),
(334, 1263, 'Lui', 'Andrew', NULL, NULL, 0),
(335, 1264, 'Maler', 'Miroslav Frederik', NULL, NULL, 0),
(337, 1772, 'McCarthy', 'Coeur de lion', NULL, NULL, 0),
(338, 1241, 'Hilton-Moore', 'Marlene', NULL, NULL, 0),
(339, 1775, 'Merola', 'Mario', NULL, NULL, 0),
(341, 1266, 'Mihalcean', 'Gilles', NULL, NULL, 0),
(344, 1267, 'Millette', 'Claude', NULL, NULL, 0),
(348, 2786, 'Mitchell', 'Robert', NULL, NULL, 0),
(349, 1270, 'Moore', 'David', NULL, NULL, 0),
(350, 1797, 'Moreau', 'Mathurin', NULL, NULL, 0),
(351, 1271, 'Morin', 'Jean-Pierre', NULL, NULL, 0),
(353, 1802, 'Morin', 'Madeleine', NULL, NULL, 0),
(354, 1804, 'Morosoli', 'JoÃ«lle', NULL, NULL, 0),
(355, 1805, 'Mott', 'J.L.', NULL, NULL, 0),
(357, 1272, 'Nadeau', 'Guy', NULL, NULL, 0),
(359, 1806, 'Nadeau', 'Marc-Antoine', NULL, NULL, 0),
(360, 1273, 'Narita', 'Takera', NULL, NULL, 0),
(361, 1274, 'Nepveu', 'Robert', NULL, NULL, 0),
(362, 1275, 'Olariu', 'Octavian', NULL, NULL, 0),
(363, 1808, 'O''Shea', 'John Patrick', NULL, NULL, 0),
(364, 1829, 'Paiement', 'Alain', NULL, NULL, 0),
(366, 1276, 'Pang', 'Tin Neon', NULL, NULL, 0),
(367, 1277, 'Pellegrinuzzi', 'Roberto', NULL, NULL, 0),
(369, 1830, 'Pellerin', 'Guy', NULL, NULL, 0),
(370, 1278, 'Pelletier', 'Robert', NULL, NULL, 0),
(371, 1831, 'Pellus', 'Raymond', NULL, NULL, 0),
(372, 1279, 'Pelzer', 'Alfonso', NULL, NULL, 0),
(373, 1280, 'Pillhofer', 'Josef', NULL, NULL, 0),
(374, 1832, 'Pilot', 'Robert', NULL, NULL, 0),
(375, 1282, 'Planes', 'JosÃ©', NULL, NULL, 0),
(376, 1283, 'Poliquin', 'Jean-NoÃ«l', NULL, NULL, 0),
(377, 1285, 'Poulin', 'Roland', NULL, NULL, 0),
(378, 1286, 'Prent', 'Mark', NULL, NULL, 0),
(379, 1288, 'Reddy', 'Krishna', NULL, NULL, 0),
(380, 1846, 'Reusch', 'Astri', NULL, NULL, 0),
(381, 1849, 'Rochette', 'Sylvie', NULL, NULL, 0),
(382, 2883, 'Rolland', 'Dominique', NULL, NULL, 0),
(384, 1291, 'Roussil', 'Robert', NULL, NULL, 0),
(388, 1293, 'Sandonato', 'Aurelio', NULL, NULL, 0),
(389, 1294, 'Santini', 'Laura', NULL, NULL, 0),
(390, 1295, 'Saxe', 'Henry', NULL, NULL, 0),
(391, 1296, 'Schleeh', 'Hans', NULL, NULL, 0),
(392, 1297, 'Sebastian', NULL, NULL, NULL, 0),
(393, 1850, 'Si Tu', 'Jie', NULL, NULL, 0),
(394, 1298, 'Signori', 'Carlos Sergio', NULL, NULL, 0),
(395, 1299, 'Sklavos', 'YÃ©rassimo (Gerasimos)', NULL, NULL, 0),
(396, 1300, 'Szekely', 'Pierre', NULL, NULL, 0),
(397, 1902, 'Taccola', 'U', NULL, NULL, 0),
(398, 1904, 'Taylor', 'William Hughes', NULL, NULL, 0),
(399, 1905, 'Tett', 'Alison', NULL, NULL, 0),
(401, 1301, 'ThÃ©berge', 'Claude', NULL, NULL, 0),
(403, 1302, 'Thorvaldsen', 'Berthel', NULL, NULL, 0),
(404, 1908, 'Topham', 'William Thurston', NULL, NULL, 0),
(405, 1303, 'Toto', 'Carlos Maria', NULL, NULL, 0),
(406, 1304, 'Trudeau', 'Yves', NULL, NULL, 0),
(409, 1305, 'Vaillancourt', 'Armand', NULL, NULL, 0),
(414, 1306, 'Valade', 'Dominique', NULL, NULL, 0),
(418, 1909, 'Van Der Heide', 'Herman J.', NULL, NULL, 0),
(419, 1307, 'Vazan', 'Bill', NULL, NULL, 0),
(422, 1910, 'VÃ©giard', 'Alfonse', NULL, NULL, 0),
(423, 1911, 'Vermette', 'Claude', NULL, NULL, 0),
(424, 1308, 'Viger', 'Louise', NULL, NULL, 0),
(425, 1309, 'Vincent', 'Joseph-Arthur', NULL, NULL, 0),
(426, 1310, 'Vivot', 'LÃ©a', NULL, NULL, 0),
(427, 1311, 'Wade', 'George Edward', NULL, NULL, 0),
(428, 1312, 'Widgery', 'Catherine', NULL, NULL, 0),
(430, 1313, 'Winant', 'Alice', NULL, NULL, 0),
(431, 1314, 'Witebsky', 'Shirley', NULL, NULL, 0),
(432, 1315, 'Wood', 'Marshall', NULL, NULL, 0),
(433, 1284, 'Pelletier', 'Luce', NULL, NULL, 0),
(434, 1235, 'Hannah', 'Adad', NULL, NULL, 0),
(435, 3094, 'Lauda', 'Jiri Georges', NULL, NULL, 0),
(436, 1178, 'BÃ©langer', 'GwenaÃ«l', NULL, NULL, 0),
(437, 1181, 'Besner', 'Jean-Jacques', NULL, NULL, 0),
(438, 5598, NULL, NULL, 'Daily tous les jours', NULL, 0),
(439, 3103, 'Montillaud', 'Francis', NULL, NULL, 0),
(440, 3106, 'Wilson', 'Robert', NULL, NULL, 0),
(441, 1182, 'Bisson', 'Yvette', NULL, NULL, 0),
(442, 5797, 'Sylvain', 'Catherine', NULL, NULL, 0),
(443, 6671, NULL, NULL, 'BGL', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `caroussel`
--

CREATE TABLE IF NOT EXISTS `caroussel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idOeuvre` int(11) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `nom` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  PRIMARY KEY (`nom`),
  UNIQUE KEY `nom` (`nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`nom`) VALUES
('Ã‰maux'),
('Bois/menuiserie d''art'),
('CÃ©ramique'),
('Design industriel'),
('Installation'),
('Mobilier'),
('Mosaique'),
('MultimÃ©dia'),
('Peinture'),
('Photographie'),
('Sculpture'),
('Techniques mixtes'),
('Verre'),
('Vitrail');

-- --------------------------------------------------------

--
-- Structure de la table `oeuvre`
--

CREATE TABLE IF NOT EXISTS `oeuvre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noInterne` int(11) DEFAULT NULL,
  `titre` varchar(100) CHARACTER SET latin1 NOT NULL,
  `titreVariante` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `nomCollection` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `categorieObjet` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `modeAcquisition` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `dateAccession` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `materiaux` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `support` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `technique` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `dimensionsGenerales` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `parc` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `batiment` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `adresseCivique` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `coordonneeLatitude` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `coordonneeLongitude` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `mediums` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `numeroAccession` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(2000) CHARACTER SET latin1 DEFAULT NULL,
  `urlImage` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `arrondissement` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `categorie` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `idArtiste` int(1) DEFAULT NULL,
  `valide` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `idArtiste` (`idArtiste`),
  KEY `arrondissement` (`arrondissement`),
  KEY `categorie` (`categorie`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=599 ;

--
-- Contenu de la table `oeuvre`
--

INSERT INTO `oeuvre` (`id`, `noInterne`, `titre`, `titreVariante`, `nomCollection`, `categorieObjet`, `modeAcquisition`, `dateAccession`, `materiaux`, `support`, `technique`, `dimensionsGenerales`, `parc`, `batiment`, `adresseCivique`, `coordonneeLatitude`, `coordonneeLongitude`, `mediums`, `numeroAccession`, `description`, `urlImage`, `arrondissement`, `categorie`, `idArtiste`, `valide`) VALUES
(301, 1099, 'Porte de jour', 'Une porte rouge (ouverte, rougeÃ¢tre, solaire)', 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al (Concou', '/Date(1082865600000-0400)/', 'acier corten', NULL, 'SoudÃ©', '298 x 350 x 1070 cm', 'Square Dalhousie', NULL, NULL, '45.512090', '-73.550979', NULL, '2004-SC-08', '', 'hub_04', 'Ville-Marie', 'Installation', 2, 0),
(303, 1127, 'Le malheureux magnifique', NULL, 'Art public', 'Beaux-arts', 'Achat directement Ã  l''artiste', '/Date(677995200000-0400)/', 'Ciment; fer; peinture', NULL, 'AssemblÃ©; cimentÃ©; peint', '340 x 235 x 310', 'Intersection des rues Sherbrooke et Saint-Denis', NULL, '385, rue Sherbrooke Est, MontrÃ©al, (QC) H2X 3L1', '45.516907', '-73.567846', NULL, '910021.0', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 4, 0),
(304, 1137, 'Les clochards cÃ©lestes', 'Monumental III', 'Art public', 'Beaux-arts', 'Cession', '/Date(1273204800000-0400)/', 'Ciment; fer; peinture', NULL, 'AssemblÃ©; cimentÃ©; peint', '640 x 250 x 420 cm', 'Parc Miville-Couture', NULL, NULL, '45.516853', '-73.555153', NULL, '1983-SC-03', '', '', 'Ville-Marie', 'Sculpture', 4, 0),
(305, 1151, 'Discours du roi poÃ¨te', NULL, 'Art public', 'Beaux-arts', 'Don', NULL, 'Calcaire', NULL, NULL, '233 X 56 X 63 cm', 'Place Roland-Proulx', NULL, NULL, '45.472390', '-73.584704', NULL, '1982-APE-SC-18', '', '', 'Le Sud-Ouest', 'Sculpture', 6, 0),
(306, 1157, 'Hommage Ã  JÃ©rÃ´me Le Royer De La DauversiÃ¨re', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', NULL, 'Acier Corten; acier inoxydable; verre trempÃ©', NULL, NULL, '84 x 193 x 81', 'Place De La DauversiÃ¨re', NULL, NULL, '45.508493', '-73.5533', NULL, '1999-SC-04', '', '', 'Ville-Marie', 'Sculpture', 7, 0),
(307, 1391, 'ObÃ©lisque oblique', NULL, 'Art public', 'Beaux-arts', 'Autre', NULL, 'Acier inoxydable', NULL, 'PliÃ©es; soudÃ©es; boulonnÃ©es', '546 x 160 x 190', 'Parc Jean-Drapeau, ÃŽle Notre-Dame', 'Casino de MontrÃ©al', '1 Avenue du Casino, MontrÃ©al, QC H3C 4W7', '45.506046', '-73.526706', NULL, '901425.0', '', '', 'Ville-Marie', 'Sculpture', 8, 0),
(310, 1399, 'Non titrÃ© (Murale en relief et sculpture)', 'Murale en relief et sculpture (extÃ©rieur)', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Centre du Plateau', '2275 boul.St-Joseph Est, MontrÃ©al, (Qc) H2H 1G4', '45.539713', '-73.576110', NULL, '1962-IA-SC-0001', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 11, 0),
(311, 1400, 'Non titrÃ© (Vitraux)', 'Vitraux', 'IntÃ©gration Ã  l''architecture', 'Arts dÃ©coratifs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HÃ´tel de Ville de MontrÃ©al', '275 Rue Notre-Dame Est, MontrÃ©al, QC H2Y 1C6', '45.508816', '-73.554069', NULL, '1878-IA-VT-0001', '', '', 'Ville-Marie', 'Vitrail', 12, 0),
(312, 1401, 'Non titrÃ© (Vitraux)', 'Vitraux', 'IntÃ©gration Ã  l''architecture', 'Arts dÃ©coratifs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BibliothÃ¨que Mile-End', '5434 Avenue du Parc, MontrÃ©al, QC H2V 4G7', '45.521778', '-73.601548', NULL, '1898-IA-VT-0001', '', '', 'Le Plateau-Mont-Royal', 'Vitrail', 12, 0),
(313, 1402, 'Non titrÃ© (Vitraux)', 'Vitraux', 'IntÃ©gration Ã  l''architecture', 'Arts dÃ©coratifs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ã‰difice Gaston-Miron', '1210, rue Sherbrooke Est, MontrÃ©al (QuÃ©bec) H2L 1L9', '45.522741', '-73.565331', NULL, '1917-IA-VT-0001', '', '', 'Ville-Marie', 'Vitrail', 12, 0),
(314, 1403, 'Non titrÃ© (Vitraux)', 'Vitraux', 'IntÃ©gration Ã  l''architecture', 'Arts dÃ©coratifs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Centre Laurier', '1115 Laurier Est, MontrÃ©al', '45.531814', '-73.587131', NULL, '1930-IA-VT-0001', '', '', 'Le Plateau-Mont-Royal', 'Vitrail', 12, 0),
(315, 1404, 'Non titrÃ© (Murale inuit)', 'Murale inuit', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', NULL, NULL, NULL, NULL, NULL, NULL, 'Parc Jean-Drapeau, ÃŽle Notre-Dame', 'Pavillon de l''administration, parc Jean-Drapeau', '1 Circuit Gilles Villeneuve ÃŽle Notre-Dame, MontrÃ©al, QuÃ©bec, H3C 1A9', '45.503792', '-73.529322', NULL, '1967-IA-PE-0001', '', '', 'Ville-Marie', 'Peinture', 16, 0),
(317, 1407, 'Non titrÃ© (Fontaine, mosaÃ¯que)', 'Fontaine (mosaÃ¯que)', 'IntÃ©gration Ã  l''architecture', 'Arts dÃ©coratifs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Station de pompage centrale (Atwater)', '3161, rue Joseph, MontrÃ©al', '45.472308', '-73.572944', NULL, '1918-IA-MO-0001', '', '', 'Le Sud-Ouest', 'Mosaique', 12, 0),
(321, 1425, 'Champlain visite de nouveau le site de MontrÃ©al en 1611', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503909', '-73.587452', NULL, '1931-IA-PE-0001', '', '', 'Ville-Marie', 'Peinture', 22, 0),
(322, 1426, 'Monument Ã  Jean Vauquelin', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', NULL, 'Bronze; granit', NULL, 'Bronze coulÃ©; pierre taillÃ©e', '680cm x 400 cm x 400 cm approximatif', 'Place Vauquelin', NULL, NULL, '45.508588', '-73.554655', NULL, '900935.0', '', '', 'Ville-Marie', 'Sculpture', 23, 0),
(323, 1428, 'Smoke and steel', NULL, 'Art public', 'Beaux-arts', NULL, NULL, NULL, NULL, NULL, '260 x 60 x 90 cm', NULL, 'Caserne d''incendie 22', '5455, rue Antonio-Dagenais, Saint-LÃ©onard (QuÃ©bec) H1S 2X3', '45.582705', '-73.585774', NULL, '', '', '', 'Saint-LÃ©onard', 'Sculpture', 24, 0),
(324, 1431, 'Le cycliste', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'SoudÃ©; peint', '425 x 140 x 539 cm', 'Parc de West Vancouver', NULL, NULL, '45.456655', '-73.542746', NULL, '1990-SC-15', '', '', 'Verdun', 'Sculpture', 25, 0),
(326, 1441, 'L''arbre des gÃ©nÃ©rations', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier (feuille)', NULL, 'DÃ©coupÃ©; soudÃ©; boulonnÃ©; peint', '385 x 275 x 548 cm', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S 4L9', '45.430699', '-73.666113', NULL, '2002-SC-10', '', '', 'Lachine', 'Sculpture', 27, 0),
(327, 1443, 'Vire au vent', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier brut, acier peint', NULL, 'Soudage; boulonnage; peint', '495 x 610 x 295 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428480', '-73.682451', NULL, '2002-AP-SC-28', '', '', 'Lachine', 'Sculpture', 27, 0),
(329, 1450, 'Carte du site de MontrÃ©al par Champlain en 1611', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503986', '-73.587585', NULL, '1931-IA-PE-0002', '', '', 'Ville-Marie', 'Peinture', 30, 0),
(330, 1451, 'Les anciennes possessions franÃ§aises en AmÃ©rique', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503969', '-73.587623', NULL, '1931-IA-PE-0003', '', '', 'Ville-Marie', 'Peinture', 30, 0),
(331, 1452, 'Les voyages de Jacques Cartier au Canada en 1534 et 1535', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503961', '-73.587657', NULL, '1931-IA-PE-0004', '', '', 'Ville-Marie', 'Peinture', 30, 0),
(332, 1454, 'MontrÃ©al de 1645 Ã  1672', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503945', '-73.587697', NULL, '1931-IA-PE-0005', '', '', 'Ville-Marie', 'Peinture', 30, 0),
(333, 1455, 'MontrÃ©al en 1760', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503918', '-73.587731', NULL, '1931-IA-PE-0006', '', '', 'Ville-Marie', 'Peinture', 30, 0),
(334, 1456, 'Plan d''Hochelaga par Jacques Cartier en 1535', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503874', '-73.587727', NULL, '1931-IA-PE-0007', '', '', 'Ville-Marie', 'Peinture', 30, 0),
(335, 1457, 'Jacques Cartier est reÃ§u par le chef Agouhana', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503842', '-73.587707', NULL, '1931-IA-PE-0008', '', '', 'Ville-Marie', 'Peinture', 36, 0),
(337, 1463, 'Le village imaginÃ©. Â«Le renard l''emporte, le suit Ã  la traceâ€¦Â»', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', NULL, 'Aluminium, manganÃ¨se et chrome poli (jeu de ficel', NULL, 'AssemblÃ©; soudÃ©', 'Ensemble de l''Å“uvre : 98 x 115 m', 'Parc Marguerite-Bourgeoys', NULL, NULL, '45.475158', '-73.558862', NULL, '2005-SC-03', '', '', 'Le Sud-Ouest', 'Installation', 38, 0),
(338, 1465, 'Monument Ã  Jean Drapeau', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(978325200000-0500)/', 'Bronze; granit', NULL, 'Bronze coulÃ©; cire perdue', '287 X 200 x 200 cm', 'Place De La DauversiÃ¨re', NULL, NULL, '45.50853', '-73.55342', NULL, '2001-APE-SC-10', '', '', 'Ville-Marie', 'Sculpture', 39, 0),
(340, 1468, 'La montagne des jours', NULL, 'Art public', 'Beaux-arts', 'Achat', '/Date(834724800000-0400)/', 'Granit', NULL, 'GravÃ© au jet de sable; poli', '153 X 8 cm', 'Parc du Mont-Royal', NULL, NULL, '45.507069', '-73.590031', NULL, '910977.0', '', '', 'Ville-Marie', 'Sculpture', 41, 0),
(341, 1470, 'MÃ©moire ardente', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al (Concou', '/Date(754722000000-0500)/', 'Granit; acier inoxydable', NULL, NULL, '197 x 197 x 197', 'Promenade de la Commune', NULL, NULL, '45.508932', '-73.551062', NULL, '940636.0', '', '', 'Ville-Marie', 'Sculpture', 41, 0),
(343, 1474, 'Monument Ã  sir Wilfrid Laurier', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(-513460800000-0400)/', 'Bronze; granit', NULL, 'Bronze coulÃ©', '622 x 490 x 106 cm', 'Square Dorchester', NULL, NULL, '45.4994744', '-73.571061', NULL, '530924.0', '', '', 'Ville-Marie', 'Sculpture', 44, 0),
(344, 1476, 'Monument au frÃ¨re AndrÃ©', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(504939600000-0500)/', 'Bronze; granit', NULL, 'Bronze coulÃ©', '301 x 120 x 50cm', 'Place du frÃ¨re AndrÃ©', NULL, NULL, '45.503309', '-73.566600', NULL, '900985.0', '', '', 'Ville-Marie', 'Sculpture', 44, 0),
(345, 1478, 'Neuf couleurs au vent', NULL, 'Art public', 'Beaux-arts', 'Achat', '/Date(985928400000-0500)/', 'Aluminium; nylon', NULL, 'SoudÃ©; sÃ©rigraphiÃ©', '1650 x 110 x 2510 cm', 'Place Urbain-Baudreau-Graveline', NULL, NULL, '45.521709', '-73.565776', NULL, '1996-APE-SC-08', '', '', 'Le Plateau-Mont-Royal', 'Installation', 46, 0),
(346, 1480, 'Sans titre', 'Non titrÃ©e (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-119214000000-0500)/', 'Calcaire', NULL, 'TaillÃ©; sculptÃ©', '244 X 206 cm', 'Parc du Mont-Royal', NULL, NULL, '45.499327', '-73.594604', NULL, '902404.0', '', '', 'Ville-Marie', 'Sculpture', 47, 0),
(347, 1482, 'Table Ronde', NULL, 'Art public', 'Beaux-arts', 'Transfert', NULL, 'BÃ©ton armÃ©; aluminium peint', NULL, 'AssemblÃ©; soudÃ©', NULL, NULL, 'Mairie d''arrondissement de LaSalle', '55 avenue Dupras', '45.428134', '-73.661771', NULL, '1984-APE-SC-06', '', '', 'LaSalle', 'Installation', 48, 0),
(348, 1484, 'Trois disques', 'Man, Three Disks;\rL''Homme; Man; The Man', 'Art public', 'Beaux-arts', 'Don', '/Date(-68583600000-0500)/', 'Acier inoxydable', NULL, 'DÃ©coupÃ©; assemblÃ©; boulonnÃ©; soudÃ© ', '2130 x 2200 x 1625 cm', 'Parc Jean-Drapeau, ÃŽle Sainte-HÃ©lÃ¨ne', NULL, NULL, '45.510658', '-73.536837', NULL, '1976-SC-05', '', '', 'Ville-Marie', 'Sculpture', 49, 0),
(349, 1486, 'HermÃ¨s', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'SoudÃ©; peint; boulonnÃ©', '320 x 370 x 570 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428752', '-73.683435', NULL, '2002-AP-SC-29', '', '', 'Lachine', 'Sculpture', 50, 0),
(350, 1488, 'Sans titre', 'Non titrÃ©e (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-120596400000-0500)/', 'Schiste', NULL, 'SculptÃ©', '412cm x 107cm', 'Parc du Mont-Royal', NULL, NULL, '45.500036', '-73.594996', NULL, '902230.0', '', '', 'Ville-Marie', 'Sculpture', 51, 0),
(351, 1490, 'Non titrÃ©', NULL, 'Art public', 'Beaux-arts', NULL, NULL, 'Acier peint', NULL, 'SoudÃ©s; peints', '700 x 82.5 x 82.5 cm', 'Parc Serge-Garant', NULL, 'Rue Beaudry', '45.519070', '-73.556071', NULL, '902225.0', '', '', 'Ville-Marie', 'Sculpture', 52, 0),
(352, 1492, 'Trilogie', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1041310800000-0500)/', 'Acier peint', NULL, 'SoudÃ©; peint', '380 x 366 x 366 cm', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S 4L9', '45.430106', '-73.666757', NULL, '2002-SC-11', '', '', 'Lachine', 'Sculpture', 52, 0),
(353, 1494, 'Communion', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(641188800000-0400)/', 'Acier peint', NULL, 'SoudÃ©; peint', '335 x 427 x 853cm', 'Parc des Rapides', NULL, NULL, '45.423958', '-73.598574', NULL, '1990-APE-SC-10', '', '', 'LaSalle', 'Sculpture', 52, 0),
(354, 1497, 'Non titrÃ© (mosaÃ¯que en cÃ©ramique)', 'Sans titre (mosaÃ¯que en cÃ©ramique)', 'IntÃ©gration Ã  l''architecture', 'Arts dÃ©coratifs', 'IntÃ©gration des arts Ã  l''architecture', '/Date(-347137200000-0500)/', 'Peinture; cÃ©ramique', NULL, 'Peint; assemblÃ©', '381 x 554 cm', NULL, 'Centre rÃ©crÃ©atif Gadbois', '5485, chemin de la CÃ´te-Saint-Paul, MontrÃ©al (QuÃ©bec) H4C 1X3', '45.466425', '-73.595811', NULL, '1959-IA-CE-0001', '', '', 'Le Sud-Ouest', 'CÃ©ramique', 55, 0),
(355, 1498, 'Monument Ã  Giovanni Caboto', NULL, 'Art public', 'Beaux-arts', 'Don', NULL, 'Bronze; travertin', NULL, 'Bronze coulÃ©; cire perdue', '875 x 800 x 800', 'Square Cabot', NULL, NULL, '45.489490', '-73.583652', NULL, '350901.0', '', '', 'Ville-Marie', 'Sculpture', 56, 0),
(356, 1500, 'Non titrÃ© ', 'Bronzes', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Inconnu', NULL, 'Bronze', NULL, 'Moulage', '(2) 165 x 245 x 137 cm ', 'Complexe aquatique, Parc Jean-Drapeau', NULL, '130, chemin du Tour-de-l''Isle', '45.512832', '-73.534573', NULL, '1952-IA-SC-0001', '', '', 'Ville-Marie', 'Sculpture', 56, 0),
(357, 1501, 'La femme-fontaine', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Pierre', NULL, 'Taille directe', '183,50 x 57,50 x 40,70 cm', NULL, 'Centre culturel de Verdun', '5955 Bannantyne, Verdun, QuÃ©bec, H4H 1H6', '45.448399', '-73.577621', NULL, '1967-SC-21', '', '', 'Verdun', 'Sculpture', 58, 0),
(359, 1505, 'Gratte-ciel, cascades d''eau / rues, ruisseauâ€¦ une construction', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la ville de MontrÃ©al (Concou', '/Date(669358800000-0500)/', 'Acier inoxydable; bÃ©ton; granit', NULL, 'Multiple', '1700 x 7500 x 5000 cm', 'Place Ã‰milie-Gamelin', NULL, NULL, '45.515449', '-73.560028', NULL, '926087.0', '', '', 'Ville-Marie', 'Installation', 60, 0),
(360, 1507, 'Le carrousel sauvage', 'Le carrousel sauvage (SISM-64)\rLe manÃ¨ge d''amour', 'Art public', 'Beaux-arts', 'Achat', '/Date(-119214000000-0500)/', 'Calcaire; bÃ©ton', NULL, 'TaillÃ©; assemblÃ©', '315 x 1828 cm', 'Parc du Mont-Royal', NULL, NULL, '45.501169', '-73.594040', NULL, '642245.0', '', '', 'Ville-Marie', 'Sculpture', 61, 0),
(361, 1510, 'DÃ©cor', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'SoudÃ©; peint', '134 x 65 x 97 cm', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S 4L9', '45.429875', '-73.666409', NULL, '2002-AP-SC-0071', '', '', 'Lachine', 'Sculpture', 62, 0),
(362, 1512, 'L''eau et la nourriture', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Commande Ã  l''artiste', '/Date(252478800000-0500)/', 'Aluminium', 'Aluminium', 'Aluchromie', ' 274,5 x 812 cm', NULL, 'Usine de filtration Charles-J. des Baillets', '8585, Boulevard De La VÃ©rendrye, LaSalle, QuÃ©bec, H8N 2K2', '45.425053', '-73.619043', NULL, '1978-IA-PE-0001', '', '', 'LaSalle', 'Peinture', 63, 0),
(364, 1514, 'MÃ©langez le Tout', 'Le batteur Ã  Å“ufs', 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', '/Date(1311652800000-0400)/', 'Aluminium', NULL, 'DÃ©coupe au laser; assemblage; peinture Ã©lectrost', '580 x 365 cm', NULL, 'Centre Jean-Claude-MalÃ©part', '2633 Ontario Est, MontrÃ©al, QC H2K 1W8', '45.534340', '-73.552733', NULL, '2011-AP-SC-0031', '', '', 'Ville-Marie', 'Sculpture', 64, 0),
(366, 1518, 'Theatre for Sky Blocks', 'ThÃ©Ã¢tre pour fragments cÃ©lestes', 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; encre de sÃ©rigraphie; granit vert laurenti', NULL, 'Soudure; sÃ©rigraphie; peinture; coupage', '300 x 250 x 1000 cm', 'Parc Fort-Rolland', NULL, NULL, '45.433893', '-73.696750', NULL, '2002-SC-49', '', '', 'Lachine', 'Installation', 66, 0),
(367, 1520, 'Les graminÃ©es du jardin Saint-Sulpice', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al (Concou', '/Date(1167627600000-0500)/', 'Acier inoxydable', NULL, 'CoupÃ©; soudÃ©', '244 x 1000', 'Parc Berthe-Louard', NULL, '9355, avenue de GalilÃ©e', '45.559348', '-73.641608', NULL, '2007-IN-02', '', '', 'Ahuntsic-Cartierville', 'Installation', 66, 0),
(368, 1522, 'Give Peace a Chance', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', NULL, 'Calcaire; plantes indigÃ¨nes', NULL, 'Pierre taillÃ©e', '2300 x 640 cm', 'Parc du Mont-Royal', NULL, NULL, '45.505007', '-73.583820', NULL, '2009-IN-05', '', '', 'Ville-Marie', 'Installation', 66, 0),
(371, 1528, 'Agora', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(566715600000-0500)/', 'BÃ©ton; pavÃ©s; eau ', NULL, 'Moulage; assemblage', '762 x 762 x 762 cm', 'Square Viger', NULL, NULL, '45.512075', '-73.554819', NULL, '1982-IN-16', '', '', 'Ville-Marie', 'Installation', 72, 0),
(372, 1530, 'Mastodo', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(566715600000-0500)/', 'Bronze; acier inoxydable; bÃ©ton; eau', NULL, 'Moulage; assemblage', '420 x 580 x 610 cm', 'Square Viger', NULL, NULL, '45.511800', '-73.554681', NULL, '1987-APE-SC-28', '', '', 'Ville-Marie', 'Sculpture', 72, 0),
(373, 1532, 'Cailloudo', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(632466000000-0500)/', 'Bronze, lumiÃ¨re', NULL, 'CoulÃ©; assemblÃ©', '132 x 425 x 760 cm', NULL, 'BibliothÃ¨que de Saint-Laurent', '1380, rue de l''Ã‰glise, MontrÃ©al (QC) H4L 2H2', '45.512457', '-73.676799', NULL, '2002-SC-68', '', '', 'Saint-Laurent', 'Sculpture', 72, 0),
(374, 1534, 'Hommage Ã  Claude Jutra', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(926913600000-0400)/', 'Granit; laiton; Ã©mail', NULL, 'AssemblÃ©; soudÃ©; dÃ©coupÃ©; taillÃ©; collÃ©', '250 x 75 x 70 cm', 'Parc Claude-Jutra', NULL, NULL, '45.513240', '-73.572945', NULL, '1997-AP-SC-08', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 72, 0),
(375, 1536, 'La ville imaginaire', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(873864000000-0400)/', 'Granit', NULL, 'TaillÃ©; assemblÃ©', '1900 x 1800 x 2750 cm', 'Parc Jean-Drapeau, ÃŽle Sainte-HÃ©lÃ¨ne', NULL, NULL, '45.512697', '-73.537714', NULL, '1997-APE-SC-08', '', '', 'Ville-Marie', 'Installation', 76, 0),
(376, 1538, 'RÃ©volutions', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', '/Date(1042779600000-0500)/', 'Aluminium; acier galvanisÃ©', NULL, NULL, '850 x 500 cm', 'Parc Maisonneuve-Cartier', NULL, NULL, '45.523985', '-73.552731', NULL, '2003-APE-SC-03', '', '', 'Ville-Marie', 'Sculpture', 77, 0),
(377, 1540, 'L''arc', 'Hommage Ã  Salvador Allende (1908-1973)', 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al (Concou', '/Date(1230786000000-0500)/', 'BÃ©ton, acier inoxydable', NULL, NULL, '305 x 470 x 125', 'Parc Jean-Drapeau, ÃŽle Notre-Dame', NULL, NULL, '45.505855', '-73.527741', NULL, '2009-SC-03', '', '', 'Ville-Marie', 'Sculpture', 77, 0),
(381, 1548, 'ObÃ©lisque en hommage Ã  Charles de Gaulle', 'MÃ©morial au gÃ©nÃ©ral De Gaulle', 'Art public', 'Beaux-arts', 'Don', '/Date(694242000000-0500)/', 'Granit; Ã©poxy; ciment; peinture', NULL, NULL, '1780 x 240 x 270 cm', 'Parc La Fontaine', NULL, NULL, '45.526107', '-73.564759', NULL, '926212.0', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 82, 0),
(382, 1550, 'China Wall', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier corten', NULL, 'SoudÃ©', '225 x 177 x 489 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428562', '-73.681682', NULL, '2002-SC-29', '', '', 'Lachine', 'Sculpture', 83, 0),
(383, 1553, 'Maisonneuve fonde MontrÃ©al le 18 mai 1642', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503819', '-73.587641', NULL, '1931-IA-PE-0009', '', '', 'Ville-Marie', 'Peinture', 84, 0),
(384, 1554, 'Portail avec bas-reliefs', 'MÃ©moire', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', '/Date(536475600000-0500)/', 'Bois; ciment; peinture; miroir', NULL, 'Fondu; vitrifiÃ©; peint; coupÃ©; assemblÃ©', '520 X 520 cm', NULL, 'Chapelle historique du Bon-Pasteur', '100, rue Sherbrooke Est, MontrÃ©al (QuÃ©bec)  H2X 1C3', '45.513427', '-73.546886', NULL, '1987-IA-SC-0001', '', '', 'Ville-Marie', 'Sculpture', 85, 0),
(385, 1555, 'Place du Temple', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(641448000000-0400)/', 'Ciment; mÃ©tal; peinture', NULL, 'CoulÃ©; peint', '500 x 1800 x 6700 cm', 'Place FÃ©lix-Leclerc', NULL, NULL, '45.423620', '-73.624915', NULL, '2002-SC-62', '', '', 'LaSalle', 'Installation', 85, 0),
(386, 1557, 'Fontaine de vie', 'Les baigneuses', 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Anorthosite', NULL, 'SculptÃ©', '370 x 550 cm', 'Place de l''hÃ´tel de ville', NULL, '1800, boul Saint-Joseph, Lachine, QC H8S 2N4', '45.433162', '-73.681258', NULL, '2002-SC-26', '', '', 'Lachine', 'Sculpture', 87, 0),
(387, 1559, 'Buste de Simon Bolivar', 'SimÃ³n BolÃ­var', 'Art public', 'Beaux-arts', 'Don', '/Date(820472400000-0500)/', 'Bronze; granit', NULL, NULL, '248.5 x 99.5 x 48', 'Parc Hector-Toe-Blake', NULL, NULL, '45.489486', '-73.580919', NULL, '1986-SC-09', '', '', 'Ville-Marie', 'Sculpture', 88, 0),
(388, 1561, 'Albarello', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'CÃ©ramique; acier; plantes', NULL, 'SoudÃ©; assemblÃ©', '340 x 290 cm', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S 4L9', '45.429940', '-73.666844', NULL, '2002-SC-14', '', '', 'Lachine', 'Sculpture', 89, 0),
(389, 1563, 'Ã€ la croisÃ©e des mots', 'arbre-sculpture', 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', '/Date(1093752000000-0400)/', 'Acier galvanisÃ©, aluminium anodisÃ©', NULL, 'Feuilles d''aluminium anodisÃ©; dÃ©coupÃ©es; soudÃ©', '732 x 300 cm', NULL, 'Centre Georges-Vanier', '2450 Rue Workman\rMontrÃ©al, Qc', '45.483797', '-73.575105', NULL, '2004-SC-10', '', '', 'Le Sud-Ouest', 'Installation', 90, 0),
(391, 1566, 'Hommage aux forces vitales du QuÃ©bec', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; acier chromÃ©; bÃ©ton; lumiÃ¨re', NULL, 'Techniques multiples', '366 x 3800 x 1600 cm', 'Parc des Rapides', NULL, NULL, '45.420052', '-73.603372', NULL, '2002-SC-63', '', '', 'LaSalle', 'Installation', 92, 0),
(393, 1570, 'Optimax', 'Le Sphinx, Optimax (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-119214000000-0500)/', 'Calcaire; bÃ©ton', NULL, 'Taille directe', '292 x 246 x 1250 cm', 'Parc du Mont-Royal', NULL, NULL, '45.500911', '-73.593288', NULL, '1966-APE-SC-13', '', '', 'Ville-Marie', 'Sculpture', 94, 0),
(394, 1571, 'Jacques Cartier sur le sommet du mont Royal', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503843', '-73.587576', NULL, '1931-IA-PE-0010', '', '', 'Ville-Marie', 'Peinture', 95, 0),
(395, 1573, 'Non titrÃ©', 'Sans-titre (photographies)', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', NULL, 'Bois', 'Contre-collÃ© sur bois et laminÃ©', '67 x 101.5 x 3 cm', NULL, 'BibliothÃ¨que Saint-Pierre', '183, rue des Ã‰rables, Lachine (QuÃ©bec) H8R 1B1', '45.445692', '-73.651331', NULL, '', '', '', 'Lachine', 'Photographie', 96, 0),
(396, 1577, 'Les baigneurs', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Centre rÃ©crÃ©atif Gadbois', '5485, chemin de la CÃ´te-Saint-Paul, MontrÃ©al (QuÃ©bec) H4C 1X3', '45.466339', '-73.595615', NULL, '1960-IA-SC-0001', '', '', 'Le Sud-Ouest', 'Sculpture', 97, 0),
(398, 1579, 'L''eau et la santÃ©', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Commande Ã  l''artiste', NULL, 'Aluminium', 'Aluminium', 'Aluchromie', ' 274,5 x 812 cm', NULL, 'Usine de filtration Charles-J. des Baillets', '8585, Boulevard De La VÃ©rendrye, LaSalle, QuÃ©bec, H8N 2K2', '45.425053', '-73.619043', NULL, '1977-IA-PE-0001', '', '', 'LaSalle', 'Peinture', 99, 0),
(399, 1580, 'Une leÃ§on d''histoire', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', '/Date(599634000000-0500)/', 'MÃ©tal; bois; Ã©poxy; livre', NULL, 'CoulÃ©; taillÃ©; moulÃ©; patinÃ©; collÃ©; pulvÃ©ri', NULL, NULL, 'BibliothÃ¨que Frontenac', '2550 Rue Ontario Est, MontrÃ©al, QC H2K 1W7', '45.533042', '-73.551858', NULL, '860317.0', '', '', 'Ville-Marie', 'Installation', 99, 0),
(400, 1581, 'Delos, septiÃ¨me porte de la perfection et de l''immortalitÃ©, Convoi III', 'Delos', 'Art public', 'Beaux-arts', 'Don', '/Date(1292389200000-0500)/', 'Acier corten; acier.', NULL, NULL, NULL, 'Parc Baldwin', NULL, NULL, '45.534496', '-73.562238', NULL, '2011-AP-IN-0013 ', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 101, 0),
(401, 1583, 'Champlain explore le site de MontrÃ©al en 1603', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503877', '-73.587492', NULL, '1931-IA-PE-0011', '', '', 'Ville-Marie', 'Peinture', 102, 0),
(402, 1595, 'Nous deux', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(915166800000-0500)/', 'Acier; peinture', NULL, 'DÃ©coupÃ©; soudÃ©; meulÃ©; boulonnÃ©; peint', '244 x 142 x 161', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S', '45.429983', '-73.666989', NULL, '2002-SC-16', '', '', 'Lachine', 'Sculpture', 103, 0),
(403, 1597, 'Colonne', 'Sculpture (extÃ©rieur)', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', NULL, 'Granit; acier inoxydable; verre; nÃ©on', NULL, 'Taille directe; assemblÃ©', '700 x 124,5 cm', NULL, 'Centre des arts contemporains du QuÃ©bec Ã  MontrÃ©al', '4247, rue Saint-Dominique, MontrÃ©al, QuÃ©bec H2W 2A9', '45.518992', '-73.581993', NULL, '1985-IA-SC-0006', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 103, 0),
(404, 1598, 'Ã‰tats de choc', 'States of shock', 'Art public', 'Beaux-arts', 'Transfert', '/Date(473403600000-0500)/', 'Acier; brique; mortier; ciment; peinture', NULL, 'SoudÃ©; formÃ©; coulÃ©; briquetÃ©; peint', '15.51m', 'Parc Summerlea', NULL, NULL, '45.438429', '-73.718209', NULL, '2002-SC-50', '', '', 'Lachine', 'Sculpture', 103, 0),
(405, 1600, 'La ville blanche', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; granit', NULL, 'DÃ©coupÃ©; soudÃ©; boulonnÃ©; percÃ©; coulÃ©', '650 x 2400', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428448', '-73.680350', NULL, '2002-SC-30', '', '', 'Lachine', 'Installation', 103, 0),
(406, 1602, 'Espace cubique ou hommage Ã  Malevitch', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(694242000000-0500)/', 'Verre; granit; acier; bÃ©ton; lumiÃ¨re', NULL, 'TaillÃ©; coupÃ©; soudÃ©; assemblÃ©', '254 x 224 x 225 cm', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S 4L9', '45.429901', '-73.666579', NULL, '2002-SC-15', '', '', 'Lachine', 'Installation', 103, 0),
(407, 1604, 'Cube gÃ©omÃ©trique', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier corten; BÃ©ton', NULL, NULL, '500 x 390 x 390 cm', 'Parc Malborough', NULL, '2105, rue BeauzÃ¨le,\rSaint-Laurent (MontrÃ©al)\rQuÃ©bec', '45.523012', '-73.721010', NULL, '1978-SC-02', '', '', 'Saint-Laurent', 'Sculpture', 108, 0),
(408, 1606, 'Le jardin de Lyon', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(944110800000-0500)/', 'Acier inoxydable; bronze; luminaire; bois; granit;', NULL, NULL, NULL, 'Place J.-Ernest-Laforce', NULL, NULL, '45.512470', '-73.555461', NULL, '2000-IN-08', '', '', 'Ville-Marie', 'Installation', 109, 0),
(409, 1610, 'Orbite optique no 2', 'L''Artichaut', 'Art public', 'Beaux-arts', 'Transfert', '/Date(-63140400000-0500)/', 'BÃ©ton; acier', NULL, 'BÃ©ton projetÃ©', '800 cm x 1230 cm', 'Parc Jean-Drapeau, ÃŽle Sainte-HÃ©lÃ¨ne', NULL, NULL, '45.522507', '-73.534649', NULL, '901611.0', '', '', 'Ville-Marie', 'Sculpture', 110, 0),
(410, 1612, 'Fontaine', 'Jeux d''enfants\r\rNote : Ce titre Ã©tait en usage avant le dÃ©mantÃ¨lement de l''Å“uvre, en 2000. De l''', 'Art public', 'Beaux-arts', 'Transfert', '/Date(489211200000-0400)/', 'Acier inoxydable; bronze chromÃ©; bÃ©ton', NULL, NULL, '450 x 1450 x 1195 cm', 'Square Viger', NULL, NULL, '45.513958', '-73.552921', NULL, '1984-APE-SC-08', '', '', 'Ville-Marie', 'Installation', 111, 0),
(412, 1618, 'Hommage Ã  Mihai Eminescu, poÃ¨te roumain', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(1104555600000-0500)/', 'Bronze', NULL, 'Bronze coulÃ©', '243 x 149 cm', 'Parc Devonshire/Place de la Roumanie', NULL, NULL, '45.514796', '-73.576459', NULL, '2004-SC-09', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 113, 0),
(413, 1620, 'Trait d''union', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(410245200000-0500)/', 'BÃ©ton; pierre; acier inoxydable; eau.', NULL, 'AncrÃ©; boulonnÃ©; collÃ©', '265 x 275 x 1800 cm', NULL, 'BibliothÃ¨que Saint-LÃ©onard', '8400, boulevard Lacordaire\rSaint-LÃ©onard (QuÃ©bec)\rH1R 3B1', '45.586472', '-73.597139', NULL, '1984-APE-SC-07', '', '', 'Saint-LÃ©onard', 'Sculpture', 114, 0),
(414, 1622, 'Les leÃ§ons singuliÃ¨res (volet 1)', 'Les leÃ§ons singuliÃ¨res (premiÃ¨re partie)', 'Art public', 'Beaux-arts', 'Commande publique de la ville de MontrÃ©al (Concou', '/Date(654667200000-0400)/', 'Bronze; laiton; acier inoxydable', NULL, 'CoulÃ©; dÃ©coupÃ©; formÃ©', '97 x 2000 x 1000 cm', 'Place Roy', NULL, NULL, '45.521580', '-73.570456', NULL, '908500.0', '', '', 'Le Plateau-Mont-Royal', 'Installation', 114, 0),
(415, 1625, 'Les leÃ§ons singuliÃ¨res (volet 2)', 'Les leÃ§ons singuliÃ¨res (deuxiÃ¨me partie)', 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', '/Date(673070400000-0400)/', 'Bronze; laiton; acier inoxydable', NULL, 'CoulÃ©; dÃ©coupÃ©; formÃ©', '96 x 1800 x 1120 cm', 'Parc La Fontaine', NULL, NULL, '45.523417', '-73.568557', NULL, '912010.0', '', '', 'Le Plateau-Mont-Royal', 'Installation', 114, 0),
(416, 1627, 'DÃ©tourÂ : le grand jardin', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(757400400000-0500)/', 'aluminium ; acier galvanisÃ©', NULL, 'SoudÃ©; boulonnÃ©; percÃ©; peint', '500 x 1865 x 2109 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428373', '-73.681115', NULL, '2002-SC-31', '', '', 'Lachine', 'Installation', 114, 0),
(417, 1629, 'Le carrousel de lâ€™Ã®le', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', '/Date(1103778000000-0500)/', 'Acier galvanisÃ©; laiton', NULL, NULL, '470 x 1500 cm', 'Carrefour giratoire des boulevards, RenÃ©-LÃ©vesque et Ãle-des-SÅ“urs', NULL, NULL, '45.465811', '-73.544778', NULL, '2005-SC-02', '', '', 'Verdun', 'Installation', 114, 0),
(419, 1633, 'Monument pour L', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; vÃ©gÃ©taux; asphalte', NULL, 'CoulÃ©; soudÃ©; peint', '111 x 4000 x 1500 cm', 'Parc Fort-Rolland', NULL, NULL, '45.434760', '-73.699892', NULL, '2002-SC-51', '', '', 'Lachine', 'Installation', 120, 0),
(420, 1635, 'Volatiles', 'Splish-splash', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Aluminum', NULL, 'DÃ©coupÃ©; assemblÃ©', NULL, NULL, 'AquadÃ´me-Centre aquatique familiale de LaSalle', '1411 Rue Lapierre, LaSalle, QC H8N 2J4', '45.436661', '-73.607768', NULL, '1996-IA-IN-0001', '', '', 'LaSalle', 'Installation', 120, 0),
(422, 1638, 'Hommage aux travailleurs', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'BÃ©ton', NULL, 'CoulÃ©; peint', '600 x 272 x 138 cm', NULL, NULL, 'Boulevard Henri-Bourassa', '45.600702', '-73.638456', NULL, '2002-SC-67', '', '', 'MontrÃ©al-Nord', 'Sculpture', 123, 0),
(423, 1640, 'Le grand Jean-Paul', NULL, 'Art public', 'Beaux-arts', 'DÃ©pÃ´t', NULL, 'Bronze', NULL, 'Cire perdue', '202 x 199.5 x 60.5 cm', 'Place Jean-Paul-Riopelle', NULL, NULL, '45.503104', '-73.560661', NULL, '2014-AP-SC-0002', '', '', 'Ville-Marie', 'Sculpture', 124, 0),
(424, 1641, 'Monument Ã  Ã‰mile Nelligan', 'Buste Ã  l''effigie du poÃ¨te Ã‰mile Nelligan', 'Art public', 'Beaux-arts', 'Achat', '/Date(1119412800000-0400)/', 'Bronze; calcaire; granit', NULL, 'Bronze coulÃ©; cire perdue', '271 x 112 x 132 cm', 'Square Saint-Louis', NULL, NULL, '45.516215', '-73.570284', NULL, '2005-SC-01', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 124, 0),
(425, 1643, 'Songes', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', NULL, 'Papier; aluminium', NULL, NULL, '282 x 482 x 2,5 cm', NULL, 'Maison culturelle et communautaire de MontrÃ©al-Nord', '12 004, boulevard Rolland, MontrÃ©al-Nord (QuÃ©bec), H1W  3W1', '45.616540', '-73.620970', NULL, '2006-IA-PH-0005', '', '', 'MontrÃ©al-Nord', 'Photographie', 126, 0),
(426, 1644, 'Jacques Cartier atterit Ã  Hochelaga en 1535', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503907', '-73.587428', NULL, '1931-IA-PE-0012', '', '', 'Ville-Marie', 'Peinture', 127, 0),
(427, 1648, 'Monument Ã  sir Louis-Hippolyte La Fontaine', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(-1262286000000-0500)/', 'Bronze; granit; grÃ¨s; marbre', NULL, 'Fonte au sable', '700 x 570 x 370cm', 'Parc La Fontaine', NULL, NULL, '45.523017', '-73.566328', NULL, '1930-APE-SC-15', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 128, 0),
(428, 1650, 'Monument aux braves d''Outremont', 'Monument aux morts de la guerre', 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Bronze; marbre', NULL, 'Bronze coulÃ©', '400 x 600 x 480 cm', 'Parc Outremont', NULL, NULL, '45.517753', '-73.604103', NULL, '1925-APE-SC-01', '', '', 'Outremont', 'Sculpture', 128, 0),
(429, 1652, 'L''habitation en milieu urbain', 'L''espace de l''homme dans l''univers', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', NULL, 'GrÃ¨s, mortier', NULL, 'Modelage', '251 x 620 x 3,80 cm', NULL, 'Maison de la culture Marie-Uguay', '6052, boulevard Monk, MontrÃ©al (QuÃ©bec) H4E 3H6', '45.457694', '-73.595515', NULL, '1982-IA-SC-0001', '', '', 'Le Sud-Ouest', 'Sculpture', 130, 0),
(430, 1654, 'Monument Ã  Paul de Chomedey, sieur de Maisonneuve', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(-2366737200000-0500)/', 'Bronze; granit', NULL, NULL, '9m de haut', 'Place d''Armes', NULL, NULL, '45.504800', '-73.557260', NULL, '927189.5', '', '', 'Ville-Marie', 'Sculpture', 131, 0),
(431, 1656, 'Monument Ã  Louis-Octave CrÃ©mazie', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(-2004638400000-0400)/', 'Bronze; granit', NULL, 'Bronze coulÃ©; pierre taillÃ©e', '300 x 300 x 188 cm', 'Square Saint-Louis', NULL, NULL, '45.517388', '-73.569581', NULL, '1907-APE-SC-01', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 131, 0),
(432, 1658, 'Monument Ã  John Young', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(-1833390000000-0500)/', 'Bronze; granit', NULL, 'Bronze coulÃ©; pierre taillÃ©e', '520 x 340 x 670cm', 'De la Commune', NULL, NULL, '45.500112', '-73.553427', NULL, '110941', '', '', 'Ville-Marie', 'Sculpture', 131, 0),
(433, 1660, 'Monument Ã  Ã‰douard VII', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(-1767207600000-0500)/', 'Bronze; granit', NULL, 'CoulÃ© Ã  la cire perdue; assemblÃ© Ã  la romaine ', '1400cm', 'Square Phillips', NULL, NULL, '45.503724', '-73.568507', NULL, '140910.0', '', '', 'Ville-Marie', 'Sculpture', 131, 0),
(434, 1662, 'Acier', 'Sous l''eau', 'Art public', 'Beaux-arts', 'Transfert', NULL, 'Acier; bÃ©ton', NULL, 'SoudÃ©; coulÃ©', '385 x 700 x 350cm', 'Parc Jean-Drapeau, ÃŽle Notre-Dame', NULL, NULL, '45.504307', '-73.526535', NULL, '1968-APE-SC-17', '', '', 'Ville-Marie', 'Sculpture', 135, 0),
(435, 1664, 'Le lion de Belfort', 'La Fontaine de la Sun Life Assurance Company', 'Art public', 'Beaux-arts', 'Don', '/Date(-2303578800000-0500)/', 'Bronze; granit', NULL, 'SculptÃ© (granite); coulÃ© (bronze)', '504 x 232 x 421 cm', 'Square Dorchester', NULL, NULL, '45.499704', '-73.570273', NULL, '936189.7', '', '', 'Ville-Marie', 'Sculpture', 136, 0),
(436, 1666, 'Monument aux hÃ©ros de la guerre des Boers', 'Monument Ã  Lord Strathcona', 'Art public', 'Beaux-arts', 'Don par souscription publique', NULL, 'Bronze; granit', NULL, NULL, '920 x 2200 x 1600 cm', 'Square Dorchester', NULL, NULL, '45.499610', '-73.570967', NULL, '900934.0', '', '', 'Ville-Marie', 'Sculpture', 136, 0),
(437, 1668, 'Monument Ã  sir George-Ã‰tienne Cartier', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(-1609441200000-0500)/', 'Bronze; granit', NULL, 'Bronze coulÃ©', '25 x 30 x 30m', 'Parc du Mont-Royal', NULL, NULL, '45.514231', '-73.585250', NULL, '900902.0', '', '', 'Ville-Marie', 'Sculpture', 136, 0),
(438, 1670, 'DÃ©part de La Salle pour aller Ã  la dÃ©couverte du Mississipi', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503946', '-73.587378', NULL, '1931-IA-PE-0013', '', '', 'Ville-Marie', 'Peinture', 139, 0),
(439, 1672, 'Totem Kwakiutl', 'MÃ¢t totÃ©mique Kwakwaka''wakw (Kwakiutl)', 'Art public', 'Beaux-arts', 'Transfert', '/Date(-63140400000-0500)/', 'Bois', NULL, 'SculptÃ©', '2130 x 95 cm', 'Parc Jean-Drapeau, ÃŽle Notre-Dame', NULL, NULL, '45.504995', '-73.529284', NULL, '1968-SC-17', '', '', 'Ville-Marie', 'Sculpture', 140, 0),
(440, 1674, 'Iris', 'Iris (QuÃ©bec)', 'Art public', 'Beaux-arts', 'Transfert', NULL, 'Aluminium', NULL, 'Feuilles d''aluminium galbÃ©es par martelage; soudÃ', NULL, 'Parc Jean-Drapeau, ÃŽle Notre-Dame', NULL, NULL, '45.505532', '-73.527751', NULL, '901608.0', '', '', 'Ville-Marie', 'Sculpture', 141, 0),
(441, 1676, 'Monument Ã  Ã‰milie Gamelin', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', '/Date(915166800000-0500)/', 'Bronze', NULL, 'Bronze coulÃ©; cire perdue', '190 x 122 cm', 'Place Ã‰milie-Gamelin', NULL, NULL, '45.51486', '-73.559707', NULL, '1999-SC-03', '', '', 'Ville-Marie', 'Sculpture', 141, 0),
(442, 1679, 'Les allusifs', NULL, 'Art public', 'Beaux-arts', NULL, NULL, 'Bois; acier', NULL, 'AssemblÃ©; soudÃ©; incrustÃ©; gravÃ©', 'xx cm x 230 cm x 170 cm', NULL, 'MarchÃ© Atwater', '138 Avenue Atwater, Montreal, QC H4C 2H6', '45.478839', '-73.575339', NULL, '2002-IN-76', '', '', 'Le Sud-Ouest', 'Installation', 143, 0),
(443, 1682, 'Lanka Mata', NULL, 'IntÃ©gration Ã  l''architecture', 'Arts dÃ©coratifs', 'Don', '/Date(-94676400000-0500)/', 'Verre; plomb; acier; nÃ©on', 'Verre', NULL, '260 x 524 x 20 cm', NULL, 'BibliothÃ¨que Marie-Uguay', '6052 Boulevard Monk, MontrÃ©al, QC H4E 3H6', '45.457751', '-73.595486', NULL, '1967-IA-VT-0001', '', '', 'Le Sud-Ouest', 'Vitrail', 144, 0),
(444, 1683, 'L''attente', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la ville de MontrÃ©al (Concou', '/Date(1232946000000-0500)/', 'Aluminum ; bÃ©ton ; laiton ; bronze', NULL, 'AssemblÃ©; soudÃ©; vissÃ©', '411 x 258 x 258 cm', 'Parc Belmont', NULL, NULL, '45.532697', '-73.725844', NULL, '2009-SC-02', '', '', 'Ahuntsic-Cartierville', 'Sculpture', 289, 0),
(445, 1684, 'La faÃ§ade', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', '/Date(1315454400000-0400)/', 'Nylon', NULL, 'ModÃ©lisation 3D; frittage laser sÃ©lectif', '115 x 235 x 32 cm', NULL, 'BibliothÃ¨que PÃ¨re-Ambroise', '2093, rue de la Visitation, MontrÃ©al, QC, H2L 3C9', '45.522767', '-73.562670', NULL, '2011-IA-SC-0006', '', '', 'Ville-Marie', 'Sculpture', 289, 0),
(448, 1689, 'Monument Ã  Dollard des Ormeaux', 'Monument Ã  Adam Dollard des Ormeaux et Ã  ses compagnons', 'Art public', 'Beaux-arts', 'Don par souscription publique', NULL, 'Bronze; granit', NULL, 'CoulÃ©', '800 x 925 x 345 cm', 'Parc La Fontaine', NULL, NULL, '45.525594', '-73.573055', NULL, '200909.0', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 291, 0),
(449, 1691, 'Monument aux braves de Lachine', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(-1420052400000-0500)/', 'Bronze; granit', NULL, 'CoulÃ©; assemblÃ©', '524 x 900 x 216 cm', 'Parc Stoney-Point', NULL, NULL, '45.436555', '-73.706738', NULL, '1945-APE-SC-04', '', '', 'Lachine', 'Sculpture', 291, 0),
(450, 1692, 'Monument aux Patriotes', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', NULL, 'Bronze; granit', NULL, 'Fonte au sable', '850 x 410 x 370 cm', 'Place des Patriotes', NULL, NULL, '45.523411', '-73.546212', NULL, '260931.0', '', '', 'Ville-Marie', 'Sculpture', 291, 0),
(451, 1695, 'Signal dans l''espace', 'Sculpture, extÃ©rieur', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; bÃ©ton', NULL, 'Assemblage', '1370 x 975 x 30 cm', NULL, 'BibliothÃ¨que l''Octogone', '1080 Avenue Dollard, Montreal, QC H8N 2T9', '45.424150', '-73.623311', NULL, '1984-IA-IN-0001', '', '', 'LaSalle', 'Sculpture', 296, 0),
(454, 1698, 'Monument Ã  John F. Kennedy', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(532069200000-0500)/', 'Bronze; granit', NULL, 'Bronze moulÃ©', '355 x 100 x 120', 'Intersection des avenues du PrÃ©sident-Kennedy et McGill-College', NULL, '2001, avenue McGill College', '45.503367', '-73.573689', NULL, '1986-APE-SC-08', '', '', 'Ville-Marie', 'Sculpture', 299, 0),
(455, 1700, 'Monument Ã  Joseph Beaubien', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Bronze; granit', NULL, 'Bronze coulÃ©', '249 x 76.5 x 65.5 cm', 'Parc Beaubien', NULL, '461 Chemin de la CÃ´te-Sainte-Catherine', '45.515161', '-73.607800', NULL, '2003-SC-04', '', '', 'Outremont', 'Sculpture', 299, 0),
(456, 1701, 'Buste du cardinal Paul-Ã‰mile LÃ©ger', NULL, 'Art public', 'Beaux-arts', 'PrÃªt', '/Date(1199163600000-0500)/', 'Bronze', NULL, 'CoulÃ©', '168 x 75 x 61,5 cm', 'Place du Cardinal-Paul-Ã‰mile-LÃ©ger', NULL, NULL, '45.509549', '-73.561333', NULL, '2008-SC-01', '', '', 'Ville-Marie', 'Sculpture', 299, 0),
(457, 1702, 'Debout', 'Debout (Monument Ã  FÃ©lix Leclerc)', 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(657522000000-0500)/', 'Bronze', NULL, '23 sections de bronze moulÃ©es par enrobage et sou', '350 cm x 170 cm x 149.5 cm', 'Parc La Fontaine', NULL, NULL, '45.526717', '-73.571036', NULL, '900069.0', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 302, 0),
(458, 1704, 'La porte de lâ€™avenir', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'BÃ©ton; fibre de verre; rÃ©sine', NULL, 'EmpilÃ©; gravÃ©; peint', '238 x 201,5 x 42 cm', 'Parc Elgar', 'Centre communautaire Elgar', '260 Rue Elgar, Verdun, QC', '45.457215', '-73.547032', NULL, '2000-APE-SC-06', '', '', 'Verdun', 'Sculpture', 302, 0),
(462, 1711, 'La rÃ©paration', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la ville de MontrÃ©al (Concou', '/Date(894600000000-0400)/', 'Marbre; granit; bÃ©ton; arbres', NULL, 'Taille', '294 x 2500 cm', 'Parc Marcelin-Wilson', NULL, NULL, '45.534994', '-73.679998', NULL, '1998-AP-SC-03', '', '', 'Ahuntsic-Cartierville', 'Installation', 307, 0),
(463, 1713, 'Temple du troisiÃ¨me millÃ©naire', NULL, 'Art public', 'Beaux-arts', 'Transfert', NULL, 'BÃ©ton; aluminium', NULL, 'CoulÃ©; dÃ©coupÃ©; assemblÃ©', '475 cm x 380 cm x 75 cm', 'Parc Alexis-Nihon', NULL, 'Rue Bertrand', '45.497286', '-73.689694', NULL, '2002-SC-69', '', '', 'Saint-Laurent', 'Installation', 308, 0),
(464, 1715, 'Monica', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'BÃ©ton; mÃ©tal; ciment (base).', NULL, 'MoulÃ©; collÃ©; soudÃ©; boulonnÃ©', '278 x 211 x 200 cm', 'Promenade PÃ¨re-Marquette', NULL, NULL, '45.432433', '-73.683443', NULL, '2002-SC-52', '', '', 'Lachine', 'Sculpture', 309, 0),
(466, 1719, 'Joseph-Xavier Perrault', 'Monument Ã  Joseph-Xavier Perrault', 'Art public', 'Beaux-arts', 'PrÃªt', NULL, 'Aluminium, granit, bÃ©ton', NULL, 'Aluminium moulÃ© et fondu; granit poli', '280 cm x 92 cm x 92 cm', 'Place du Commerce', NULL, '800, rue du Square-Victoria, MontrÃ©al, QuÃ©bec', '45.501193', '-73.561572', NULL, '872243.0', '', '', 'Ville-Marie', 'Sculpture', 309, 0),
(467, 1721, 'Hommage Ã  Marguerite Bourgeoys', NULL, 'Art public', 'Beaux-arts', 'Commande en partenariat', '/Date(568011600000-0500)/', 'Bronze; granit; bÃ©ton', NULL, 'Bronze coulÃ©; cire perdue', '178 x 414 cm', 'Place Marguerite-Bourgeoys', NULL, '85, rue Notre-Dame est', '45.507373', '-73.555063', NULL, '900571.0', '', '', 'Ville-Marie', 'Sculpture', 309, 0),
(469, 1724, 'Monument Ã  Robert Burns', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(-1262286000000-0500)/', 'Bronze; granit', NULL, 'Bronze coulÃ©', '511 x 276 x 276 cm', 'Square Dorchester', NULL, NULL, '45.499462', '-73.571571', NULL, '1930-APE-SC-16', '', '', 'Ville-Marie', 'Sculpture', 314, 0),
(470, 1726, 'Pont d''Arles en transfert', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; pierres; bois; gravier; tourbe', NULL, 'SoudÃ©; boulonnÃ©; peint', '347 x 320 x 900 cm', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S 4L9', '45.429964', '-73.666167', NULL, '2002-SC-20', '', '', 'Lachine', 'Installation', 315, 0),
(471, 1728, 'Signal pour Takis', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; granit; bÃ©ton', NULL, 'SoudÃ©; boulonnÃ©', '850 x 900 x 2000 cm', 'Parc RenÃ©-LÃ©vesque', NULL, 'Chemin du canal', '45.428754', '-73.682789', NULL, '2002-SC-32', '', '', 'Lachine', 'Installation', 315, 0),
(472, 1730, 'Lieux sans temple 3', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'SoudÃ©; patinÃ©; oxydÃ©; collÃ©; boulonnÃ©', '229 x 140 x 117.5 cm', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S 4L9', '45.429924', '-73.666603', NULL, '2002-SC-17', '', '', 'Lachine', 'Sculpture', 315, 0);
INSERT INTO `oeuvre` (`id`, `noInterne`, `titre`, `titreVariante`, `nomCollection`, `categorieObjet`, `modeAcquisition`, `dateAccession`, `materiaux`, `support`, `technique`, `dimensionsGenerales`, `parc`, `batiment`, `adresseCivique`, `coordonneeLatitude`, `coordonneeLongitude`, `mediums`, `numeroAccession`, `description`, `urlImage`, `arrondissement`, `categorie`, `idArtiste`, `valide`) VALUES
(473, 1732, 'Lieux sans temple 4', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'SoudÃ©; patinÃ©; oxydÃ©; collÃ©; boulonnÃ©', '225 x 110 x 131 cm', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S 4L9\r', '45.429923', '-73.666567', NULL, '2002-SC-18', '', '', 'Lachine', 'Sculpture', 315, 0),
(474, 1734, 'Lieux sans temple 5', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'SoudÃ©; patinÃ©; oxydÃ©; collÃ©; boulonnÃ©', '250 x 140,5 x 117,5 cm', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S 4L9', '45.429882', '-73.666570', NULL, '2002-SC-19', '', '', 'Lachine', 'Sculpture', 315, 0),
(475, 1736, 'Souvenir de 1955 ou 2026 Roberval', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; pierre', NULL, 'DÃ©coupÃ©; soudÃ©; boulonnÃ©; peint', '465 x 1017 x 800 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.429123', '-73.681809', NULL, '2002-SC-33', '', '', 'Lachine', 'Installation', 315, 0),
(476, 1738, 'Fontaine Wallace', 'Fontaine des Vosges', 'Art public', 'Beaux-arts', 'Don', NULL, 'Fonte', NULL, 'MoulÃ©; boulonnÃ©; peint', '275 cm x 82 x 82 cm', 'Parc Jean-Drapeau, ÃŽle Notre-Dame', NULL, NULL, '45.505419', '-73.528120', NULL, '160580.4', '', '', 'Ville-Marie', 'Sculpture', 321, 0),
(477, 1740, 'Triptyque sur le paysage', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(852094800000-0500)/', 'Acier galvanisÃ©; verre', NULL, NULL, '200 cm', 'ÃŽle de la Visitation', NULL, '10897, rue Du Pont', '45.575443', '-73.661664', NULL, '1997-AP-SC-09', '', '', 'Ahuntsic-Cartierville', 'Installation', 322, 0),
(478, 1742, 'Signe solaire', NULL, 'Art public', 'Beaux-arts', 'Achat', NULL, 'Acier; bÃ©ton; fibre de verre; rÃ©sine d''Ã©poxy; l', NULL, NULL, '277 x 330 x 106.5 cm', 'Parc Jean-Drapeau, ÃŽle Sainte-HÃ©lÃ¨ne', NULL, NULL, '45.513247', '-73.530889', NULL, '1967-APE-SC-18', '', '', 'Ville-Marie', 'Sculpture', 323, 0),
(479, 1744, 'Ashapmouchouan', 'L''Å“uvre Ã©tait initialement sans-titre, son titre actuel a Ã©tÃ© attribuÃ© par l''ayant droit de Mau', 'Art public', 'Beaux-arts', 'Inconnu', NULL, 'Acier Corten', NULL, NULL, '417 x 245 cm', NULL, 'Habitations Laurier', '465, rue Gilford\rMontrÃ©al, QuÃ©bec', '45.526861', '-73.586445', NULL, '1972-SC-03', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 324, 0),
(480, 1745, 'Ã‰closion', 'Note: L''Å“uvre Ã©tait initialement sans-titre, son titre actuel a Ã©tÃ© attribuÃ© par l''ayant droit ', 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'DÃ©coupÃ©; courbÃ©; soudÃ©; boulonnÃ©; peint', '258 x 142 x 202 cm', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S 4L9', '45.430104', '-73.666761', NULL, '2002-SC-21', '', '', 'Lachine', 'Sculpture', 324, 0),
(481, 1748, 'Ã€ voile dÃ©chirÃ©e', 'L''Å“uvre Ã©tait initialement sans-titre, son titre actuel a Ã©tÃ© attribuÃ© par l''ayant droit de Mau', 'Art public', 'Beaux-arts', 'Inconnu', NULL, 'Acier peint', NULL, NULL, '469 x 315 x 394 cm', NULL, 'Habitations De Maisonneuve', '2485, boulevard de Maisonneuve est\rMontrÃ©al, QuÃ©bec', '45.530132', '-73.548258', NULL, '902223.0', '', '', 'Ville-Marie', 'Sculpture', 324, 0),
(482, 1750, 'Sublime', 'L''Å“uvre Ã©tait initialement sans-titre, son titre actuel a Ã©tÃ© attribuÃ© par l''ayant droit de Mau', 'Art public', 'Beaux-arts', 'Inconnu', NULL, 'Acier; bÃ©ton', NULL, NULL, '762 x 457 cm', NULL, 'Habitations Favard', '2066, rue Favard\rMontrÃ©al, QuÃ©bec', '45.477999', '-73.556237', NULL, '1978-SC-03', '', '', 'Le Sud-Ouest', 'Sculpture', 324, 0),
(483, 1752, 'Ã‰volution de joie', 'L''Å“uvre Ã©tait initialement sans-titre, son titre actuel a Ã©tÃ© attribuÃ© par l''ayant droit de Mau', 'Art public', 'Beaux-arts', 'Inconnu', NULL, 'Acier; bÃ©ton', NULL, 'CoupÃ©; courbÃ©; soudÃ©', '252.5 x 165 x 335', NULL, 'Habitations De Mentana', '4110 rue Mentana\rMontrÃ©al, QuÃ©bec', '45.524225', '-73.574470', NULL, '1966-APE-SC-12', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 324, 0),
(485, 1756, 'Colonne stÃ¨le', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(631170000000-0500)/', 'Ardoise; silicone; verre', NULL, 'Assemblage; inscription', '244 x 45,5 x 32 cm', NULL, 'BibliothÃ¨que du Plateau-Mont-Royal', '465 Avenue du Mont-Royal Est, MontrÃ©al, QC H2J 1W3', '45.524831', '-73.582313', NULL, '1990-IA-SC-0016', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 329, 0),
(486, 1757, 'Regard sur le fleuve', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier corten', NULL, 'DÃ©coupÃ©; soudÃ©', '312 x 650 x 20 cm', 'Parc Stoney-Point', NULL, NULL, '45.435609', '-73.706410', NULL, '2002-SC-53', '', '', 'Lachine', 'Sculpture', 329, 0),
(488, 1762, 'Tango de MontrÃ©al', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al (Concou', '/Date(923976000000-0400)/', 'Argile', NULL, 'Moulage d''argile crue', '1040 x 1740 cm', 'Place GÃ©rald-Godin', NULL, '4433-4435-4437, rue Rivard, Place GÃ©rald Godin', '45.524229', '-73.581463', NULL, '1999-SC-06', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 333, 0),
(489, 1764, 'Les sons de la musique', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', NULL, 'BÃ©ton', NULL, 'CoulÃ©; moulÃ©', '246 x 1344 x 108 cm', 'De la GauchetiÃ¨re', NULL, NULL, '45.507074', '-73.560927', NULL, '902229.0', '', '', 'Ville-Marie', 'Sculpture', 334, 0),
(490, 1767, 'Cheval Ã  plume', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Calcaire', NULL, 'TaillÃ©; sculptÃ©; gravÃ©; percÃ©; peint', '245 x 315 x 210 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.427985', '-73.679242', NULL, '2002-SC-35', '', '', 'Lachine', 'Sculpture', 335, 0),
(491, 1769, 'Ã‰tudes pour la figure, Saint-Laurent', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Pierre; pigments mÃ©talliques', NULL, 'TaillÃ©; gravÃ©; collÃ©; peint', '310 x 95 x 95 cm', 'Boulevard Saint-Joseph', NULL, NULL, '45.433725', '-73.685529', NULL, '2002-SC-54', '', '', 'Lachine', 'Sculpture', 335, 0),
(492, 1771, 'Monument aux braves de Verdun', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Bronze', NULL, NULL, NULL, 'Parc du Souvenir', 'HÃ´tel de Ville arrondissement de Verdun', '4555 rue de Verdun', '45.458882', '-73.572314', NULL, '1924-AP-SC-0001', '', '', 'Verdun', 'Sculpture', 337, 0),
(493, 1773, 'After Babel, a Civic Square', 'After Babel\rAfter Babel / A Civic Square\rAfter Babel (a civic square)', 'Art public', 'Beaux-arts', 'Don', '/Date(859352400000-0500)/', 'Acier corten; bronze; laiton', NULL, 'AssemblÃ©; soudÃ©; dÃ©coupÃ©; moulÃ©', '450 x 1000 cm', 'Promenade des artistes', NULL, NULL, '45.509963', '-73.567202', NULL, '936043.0', '', '', 'Ville-Marie', 'Installation', 338, 0),
(496, 1779, 'La peur', NULL, 'Art public', 'Beaux-arts', 'Achat', '/Date(907214400000-0400)/', 'Granit; aluminium; acier galvanisÃ©; grÃ¨s; calcai', NULL, 'Peint; soudÃ©; assemblÃ©', '365 x 121 x 320cm', 'Place Dâ€™Youville', NULL, NULL, '45.501361', '-73.555219', NULL, '1998-SC-04', '', '', 'Ville-Marie', 'Installation', 341, 0),
(497, 1781, 'Monument Ã  la Pointe', 'La Pointe (titre provisoire)', 'Art public', 'Beaux-arts', 'Commande publique de la ville de MontrÃ©al (Concou', '/Date(976683600000-0500)/', 'BÃ©ton; brique; acier; aluminium', NULL, NULL, '1400 x 400 cm', NULL, NULL, NULL, '45.476015', '-73.573449', NULL, '2001-APE-SC-07', '', '', 'Le Sud-Ouest', 'Installation', 341, 0),
(498, 1783, 'Daleth', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al (Concou', '/Date(1257742800000-0500)/', 'Granit; bÃ©ton; acier inoxydable', NULL, 'CoulÃ©; gravÃ©; dÃ©coupÃ©; collÃ©; assemblÃ©', '350 x 6200 cm', 'Parc Marcelin-Wilson', NULL, NULL, '45.534506', '-73.678436', NULL, '2010-AP-SC-0002', '', '', 'Ahuntsic-Cartierville', 'Installation', 341, 0),
(499, 1784, 'Trajectoire no 2', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'SoudÃ©; peint; patinÃ©; boulonnÃ©', '195 cm x 103 cm x 276 cm', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S 4L9', '45.430542', '-73.666852', NULL, '2002-SC-22', '', '', 'Lachine', 'Sculpture', 344, 0),
(501, 1788, 'La naissance', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(788936400000-0500)/', 'Acier', NULL, 'DÃ©coupÃ©; soudÃ©', '380 X 100 X 140 cm', NULL, 'Centre culturel de Verdun', '5955 Bannantyne, Verdun, QuÃ©bec, H4H 1H6', '45.448586', '-73.577611', NULL, '1995-APE-SC-22', '', '', 'Verdun', 'Sculpture', 344, 0),
(502, 1790, 'Le coup de dÃ©part', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', '/Date(1226466000000-0500)/', 'Acier inoxydable', NULL, NULL, '538 X 371 X165 cm', 'Parc Philippe-Laheurte', NULL, NULL, '45.505415', '-73.718634', NULL, '2009-SC-01', '', '', 'Saint-Laurent', 'Sculpture', 344, 0),
(503, 1792, 'Monument Ã  Nelson', 'Colonne Nelson', 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(-5080647600000-0500)/', 'Calcaire; bÃ©ton; grÃ¨s', NULL, NULL, '2055 x 600 x 600 cm', 'Place Jacques-Cartier', NULL, NULL, '45.508186', '-73.553845', NULL, '1809-APE-SC-01', '', '', 'Ville-Marie', 'Sculpture', 348, 0),
(504, 1794, 'Site/interlude', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier galvanisÃ©, pierre', NULL, 'DÃ©coupÃ©; soudÃ©', '400 x 185 x 8535 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.427777', '-73.676973', NULL, '2002-AP-SC-37', '', '', 'Lachine', 'Installation', 349, 0),
(505, 1796, 'Non titrÃ© (Fontaine; Les chÃ©rubins)', 'Fontaine; Les chÃ©rubins', 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Fonte', NULL, 'CoulÃ©e', NULL, 'Parc Outremont', NULL, NULL, '45.517895', '-73.604464', NULL, '2002-AP-SC-0072', '', '', 'Outremont', 'Sculpture', 350, 0),
(506, 1798, 'La pierre et le feu', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(473403600000-0500)/', 'Acier', NULL, 'DÃ©coupÃ©; soudÃ©; boulonnÃ©; peint', '304 x 122 x 400 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428946', '-73.682977', NULL, '2002-AP-SC-36', '', '', 'Lachine', 'Sculpture', 351, 0),
(508, 1803, 'L''eau et le transport', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Commande Ã  l''artiste', NULL, 'Aluminium', 'Aluminium', 'aluchromie', '274.5 x 812 cm', NULL, 'Usine de filtration Charles-J. des Baillets', '8585, Boulevard De La VÃ©rendrye, LaSalle, QuÃ©bec, H8N 2K2', '45.425053', '-73.619043', NULL, '1977-IA-PE-0002', '', '', 'LaSalle', 'Peinture', 353, 0),
(509, 1809, 'Courbes et vent', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BibliothÃ¨que de Pierrefonds', '13555, boulevard de Pierrefonds', '45.495937', '-73.847429', NULL, '1990-IA-SC-0017', '', '', 'Pierrefonds-Roxboro', 'Sculpture', 354, 0),
(510, 1810, 'Fontaine du square Saint-Louis', 'Fontaine Lacroix du square Viger', 'Art public', 'Beaux-arts', 'Achat', NULL, 'Fonte', NULL, NULL, '457 x 240 cm', 'Square Saint-Louis', NULL, NULL, '45.517041', '-73.569964', NULL, '900957.0', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 355, 0),
(511, 1812, 'Sculpture-fontaine, square Sir-George-Ã‰tienne-Cartier', 'Sculpture-fontaine du square G.-Ã‰. Cartier', 'Art public', 'Beaux-arts', 'Achat', NULL, 'Fonte', NULL, NULL, '650 x 205 cm', 'Square Sir-George-Ã‰tienne-Cartier', NULL, NULL, '45.473413', '-73.586390', NULL, '900955.0', '', '', 'Le Sud-Ouest', 'Sculpture', 355, 0),
(512, 1815, 'Du long du long', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier brut; peinture; gravier', NULL, 'DÃ©coupÃ©; soudÃ©; boulonnÃ©; peint', '120 X 287X 496 cm', 'Promenade PÃ¨re-Marquette', NULL, NULL, '45.431119', '-73.673413', NULL, '2002-SC-55', '', '', 'Lachine', 'Sculpture', 357, 0),
(513, 1817, 'Les voÃ»tes d''Ulysse', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(694242000000-0500)/', 'Acier; bÃ©ton', NULL, 'DÃ©coupÃ©; soudÃ©; boulonnÃ©', '110 X 558 X 1226 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428916', '-73.682227', NULL, '2002-SC-37', '', '', 'Lachine', 'Sculpture', 357, 0),
(514, 1819, 'L''eau et les sports', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Commande Ã  l''artiste', NULL, 'Aluminium', 'Aluminium', 'Aluchromie', ' 274,5 x 812 cm', NULL, 'Usine de filtration Charles-J. des Baillets', '8585, Boulevard De La VÃ©rendrye, LaSalle, QuÃ©bec, H8N 2K2', '45.425053', '-73.619043', NULL, '1979-IA-PE-0001', '', '', 'LaSalle', 'Peinture', 359, 0),
(515, 1821, 'From A', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Granit; mortier', NULL, NULL, '170 x 150 x 590 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428743', '-73.686001', NULL, '2002-SC-38', '', '', 'Lachine', 'Sculpture', 360, 0),
(516, 1823, 'Force et progrÃ¨s', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'SoudÃ©; peint', '255 x 220 x 425 cm', 'Parc Monk', NULL, NULL, '45.431031', '-73.670124', NULL, '2002-SC-56', '', '', 'Lachine', 'Sculpture', 361, 0),
(517, 1825, 'Ã‰cluses', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier inoxydable', NULL, 'SoudÃ©', '415 x 111 x 135 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428215', '-73.678237', NULL, '2002-SC-39', '', '', 'Lachine', 'Sculpture', 362, 0),
(518, 1827, 'Vitraux', NULL, 'IntÃ©gration Ã  l''architecture', 'Arts dÃ©coratifs', NULL, '/Date(-1388516400000-0500)/', NULL, NULL, NULL, NULL, NULL, 'HÃ´tel de Ville de MontrÃ©al', '275 Rue Notre-Dame Est, MontrÃ©al, QC H2Y 1C6', '45.508816', '-73.554069', NULL, '1926-IA-VT-0001', '', '', 'Ville-Marie', 'Vitrail', 363, 0),
(520, 1834, 'Ce qui reste 1997-2001', 'Ce qui reste; DIA-LOG (titre provisoire)', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', '/Date(990676800000-0400)/', 'Papier; bois; acrylique', 'Bois', NULL, '400 x 234 x 2 cm', NULL, 'Centre d''histoire de MontrÃ©al', '335 Place d''Youville, MontrÃ©al, QC H2Y 3T1', '45.501079', '-73.555515', NULL, '2001-API-PH-05', '', '', 'Ville-Marie', 'Photographie', 364, 0),
(521, 1835, 'Le roi Singe', NULL, 'Art public', 'Beaux-arts', 'Achat', '/Date(441781200000-0500)/', 'BÃ©ton', NULL, 'CoulÃ©; assemblÃ©; moulÃ©', '550 x 400 x 21 cm', 'De la GauchetiÃ¨re', NULL, NULL, '45.506907', '-73.560590', NULL, '902215.0', '', '', 'Ville-Marie', 'Sculpture', 366, 0),
(522, 1837, 'Le spectacle de la curiositÃ©', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', '/Date(894859200000-0400)/', 'Bois; verre; mÃ©tal; papier', 'bois, verre et mÃ©tal', 'Impression sur papier ilfochrome', '260 x 800 cm', NULL, 'Maison de la culture d''Ahuntsic - Cartierville', '10 300 rue Lajeunesse, 1er Ã©tage, MontrÃ©al (QuÃ©bec), H3L 2E5 ', '45.553357', '-73.662743', NULL, '1998-IN-05', '', '', 'Ahuntsic-Cartierville', 'Photographie', 367, 0),
(523, 1838, 'Espace vert', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al (Concou', '/Date(1151380800000-0400)/', 'Aluminium; verre; acier inoxydable; acrylique', 'Plexiglas', 'Impressions numÃ©riques montÃ©es Ã  froid sur supp', '215 x 450 x 36', 'Parc Pierre-Elliott-Trudeau', 'Centre communautaire intergÃ©nÃ©rationnel d''Outremont', '999, avenue McEachran, MontrÃ©al (QC) H2V 3E6', '45.519579', '-73.619247', NULL, '2006-PH-02', '', '', 'Outremont', 'Photographie', 367, 0),
(525, 1840, 'Monument Ã  Louis Cyr', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(31554000000-0500)/', 'Bronze; granit; bÃ©ton', NULL, 'Bronze coulÃ©; cire perdue', '440  x 183  x 180 cm', 'Parc des Hommes-Forts', NULL, NULL, '45.475382', '-73.593225', NULL, '730929.0', '', '', 'Le Sud-Ouest', 'Sculpture', 370, 0),
(526, 1842, 'Le serment de Dollard des Ormeaux et de ses compagnons', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503965', '-73.587328', NULL, '1931-IA-PE-0014', '', '', 'Ville-Marie', 'Peinture', 371, 0),
(527, 1843, 'Monument Ã  Jean-Olivier ChÃ©nier', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(-2366737200000-0500)/', 'Cuivre; granit; rÃ©sine', NULL, 'Sculpture de cuivre formÃ©; soudure Ã  l''Ã©tain.', '400 x 100 x 100 cm', 'Square Viger', NULL, NULL, '45.511042', '-73.554960', NULL, '905189.5', '', '', 'Ville-Marie', 'Sculpture', 372, 0),
(528, 1851, 'Sans titre', 'Non titrÃ©e (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-120596400000-0500)/', 'Calcaire; bÃ©ton ', NULL, 'SculptÃ©', '348 x 335 x 267 cm', 'Parc du Mont-Royal', NULL, NULL, '45.499994', '-73.594489', NULL, '902233.0', '', '', 'Ville-Marie', 'Sculpture', 373, 0),
(529, 1853, 'Maisonneuve Ã©rige une croix sur la montagne', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503995', '-73.587278', NULL, '1931-IA-PE-0015', '', '', 'Ville-Marie', 'Peinture', 374, 0),
(530, 1854, 'Monument Ã  Isabelle la Catholique', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(-347137200000-0500)/', 'Bronze; cuivre; granit', NULL, 'Bronze coulÃ©', '293 x 152.5 x 107 cm', 'Parc Sir-Wilfrid-Laurier', NULL, NULL, '45.531079', '-73.586023', NULL, '900922.0', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 375, 0),
(533, 1860, 'Explorer', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(807336000000-0400)/', 'Acier brut; acier inoxydable; rÃ©sine; fibre de ve', NULL, 'SoudÃ©; boulonnÃ©; dÃ©coupÃ©; moulÃ©', '484 x 178 x 212 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428890', '-73.680853', NULL, '2002-SC-40', '', '', 'Lachine', 'Sculpture', 378, 0),
(534, 1865, 'Sans titre', 'Non titrÃ©e (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-119214000000-0500)/', 'Calcaire', NULL, 'SculptÃ©', '336 x 117 x 178 cm', 'Parc du Mont-Royal', NULL, NULL, '45.500025', '-73.594055', NULL, '1966-APE-SC-14', '', '', 'Ville-Marie', 'Sculpture', 379, 0),
(537, 1872, 'Le phare d''ArchimÃ¨de', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Granit; acier; nÃ©on', NULL, 'MeulÃ©; cimentÃ©', '750 x 1000 x 1050 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.429161', '-73.688205', NULL, '1986-APE-SC-05', '', '', 'Lachine', 'Installation', 382, 0),
(538, 1874, 'Le dÃ©jeuner sur lâ€™herbe', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(757400400000-0500)/', 'Granit; pierre indiana; bÃ©ton; bronze', NULL, 'TaillÃ©; polissage; tournÃ©; coulÃ©; patinÃ©', '300 x 900 x 1308 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428482', '-73.677576', NULL, '2002-SC-42', '', '', 'Lachine', 'Installation', 382, 0),
(539, 1876, 'Girafes', 'Non titrÃ©e', 'Art public', 'Beaux-arts', 'Achat', '/Date(-18993600000-0400)/', 'Acier', NULL, 'AssemblÃ©; soudÃ©; peint', '11,8 x 3 m', 'Parc Jean-Drapeau, ÃŽle Sainte-HÃ©lÃ¨ne', NULL, NULL, '45.520049', '-73.532032', NULL, '1967-SC-20', '', '', 'Ville-Marie', 'Sculpture', 384, 0),
(540, 1878, 'Migration', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(-63140400000-0500)/', 'Fonte', NULL, 'CoulÃ©; boulonnÃ©', '465 x 230 x 400 cm', 'Parc Jean-Drapeau, ÃŽle Sainte-HÃ©lÃ¨ne', NULL, NULL, '45.514075', '-73.534655', NULL, '901609.0', '', '', 'Ville-Marie', 'Sculpture', 384, 0),
(541, 1880, 'Hommage Ã  RenÃ© LÃ©vesque', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Ciment; acier inoxydable; verre', NULL, 'Ciment moulÃ©', '518 x 1829 x 457 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428749', '-73.687124', NULL, '1988-SC-03', '', '', 'Lachine', 'Sculpture', 384, 0),
(542, 1882, 'Lieu', 'Fleur d''hiver\rSans titre', 'Art public', 'Beaux-arts', 'Transfert', '/Date(632120400000-0500)/', 'BÃ©ton armÃ©', NULL, 'MoulÃ©; assemblÃ©', '700 x 914 cm', 'Parc NoÃ«l-Sud', NULL, NULL, '45.516350', '-73.725394', NULL, '2002-SC-70', '', '', 'Saint-Laurent', 'Sculpture', 384, 0),
(543, 1885, 'Les promeneurs', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, NULL, '592 x 190 x 812', 'Parc Saint-Laurent', NULL, NULL, '45.527273', '-73.686882', NULL, '1990-APE-SC-08', '', '', 'Saint-Laurent', 'Sculpture', 388, 0),
(544, 1887, 'Trampolino', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier inoxydable, acier Corten', NULL, 'SoudÃ©; assemblÃ©', '350 x 600', NULL, 'Centre LÃ©onard de Vinci', '8371, boulevard Lacordaire, MontrÃ©al', '45.585723', '-73.596644', NULL, '2001-APE-SC-06', '', '', 'Saint-LÃ©onard', 'Sculpture', 389, 0),
(545, 1889, 'Dex', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; ciment', NULL, 'AssemblÃ©; soudÃ©; percÃ©', '148 x 503 x 730 cm', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S 4L9', '45.430429', '-73.666229', NULL, '2002-SC-23', '', '', 'Lachine', 'Sculpture', 390, 0),
(546, 1891, 'AffinitÃ©s', NULL, 'Art public', 'Beaux-arts', 'Inconnu', NULL, 'Cuivre; granit', NULL, 'AssemblÃ©; soudÃ©; martelÃ©; dÃ©coupÃ©; patinÃ©', '268 x 160 x 150 cm', 'Place Upper-Trafalgar', NULL, NULL, '45.495832', '-73.596190', NULL, '902200.0', '', '', 'Ville-Marie', 'Sculpture', 391, 0),
(547, 1893, 'Puerta de la Amistad', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(792824400000-0500)/', 'Acier peint', NULL, NULL, '750 x 120 x 570 cm', 'Parc Jean-Drapeau, ÃŽle Sainte-HÃ©lÃ¨ne', NULL, NULL, '45.511015', '-73.533386', NULL, '951358.0', '', '', 'Ville-Marie', 'Sculpture', 392, 0),
(548, 1895, 'Monument Ã  Norman Bethune', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(229752000000-0400)/', 'Marbre; granit', 'Pierre', 'Taille directe', '380 x 100 x 100 cm', 'Place Norman-Bethune', NULL, NULL, '45.495970', '-73.579460', NULL, '770958.0', '', '', 'Ville-Marie', 'Sculpture', 393, 0),
(549, 1897, 'Sans titre', 'Non titrÃ©e (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-120596400000-0500)/', 'Marbre', NULL, 'Taille directe', '274 x 127 x 81 cm', 'Parc du Mont-Royal', NULL, NULL, '45.500500', '-73.594335', NULL, '902235.0', '', '', 'Ville-Marie', 'Sculpture', 394, 0),
(550, 1899, 'Les sÅ“urs cardinales', 'Les sÅ“urs cardinales (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-120596400000-0500)/', 'Marbre; granit', NULL, 'Taille directe', '440 x 360 x 100', 'Parc du Mont-Royal', NULL, NULL, '45.499881', '-73.594816', NULL, '902236.0', '', '', 'Ville-Marie', 'Sculpture', 395, 0),
(551, 1901, 'L''ange de pierre', 'L''ange de pierre, (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-119214000000-0500)/', 'Marbre; bÃ©ton', NULL, 'SculptÃ©', '208 x 152cm', 'Parc du Mont-Royal', NULL, NULL, '45.500421', '-73.593759', NULL, '1964-SC-01', '', '', 'Ville-Marie', 'Sculpture', 396, 0),
(552, 1912, 'Non titrÃ©', NULL, 'Art public', 'Beaux-arts', 'Inconnu', NULL, 'Bronze', NULL, 'CoulÃ©', '445 x 600 x 600 cm', 'Parc LadauversiÃ¨re', NULL, NULL, '45.582048', '-73.582485', NULL, '1986-AP-SC-0010', '', '', 'Saint-LÃ©onard', 'Sculpture', 397, 0),
(553, 1913, 'La fondation de MontrÃ©al est dÃ©cidÃ©e Ã  Paris', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.504020', '-73.587238', NULL, '1931-IA-PE-0016', '', '', 'Ville-Marie', 'Peinture', 398, 0),
(554, 1914, 'Polaris en lumiÃ¨re', NULL, 'Art public', 'Beaux-arts', 'Commande Ã  l''artiste', '/Date(1328072400000-0500)/', 'LumiÃ¨re', NULL, 'Image lumineuse projettÃ©e au sol', NULL, 'Place d''Armes', NULL, NULL, '45.504636', '-73.557128', NULL, '2013-AP-MU-0003', '', '', 'Ville-Marie', 'MultimÃ©dia', 399, 0),
(555, 1916, 'Ã‰quinoxe', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(820472400000-0500)/', 'Granit; acier inoxydable', NULL, 'GravÃ©; incrustÃ©', '248 x 200', 'Promenade de la Commune', NULL, NULL, '45.508180', '-73.551290', NULL, '2013-AP-IN-0002', '', '', 'Ville-Marie', 'Installation', 399, 0),
(556, 1917, 'Force', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(566715600000-0500)/', 'BÃ©ton, granit; eau; cÃ©ramique', NULL, NULL, '330 x 2900 x 4500 cm', 'Square Viger', NULL, NULL, '45.512625', '-73.553821', NULL, '900982.0', '', '', 'Ville-Marie', 'Sculpture', 401, 0),
(559, 1923, 'Dollard des Ormeaux meurt Ã  Long-Sault pour sauver la colonie', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.504105', '-73.587259', NULL, '1931-IA-PE-0017', '', '', 'Ville-Marie', 'Peinture', 404, 0),
(560, 1924, 'Buste de JosÃ© de San Martin', NULL, 'Art public', 'Beaux-arts', 'Don', NULL, 'Bronze; GrÃ¨s ', NULL, 'Fonte Ã  la cire perdue', '276 x 105.5 x 95 cm', 'Parc Hector-Toe-Blake', NULL, NULL, '45.489365', '-73.580891', NULL, '2000-SC-09', '', '', 'Ville-Marie', 'Sculpture', 405, 0),
(561, 1926, 'Spatio-mobile #1', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'SoudÃ©, peint', '176 x 135 x 150 cm', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S 4L9', '45.430317', '-73.666315', NULL, '2002-SC-24', '', '', 'Lachine', 'Sculpture', 406, 0),
(562, 1928, 'Le phare du Cosmos', 'Phare cosmique', 'Art public', 'Beaux-arts', 'Don', '/Date(198216000000-0400)/', 'Acier', NULL, 'Taille; soudÃ©', '960 x 280 cm', 'Parc Jean-Drapeau, ÃŽle Sainte-HÃ©lÃ¨ne', NULL, NULL, '45.509335', '-73.532705', NULL, '761308.0', '', '', 'Ville-Marie', 'Sculpture', 406, 0),
(563, 1930, 'Parvis et portail #22', 'Place de l''an 2000', 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Aluminium; acier', NULL, 'SoudÃ©; poli', '492 x 575 x 1000 cm', 'Place de lâ€™an 2000', NULL, NULL, '45.516024', '-73.679906', NULL, '2000-APE-SC-05', '', '', 'Saint-Laurent', 'Installation', 406, 0),
(564, 1932, 'La force', 'La force (SISM-64) \rNon titrÃ©e (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-119214000000-0500)/', 'Fonte', NULL, 'CoulÃ©; moulÃ©', '244 x 533 x 275 cm', 'Parc du Mont-Royal', NULL, NULL, '45.500095', '-73.595506', NULL, '642238.0', '', '', 'Ville-Marie', 'Sculpture', 409, 0),
(565, 1934, 'La sainte TrinitÃ©', 'Holy Trinity', 'Art public', 'Beaux-arts', 'DÃ©pÃ´t', '/Date(-157748400000-0500)/', 'Fonte; Ã©poxy; acier', NULL, 'MoulÃ©; soudÃ©; peint (?)', '130 x 90 x 165', 'Square Saint-Louis', NULL, NULL, '45.517612', '-73.569411', NULL, '902216.0', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 409, 0),
(567, 1938, 'Sans titre', 'Non titrÃ©e (square Saint-Louis)\rLe chien du QuÃ©bec', 'Art public', 'Beaux-arts', 'DÃ©pÃ´t', '/Date(63090000000-0500)/', 'Fonte; peinture', NULL, 'CoulÃ©; peint', '97 x 167 x 183 cm', 'Square Saint-Louis', NULL, NULL, '45.517421', '-73.569295', NULL, '902217.0', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 409, 0),
(568, 1940, 'Justice et paix', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(504939600000-0500)/', 'Calcite; acier; peinture', NULL, 'TaillÃ©; sculptÃ©; gravÃ©; peint', '360 x 300 x 570 cm', 'Parc Saint-LÃ©onard', NULL, NULL, '45.586578', '-73.595143', NULL, '1986-APE-SC-06', '', '', 'Saint-LÃ©onard', 'Sculpture', 409, 0),
(569, 1942, 'L''argoulet', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Granit', NULL, 'SculptÃ©; taillÃ©; poli; assemblÃ©', '550 x 130 x 242', 'Parc Labelle', NULL, NULL, '45.472525', '-73.570481', NULL, '1985-APE-SC-05', '', '', 'Verdun', 'Sculpture', 414, 0),
(570, 1944, 'Les cariatides', NULL, 'Art public', 'Beaux-arts', 'Transfert', NULL, 'Acier; granit; gravier; vÃ©gÃ©taux.', NULL, 'DÃ©coupÃ©; collÃ©; boulonnÃ©; taillÃ©; peint; plan', '262 x 610 x 1723 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428688', '-73.684251', NULL, '2002-SC-44', '', '', 'Lachine', 'Installation', 414, 0),
(571, 1946, 'Les dos blancs', NULL, 'Art public', 'Beaux-arts', 'Transfert', NULL, 'Calcaire; granit; aluminium; ciment', NULL, 'Techniques multiples', '251 x 350 x 930 cm', 'Parc Caron', NULL, NULL, '45.521679', '-73.671706', NULL, '1990-APE-SC-06', '', '', 'Saint-Laurent', 'Installation', 414, 0),
(572, 1948, 'Le portage', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; granit; briques; pigments; vÃ©gÃ©taux', NULL, 'TaillÃ©; sculptÃ©; gravÃ©; boulonnÃ©e; collÃ©', '265 x 260 x 800 cm', 'Parc Summerlea', NULL, NULL, '45.437485', '-73.714281', NULL, '2002-SC-58', '', '', 'Lachine', 'Installation', 414, 0),
(574, 1951, 'Story Rock', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Pierre', NULL, NULL, '244 x 240 x 220 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428096', '-73.677199', NULL, '2002-SC-46', '', '', 'Lachine', 'Sculpture', 419, 0),
(575, 1953, 'Le navigateur', NULL, 'Art public', 'Beaux-arts', 'Transfert', NULL, 'Granit', NULL, 'GravÃ©', '350 x 620 x 245 cm', 'Parc Summerlea', NULL, NULL, '45.438513', '-73.719208', NULL, '2002-SC-59', '', '', 'Lachine', 'Sculpture', 419, 0),
(576, 1955, 'Vortexit II', 'Vortexit 2', 'Art public', 'Beaux-arts', 'Commande Ã  l''artiste', '/Date(1234155600000-0500)/', 'Granit; gravier', NULL, 'AssemblÃ©; gravÃ©; fixÃ©', '270 x 1050 x 1440 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428603', '-73.678586', NULL, '2009-IN-06', '', '', 'Lachine', 'Sculpture', 419, 0),
(577, 1957, 'Non titrÃ© (Traitement pictural au plafond de l''ancien bureau du conservateur)', 'Traitement pictural au plafond de l''ancien bureau du conservateur', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ã‰difice Gaston-Miron', '1210, rue Sherbrooke Est, MontrÃ©al (QuÃ©bec) H2L 1L9', '45.522741', '-73.565331', NULL, '1931-IA-PE-0018', '', '', 'Ville-Marie', 'Peinture', 422, 0),
(578, 1958, 'Murale extÃ©rieure', 'Non titrÃ©e', 'IntÃ©gration Ã  l''architecture', 'Arts dÃ©coratifs', 'IntÃ©gration des arts Ã  l''architecture', NULL, 'MÃ©tal, pigments', NULL, NULL, '183 x 361,5 cm', 'Parc du Mont-Royal', 'Pavillon du lac aux Castors', '2000, chemin Remembrance, MontrÃ©al (QuÃ©bec) H3H 1A2', '45.498526', '-73.599161', NULL, '2006-IA-EM-0001', '', '', 'Ville-Marie', 'Ã‰maux', 423, 0),
(580, 1962, 'Monument Ã  Jacques Cartier', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(-2415643200000-0400)/', 'Bronze; acier; fonte de fer.', NULL, 'Statue originale : cuivre repoussÃ©-estampÃ©; Stat', '9.14 m (h) x 3.6 m (diamÃ¨tre)', 'Square Saint-Henri', NULL, NULL, '45.480058', '-73.586269', NULL, '050903.0', '', '', 'Le Sud-Ouest', 'Sculpture', 425, 0),
(582, 1966, 'Monument Ã  sir John A. Macdonald', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(-2353262400000-0400)/', 'Bronze; granit', NULL, NULL, '1800 x 486 x 432 cm', 'Place du Canada', NULL, NULL, '45.498786', '-73.569638', NULL, '1895-APE-SC-01', '', '', 'Ville-Marie', 'Sculpture', 427, 0),
(583, 1968, 'Wind Boat', 'Bateau Ã  vent', 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier galvanisÃ©; aluminium', NULL, 'AssemblÃ©; imbriquÃ©', '762 x 183 x 148 cm', 'Boulevard LaSalle', NULL, NULL, '45.432687', '-73.588115', NULL, '1990-APE-SC-11', '', '', 'LaSalle', 'Sculpture', 428, 0),
(584, 1970, 'The Passing Song', 'Passing Song, The', 'Art public', 'Beaux-arts', 'Transfert', '/Date(694242000000-0500)/', 'Acier brut, bÃ©ton', NULL, NULL, '456 x 744 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428971', '-73.681205', NULL, '2002-SC-47', '', '', 'Lachine', 'Installation', 428, 0),
(586, 1974, 'Sans titre', 'Non titrÃ©e (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-119214000000-0500)/', 'Calcaire', NULL, 'SculptÃ©', '197 x 102 x 84 cm', 'Parc du Mont-Royal', NULL, NULL, '45.499908', '-73.594361', NULL, '1965-APE-SC-04', '', '', 'Ville-Marie', 'Sculpture', 431, 0),
(587, 1976, 'Monument Ã  la reine Victoria', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(-3092583600000-0500)/', 'Bronze; granit', NULL, NULL, '1190 x 437.5 x 437.5 cm', 'Square Victoria', NULL, NULL, '45.501421', '-73.561586', NULL, '1872-APE-SC-01', '', '', 'Ville-Marie', 'Sculpture', 432, 0),
(588, 2994, 'L''Ã©treinte', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', '/Date(1320728400000-0500)/', 'Aluminium; granit', NULL, 'Aluminium: dÃ©coupÃ©; pliÃ©; soudÃ© et assemblÃ©. ', 'Les diffÃ©rents ensemble de l''installation sont rÃ', 'Parc Paul-Dozois', NULL, 'Devant l''entrÃ©e du 250, boul. de Maisonneuve est', '45.512386', '-73.563593', NULL, '2011-AP-IN-0014', '', '', 'Ville-Marie', 'Installation', 433, 0),
(590, 3096, 'Hommage Ã  l''esprit sportif', NULL, 'IntÃ©gration Ã  l''architecture', 'Arts dÃ©coratifs', 'IntÃ©gration des arts Ã  l''architecture', NULL, 'CÃ©ramique ?', NULL, NULL, NULL, NULL, 'ArÃ©na Garon', '11212 Rue Garon, MontrÃ©al-Nord, QC', '45.594994', '-73.637955', NULL, '1990-IA-CE-0001', '', '', 'MontrÃ©al-Nord', 'CÃ©ramique', 435, 0),
(591, 3097, 'La Bourrasque', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', '/Date(1289365200000-0500)/', 'Acier inoxydable', NULL, 'DÃ©coupe au laser', '2700 x 570 cm', NULL, 'BibliothÃ¨que du BoisÃ©', '2727 Boulevard Thimens, MontrÃ©al, QC H4R 1T4', '45.504072', '-73.705185', NULL, '2010-IA-SC-0001', '', '', 'Saint-Laurent', 'Sculpture', 436, 0),
(592, 3098, 'Voiles', 'Voile I & Voile II', 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier inoxydable', NULL, 'Poli, finition effectuÃ©e par meuleuse Ã  disque (', '488 x 310 x 10 cm\r488 x 275 x 13 cm', 'Boulevard Albert-Brosseau', NULL, NULL, '45.603186', '-73.642556', NULL, '1990-APE-SC-14', '', '', 'MontrÃ©al-Nord', 'Sculpture', 437, 0),
(594, 3104, 'Carrefour', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', '/Date(1359003600000-0500)/', 'Bronze; acier inoxydable', NULL, 'Moulage; assemblage', NULL, NULL, 'La Station (Maison intergÃ©nÃ©rationnelle)', '201, rue Berlioz, Verdun (QuÃ©bec) H3C 1C1', '45.460134', '-73.544592', NULL, '2013-IA-SC-0001', '', '', 'Verdun', 'Sculpture', 439, 0),
(595, 3107, 'Kate & Nora', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(1376971200000-0400)/', 'Acier inoxydable', NULL, NULL, '100 x 90 x 45 cm', 'Place Kate-McGarrigle', NULL, NULL, '45.517594', '-73.597311', NULL, '2013-AP-IN-0001', '', '', 'Outremont', 'Installation', 440, 0),
(596, 5143, 'COSMOTOME NO 7, OH HOMME !', NULL, 'Art public', 'Beaux-arts', 'Commande Ã  l''artiste', '/Date(1388552400000-0500)/', NULL, NULL, NULL, NULL, 'Parc Jean-Drapeau, ÃŽle Sainte-HÃ©lÃ¨ne', NULL, '200, chemin du Tour-de-d''Ã®sle, Montreal, QC, H3C 4G8', '45.515301', '-73.530778', NULL, '2014-AP-SC-0001', '', '', 'Ville-Marie', 'Sculpture', 441, 0),
(598, 6680, 'La vÃ©locitÃ© des lieux', 'La grande roue', 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al (Concou', '/Date(1434686400000-0400)/', 'Aluminium, acier galvanisÃ©, acier inoxydable, ple', NULL, 'Assemblage', '19 x 16 x 13 m', 'Carrefour Henri-Bourassaâ€“Pie-IX', NULL, NULL, '45.596262', '-73.642587 ', NULL, '2015-AP-SC-0003', '', '', 'MontrÃ©al-Nord', 'Sculpture', 443, 0);

-- --------------------------------------------------------

--
-- Structure de la table `soumission`
--

CREATE TABLE IF NOT EXISTS `soumission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(100) CHARACTER SET latin1 NOT NULL,
  `nomCollection` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `categorieObjet` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `modeAcquisition` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `dateAccession` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `materiaux` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `support` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `technique` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `dimensionsGenerales` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `parc` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `batiment` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `adresseCivique` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `coordonneeLatitude` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `coordonneeLongitude` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `mediums` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `numeroAccession` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(2000) CHARACTER SET latin1 DEFAULT NULL,
  `urlImage` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `arrondissement` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `categorie` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `nomArtiste` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `prenomArtiste` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `nomCollectif` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `biographie` varchar(2000) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `oeuvre`
--
ALTER TABLE `oeuvre`
  ADD CONSTRAINT `oeuvre_ibfk_1` FOREIGN KEY (`arrondissement`) REFERENCES `arrondissement` (`nom`),
  ADD CONSTRAINT `oeuvre_ibfk_2` FOREIGN KEY (`categorie`) REFERENCES `categorie` (`nom`),
  ADD CONSTRAINT `oeuvre_ibfk_3` FOREIGN KEY (`idArtiste`) REFERENCES `artiste` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
