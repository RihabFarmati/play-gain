-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 09 mai 2021 à 01:27
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gamification`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2021-04-17 12:36:23', '2021-04-17 12:36:23'),
(2, NULL, 1, 'Category 2', 'category-2', '2021-04-17 12:36:23', '2021-04-17 12:36:23');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nais` date DEFAULT NULL,
  `sexe` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `solde` int(11) NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `chance` int(11) DEFAULT 3,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `nom`, `prenom`, `email`, `password`, `nais`, `sexe`, `solde`, `date`, `chance`, `created_at`, `updated_at`) VALUES
(1, 'FARMATI', 'RIHAB', 'Rihabfarmati19@gmail.com', 'azerty', '2000-11-15', 'Femme', 72, '2021-05-08', 0, '2021-04-30 14:24:24', '2021-04-30 14:24:24'),
(2, 'FARMATi', 'Mohammed', 'Mohammed@gmail.com', 'azertyuiop', '2006-04-18', 'Homme', 68, '2021-05-08', 0, '2021-04-30 14:35:34', '2021-04-30 14:35:34'),
(3, 'Lharochi', 'Mariem', 'mariem@gmail.com', '123456789', '2020-02-21', 'Femme', 108, '2021-05-08', 3, NULL, NULL),
(4, 'FARMATI', 'Chaimaa', 'Chaimaa@gmail.com', '19962020', '1996-12-18', 'Femme', 20, '2021-05-08', 3, NULL, NULL),
(5, 'bayd', 'imane', 'imanebayd01@gmail.com', 'imanebayd', '2001-05-02', 'Femme', 34, '2021-05-08', 3, NULL, NULL),
(6, 'Louraydi', 'ahmed', 'ahmed@gmail.com', '00000000', '1987-07-28', 'Homme', 18, '2021-05-08', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 4),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 5),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 6),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 7),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 12),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 13),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 10),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(57, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 8),
(59, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(60, 7, 'Titre', 'text', 'Titre', 1, 1, 1, 1, 1, 1, '{}', 2),
(62, 7, 'reduction', 'text', 'Reduction', 1, 1, 1, 1, 1, 1, '{}', 5),
(63, 7, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(64, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(65, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(66, 7, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 3),
(67, 7, 'points', 'text', 'Points', 1, 1, 1, 1, 1, 1, '{}', 3),
(70, 8, 'label', 'text', 'Label', 1, 1, 1, 1, 1, 1, '{}', 2),
(71, 8, 'question', 'text', 'Question', 1, 1, 1, 1, 1, 1, '{}', 3),
(72, 8, 'point', 'text', 'Point', 1, 1, 1, 1, 1, 1, '{}', 4),
(73, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(74, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(75, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(91, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(92, 10, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(93, 10, 'prenom', 'text', 'Prenom', 0, 1, 1, 1, 1, 1, '{}', 3),
(94, 10, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 4),
(95, 10, 'password', 'text', 'Password', 0, 1, 1, 1, 1, 1, '{}', 5),
(96, 10, 'nais', 'text', 'Nais', 0, 1, 1, 1, 1, 1, '{}', 6),
(97, 10, 'sexe', 'text', 'Sexe', 0, 1, 1, 1, 1, 1, '{}', 7),
(98, 10, 'solde', 'text', 'Solde', 1, 1, 1, 1, 1, 1, '{}', 8),
(99, 10, 'date', 'text', 'Date', 0, 1, 1, 1, 1, 1, '{}', 9),
(100, 10, 'chance', 'text', 'Chance', 0, 1, 1, 1, 1, 1, '{}', 10),
(101, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(102, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(103, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-04-17 12:36:08', '2021-04-30 14:51:01'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-04-17 12:36:08', '2021-04-17 12:36:08'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-04-17 12:36:08', '2021-04-17 12:36:08'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2021-04-17 12:36:22', '2021-04-17 12:36:22'),
(7, 'plats', 'plats', 'Plat', 'Plats', 'voyager-pizza', 'App\\Plat', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-04-17 13:48:58', '2021-04-17 14:01:21'),
(8, 'icones', 'icones', 'Icone', 'Icones', 'voyager-sun', 'App\\Icone', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-04-22 19:48:14', '2021-04-22 20:25:25'),
(10, 'clients', 'clients', 'Client', 'Clients', 'voyager-people', 'App\\Client', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-04-30 14:22:52', '2021-04-30 14:32:38');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `icones`
--

CREATE TABLE `icones` (
  `id` int(10) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `icones`
--

INSERT INTO `icones` (`id`, `label`, `question`, `point`, `created_at`, `updated_at`) VALUES
(4, '2 points', 'Vous Avez Gagnez 2 points', 2, '2021-04-22 19:56:50', '2021-04-22 19:56:50'),
(5, 'Rejouez', 'Ressayer Encore', 0, '2021-04-22 19:57:39', '2021-04-22 19:57:39'),
(6, 'Rejouez', 'Ressayer Encore', 0, '2021-04-22 19:58:01', '2021-04-22 19:58:01'),
(7, '6 points', 'vous avez gagnez 6 points', 6, '2021-04-22 20:00:59', '2021-04-22 20:00:59'),
(8, 'Rejouez', 'Ressayer Encore', 0, '2021-04-22 20:01:28', '2021-04-22 20:01:28'),
(9, 'Rejouez', 'Ressayer Encore', 0, '2021-04-22 20:01:00', '2021-04-29 12:41:41'),
(10, '8 points', 'vous avez gagnez 8 points', 8, '2021-04-22 20:02:08', '2021-04-22 20:02:08'),
(11, 'Rejouez', 'Ressayer Encore', 0, '2021-04-22 20:02:00', '2021-04-29 12:41:17'),
(12, '10 points', 'vous avez gagnez 10 points', 10, '2021-04-22 20:02:00', '2021-04-22 20:22:30'),
(13, 'Rejouez', 'Ressayer Encore', 0, '2021-04-22 20:25:00', '2021-04-29 12:41:31');

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-04-17 12:36:11', '2021-04-17 12:36:11');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Statistique', '', '_self', 'voyager-receipt', '#9370db', NULL, 1, '2021-04-17 12:36:11', '2021-04-26 15:31:41', 'voyager.dashboard', 'null'),
(3, 1, 'Admins', '', '_self', 'voyager-person', '#9370db', NULL, 4, '2021-04-17 12:36:11', '2021-04-30 15:13:46', 'voyager.users.index', 'null'),
(4, 1, 'Roles', '', '_self', 'voyager-lock', '#000000', 5, 4, '2021-04-17 12:36:11', '2021-04-26 15:34:24', 'voyager.roles.index', 'null'),
(5, 1, 'Tools', '', '_self', 'voyager-tools', '#9370db', NULL, 7, '2021-04-17 12:36:11', '2021-04-26 15:33:39', NULL, ''),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-04-17 12:36:11', '2021-04-26 15:24:56', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-04-17 12:36:11', '2021-04-26 15:24:56', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-04-17 12:36:12', '2021-04-26 15:24:57', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 5, '2021-04-17 12:36:12', '2021-04-26 15:25:14', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', '#9370db', NULL, 8, '2021-04-17 12:36:12', '2021-04-26 15:33:58', 'voyager.settings.index', 'null'),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 6, '2021-04-17 12:36:31', '2021-04-26 15:25:14', 'voyager.hooks', NULL),
(15, 1, 'Plats', '', '_self', 'voyager-pizza', '#9370db', NULL, 2, '2021-04-17 13:48:58', '2021-04-26 15:32:09', 'voyager.plats.index', 'null'),
(16, 1, 'Icones', '', '_self', 'voyager-sun', '#9370db', NULL, 3, '2021-04-22 19:48:15', '2021-04-26 15:32:43', 'voyager.icones.index', 'null'),
(18, 1, 'Clients', '', '_self', 'voyager-people', '#9370db', NULL, 9, '2021-04-30 14:22:52', '2021-05-03 19:35:31', 'voyager.clients.index', 'null');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-04-17 12:36:12', '2021-04-17 12:36:12'),
(2, 'browse_bread', NULL, '2021-04-17 12:36:12', '2021-04-17 12:36:12'),
(3, 'browse_database', NULL, '2021-04-17 12:36:12', '2021-04-17 12:36:12'),
(4, 'browse_media', NULL, '2021-04-17 12:36:12', '2021-04-17 12:36:12'),
(5, 'browse_compass', NULL, '2021-04-17 12:36:12', '2021-04-17 12:36:12'),
(6, 'browse_menus', 'menus', '2021-04-17 12:36:12', '2021-04-17 12:36:12'),
(7, 'read_menus', 'menus', '2021-04-17 12:36:12', '2021-04-17 12:36:12'),
(8, 'edit_menus', 'menus', '2021-04-17 12:36:13', '2021-04-17 12:36:13'),
(9, 'add_menus', 'menus', '2021-04-17 12:36:13', '2021-04-17 12:36:13'),
(10, 'delete_menus', 'menus', '2021-04-17 12:36:13', '2021-04-17 12:36:13'),
(11, 'browse_roles', 'roles', '2021-04-17 12:36:13', '2021-04-17 12:36:13'),
(12, 'read_roles', 'roles', '2021-04-17 12:36:13', '2021-04-17 12:36:13'),
(13, 'edit_roles', 'roles', '2021-04-17 12:36:13', '2021-04-17 12:36:13'),
(14, 'add_roles', 'roles', '2021-04-17 12:36:13', '2021-04-17 12:36:13'),
(15, 'delete_roles', 'roles', '2021-04-17 12:36:13', '2021-04-17 12:36:13'),
(16, 'browse_users', 'users', '2021-04-17 12:36:13', '2021-04-17 12:36:13'),
(17, 'read_users', 'users', '2021-04-17 12:36:13', '2021-04-17 12:36:13'),
(18, 'edit_users', 'users', '2021-04-17 12:36:13', '2021-04-17 12:36:13'),
(19, 'add_users', 'users', '2021-04-17 12:36:13', '2021-04-17 12:36:13'),
(20, 'delete_users', 'users', '2021-04-17 12:36:13', '2021-04-17 12:36:13'),
(21, 'browse_settings', 'settings', '2021-04-17 12:36:13', '2021-04-17 12:36:13'),
(22, 'read_settings', 'settings', '2021-04-17 12:36:13', '2021-04-17 12:36:13'),
(23, 'edit_settings', 'settings', '2021-04-17 12:36:13', '2021-04-17 12:36:13'),
(24, 'add_settings', 'settings', '2021-04-17 12:36:13', '2021-04-17 12:36:13'),
(25, 'delete_settings', 'settings', '2021-04-17 12:36:13', '2021-04-17 12:36:13'),
(26, 'browse_categories', 'categories', '2021-04-17 12:36:23', '2021-04-17 12:36:23'),
(27, 'read_categories', 'categories', '2021-04-17 12:36:23', '2021-04-17 12:36:23'),
(28, 'edit_categories', 'categories', '2021-04-17 12:36:23', '2021-04-17 12:36:23'),
(29, 'add_categories', 'categories', '2021-04-17 12:36:23', '2021-04-17 12:36:23'),
(30, 'delete_categories', 'categories', '2021-04-17 12:36:23', '2021-04-17 12:36:23'),
(41, 'browse_hooks', NULL, '2021-04-17 12:36:31', '2021-04-17 12:36:31'),
(42, 'browse_plats', 'plats', '2021-04-17 13:48:58', '2021-04-17 13:48:58'),
(43, 'read_plats', 'plats', '2021-04-17 13:48:58', '2021-04-17 13:48:58'),
(44, 'edit_plats', 'plats', '2021-04-17 13:48:58', '2021-04-17 13:48:58'),
(45, 'add_plats', 'plats', '2021-04-17 13:48:58', '2021-04-17 13:48:58'),
(46, 'delete_plats', 'plats', '2021-04-17 13:48:58', '2021-04-17 13:48:58'),
(47, 'browse_icones', 'icones', '2021-04-22 19:48:14', '2021-04-22 19:48:14'),
(48, 'read_icones', 'icones', '2021-04-22 19:48:14', '2021-04-22 19:48:14'),
(49, 'edit_icones', 'icones', '2021-04-22 19:48:14', '2021-04-22 19:48:14'),
(50, 'add_icones', 'icones', '2021-04-22 19:48:14', '2021-04-22 19:48:14'),
(51, 'delete_icones', 'icones', '2021-04-22 19:48:14', '2021-04-22 19:48:14'),
(57, 'browse_clients', 'clients', '2021-04-30 14:22:52', '2021-04-30 14:22:52'),
(58, 'read_clients', 'clients', '2021-04-30 14:22:52', '2021-04-30 14:22:52'),
(59, 'edit_clients', 'clients', '2021-04-30 14:22:52', '2021-04-30 14:22:52'),
(60, 'add_clients', 'clients', '2021-04-30 14:22:52', '2021-04-30 14:22:52'),
(61, 'delete_clients', 'clients', '2021-04-30 14:22:52', '2021-04-30 14:22:52');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1);

-- --------------------------------------------------------

--
-- Structure de la table `plats`
--

CREATE TABLE `plats` (
  `id` int(10) UNSIGNED NOT NULL,
  `Titre` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reduction` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `plats`
--

INSERT INTO `plats` (`id`, `Titre`, `points`, `reduction`, `description`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Salade', '20', 20, NULL, '2021-04-17 14:06:47', '2021-04-17 14:06:47', 'plats\\April2021\\4tk9zSefmLTurcSOBIXh.jpg'),
(4, 'Viande', '44', 44, 'gjhvbn', '2021-04-20 21:53:00', '2021-04-22 16:07:04', 'plats\\April2021\\UqehDgPBX6IqBUff0vTv.jpg'),
(5, 'Couscous', '100', 20, NULL, '2021-04-20 22:38:02', '2021-04-20 22:38:02', 'plats\\April2021\\WjW5oRgZAXGatExRjRu6.jpg'),
(6, 'Lasagnes', '300', 30, NULL, '2021-04-20 22:40:00', '2021-04-22 16:12:48', 'plats\\April2021\\0pFXq3JOd6NGjxHLy8C8.jpg'),
(7, 'Tajine', '60', 10, NULL, '2021-04-21 11:56:56', '2021-04-21 11:56:56', 'plats\\April2021\\5fvcdcrdim0DX13PzONh.jpg'),
(8, 'Sushi', '120', 50, 's', '2021-04-21 19:19:00', '2021-04-22 16:17:29', 'plats\\April2021\\mLB2cC31zdzAQHzM0oqk.jpg'),
(9, 'les pattes au fromage', '40', 30, NULL, '2021-04-21 19:21:40', '2021-04-21 19:21:40', 'plats\\April2021\\8jbmwliHseDvgwwELFZl.jpg'),
(10, 'Salade', '20', 20, NULL, '2021-04-21 19:23:05', '2021-04-21 19:23:05', 'plats\\April2021\\9OB8ES6D62zLIq26qaL8.jpg'),
(11, 'Khos', '100', 25, 'Khos propose des produits frais. La carte vit au rythme des saisons, elle est renouvelée régulièrement en fonction des ingrédients du moment et de la saison.', '2021-04-21 19:29:38', '2021-04-21 19:29:38', 'plats\\April2021\\vfp31dQDhM1HhvM0avAM.jpg'),
(12, 'Bondi coffee kitchen', '200', 80, 'Pour des produits saints, frais et pleins de goût. Les ingrédients sont de qualité et les recettes sont bien étudiées.', '2021-04-21 19:30:46', '2021-04-21 19:30:46', 'plats\\April2021\\pFLdL9bjLrKWezf76CNh.jpg'),
(13, 'Burger', '90', 15, NULL, '2021-04-21 19:36:38', '2021-04-21 19:36:38', 'plats\\April2021\\gFNi7FlHNWB89MDPGRwG.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-04-17 12:36:12', '2021-04-17 12:36:12'),
(2, 'user', 'Normal User', '2021-04-17 12:36:12', '2021-04-17 12:36:12');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Play&Gain', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Tournez La Roulette Et Testez Votre Chance', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\April2021\\nerYB2cZkxenr2Z5IewA.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', 'rien', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\April2021\\ZgUecTPvxMc6JyLwyhZq.png', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Play&Gain', '', 'text', 2, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Tournez La Roulette Et Testez Votre Chance', '', 'text', 1, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\April2021\\aKjD7na6UE2zwMzz5yw1.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\April2021\\Qmq09NLxJ5GgQ2LJ9iro.png', '', 'image', 4, 'Admin'),
(10, 'site.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Site'),
(11, 'site.buttom', 'buttom', '', NULL, 'radio_btn', 6, 'Site');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-04-17 12:36:28', '2021-04-17 12:36:28'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-04-17 12:36:28', '2021-04-17 12:36:28'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-04-17 12:36:28', '2021-04-17 12:36:28'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-04-17 12:36:28', '2021-04-17 12:36:28'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-04-17 12:36:28', '2021-04-17 12:36:28'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-04-17 12:36:28', '2021-04-17 12:36:28'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-04-17 12:36:28', '2021-04-17 12:36:28'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-04-17 12:36:28', '2021-04-17 12:36:28'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-04-17 12:36:29', '2021-04-17 12:36:29'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-04-17 12:36:29', '2021-04-17 12:36:29'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-04-17 12:36:29', '2021-04-17 12:36:29'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-04-17 12:36:29', '2021-04-17 12:36:29'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-04-17 12:36:29', '2021-04-17 12:36:29'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-04-17 12:36:29', '2021-04-17 12:36:29'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-04-17 12:36:29', '2021-04-17 12:36:29'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-04-17 12:36:29', '2021-04-17 12:36:29'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-04-17 12:36:29', '2021-04-17 12:36:29'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-04-17 12:36:29', '2021-04-17 12:36:29'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-04-17 12:36:29', '2021-04-17 12:36:29'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-04-17 12:36:29', '2021-04-17 12:36:29'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-04-17 12:36:29', '2021-04-17 12:36:29'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-04-17 12:36:29', '2021-04-17 12:36:29'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-04-17 12:36:29', '2021-04-17 12:36:29'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-04-17 12:36:29', '2021-04-17 12:36:29'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-04-17 12:36:29', '2021-04-17 12:36:29'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-04-17 12:36:29', '2021-04-17 12:36:29'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-04-17 12:36:30', '2021-04-17 12:36:30'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-04-17 12:36:30', '2021-04-17 12:36:30'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-04-17 12:36:30', '2021-04-17 12:36:30'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-04-17 12:36:30', '2021-04-17 12:36:30');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `psw` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `nom`, `prenom`, `email`, `psw`) VALUES
(7, 'rr', 'rr', 'rrr@gmzil.com', 'rrrrrr'),
(8, 'gg', 'gg', 'gg@gg.com', 'gggggg'),
(10, 'yarbi', 'yarbi', 'yarbi@gmail.com', 'yarbiyarbi'),
(11, 'yarbi', 'yarbi', 'yarbi@gmail.com', 'yarbiyarbi');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', NULL, '$2y$10$Lwxa8abN1QI2nr61mgMYdOuJ3XloHKMKNR3A19Q60aRkzj6bg8vTu', 'LAuGrVbJpkqAHMZfy2D9May690Lcm9TDUAWkuSOENh1xQX935ixmwdG9wBUR', NULL, '2021-04-17 12:36:23', '2021-04-17 12:36:23'),
(36, 1, 'RIHAB FARMATI', 'gamification@gmail.com', NULL, '$2y$10$KU6C6FaEjIfMa34adBZE4uIgZqH3.Yzby9iShNOXP0uzpUkUmPPdG', 'TpDd270IdLKaONnNsJ9yxomd4Fln04H0IL4DVJ9aWmXfCrmWj8pOHSDdbcK1', '{\"locale\":\"en\"}', '2021-04-30 14:51:44', '2021-04-30 14:51:44');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `icones`
--
ALTER TABLE `icones`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `plats`
--
ALTER TABLE `plats`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `icones`
--
ALTER TABLE `icones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT pour la table `plats`
--
ALTER TABLE `plats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
