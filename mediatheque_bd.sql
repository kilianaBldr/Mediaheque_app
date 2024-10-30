-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 30 oct. 2024 à 13:04
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mediatheque_bd`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add media', 7, 'add_media'),
(26, 'Can change media', 7, 'change_media'),
(27, 'Can delete media', 7, 'delete_media'),
(28, 'Can view media', 7, 'view_media'),
(29, 'Can add membre', 8, 'add_membre'),
(30, 'Can change membre', 8, 'change_membre'),
(31, 'Can delete membre', 8, 'delete_membre'),
(32, 'Can view membre', 8, 'view_membre'),
(33, 'Can add emprunt', 9, 'add_emprunt'),
(34, 'Can change emprunt', 9, 'change_emprunt'),
(35, 'Can delete emprunt', 9, 'delete_emprunt'),
(36, 'Can view emprunt', 9, 'view_emprunt');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `bibliothecaire_emprunt`
--

DROP TABLE IF EXISTS `bibliothecaire_emprunt`;
CREATE TABLE IF NOT EXISTS `bibliothecaire_emprunt` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_emprunt` date NOT NULL,
  `date_retour` date DEFAULT NULL,
  `media_id` bigint NOT NULL,
  `membre_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bibliothecaire_emprunt_media_id_049e5077` (`media_id`),
  KEY `bibliothecaire_emprunt_membre_id_eb55585b` (`membre_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `bibliothecaire_media`
--

DROP TABLE IF EXISTS `bibliothecaire_media`;
CREATE TABLE IF NOT EXISTS `bibliothecaire_media` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titre` varchar(200) NOT NULL,
  `type_media` varchar(50) NOT NULL,
  `auteur` varchar(100) DEFAULT NULL,
  `realisateur` varchar(100) DEFAULT NULL,
  `artiste` varchar(100) DEFAULT NULL,
  `createur` varchar(100) DEFAULT NULL,
  `disponible` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `bibliothecaire_media`
--

INSERT INTO `bibliothecaire_media` (`id`, `titre`, `type_media`, `auteur`, `realisateur`, `artiste`, `createur`, `disponible`) VALUES
(1, 'Le Petit Prince', 'Livre', 'Antoine de Saint-Exupéry', NULL, NULL, NULL, 1),
(2, 'Les Misérables', 'Livre', 'Victor Hugo', NULL, NULL, NULL, 1),
(3, 'Madame Bovary', 'Livre', 'Gustave Flaubert', NULL, NULL, NULL, 1),
(4, 'L’Étranger', 'Livre', 'Albert Camus', NULL, NULL, NULL, 1),
(5, 'À la recherche du temps perdu', 'Livre', 'Marcel Proust', NULL, NULL, NULL, 1),
(6, 'Candide', 'Livre', 'Voltaire', NULL, NULL, NULL, 1),
(7, 'Le Rouge et le Noir', 'Livre', 'Stendhal', NULL, NULL, NULL, 1),
(8, 'Les Fleurs du mal', 'Livre', 'Charles Baudelaire', NULL, NULL, NULL, 1),
(9, 'Bel-Ami', 'Livre', 'Guy de Maupassant', NULL, NULL, NULL, 1),
(10, 'Germinal', 'Livre', 'Émile Zola', NULL, NULL, NULL, 1),
(11, 'Intouchables', 'DVD', NULL, 'Olivier Nakache-Eric Toledano', NULL, NULL, 1),
(12, 'La La Land', 'DVD', NULL, 'Damien Chazelle', NULL, NULL, 1),
(13, 'Le Fabuleux Destin d`Amélie Poulain', 'DVD', NULL, 'Jean-Pierre Jeunet', NULL, NULL, 1),
(14, 'Parasite', 'DVD', NULL, 'Bong Joon-ho', NULL, NULL, 1),
(15, 'La Vie d`Adèle', 'DVD', NULL, 'Abdellatif Kechiche', NULL, NULL, 1),
(16, 'Inception', 'DVD', NULL, 'Christopher Nolan', NULL, NULL, 1),
(17, 'Toy Story 3', 'DVD', NULL, 'Lee Unkrich', NULL, NULL, 1),
(18, 'Gladiator', 'DVD', NULL, 'Ridley Scott', NULL, NULL, 1),
(19, 'Les Choristes', 'DVD', NULL, 'Christophe Barratier', NULL, NULL, 1),
(20, 'Amour', 'DVD', NULL, 'Michael Heneke', NULL, NULL, 1),
(21, 'Abbey Road', 'CD', NULL, NULL, 'The Beatles', NULL, 1),
(22, 'The Dark Side of the Moon', 'CD', NULL, NULL, 'Pink Floyd', NULL, 1),
(23, 'Thriller', 'CD', NULL, NULL, 'Michael Jackson', NULL, 1),
(24, 'Back in Black', 'CD', NULL, NULL, 'AC/DC', NULL, 1),
(25, 'Rumours', 'CD', NULL, NULL, 'Fleetwood Mac', NULL, 1),
(26, 'The Wall', 'CD', NULL, NULL, 'Pink Floyd', NULL, 1),
(27, 'Hotel California', 'CD', NULL, NULL, 'Eagles', NULL, 1),
(28, 'Led Zeppelin IV', 'CD', NULL, NULL, 'Led Zeppelin', NULL, 1),
(29, 'Born to Run', 'CD', NULL, NULL, 'Bruce Springsteen', NULL, 1),
(30, 'A Night at the Opera', 'CD', NULL, NULL, 'Queen', NULL, 1),
(31, 'Catan', 'Jeu', NULL, NULL, NULL, 'Klaus Teuber', 1),
(32, 'Carcassonne', 'Jeu', NULL, NULL, NULL, 'Klaus-Jürgen Wrede', 1),
(33, 'Risk', 'Jeu', NULL, NULL, NULL, 'Albert Lamorisse', 1),
(34, 'Monopoly', 'Jeu', NULL, NULL, NULL, 'Charles Darrow', 1),
(35, 'Pandemic', 'Jeu', NULL, NULL, NULL, 'Matt Leacock', 1),
(36, 'Ticket to Ride', 'Jeu', NULL, NULL, NULL, 'Alan R. Moon', 1),
(37, '7 Wonders', 'Jeu', NULL, NULL, NULL, 'Antoine Bauza', 1),
(38, 'Dixit', 'Jeu', NULL, NULL, NULL, 'Jean-Louis Roubira', 1),
(39, 'Azul', 'Jeu', NULL, NULL, NULL, 'Michael Kiesling', 1),
(40, 'Splendor', 'Jeu', NULL, NULL, NULL, 'Marc André', 1),
(41, 'Catan', 'Jeu', NULL, NULL, NULL, 'Klaus Teuber', 1);

-- --------------------------------------------------------

--
-- Structure de la table `bibliothecaire_membre`
--

DROP TABLE IF EXISTS `bibliothecaire_membre`;
CREATE TABLE IF NOT EXISTS `bibliothecaire_membre` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `date_inscription` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'bibliothecaire', 'media'),
(8, 'bibliothecaire', 'membre'),
(9, 'bibliothecaire', 'emprunt');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-10-30 12:24:31.958678'),
(2, 'auth', '0001_initial', '2024-10-30 12:24:32.439431'),
(3, 'admin', '0001_initial', '2024-10-30 12:24:32.614978'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-10-30 12:24:32.620977'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-10-30 12:24:32.627978'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-10-30 12:24:32.713987'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-10-30 12:24:32.747988'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-10-30 12:24:32.781990'),
(9, 'auth', '0004_alter_user_username_opts', '2024-10-30 12:24:32.789991'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-10-30 12:24:32.824997'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-10-30 12:24:32.825998'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-10-30 12:24:32.832994'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-10-30 12:24:32.868998'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-10-30 12:24:32.908001'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-10-30 12:24:32.946455'),
(16, 'auth', '0011_update_proxy_permissions', '2024-10-30 12:24:32.954453'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-10-30 12:24:32.987456'),
(18, 'bibliothecaire', '0001_initial', '2024-10-30 12:24:33.104466'),
(19, 'sessions', '0001_initial', '2024-10-30 12:24:33.137467');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
