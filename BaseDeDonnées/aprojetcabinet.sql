-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 09 Juin 2020 à 18:39
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `aprojetcabinet`
--

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `age` int(20) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=385 ;

--
-- Contenu de la table `customer`
--

INSERT INTO `customer` (`id`, `name`, `prenom`, `email`, `age`, `tel`, `address`, `active`, `password`) VALUES
(284, 'hakimi', 'habiba', 'hassnaouchen62@gmail.com', 80989, '0687009876', 'Agadir-dargua hey salam', 0, NULL),
(285, 'zaki', 'zakaria', 'zakaria@gmail.com', 12345, '0654678909', 'Agadir elmassra', 0, NULL),
(291, 'karkim', 'ayoub', 'karim@gmail.com', 90987, '0654321345', 'Agadir-bdabdrahim', 0, 'hh'),
(333, 'meryam', 'meryam', 'meryam@gmail.com', 35790, '0657895432', 'bd rabat', 0, 'az'),
(339, 'dahdi', 'yassin', 'yassindahdi@gmail.com', 98054, '0677854321', 'Rabat rue hassan 2', 0, 'yy'),
(340, 'ramini', 'asmae', 'Asmae@gmail.com', 35309, '0788654320', 'Rabat', 0, 'OUCHEN'),
(375, 'mamoni', 'ahmed', 'Ahmed@gmail.com', 22345, '0678943208', 'Rabat-Salé', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `databasechangeloglock`
--

CREATE TABLE IF NOT EXISTS `databasechangeloglock` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `databasechangeloglock`
--

INSERT INTO `databasechangeloglock` (`ID`, `LOCKED`, `LOCKGRANTED`, `LOCKEDBY`) VALUES
(1, b'0', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `license_number` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `speciality` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `is_a_teacher` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `license_number` (`license_number`),
  UNIQUE KEY `license_number_2` (`license_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

--
-- Contenu de la table `doctor`
--

INSERT INTO `doctor` (`Id`, `name`, `surname`, `title`, `license_number`, `phone`, `email`, `nationality`, `speciality`, `date_of_birth`, `is_a_teacher`) VALUES
(11, 'Krzysztof', 'Kowalski', 'doktor', '123/4333', '234234', 'asdf!@sdf.sdf', 'BE', 'Neurochirurg', '1967-12-12', 0),
(14, 'Mirosław', 'Krzyśkowiak', 'doktor', '22956', '234234', 'asdf!@sdf.sdf', 'AT', 'Chirurg', '1967-12-12', 1),
(16, 'Michał', 'Abowski', 'doktor', '32954', '234234', 'asdf!@sdf.sdf', 'PL', 'Neurolog', '1967-12-12', 1),
(17, 'Jan', 'Kowalski', 'doktor', '43323', '234234', 'asdf!@sdf.sdf', 'BE', 'Neurolog', '1976-12-12', 1),
(18, 'Michał', 'Abowski', 'doktor', '25932', '234234', 'asdf!@sdf.sdf', 'BE', 'Psychiatra', '1976-12-12', 1),
(19, 'Jan', 'Kowalski', 'doktor', '69321', '234234', 'asdf!@sdf.sdf', 'AT', 'Psychiatra', '1976-12-12', 1),
(20, 'Michał', 'Abowski', 'doktor', '35465', '234234', 'asdf!@sdf.sdf', 'PL', 'Psychiatra', '1976-12-12', 0),
(21, 'Jan', 'Kowalski', 'doktor', '50123', '234234', 'asdf!@sdf.sdf', 'PL', 'Ortopeda', '1976-12-12', 1),
(22, 'Wiesław', 'Kowalski', 'doktor', '23454', '234234', 'asdf!@sdf.sdf', 'PL', 'Ortopeda', '1976-12-12', 0),
(23, 'Jan', 'Kowalski', 'doktor', '12111', '234234', 'asdf!@sdf.sdf', 'PL', 'Ortopeda', '1976-12-12', 1),
(24, 'Grzegorz', 'Kowalski', 'doktor', '43254', '234234', 'asdf!@sdf.sdf', 'FR', 'Pediatra', '2012-12-12', 0),
(25, 'Ryszard', 'Abowski', 'doktor', '63453', '234234', 'asdf!@sdf.sdf', 'PL', 'Pediatra', '2012-12-12', 0),
(26, 'Wiesław', 'Abowski', 'doktor', '22222', '234234', 'asdf!@sdf.sdf', 'FR', 'Pediatra', '2012-12-12', 0),
(27, 'Jan', 'Kowalski', 'doktor', '11111', '234234', 'asdf!@sdf.sdf', 'FR', 'Laryngolog', '2012-12-12', 1),
(28, 'Michał', 'Kowalski', 'doktor', '22223', '234234', 'asdf!@sdf.sdf', 'FR', 'Laryngolog', '2012-12-12', 1),
(29, 'Paweł', 'Andyk', 'doktor', '33333', '234234', 'asdf!@sdf.sdf', 'PL', 'Laryngolog', '2012-12-12', 1),
(30, 'Grzegorz', 'Nowak', 'doktor', '44444', '234234', 'asdf!@sdf.sdf', 'PL', 'Pediatra', '2012-12-12', 1),
(31, 'Mirosław', 'Andyk', 'doktor', '55555', '234234', 'asdf!@sdf.sdf', 'FR', 'Laryngolog', '2012-12-12', 0),
(32, 'Paweł', 'Andyk', 'doktor', '66666', '234234', 'asdf!@sdf.sdf', 'PL', 'Laryngolog', '2012-12-12', 0),
(33, 'Jan', 'Kowalski', 'doktor', '17723', '234234', 'asdf!@sdf.sdf', 'FR', 'Pediatra', '2012-12-12', 1),
(34, 'Michał', 'Andyk', 'doktor', '11123', '234234', 'asdf!@sdf.sdf', 'FR', 'Laryngolog', '2012-12-12', 0),
(35, 'Ryszard', 'Kowalski', 'doktor', '22123', '234234', 'asdf!@sdf.sdf', 'PL', 'Pediatra', '2012-12-12', 0),
(37, 'Jan', 'Kowalski', 'doktor', '44123', '234234', 'asdf!@sdf.sdf', 'PL', 'Laryngolog', '2012-12-12', 0),
(38, 'Marek', 'Kowalski', 'doktor', '55123', '234234', 'asdf!@sdf.sdf', 'PL', 'Laryngolog', '2012-12-12', 0),
(39, 'Paweł', 'Nowak', 'doktor', '66123', '234234', 'asdf!@sdf.sdf', 'PL', 'Gastrolog', '2012-12-12', 0),
(40, 'Dariusz', 'Adamczyk', 'doktor', '12333', '234234', 'asdf!@sdf.sdf', 'FR', 'Laryngolog', '2012-12-12', 0),
(41, 'Zdzisław', 'Adamczyk', 'doktor', '12323', '234234', 'asdf!@sdf.sdf', 'FR', 'Gastrolog', '2012-12-12', 1),
(42, 'Stanisław', 'Adamczyk', 'doktor', '61123', '234234', 'asdf!@sdf.sdf', 'FR', 'Laryngolog', '2012-12-12', 1),
(43, 'Michał', 'Nowak', 'doktor', '26123', '234234', 'asdf!@sdf.sdf', 'PL', 'Gastrolog', '2012-12-12', 0),
(44, 'Stanisław', 'Adamczyk', 'doktor', '36123', '234234', 'asdf!@sdf.sdf', 'PL', 'Gastrolog', '2012-12-12', 0),
(45, 'Michał', 'Malinowski', 'doktor', '87666', '234234', 'asdf!@sdf.sdf', 'FR', 'Laryngolog', NULL, 0),
(46, 'Jurek', 'Adamczyk', 'doktor', '567566', '234234', 'asdf!@sdf.sdf', 'FR', 'Gastrolog', NULL, 1),
(49, 'Stanisław', 'Adamczyk', 'doktor', '555555', '234234', 'asdf!@sdf.sdf', 'PL', 'Gastrolog', NULL, 0),
(60, 'Mirosław', 'Testowski', 'Doktor', '123324523', '320-234-001', 'mir@gmail.com', 'PL', 'Pediatra', NULL, 0),
(74, 'Włodzimierz', 'Nycz', 'Doktor', '12309233', '352', 'asdf@asdf.xs', 'PL', 'Pediatra', '1988-01-05', 0),
(75, 'John', 'Doe', 'Doctor', '123/43241', '87873-23534534-34', 'John@doe.com', 'USA', 'Neurolog', '1987-06-24', 0);

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE IF NOT EXISTS `employe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `employe`
--

INSERT INTO `employe` (`id`, `address`, `contact`, `designation`, `firstname`, `lastname`) VALUES
(12, 'Agadir-dargua hey salam', '089999', 'ou', 'hassnae', 'Ouchen');

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `heur` varchar(255) NOT NULL,
  `id_patient` bigint(255) NOT NULL,
  `id_p` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=340 ;

--
-- Contenu de la table `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email_address`, `heur`, `id_patient`, `id_p`) VALUES
(339, 'hassnae', 'Ouchen', '2020-06-09', '11:00', 12, 0);

-- --------------------------------------------------------

--
-- Structure de la table `fiches`
--

CREATE TABLE IF NOT EXISTS `fiches` (
  `id` bigint(20) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `fiches`
--

INSERT INTO `fiches` (`id`, `email_address`, `first_name`, `last_name`) VALUES
(379, 'hassnaouchen62@gmail.com', 'hassnae', 'Ouchen'),
(376, 'hassnaouchen62@gmail.com', 'hassnae', 'Ouchen');

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequence`
--

CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(386);

-- --------------------------------------------------------

--
-- Structure de la table `hospital`
--

CREATE TABLE IF NOT EXISTS `hospital` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `fax_number` varchar(255) DEFAULT NULL,
  `number_of_ambulances` int(11) DEFAULT NULL,
  `helicopter_access` tinyint(1) DEFAULT NULL,
  `teaching_hospital` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Contenu de la table `hospital`
--

INSERT INTO `hospital` (`Id`, `name`, `country`, `town`, `street`, `postal_code`, `phone_number`, `fax_number`, `number_of_ambulances`, `helicopter_access`, `teaching_hospital`) VALUES
(3, 'Santa''s Barbara', 'USA', 'Philadelphia', '24th Street', '21-094', '567-86-56756745', '234-345-456', 6, 1, 0),
(4, 'SPZOZZ', 'PL', 'Lublin', 'Jaczewskiego', '45-879', '987-987-987', '789-7897-78', 3, 0, 1),
(6, 'Centrum Metyczne im. Bitwy Warszawskiej', 'PL', 'Radzymin', 'Konstytucji 3 maja', '45-789', '45-987-987', '987-987-987', 2, 1, 0),
(9, 'German Krankenhaus', 'GER', 'Hamburg', 'Joachim Loewe Strasse', '12-124', '123-123', '1231451', 7, 1, 1),
(10, 'Maria Krankenhaus', 'GER', 'Munchen', 'Wurst Strasse', '12-124', '123-123', '1231451', 12, 0, 1),
(32, 'Alexianer St. Hedwig', 'GER', 'Berlin', 'Grosse Hamburger St.', '10115', '+49 30 23110', NULL, 7, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `hospital_doctor`
--

CREATE TABLE IF NOT EXISTS `hospital_doctor` (
  `hospital_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `contract_start_date` date DEFAULT NULL,
  `contract_end_date` date DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `supervisor` varchar(255) DEFAULT NULL,
  `part_time` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`hospital_id`,`doctor_id`),
  KEY `doctor_id` (`doctor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `hospital_doctor`
--

INSERT INTO `hospital_doctor` (`hospital_id`, `doctor_id`, `contract_start_date`, `contract_end_date`, `position`, `supervisor`, `part_time`) VALUES
(3, 16, '2018-02-02', '2018-02-25', NULL, NULL, 0),
(3, 17, '2018-02-10', '2018-02-24', NULL, NULL, 1),
(3, 22, '2017-10-13', '2018-02-25', 'Doctor', NULL, 0),
(3, 24, '2018-02-04', '2018-02-25', NULL, NULL, 0),
(3, 29, '2018-02-01', '2018-02-28', 'Doctor', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `medecin`
--

CREATE TABLE IF NOT EXISTS `medecin` (
  `id` bigint(20) NOT NULL,
  `emp_address` varchar(255) DEFAULT NULL,
  `emp_age` int(11) NOT NULL,
  `emp_name` varchar(255) DEFAULT NULL,
  `roles_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKisb294dksdbrww61yi7ipc26x` (`roles_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `medecin`
--

INSERT INTO `medecin` (`id`, `emp_address`, `emp_age`, `emp_name`, `roles_id`) VALUES
(371, 'hhhhhh', 0, 'hy', 1),
(372, 'hhhhhh', 0, 'hy', 1),
(374, 'hhhhhh', 0, 'hy', 1);

-- --------------------------------------------------------

--
-- Structure de la table `messgae`
--

CREATE TABLE IF NOT EXISTS `messgae` (
  `id` bigint(20) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `messgae`
--

INSERT INTO `messgae` (`id`, `email_address`, `first_name`, `last_name`) VALUES
(1, '', 'Bonjour', 'hassnaouchen62@gmail.com'),
(0, 'az', 'Bonjour je veut réserver un rendez-vous', 'zakaria@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `ordo`
--

CREATE TABLE IF NOT EXISTS `ordo` (
  `id` bigint(20) NOT NULL,
  `emp_address` varchar(255) DEFAULT NULL,
  `emp_age` int(11) NOT NULL,
  `emp_name` varchar(255) DEFAULT NULL,
  `roles_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbj592qfpar4yixuan54keha4j` (`roles_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ordo`
--

INSERT INTO `ordo` (`id`, `emp_address`, `emp_age`, `emp_name`, `roles_id`) VALUES
(1, 'AA', 12, 'AZ', 1);

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `patient`
--

INSERT INTO `patient` (`id`, `nom`, `prenom`) VALUES
(1, 'hakimi', 'mohammed'),
(2, 'fatimi', 'adnane');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
  `id` bigint(20) NOT NULL,
  `des` varchar(255) DEFAULT NULL,
  `prix` int(11) NOT NULL,
  `qte` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`id`, `des`, `prix`, `qte`) VALUES
(1, 'mum', 33, 123),
(2, 'dud', 27, 99),
(3, 'dud', 27, 99),
(35, 'mum', 33, 123),
(43, 'mum', 33, 123),
(42, 'dud', 27, 99),
(41, 'mum', 33, 123),
(40, 'dud', 27, 99),
(39, 'mum', 33, 123),
(38, 'dud', 27, 99),
(37, 'mum', 33, 123),
(36, 'dud', 27, 99),
(44, 'dud', 27, 99),
(45, 'mum', 33, 123),
(46, 'dud', 27, 99),
(47, 'mum', 33, 123),
(48, 'dud', 27, 99),
(49, 'mum', 33, 123),
(50, 'dud', 27, 99),
(51, 'mum', 33, 123),
(52, 'dud', 27, 99),
(53, 'mum', 33, 123),
(54, 'dud', 27, 99),
(55, 'mum', 33, 123),
(56, 'dud', 27, 99),
(58, 'mum', 33, 123),
(59, 'dud', 27, 99),
(60, 'mum', 33, 123),
(61, 'dud', 27, 99),
(73, 'mum', 33, 123),
(74, 'dud', 27, 99),
(75, 'mum', 33, 123),
(76, 'dud', 27, 99),
(81, 'mum', 33, 123),
(82, 'dud', 27, 99),
(85, 'mum', 33, 123),
(86, 'dud', 27, 99),
(88, 'mum', 33, 123),
(89, 'dud', 27, 99),
(91, 'mum', 33, 123),
(92, 'dud', 27, 99),
(97, 'mum', 33, 123),
(98, 'dud', 27, 99),
(99, 'mum', 33, 123),
(100, 'dud', 27, 99),
(101, 'mum', 33, 123),
(102, 'dud', 27, 99),
(103, 'mum', 33, 123),
(104, 'dud', 27, 99),
(106, 'mum', 33, 123),
(107, 'dud', 27, 99),
(109, 'mum', 33, 123),
(110, 'dud', 27, 99),
(118, 'mum', 33, 123),
(119, 'dud', 27, 99),
(120, 'mum', 33, 123),
(121, 'dud', 27, 99),
(122, 'mum', 33, 123),
(123, 'dud', 27, 99),
(124, 'mum', 33, 123),
(125, 'dud', 27, 99),
(126, 'mum', 33, 123),
(127, 'dud', 27, 99),
(128, 'mum', 33, 123),
(129, 'dud', 27, 99),
(131, 'mum', 33, 123),
(132, 'dud', 27, 99),
(133, 'mum', 33, 123),
(134, 'dud', 27, 99),
(135, 'mum', 33, 123),
(136, 'dud', 27, 99),
(137, 'mum', 33, 123),
(138, 'dud', 27, 99),
(139, 'mum', 33, 123),
(140, 'dud', 27, 99),
(141, 'mum', 33, 123),
(142, 'dud', 27, 99),
(143, 'mum', 33, 123),
(154, 'mum', 33, 123),
(159, 'mum', 33, 123),
(160, 'mum', 33, 123),
(161, 'mum', 33, 123),
(162, 'mum', 33, 123),
(164, 'mum', 33, 123),
(167, 'mum', 33, 123),
(168, 'mum', 33, 123),
(174, 'mum', 33, 123),
(175, 'mum', 33, 123),
(176, 'mum', 33, 123),
(177, 'mum', 33, 123),
(178, 'mum', 33, 123),
(179, 'mum', 33, 123),
(184, 'mum', 33, 123),
(185, 'mum', 33, 123),
(186, 'mum', 33, 123),
(187, 'mum', 33, 123),
(188, 'mum', 33, 123),
(189, 'mum', 33, 123),
(190, 'mum', 33, 123),
(191, 'mum', 33, 123),
(192, 'mum', 33, 123),
(193, 'mum', 33, 123),
(194, 'mum', 33, 123),
(195, 'mum', 33, 123),
(196, 'mum', 33, 123),
(197, 'mum', 33, 123),
(198, 'mum', 33, 123),
(199, 'mum', 33, 123),
(200, 'mum', 33, 123),
(201, 'mum', 33, 123),
(202, 'mum', 33, 123),
(203, 'mum', 33, 123),
(204, 'mum', 33, 123),
(205, 'mum', 33, 123),
(206, 'mum', 33, 123),
(207, 'mum', 33, 123),
(211, 'mum', 33, 123),
(216, 'mum', 33, 123),
(218, 'mum', 33, 123),
(220, 'mum', 33, 123),
(226, 'mum', 33, 123),
(227, 'mum', 33, 123),
(229, 'mum', 33, 123),
(230, 'mum', 33, 123),
(231, 'mum', 33, 123),
(233, 'mum', 33, 123),
(234, 'mum', 33, 123),
(235, 'mum', 33, 123),
(236, 'mum', 33, 123),
(237, 'mum', 33, 123),
(238, 'mum', 33, 123),
(239, 'mum', 33, 123),
(240, 'mum', 33, 123),
(241, 'mum', 33, 123),
(244, 'mum', 33, 123),
(247, 'mum', 33, 123),
(248, 'mum', 33, 123),
(249, 'mum', 33, 123),
(250, 'mum', 33, 123),
(251, 'mum', 33, 123),
(252, 'mum', 33, 123),
(253, 'mum', 33, 123),
(254, 'mum', 33, 123),
(255, 'mum', 33, 123),
(256, 'mum', 33, 123),
(257, 'mum', 33, 123),
(258, 'mum', 33, 123),
(260, 'mum', 33, 123),
(261, 'mum', 33, 123),
(266, 'mum', 33, 123),
(268, 'mum', 33, 123),
(269, 'mum', 33, 123),
(270, 'mum', 33, 123),
(273, 'mum', 33, 123),
(274, 'mum', 33, 123),
(275, 'mum', 33, 123),
(276, 'mum', 33, 123),
(286, 'mum', 33, 123),
(287, 'mum', 33, 123),
(288, 'mum', 33, 123),
(289, 'mum', 33, 123),
(290, 'mum', 33, 123),
(304, 'mum', 33, 123),
(305, 'mum', 33, 123),
(306, 'mum', 33, 123),
(307, 'mum', 33, 123),
(308, 'mum', 33, 123),
(309, 'mum', 33, 123),
(321, 'mum', 33, 123),
(322, 'mum', 33, 123),
(332, 'mum', 33, 123),
(344, 'mum', 33, 123),
(345, 'mum', 33, 123),
(346, 'mum', 33, 123),
(347, 'mum', 33, 123),
(348, 'mum', 33, 123),
(349, 'mum', 33, 123),
(350, 'mum', 33, 123),
(351, 'mum', 33, 123),
(352, 'mum', 33, 123),
(353, 'mum', 33, 123),
(354, 'mum', 33, 123),
(355, 'mum', 33, 123),
(356, 'mum', 33, 123),
(357, 'mum', 33, 123),
(358, 'mum', 33, 123),
(359, 'mum', 33, 123),
(360, 'mum', 33, 123),
(361, 'mum', 33, 123),
(363, 'mum', 33, 123);

-- --------------------------------------------------------

--
-- Structure de la table `rendezvous`
--

CREATE TABLE IF NOT EXISTS `rendezvous` (
  `id` bigint(20) NOT NULL,
  `cin` int(11) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `heure` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `id_patient` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rdv` (`id_patient`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `rendezvous`
--

INSERT INTO `rendezvous` (`id`, `cin`, `date`, `heure`, `name`, `prenom`, `id_patient`) VALUES
(1, 100009, '22/06/2020', '09:00', 'Ramzi', 'Ahmed', 32);

-- --------------------------------------------------------

--
-- Structure de la table `rolem`
--

CREATE TABLE IF NOT EXISTS `rolem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_desc` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `rolem`
--

INSERT INTO `rolem` (`id`, `role_desc`, `role_name`) VALUES
(1, 'az', 'azer');

-- --------------------------------------------------------

--
-- Structure de la table `roleo`
--

CREATE TABLE IF NOT EXISTS `roleo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_desc` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_MODERATOR'),
(3, 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`) VALUES
(1, 'hassnaouchen62@gmail.com', 'hassnaou', 'houchen'),
(2, 'amir@gmail.com', '$2a$10$HExF3wGw0Rzm3b4QKkByWOwposSdwyoCx/h.oS4mQe.Ddys1V5Kte', 'amr'),
(5, 'hassnaouchen77@gmail.com', '$2a$10$T7EJFq/aZkFQky1B7nn/PO5XM23mw3LRdTOfoDf8WGVqwbwveIkiu', 'azer'),
(8, 'hassnaouchen562@gmail.com', '$2a$10$Z2ffxdmQYp.QozlRtbbNgutnItBcmXwy/qfoFNm.J//7A5T4X5NBa', 'hassnao');

-- --------------------------------------------------------

--
-- Structure de la table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` tinyint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user_details`
--

INSERT INTO `user_details` (`user_id`, `username`, `first_name`, `last_name`, `gender`, `password`, `status`) VALUES
(1, 'az', 'az', 'az', 'femme', 'az', 1),
(22, 'admin', 'hassna', 'admin', 'femme', 'ha', 1),
(0, 'ww', 'ww', '', 'ww', 'ww', NULL),
(0, 'pp', 'pp', '', 'pp', 'pp', NULL),
(0, '', '', '', '', '', NULL),
(0, 'ouchen', 'hassna', '', 'hassnaou@g', 'azer', NULL),
(1, 'az', 'az', 'az', 'femme', 'az', 1),
(22, 'admin', 'hassna', 'admin', 'femme', 'ha', 1),
(0, 'ww', 'ww', '', 'ww', 'ww', NULL),
(0, 'pp', 'pp', '', 'pp', 'pp', NULL),
(0, '', '', '', '', '', NULL),
(0, 'hassna@gmail.com', 'ouchen	', '', 'hassna', 'AZERT', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_registration`
--

CREATE TABLE IF NOT EXISTS `user_registration` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `user_registration`
--

INSERT INTO `user_registration` (`id`, `name`, `email`, `password`) VALUES
(1, 'az', 'az', 'az'),
(4, 'er', 'er', 'er'),
(5, 'ww', 'ww', 'ww');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1);

-- --------------------------------------------------------

--
-- Structure de la table `visite`
--

CREATE TABLE IF NOT EXISTS `visite` (
  `id` bigint(20) NOT NULL,
  `emp_address` varchar(255) DEFAULT NULL,
  `emp_age` int(11) NOT NULL,
  `emp_name` varchar(255) DEFAULT NULL,
  `id_c` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKltev976g1yk53iikg8g9ximev` (`id_c`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `visite`
--

INSERT INTO `visite` (`id`, `emp_address`, `emp_age`, `emp_name`, `id_c`) VALUES
(385, 'aa', 0, 'hy', 291);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `hospital_doctor`
--
ALTER TABLE `hospital_doctor`
  ADD CONSTRAINT `hospital_doctor_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hospital_doctor_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
