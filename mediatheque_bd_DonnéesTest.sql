-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 30 oct. 2024 à 13:12
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
