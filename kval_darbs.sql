-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 08, 2023 at 09:34 AM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kval_darbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `admin_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `vards` varchar(255) NOT NULL,
  `uzvards` varchar(255) NOT NULL,
  `parole` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `vards`, `uzvards`, `parole`) VALUES
(1, 'Marcis', 'Vikmanis', 'admin1'),
(2, 'Vikmanis', 'Marcis', '124'),
(4, 'Vikmanis', 'Agnis', '111'),
(5, 'Agnis', 'Vikmanis', '999'),
(6, 'Lauma', 'Vikmane', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `Bloga_ID` bigint NOT NULL AUTO_INCREMENT,
  `nosaukums` varchar(255) NOT NULL,
  `galerija` varchar(255) NOT NULL,
  `apraksts` text NOT NULL,
  `autora_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`Bloga_ID`),
  KEY `autora_id` (`autora_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`Bloga_ID`, `nosaukums`, `galerija`, `apraksts`, `autora_id`) VALUES
(3, 'Ražas Vākšana', 'raza1.jpg', 'Šodien 1.09 sākās ražas vākšana', 1),
(4, 'Pirmā diena pabeigta', '1dienabeigas.jpg', 'Pirmā diena pabeigta un sajā dienā tika salasītas 4 pilnas piekabes ar ogām', 1),
(5, 'Atkal pie darba', 'lauks1.jpeg', 'Ir jauna, brīnišķīga diena un laiks atsākt darbus', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(12, '2014_10_12_000000_create_users_table', 4),
(13, '2014_10_12_100000_create_password_resets_table', 4),
(4, '2022_12_08_103105_create_navbars_table', 2),
(7, '2022_12_01_080905_create_produkt_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `navbars`
--

DROP TABLE IF EXISTS `navbars`;
CREATE TABLE IF NOT EXISTS `navbars` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `route` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nosaukums` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cena` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kategorija` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `apraksts` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `galerija` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `autora_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `autora_id` (`autora_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `nosaukums`, `cena`, `kategorija`, `apraksts`, `galerija`, `autora_id`) VALUES
(1, 'Smiltsērkšķu sula 300ml', '€3.00', 'Sulas', 'Smiltērkšķu sula ir saudzīgi pasterizēta un gatava lietošanai. Smiltsērkšķu sula ir viens no vislabākajiem imunitātes stirpināšanas veidiem, jo sula satur kā ūdenī, tā eļļā šķīstošos vitamīnus, kā arī vairākus fermentus. Mēs piedāvājam dabīgu, svaigi spiestu  smiltsērkšķu sulu, kas bagāta ar cilvēkam tik ļoti nepieciešamajiem vitamīniem. Sulai ir intensīva garša, tāpēc ieteicams to atšķaidīt ar ūdeni vai pienu. Sastāvs – 100% Smiltsērkšķu sula.', 'sm_sula.webp', 1),
(2, 'Dzērveņu sula 300ml', '€3.15', 'Sulas', 'Dzērveņu sulas  ir labākais kā stiprināt veselību ziemā.  Mēs piedāvājam svaigi spiestu, dabīgu dzērveņu sulu, kas bagātīga ar tik ļoti cilvēka organismam nepieciešamajiem vitamīniem un fermentiem. Sula satur bagātīgu vitamīnu kompleksu tieši Jums. Sastāvs – 100% Dzērveņu sula.', 'dzer_sula.webp', 1),
(3, 'Žāvētas cidonijas', '€4.00', 'Sukādes', 'Kas var būt garšīgs un vienlaikus veselīgs našķis? Protams, ka žāvētas un nedaudz saldinātas cidonijas. Žāvētas cidonijas ir lielisks gardums ko uzkost ikdienas steigā vai baudot nesteidzīgu vakaru mājās. Žāvētas cidonijas piedāvājam 200g iepakojumā. Sastāvs – 100% Žāvētas Cidonijas. Svars – 200gr(Netto). Iepakojuma izmēri – Augstums – 160mm, platums – 50mm, garums – 80mm.', 'zav_cid.jpeg', 1),
(4, 'Žāvētas Dzērvenes', '€6.00', 'Sukādes', 'Kas var būt garšīgs un vienlaikus veselīgs našķis? Protams, ka žāvētas un nedaudz saldinātas dzērvenes. Žāvētas dzērvenes ir lielisks gardums ko uzkost ikdienas steigā vai baudot nesteidzīgu vakaru mājās. Sastāvs – 100% Žāvētas lielogu dzērvenes. Žāvētas dzērvenes piedāvājas 300g iepakojumā. Svars – 300gr(Netto). Iepakojuma izmēri: Augstums – 190mm, platums – 60mm, garums 90mm.', 'zav_dzer.jpeg', 1),
(5, 'Saldēti Smiltsērkšķi', 'Atkarīgs no daudzuma', 'Oga', '25kg par maisu, 750kg par palleti. Var pasūtīt no 1 palletes(750kg)-1 kravas mašīnai(21750kg)', 'pro_oga1.jpg', 1),
(6, 'Saldētas Cidonijas', 'Atkarīgs no daudzuma', 'Oga', '400kg kartona oktabīne, 1 oktabīne par palleti. Var pasūtīt no 1 palletes(400kg)-1 kravas mašīnai(20800kg)', 'pro_oga2.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `admin_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `vards` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uzvards` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`admin_id`, `vards`, `uzvards`, `password`) VALUES
(1, 'Marcis', 'Vikmanis', 'admin1'),
(2, 'Vikmanis', 'Marcis', 'admin2'),
(3, 'Vikmanis', 'Agnis', '111'),
(4, 'Agnis', 'Vikmanis', '999'),
(5, 'Lauma', 'Vikmane', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `zinas`
--

DROP TABLE IF EXISTS `zinas`;
CREATE TABLE IF NOT EXISTS `zinas` (
  `Zina_ID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `vards` varchar(255) NOT NULL,
  `e_pasts` varchar(255) NOT NULL,
  `tema` varchar(255) NOT NULL,
  `zina` text NOT NULL,
  PRIMARY KEY (`Zina_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zinas`
--

INSERT INTO `zinas` (`Zina_ID`, `vards`, `e_pasts`, `tema`, `zina`) VALUES
(1, 'Marcis Vikmanis', 'mv@gmail.com', 'Pasutijums', 'Es vēlētos 3kg cidoniju'),
(2, 'Marcis Vikmanis', 'mv@gmail.com', 'Pasutijums', 'Es vēlētos 5kg cidoniju');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `bloga_autora_id_fk` FOREIGN KEY (`autora_id`) REFERENCES `admins` (`admin_id`) ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `product_autora_id_fr` FOREIGN KEY (`autora_id`) REFERENCES `admins` (`admin_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
