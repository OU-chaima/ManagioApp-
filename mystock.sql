-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 29 août 2024 à 00:23
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mystock`
--

-- --------------------------------------------------------

--
-- Structure de la table `adresse`
--

CREATE TABLE `adresse` (
  `id` bigint(20) NOT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `pays` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `adresse`
--

INSERT INTO `adresse` (`id`, `address1`, `address2`, `city`, `postal_code`, `pays`) VALUES
(1, 'marrakech, maroc', 'Residence Doyour Al Massjid', 'Marrakech', '40006', 1),
(2, 'Plaza Gueliz', 'Residence Doyour Al Massjid', 'Marrakech', '40006', 1),
(3, 'Plaza Gueliz', 'Residence Doyour Al Massjid', 'Marrakech', '40006', 1),
(4, 'Marrakech gueliz', 'Residence Doyour Al Massjid', 'Marrakech', '40006', 1),
(5, 'marrakech, maroc', 'Residence Doyour Al Massjid', 'Marrakech', '40006', 1),
(6, 'Mhamid 9 ', 'Residence Doyour Al Massjid', 'Marrakech', '40006', 1),
(7, 'marrakech, maroc', 'Residence Doyour Al Massjid', 'Marrakech', '40006', 1),
(8, 'Marrakech gueliz', 'Residence Doyour Al Massjid', 'Marrakech', '40006', 1),
(9, 'marrakech, maroc', 'Residence Doyour Al Massjid', 'Marrakech', '40006', 1),
(10, 'Marrakech gueliz', 'Residence Doyour Al Massjid', 'Marrakech', '40006', 1);

-- --------------------------------------------------------

--
-- Structure de la table `alerte`
--

CREATE TABLE `alerte` (
  `id` bigint(20) NOT NULL,
  `actif` bit(1) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `statut` enum('ENRUPTUREDESTOCK','SOUSLEPOINTCECOMMANDE') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `app_users`
--

CREATE TABLE `app_users` (
  `id` bigint(20) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `account_non_expired` bit(1) NOT NULL,
  `account_non_locked` bit(1) NOT NULL,
  `credentials_non_expired` bit(1) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `is_supper_admin` bit(1) NOT NULL,
  `is_trial` bit(1) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `password_changed` bit(1) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `registration_date` datetime(6) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `app_users`
--

INSERT INTO `app_users` (`id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `account_non_expired`, `account_non_locked`, `credentials_non_expired`, `email`, `enabled`, `is_supper_admin`, `is_trial`, `password`, `password_changed`, `phone`, `registration_date`, `username`) VALUES
(1, NULL, '2024-08-28 11:09:04.000000', NULL, NULL, b'1', b'1', b'1', 'admin1@gmail.com', b'1', b'0', b'1', '$2a$10$n/4SIN3S1cJRZiN/JMieAOFuVr99S7As2mbkHy1x/E2EsTiFAG.', b'0', '0649992932', '2024-08-28 11:09:06.000000', 'admin1'),
(2, NULL, '2024-08-28 14:47:42.000000', NULL, NULL, b'1', b'1', b'1', 'admin2@gmail.com', b'1', b'0', b'1', '$2a$10$zhTG.j5G5djph73UZxdgK.23N2jWhtzGS3Lt/.', b'0', '0649992932', '2024-08-28 14:47:42.000000', 'admin2'),
(3, NULL, '2024-08-28 14:52:51.000000', NULL, NULL, b'1', b'1', b'1', 'admin26@gmail.com', b'1', b'0', b'1', '$2a$10$0prr.gi6XBuB86PdWKCHhef2VKnSamb5f7djUzV7EKX1YY/MOWSO', b'0', '0649992932', '2024-08-28 14:52:51.000000', 'xxxx'),
(52, NULL, '2024-08-28 15:00:15.000000', NULL, NULL, b'1', b'1', b'1', 'vadmin@gmail.com', b'1', b'0', b'1', '$2a$10$mYVRPb/VGtxWeDWeMfeWfOuVIlsS6h8PXmwRF.Vt0BgPeSYwvpWxa', b'0', '0649992932', '2024-08-28 15:00:15.000000', 'admin3'),
(53, NULL, '2024-08-28 15:03:45.000000', NULL, NULL, b'1', b'1', b'1', 'admin@gmail.com', b'1', b'0', b'1', '$2a$10$kLZ/ePPDZbovij7P1Clu6uErnaXr1m81v8YLWnap4.yrbRCrznzuC', b'0', '0649992932', '2024-08-07 15:03:45.000000', 'admin'),
(54, NULL, '2024-08-28 16:49:28.000000', NULL, NULL, b'1', b'1', b'1', 'El.Fassi@gmail.com', b'1', b'0', b'1', '$2a$10$0yi7pptdcky8vtE4TUSgaOBXle.BMm5UBFTem3rMp08oNLgVMdU4.', b'0', '0600982321', '2024-08-28 16:49:28.000000', 'El.Fassi@gmail.com'),
(55, NULL, '2024-08-28 16:54:49.000000', NULL, NULL, b'1', b'1', b'1', 'sami@gmail.com', b'1', b'0', b'1', '$2a$10$x9Ex0o7/wFXuvBxPvQdNN.FTtIbW4GJAv11FPVwXObK22LkgEAJ.W', b'0', '0645136218', '2024-08-28 16:54:49.000000', 'sami@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `app_users_seq`
--

CREATE TABLE `app_users_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `app_users_seq`
--

INSERT INTO `app_users_seq` (`next_val`) VALUES
(151);

-- --------------------------------------------------------

--
-- Structure de la table `boncommande`
--

CREATE TABLE `boncommande` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `date_creation` date DEFAULT NULL,
  `date_expedition` date DEFAULT NULL,
  `rabais` float NOT NULL,
  `remise_global` double NOT NULL,
  `sous_total` double NOT NULL,
  `statut` enum('ACTIF') DEFAULT NULL,
  `total` double NOT NULL,
  `total_unites` int(11) NOT NULL,
  `type_rabais` enum('MONTANT','POURCENTAGE') DEFAULT NULL,
  `devises` bigint(20) DEFAULT NULL,
  `entreprise` bigint(20) DEFAULT NULL,
  `fournisseur` bigint(20) DEFAULT NULL,
  `livraison` bigint(20) DEFAULT NULL,
  `niveau_prix` bigint(20) DEFAULT NULL,
  `taxe` bigint(20) DEFAULT NULL,
  `taxe_expedition` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `boncommande`
--

INSERT INTO `boncommande` (`id`, `code`, `date_creation`, `date_expedition`, `rabais`, `remise_global`, `sous_total`, `statut`, `total`, `total_unites`, `type_rabais`, `devises`, `entreprise`, `fournisseur`, `livraison`, `niveau_prix`, `taxe`, `taxe_expedition`) VALUES
(1, 'B000000', '2024-09-01', '2024-09-04', 6, 6, 37600, NULL, 126445.79, 5, 'POURCENTAGE', 1, 3, 1, NULL, NULL, 1, 3),
(2, 'B000001', '2024-08-28', '2024-09-06', 4, 14, 15700, NULL, 83348.75, 9, 'POURCENTAGE', 1, 3, 1, NULL, NULL, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `boncommandeproduit`
--

CREATE TABLE `boncommandeproduit` (
  `id` bigint(20) NOT NULL,
  `disponible` double NOT NULL,
  `disque` double NOT NULL,
  `prix` double NOT NULL,
  `quantite` int(11) NOT NULL,
  `total` double NOT NULL,
  `bon_commande` bigint(20) DEFAULT NULL,
  `produit` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `boncommandeproduit`
--

INSERT INTO `boncommandeproduit` (`id`, `disponible`, `disque`, `prix`, `quantite`, `total`, `bon_commande`, `produit`) VALUES
(1, 0, 0, 12000, 3, 118800, 1, 1),
(2, 0, 0, 800, 2, 3488, 1, 3),
(3, 0, 3, 2500, 5, 66684.5, 2, 2),
(4, 0, 7, 800, 4, 12968.36, 2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `creation_date` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id_entreprise` bigint(20) DEFAULT NULL,
  `id_niveau_prix` bigint(20) DEFAULT NULL,
  `languepdf` enum('ANGLAIS','FRANCAIS') DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `rabais` float NOT NULL,
  `siteweb` varchar(255) DEFAULT NULL,
  `taxe_numero` int(11) NOT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `valeur_commande_minimale` int(11) NOT NULL,
  `adresse` bigint(20) DEFAULT NULL,
  `devises` bigint(20) DEFAULT NULL,
  `entreprise` bigint(20) DEFAULT NULL,
  `niveau_prix` bigint(20) DEFAULT NULL,
  `taxe` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `code`, `creation_date`, `email`, `id_entreprise`, `id_niveau_prix`, `languepdf`, `nom`, `rabais`, `siteweb`, `taxe_numero`, `telephone`, `valeur_commande_minimale`, `adresse`, `devises`, `entreprise`, `niveau_prix`, `taxe`) VALUES
(1, 'C000000', '2024-08-28', 'laila.timasli@gmail.com', 3, NULL, NULL, 'Laila Timasli', 15, NULL, 12, '0649992932', 0, 5, 1, 3, 1, NULL),
(2, 'C000001', '2024-08-28', 'chaima.ouazzan@gmail.com', 3, NULL, NULL, 'Chaima Ouazzan', 11, NULL, 10, '0734442511', 0, 6, 1, 3, 3, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `client_produit_niveau_prix`
--

CREATE TABLE `client_produit_niveau_prix` (
  `id` bigint(20) NOT NULL,
  `prix` int(11) NOT NULL,
  `client` bigint(20) DEFAULT NULL,
  `entreprise` bigint(20) DEFAULT NULL,
  `niveau_prix` bigint(20) DEFAULT NULL,
  `produit` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `date_creation` date DEFAULT NULL,
  `date_expedition` date DEFAULT NULL,
  `date_experation` date DEFAULT NULL,
  `rabais` float NOT NULL,
  `remise_global` double NOT NULL,
  `sous_total` double NOT NULL,
  `statut` enum('ACCEPTETRANSFORME','ENATTENTE','REGETE') DEFAULT NULL,
  `total` double NOT NULL,
  `total_unites` int(11) NOT NULL,
  `type_rabais` enum('MONTANT','POURCENTAGE') DEFAULT NULL,
  `address_expedition` bigint(20) DEFAULT NULL,
  `address_facturation` bigint(20) DEFAULT NULL,
  `client` bigint(20) DEFAULT NULL,
  `devises` bigint(20) DEFAULT NULL,
  `entreprise` bigint(20) DEFAULT NULL,
  `facture` bigint(20) DEFAULT NULL,
  `niveau_prix` bigint(20) DEFAULT NULL,
  `taxe` bigint(20) DEFAULT NULL,
  `taxe_expedition` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `code`, `date_creation`, `date_expedition`, `date_experation`, `rabais`, `remise_global`, `sous_total`, `statut`, `total`, `total_unites`, `type_rabais`, `address_expedition`, `address_facturation`, `client`, `devises`, `entreprise`, `facture`, `niveau_prix`, `taxe`, `taxe_expedition`) VALUES
(1, 'C000000', '2024-08-28', '2024-09-05', '2024-09-09', 5, 6, 2500, NULL, 2845.01, 1, 'POURCENTAGE', NULL, NULL, 1, 1, 3, NULL, 1, 1, 1),
(3, 'C000001', '2024-08-29', '2024-09-07', '2024-09-10', 7, 8, 18400, NULL, 20500.92, 5, 'POURCENTAGE', NULL, NULL, 2, 1, 3, NULL, 3, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `commandeproduit`
--

CREATE TABLE `commandeproduit` (
  `id` bigint(20) NOT NULL,
  `disponible` double NOT NULL,
  `disque` double NOT NULL,
  `prix` double NOT NULL,
  `quantite` int(11) NOT NULL,
  `total` double NOT NULL,
  `commande` bigint(20) DEFAULT NULL,
  `produit` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commandeproduit`
--

INSERT INTO `commandeproduit` (`id`, `disponible`, `disque`, `prix`, `quantite`, `total`, `commande`, `produit`) VALUES
(1, 98, 1, 2500, 1, 2722.5, 1, 2),
(2, 198, 1, 8000, 2, 17424, 3, 4),
(3, 199, 0, 800, 3, 872, 3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `destinataireemploye`
--

CREATE TABLE `destinataireemploye` (
  `id` bigint(20) NOT NULL,
  `alerte` bigint(20) DEFAULT NULL,
  `employe` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `devis`
--

CREATE TABLE `devis` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `date_creation` date DEFAULT NULL,
  `date_expedition` date DEFAULT NULL,
  `date_experation` date DEFAULT NULL,
  `rabais` float NOT NULL,
  `remise_global` double NOT NULL,
  `sous_total` double NOT NULL,
  `statut` enum('ACCEPTE','ACCEPTETRANSFORME','ENATTENTE','REGETE') DEFAULT NULL,
  `total` double NOT NULL,
  `total_unites` int(11) NOT NULL,
  `type_rabais` enum('MONTANT','POURCENTAGE') DEFAULT NULL,
  `client` bigint(20) DEFAULT NULL,
  `devises` bigint(20) DEFAULT NULL,
  `entreprise` bigint(20) DEFAULT NULL,
  `niveau_prix` bigint(20) DEFAULT NULL,
  `paiement` bigint(20) DEFAULT NULL,
  `retour_produit` bigint(20) DEFAULT NULL,
  `taxe` bigint(20) DEFAULT NULL,
  `taxe_expedition` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `devis`
--

INSERT INTO `devis` (`id`, `code`, `date_creation`, `date_expedition`, `date_experation`, `rabais`, `remise_global`, `sous_total`, `statut`, `total`, `total_unites`, `type_rabais`, `client`, `devises`, `entreprise`, `niveau_prix`, `paiement`, `retour_produit`, `taxe`, `taxe_expedition`) VALUES
(1, 'D000000', '2024-08-29', NULL, '2024-09-12', 8, 8, 15400, NULL, 16932, 3, 'POURCENTAGE', 2, 1, 3, NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `devises`
--

CREATE TABLE `devises` (
  `id` bigint(20) NOT NULL,
  `id_entreprise` bigint(20) DEFAULT NULL,
  `taux_de_change` double NOT NULL,
  `entreprise` bigint(20) DEFAULT NULL,
  `nouvelle_devise` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `devises`
--

INSERT INTO `devises` (`id`, `id_entreprise`, `taux_de_change`, `entreprise`, `nouvelle_devise`) VALUES
(1, 3, 1, NULL, 1),
(2, 3, 9.89, NULL, 2),
(3, 3, 10.57, NULL, 3);

-- --------------------------------------------------------

--
-- Structure de la table `devisproduit`
--

CREATE TABLE `devisproduit` (
  `id` bigint(20) NOT NULL,
  `disque` double NOT NULL,
  `quantite` int(11) NOT NULL,
  `total` double NOT NULL,
  `devis` bigint(20) DEFAULT NULL,
  `produit` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `devisproduit`
--

INSERT INTO `devisproduit` (`id`, `disque`, `quantite`, `total`, `devis`, `produit`) VALUES
(1, 0, 1, 13200, 1, 1),
(2, 0, 1, 2860, 1, 2),
(3, 0, 1, 872, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE `employe` (
  `admin` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `adresse` bigint(20) DEFAULT NULL,
  `entreprise` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `employe`
--

INSERT INTO `employe` (`admin`, `code`, `nom`, `prenom`, `telephone`, `id`, `adresse`, `entreprise`) VALUES
('admin', 'E000000', 'El Fassi', 'Omar', '0600982321', 54, 9, 3),
('admin', 'E000054', 'sami', 'Akram', '0645136218', 55, 10, 3);

-- --------------------------------------------------------

--
-- Structure de la table `employe_permissions_acces`
--

CREATE TABLE `employe_permissions_acces` (
  `employe_id` bigint(20) NOT NULL,
  `permissions_acces_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `employe_permissions_acces`
--

INSERT INTO `employe_permissions_acces` (`employe_id`, `permissions_acces_id`) VALUES
(54, 1),
(54, 2),
(54, 3),
(55, 4),
(55, 5),
(55, 6);

-- --------------------------------------------------------

--
-- Structure de la table `entreprise`
--

CREATE TABLE `entreprise` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id_admin` bigint(20) DEFAULT NULL,
  `logo` mediumblob DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `siteweb` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `adresse` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `entreprise`
--

INSERT INTO `entreprise` (`id`, `email`, `id_admin`, `logo`, `nom`, `siteweb`, `telephone`, `adresse`) VALUES
(3, 'ElectronRX@gmail.com', 53, 0x89504e470d0a1a0a0000000d49484452000000e1000000e10803000000096d2248000000f0504c5445ffffff88bb42006ab40064b2005fb0fffffd7fb7310067b386ba3d0068b31a6db50056ab005caff4f5f884b9390062b190c5178fadcfd1e7aedcebc9e8f2dff6f9f3427dbabcdb8bd8e9bb005aaebbd59c7bb425dcebc190c613c4de9682b834b2c8e09ec670c2d2e70051aaf5f7e9e7f2d6b2d473adce85558ac09ac666eaf2e18fbf5079b41faace7f7a9ec9d2ddea004aa72481c0ddebcfc9dfb0a5bbd8e6edf28cabd097c82ba1cc4dc8e1a0cee1b9bcd8a092c1589cc56acbdfb4b3d18e6793c40042a43a86c03275b79eb6d6cddbe94d84be7ea4cd6f98c60077bbb8ccddbbd97eacd26aa9cf5c9acb3dd9e4ebc345c06800000b6049444154789ced9c095be23c1786bb245da0b40814a8150bca26208e0ae2a08ecc8b026ef0ffffcd9784022d149c4587e277ee6bae9992b49a674e96734e52380e0000000000000000000000000000000000000000000000000000000000000000000000208460f2a7d6bda99c12f62f5398957c2d5215de767482a2e892ed1492db6ed00773716beb0acf2b0c9ea0484a77db8dfa3030679e4a549ee4f0b7272727b7755dd2e9c7dbe257e9aa359e08d21b856ecd2d285e546c876afc225df5c22606b42ba6af10df50b3da975b6ad387922252743eb5525ebc9388c41fbbdf514d22d0390994716f1389abd2778d139d77eed6d4dd132b2ae69aca5da16bf34a7d6d6dc5e1f5ca6ef753cc2bbc54db50cdf38de23f6ccfc7f343e29d9b0df517c4c4957fd69a8f0773f5cd030d73b7c4c6bb3c128b0d5ebfdf784752e2a55d76df2e9df79603932c96a7ffa8359fc1a9c2dbefdc72a7f0ebe7daf073a728ebd6c21937ce2e2f89b8be340c1f9b7d23d2cb63cf0ad825b3edfae524ec90d550df5f7c6c0f904890b5c8e3a2904e355f45e1c49045ad7735320c35fa3c2ffd3a0a314682b6c7ba671ea9d1b35947a50a77d7fbf6d97028a2162be4b83324a7bf8642cea33086c4eabcfcc1d0cedccbdd54886ba56497c2f37385479ab6985f70541ee51931a6b04d2f1f27b1dd0833cccb3b5e9ae27814b60c145bdc14514544f9d6660acf8ec9b586e441ab8dc3aeb258d11d962e74f128143d0afbc294a8ab50a31f54e15c7daa9e855a22de6fe83c59e61d7b4663b6e2e78d687b7e1ba709284af939992afc46ae2de15c5023e7a817dace8ab95a9da625a4fa69b764ce716bdb51716f7eeb2342f918c35d0fe9e5e4f9ea3f2446ce05e331f8176c9f144b10de26832d90968d9911715f1667ca7d73299ef48e2311d56a7d724bff109a1755f4b5c1ded9b12a4f58ff8ba5656dae6179b598f40d41b01ec2d8518bbac23bb71bc2843d4d46cde7c9e395a8a2debc74653dc44d44241e7d5633ff82bab23e6dc8c00fc7a2882c64c8566f115d04acf8579aa01ab1e5c7b7ce3e89f34edeb9a7dd132d646955ef4c12e4d3340d41ae7221c324b3e87b29256ab8c9d199df3a410a715a16b4b04da8f7fa1f66942e02a2273cb104b9ff01adfa404c9d576efd45183f0efbe25244bff2dc8f3b9dd72bb5e5a973280ad6e4e39bf917d0beb6b41918ab224125213d2211fd3a8d5ddd213ed02dd168faef69470571f8496dfd332ac4867e196da2ceea0d472292a3f9354feddb8a5ddfdf2f10476f79776aa0aae1eaa644a03feb8965591b4e237a43883e061ab1db50746678b322d597fa780b095698160cdce09d1fbe923d113db01ae2cc186a3f48215614bee8de73ef48fee7cf50b866d394cd4b17de0262c2c15c554bd4825c94aee419baf5a53db8b6ac1af98f6de45f519296b2f78f165a88c2967815f05041f788ba74fc6b065655234cfef78ac2bce11d456931c843a97b372c5292edef0442f814fa4cd012bd0a07e220e0a1baeed9394cd952a8155e2cdbf0082d166ccc45e466c04327bac7514f3afe1f10368574a629790b62dea17766c9418dddd7a5c506f7a9cefbbcda981c2e8526592dfc2e4d5546732392e83e6869ab3594c2ecfac2d6fd9bdd6d4340a18a1197f77af1242a8b6e445f15d15ee0431547726525256529303942c2227315064e14bfe38db9074b462312d13fc8a2310876be715d77f8cb522d5990f846d2ff78535485cf6cf06f73e32c4da6643a8dd2885e1365abba2eba304f6cc5b16d49d76d7f1fc75813e4dee734f50fa949bcbe7c6aa4dd9355125d0c360da7ee2d11682bf7cbb133716651fe639bf8b79cac9c0c22868b45543aa5ae8f0f498d59baa82deb23eb8b2a68214bb7d1a33fab691aa2706992a9957e65a3e9ca108ce0d9698bdc1123ae9c7e5a5258acd03ed928bc27f2481354215c1624146d7e3553e357f8834c299244e7954da78830374182a03d6fb8654bfcb057cffcfa145edabc5de8d692f70d45da7448e8cc201edbe8731af977d0d3a24b879dbd0a53c42b98764ff344df70fcf9c1520571cd0aba6da84487ef7adae65578a748b3941aae2beb4e093da649170dab40ccdd34783218f9fdb913ee5168da9e83274929f098fea4d5d76432067be11448b9e0e906b02e35f893c2dddde55421b9babb2bdc2ab6e7a8ac3d77631fd3d5eaa04a18f4a31671d504f7c84658c1fbee26b7a22864f1600a797dfaa68c33ef98d813df1f6932439565bad32d6abd5039dc0198977c43629a9c9942f75d206ff4b088ef4910214c3512179d4495ed90b932811493f7a7854261de4b1964fe5cc4c87831288942b9cae80df3e14ae4af25782ec59227f174e938b3ac0c5188c2de2f37e05d2d2afadce5a9398bec2855b823a60bc2abd02461ee0db36f57521669a7afa310d3a31a0e7f7a735f9794c6c2a5d97d859e6c778d68d31d5d77c8723f1facbbae50f0e7f3bba775be5ef0f9a47924183bac30ad8a4b41025e76c85a862aeef05c5a95d5c83bb78c64e1bd5bc2cc9e281cbfb3cf1951d5a04d8d5de1f1e9fc29bff18e8928880fffa6319f01e650e47cb3859af253c80e5dfc26574f4f91e04dfc29b1a820ec7227e5b8b6209e076ee23330d713439973fa1d9a4fe7c6da8331f85913d4c80e444b9b883da9c2daf3341324a8f3d7127696678ba8c807564d0c5540416718768c2b4d10b4201dcf88a60dff797b3e81269168f4fd9d1173ed2a2d4eeff82064606245555091efdcec5913898280429c36fc1d3097d7881c59537b7bf923c2de2862d182e8ded71048898da274b754160d8a48f386b236d8695f6685c94844a2aa4edf0552456454c3742eef23c05cec79d8b78e29566494dfe190f01d5622e0afc6179707000000fc1f82d77ef8909fb854b2959534f192712993df9f7c59ff2d88f484de2ffcc058afc918b69853deee8dda5361ed51732b0a339d788e118f93df9f181facbf3575bda1724eecd8f846209e6b9465898796fb5a4afff8684b0ab34517f22911df20e230f72b5f73198ba6d9bf66cb38663981bec6948ea25b3aa898f169cae6b2eb6ec4dcf77892bd42ea9e89f256793ecd1472dc1e6229c8891125fd356fa5b9ede05798883385f8fbeb6b7966b044f9b54c4b0f5f3be58cc99532c5c4eb0b3d689b2dbfbe2698b4ec0b7750769f58283cd2a66fd9b4ac3e6e478d6dc55a99b8b7eb4d15d63ab9b7f238f7424b8ae3dc35b92e73dcdb787c3d2e7207b94c2e9e4b71e635a9b8ce8d69e73ecc1de6aedfe2b904e755d8445753d3f6d0301ddd5ab09ce91c1e4ca12765a842cc8d3bd4ae65d6e0d7f877764d947f67ff19079d4ec22417e5f8217be08dfc7dd8e990a74b9d31660ad957494cae90e69a0d8ba2b1bd946aa6d399cea5b90ce7daf0209e61ed1a8f890973d7f43a759d58287ca525b50eabe05e7325aa30c1aee3267dd34666398068549c271f5b8615db5a54b96a43529448116a6f3993a8fd3ebfd55518676ab26e45967e3c8cb3a35265a6301ab91a0e07c8f35d606d4bdc62d638601c96c7d325928eb6ec540fc3a730e15624a952bf42360e5b5664d64771dacaa7b5ad6da106cca5e5f841aa444895cc4085d9e99d9b15927926e2a673aeac1e3739d6b695770c507838d5c0a56a9808988ec9f2e19242b78214668315e2bebb23f76cc944ea83a66e69241e8e17bd144f1596e8ec82b95a3c4ecae263ea8c26e32f4b0acd4e8756e0eb7831582177665974aa89d16fcfc21c1ea02dbd9b7f783d77bd93b3d5a21c7f2b99c9319392c8bd958ae49a2cf1d94e395b9c292415d7c962e98d99325021d734e8cef14063de1a6e479eb6b351fc321e8fdde5e2929889796d3843a79ae90a402c47aec754419138e907c4b1734766822e331dba287299a9c7fa9aa30a7fba476b30b6be0db9d1cf99e0e7e36f5b716b4cd3fb6d50b3af84320fb2c9d957922dae7189cc3da6391b4f66329b746f37d9a432ad8ac5668e2b59f7717b76140763fa8d5200000000000000000000000000000000000000000000000000000000000000000000000000004cf91fb3be1bc469fc9fae0000000049454e44ae426082, 'ElectronRX', 'www.ElectronRX.com', '0649992932', 3),
(4, 'Smartfix@gmail.com', 53, 0x89504e470d0a1a0a0000000d49484452000000e1000000e10803000000096d2248000000c0504c5445ffffff88bb241b251c00000086ba1f81b800001300000a00c8c9c8979a9709180b182219000600cde1ac0c1a0ef3f3f3000e00868a86d4d6d5dcdddce7f0d8e6e7e6122014353d36464d46777c78e1ebd00010009da09e84b915acaeacfafcf6ecf3ded2e3b4a5ca64d8e6bff0f5e7cce0a9f6f9f08cbd2ea1c85c95c143bad58decedecb4b7b539403a5f65602831296c716ddbe8c6b2d17fc3dc9894c140b6d483accf729dc6525056515a5f5ac5db9eaecf76666b677377730016008e928fa9f629e900000cc549444154789ced9d777faa3c14c751a680880b6b15a57be16a6dabbdf6f1fdbfab07084812868c20d60fbf3f6eab92f14d4e72328ebd1455a952a54a952a55aa54a9526adddf7c7eddbe378db2eb51941edf195667185d67beeecbae4b215a313a53736441de955d9b0274c7ba7c0e237b53767d886b05035e22e24aafa1ba34c46b1cf0d210af752640785188213de8e862107b613d7849bdd8ab45005e0aa2110d78198818a0bd66bb2c441490615fbe6e9f74e68210ef9f601a7d7d6dbdf7f870418838e014bc7dcd5e0a2206f832f53ee89d21a271f3f37363a44bf3b846011ffd8fae9933436cbeb0baaeb3ec4b3345a2e91a5ecae86b64d77bfd744e88f7df9e5131ec77e2ddf9f40506649eb0841fc84aae5cc45e0daa8c5e3392a5c2011fd18f6fb0a56a99883d0675d18c9124d5f43bb6076fd81aa6f2103140ab2a35e3782a1c104b320d00968718000ca96f889e11c01a9e208cb024c4d065f3714414900dce4e77ec996c892376768c6ec4a59aa280a103f7ee3c76fd21269a04f11635d15ee84367816844edcde30d150564ae231e3b03438dd99bc7217ea163300ad0460ccbf784889126ea56a56684264b0c587a2f1e018c9a41fec11dc3e8abd8324a1d8b4701c37bf11d053c76ff52226202c0b0b1880026390e2d6d2cc69e8f45237ea6052c6d2c461ee106aa82f8c5d7f48025196a22130d2222800c9b74b35c02628ca30fa9ca9377f882f5e043e2f24e6ea8b18e3e5811cfe17da0803f294a3cf17493c24461c09fec8027eec574804c04e047ca520f63b1f8e3a98c800ff9003d44a656f8095c46136da280af194ab6c722c3ae8a3e474de8e87140f45889fdcc54f61dabb3abe0817ffcc236ad123b7aa770dd078493b1ef594b7f359c1f2862edf148b25445641b8328a09e15f020d450f52c261fa1748e3ea207f303dab30e5c107e949c5d191d3deacaf42f12554136d1c44662c659148de5d26f89d40599b9f4748b8748651c8385005af3299c697ae71aa6ac803a0a388d2d24b1eec81366345134964b7f260448bd23f78e69ae2ca394d1d1a3ee53ff2605884eeaac913fc78c8e1eebc197fc1501422fff99effc39661c836832723df888009208eecbe8e851cbd6bf49f9e547e4ea98c4f49cd1d1dfa33db82e0890c08a26e32c7a8ff620b195d5b464c0c318c422818a02c40254b288082093bf1e9ebed11ecc9ff17d36134567bb409845763d63266ae4cef13b22fc3a1e708a0232c4006fb118a2fc193f841d534601ea7e0f22db37bd28c05afe8ca72fc96dd41f83e8749e28b6269970400219f79277a1df83582c57441442062137ab84327e483c0aa1bb6a14508fbbc34ea57fd81824d2721f4909a149e625f9257d2a613d48063031a13f06b16035723d885e1d13cb38a195428068a8d391288414fac40049657c9d68a6814c110324f62d50f4e2b146aee5a6eb04de2212902506885e3c923b3db4f473dc4ca121711a40821953493a110a4ac3429d88dd09fd606390ec6553ef4827423df8855e2f9138ff7284ad1c89dfa6c54f36d018fcab8011df5e0d02fecb1a667144583c3bb99683741db94584c6e07b9e288418e180c45a0e51142204f8f9a701f16be510132d0a100b3121977140618810e06bfe28845061c15e19e237922b68a8909b280c903d1d6010111a831f24c22c42b43a2920fe1701a01efc2908101b19e44c23a644b8bc28c07fc48a438d865ccbc595e98f7b7fed7b2a4002f11b694af50358d0251599300b5bd87d2589009544721119effbd6d81900a928048a32987200bdd17f58fc36b1300b6277d8e8759e4eccf613c84664d6ee0b2c12885814027aab43d03412c932542fb6e31e03245544b98036a27752896ce97502d102406503da860a7e1ac899c54b415108e406770a19e007328f123bda7e5ca3d333b1c19d41f0350289881647530c9098ed67d133644da45c3d7e494f2c0227930a20442f3d0846e064133c95faab9c5c3a2f40f4389cc8191f1a85402ec428ab106f5123709d87013e953a061da1df38cf8d787b663d68c940af13987c8838e059fc05da1b8291035fe82109b910a37c6a629742d9113140a2df82c9a526fa57d53223e2712467d283b6c8f42216854020588da09a04c6221685503308d731a71e72cfa8af981d18e42b994f4decdb806911cf1ed09e6e6a39103f887ad582d4cc51491c90580c1559659f6ef0308b3305ccee34b0698af0377a892a9bebff4380d97a114f73e6ff1702545d9d65f50463f1e66f01fa26c7b0afabd52b7b7446bdc16e404bff03acc7e5ba7ee0b27bfa11bff807015dd7afbb212f3ff18877d8df7a2e22d4a900d963d1fb9287a1c7b97e3c8ee48f003a88acbb79bd67625c3f1e855054a853016ab29e535bb1d14e030b062c30d4a9003559f065dfe93713e917ff34a08df8dc9b4e7beee16718221e66f1c7006d447dbd3ef452702c62510885873a15a0071666c06754ec0b8d2708752a4071bbfe8b008cdbf56397f42789e52a4451bbfe8b010ceefa81933430c0d3853a15200c91bdbd5bddbd637ef094a14e0508ddf55b8cf6a611012416e65796d05e0c885c1c63798a45bc04c0d8afba9710cb55889aa1dfd3b82040dcf5fb80a5863a9155e8582c35588db842104b8ee522ae00e2a501065cbf4e2c12f57c84cca89708681f1d7a53aab53ebd44408a7afc64c1ff58b63efbbb89ec5afdbc7edc1865d7a252a54a952a55aa54a952a54a952a55aa54a952a54a952a55aa54a952a4defaddfe5bd995284eddf6d542d3a4c56c3729be2cc1b424745b85970469498b9254af4b92a68c0a2db835d98e689957555ea6e9c56e7c22a369cdb8ba27a95e24a1b990b5ba5f96428f8b2aa9d51d4379ef7c404b05123668a98e6854cc98e89bc31947ff1e5e0b32284ee1699a96ff2b8ed0a4eb98b842084d9e57a4ba323cbcb1549cd2e8a1d0ed76857d6184ad996ba18a3852554eb46a514c1f4e78a79403616b20156830903aa00b256dbe1f4f26e3f67c302a661c4e548c10b42c5df8e43d1e390589dd43c9ddbd197c0cae472bac52a16fc232c309d594f54dafbd33a129bf810ffafb86a57ddf9a12da9bd9603677b8fbe3f9d56070b5841aa16bb6b7d67b83d966681e30858693daf63b56f2dddbbe01869db4195bef9bd4a4b107f39bd2f06517667d028464d4c8314c01a1360f7c20d09c255a1006b2a84992e544b6547fa78e14c97e21cf5ca739a98f5451b31f90349157f66eea3648dde90f355e14371d9a535c6764bffd4b5df19eabe07cd11dbb0d47aaf37b1b341f3f725e3502f54b2cd74ae9806582c95c1aa8075fc26d47ca61c255662e0ae2d424d5256f8bcecb2b59b4d72cdb8e0c3f25b6a90de6a140253aa0699d17b25d23771e1477d901bd99a62e6fc65de403d75dc135d1e0eaf0131845f29e5336d0db6e6a8b1071495c238e906af320a9d55643a7fda4459ee9a83573cbd246dc555bf0b3f21c725d5365a81f7999032f3417851fd1b4b6582c381a74b03c8108c193bc65a5871cacc6e0c7d44693fcd75ef3b884d495e2b6952923ef679409152eaa8b761f23a4af4cc15cb8d382b8178431e819b76187db49c731cc5667ee50295b9850e26875bb173af5819bc5c29a93ea26b55d0cdc0706b650c23ec01f0d017a6eef3591fdd16541ba43dc1b879233403b23d06d0e540718a6d6c773727cb824b57c426dd6f0da1ff71614ec2d80211dfa4ae041833affe61a84409d0d2f42c382071c80506943d511db10495de9e219012cfeedf0ab97c05684c7e7a11c7d6bdc8ffc361f90581308bf755a81e64c9fd0aba363995ef5ae10c2bed9680f1d81f7e9fe819083ec2b1521b539d8d528df203ca8650eebb4373bd04272c2fe52e2390508b41111c237dead8b4c7209d91972a054659e9850f84fc1e77d228494e03ceecdd8c4d407235e929212f681ebd038d5d248234838779def28309fe593db72622b2121f0c8e2d6da965802b5224238f69608d28c2c61ff3f40f8969050436a0db048100afe5ccaf9fe2523d3129eabcc747dd8725a5a1592136acb2484ad0534b8e590cd5c2a429a56966059d2ea8ec162c2b18c24846f28e15c892134c16a73e11de4c5116eddc52ed870f101c79b4a6fd64852aca525a78932ed2e39d5714242ca2154b68e4fee6ec1362382b0033ed506fb7163de8d256c8005a3da054da60d72136202679789083760200e7edbc38deb6aa20829d7f224d1daeec512badb277a42bd8134dc92caa120a1a6826d5a1242b73292222a9ab7578a226cf87b443e8eb005f2e1ec6307776e97f31c57f569d4656bfc00987d1ca1e6115a7bf9436a6d14bb6ab3928dbc676309b7c034678ee937c0e8e5f22cddccf982e345b0ec1279e5ca6b2e81e62dd12e142fdb2fdcd39c99fd914c3b2d3159c84e62959b997d90c42104bfa2870f434505a53884b4ec3ce27cb2008f770e2965d59d5eb6e0937aae9b8656c7dc0f97bbdd72b837fd69eb4d70e4be11f2c2dd2db7ccf672b76c4f3a870fecf7bbe0576c41d21d0f77bbdfb6d98772c173747f3d380e2134a74a952a55aa54a952a54a7f4fff03b4e628e533676d0a0000000049454e44ae426082, 'Smartfix', 'www.Smartfix.com', '0678134566', 4);

-- --------------------------------------------------------

--
-- Structure de la table `entreprisedevises`
--

CREATE TABLE `entreprisedevises` (
  `id` bigint(20) NOT NULL,
  `defaut` bit(1) NOT NULL,
  `devises` bigint(20) DEFAULT NULL,
  `entreprise` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `entreprise_employes_adroit_acces`
--

CREATE TABLE `entreprise_employes_adroit_acces` (
  `entreprise_id` bigint(20) NOT NULL,
  `employes_adroit_acces` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `entreprise_employe_acces`
--

CREATE TABLE `entreprise_employe_acces` (
  `employe_id` bigint(20) NOT NULL,
  `entreprise_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `entreprise_employe_acces`
--

INSERT INTO `entreprise_employe_acces` (`employe_id`, `entreprise_id`) VALUES
(54, 3),
(55, 3);

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `date_creation` date DEFAULT NULL,
  `date_expedition` date DEFAULT NULL,
  `date_experation` date DEFAULT NULL,
  `rabais` float NOT NULL,
  `remise_global` double NOT NULL,
  `sous_total` double NOT NULL,
  `statut` enum('NONPAYE','PARTIEL','PAYE') DEFAULT NULL,
  `total` double NOT NULL,
  `total_unites` int(11) NOT NULL,
  `type_rabais` enum('MONTANT','POURCENTAGE') DEFAULT NULL,
  `address_expedition` bigint(20) DEFAULT NULL,
  `address_facturation` bigint(20) DEFAULT NULL,
  `client` bigint(20) DEFAULT NULL,
  `devises` bigint(20) DEFAULT NULL,
  `entreprise` bigint(20) DEFAULT NULL,
  `niveau_prix` bigint(20) DEFAULT NULL,
  `paiement` bigint(20) DEFAULT NULL,
  `retour_produit` bigint(20) DEFAULT NULL,
  `taxe` bigint(20) DEFAULT NULL,
  `taxe_expedition` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `facture`
--

INSERT INTO `facture` (`id`, `code`, `date_creation`, `date_expedition`, `date_experation`, `rabais`, `remise_global`, `sous_total`, `statut`, `total`, `total_unites`, `type_rabais`, `address_expedition`, `address_facturation`, `client`, `devises`, `entreprise`, `niveau_prix`, `paiement`, `retour_produit`, `taxe`, `taxe_expedition`) VALUES
(1, 'F000001', '2024-08-28', '2024-09-05', '2024-09-13', 5, 6, 2500, 'NONPAYE', 2843.97, 1, 'POURCENTAGE', NULL, NULL, 1, 1, 3, 1, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `factureproduit`
--

CREATE TABLE `factureproduit` (
  `id` bigint(20) NOT NULL,
  `disponible` double NOT NULL,
  `disque` double NOT NULL,
  `prix` double NOT NULL,
  `quantite` int(11) NOT NULL,
  `total` double NOT NULL,
  `facture` bigint(20) DEFAULT NULL,
  `produit` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `factureproduit`
--

INSERT INTO `factureproduit` (`id`, `disponible`, `disque`, `prix`, `quantite`, `total`, `facture`, `produit`) VALUES
(1, 98, 1, 2500, 1, 2721.5, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `languepdf` enum('ANGLAIS','FRANCAIS') DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `rabais` float NOT NULL,
  `siteweb` varchar(255) DEFAULT NULL,
  `taxe_numero` int(11) NOT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `adresse` bigint(20) DEFAULT NULL,
  `devises` bigint(20) DEFAULT NULL,
  `entreprise` bigint(20) DEFAULT NULL,
  `niveau_prix` bigint(20) DEFAULT NULL,
  `taxe` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`id`, `code`, `email`, `languepdf`, `nom`, `rabais`, `siteweb`, `taxe_numero`, `telephone`, `adresse`, `devises`, `entreprise`, `niveau_prix`, `taxe`) VALUES
(1, 'F000000', 'yassine.amrani@gmail.com', NULL, 'Yassine Amrani', 12, 'www.amrani.com', 1234567, '0649238122', 7, 1, 3, 4, 3),
(2, 'F000001', 'amine.karimi@gmail.com', NULL, 'Amine Karimi', 11, 'www.Karimi.com', 262346271, '0609232245', 8, 1, 3, 5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `livraison`
--

CREATE TABLE `livraison` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `date_creation` date DEFAULT NULL,
  `date_expedition` date DEFAULT NULL,
  `id_bon_com` bigint(20) DEFAULT NULL,
  `remise_global` double NOT NULL,
  `sous_total` double NOT NULL,
  `statut` enum('LIVRE') DEFAULT NULL,
  `total` double NOT NULL,
  `total_unites` int(11) NOT NULL,
  `entreprise` bigint(20) DEFAULT NULL,
  `fournisseur` bigint(20) DEFAULT NULL,
  `taxe_expedition` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `livraisonproduit`
--

CREATE TABLE `livraisonproduit` (
  `id` bigint(20) NOT NULL,
  `disque` double NOT NULL,
  `prix` double NOT NULL,
  `quantite` int(11) NOT NULL,
  `total` double NOT NULL,
  `livraison` bigint(20) DEFAULT NULL,
  `produit` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `methodepaiement`
--

CREATE TABLE `methodepaiement` (
  `id` bigint(20) NOT NULL,
  `actif` bit(1) NOT NULL,
  `disponible_pos` bit(1) NOT NULL,
  `id_entreprise` bigint(20) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `methodepaiement`
--

INSERT INTO `methodepaiement` (`id`, `actif`, `disponible_pos`, `id_entreprise`, `nom`) VALUES
(1, b'1', b'1', 3, 'en espèces'),
(2, b'1', b'1', 3, 'Chèque'),
(3, b'1', b'1', 3, 'Virement bancaire'),
(4, b'1', b'1', 3, 'Bon d\'achat');

-- --------------------------------------------------------

--
-- Structure de la table `niveauprix`
--

CREATE TABLE `niveauprix` (
  `id` bigint(20) NOT NULL,
  `actif` bit(1) NOT NULL,
  `id_entreprise` bigint(20) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `type` enum('ACHAT','VENTE') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `niveauprix`
--

INSERT INTO `niveauprix` (`id`, `actif`, `id_entreprise`, `nom`, `type`) VALUES
(1, b'1', 3, 'fidele', 'VENTE'),
(2, b'1', 3, 'diamant', 'VENTE'),
(3, b'1', 3, 'membre', 'VENTE'),
(4, b'1', 3, 'strategique', 'ACHAT'),
(5, b'1', 3, 'prefere', 'ACHAT');

-- --------------------------------------------------------

--
-- Structure de la table `niveaustock`
--

CREATE TABLE `niveaustock` (
  `id` bigint(20) NOT NULL,
  `disponible` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `entreprise` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `niveaustock`
--

INSERT INTO `niveaustock` (`id`, `disponible`, `nom`, `sku`, `entreprise`) VALUES
(1, '50.0', 'Laptop Pro', 'LP12345', 3),
(2, '100.0', 'Smartwatch X', 'SWX98765', 3),
(3, '200.0', 'Wireless Earbuds', 'WE12345', 3),
(4, '150.0', 'Smartphone Galaxy', 'SG45678', 3);

-- --------------------------------------------------------

--
-- Structure de la table `notification`
--

CREATE TABLE `notification` (
  `id` bigint(20) NOT NULL,
  `entreprise_id` bigint(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `nom_employe` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `employee_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `nouvelledevise`
--

CREATE TABLE `nouvelledevise` (
  `id` bigint(20) NOT NULL,
  `id_entreprise` bigint(20) DEFAULT NULL,
  `labelle` varchar(255) DEFAULT NULL,
  `entreprise` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `nouvelledevise`
--

INSERT INTO `nouvelledevise` (`id`, `id_entreprise`, `labelle`, `entreprise`) VALUES
(1, 3, 'MAD', NULL),
(2, 3, 'USD', NULL),
(3, 3, 'EUR', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

CREATE TABLE `paiement` (
  `id` bigint(20) NOT NULL,
  `date_paiement` date DEFAULT NULL,
  `id_entreprise` bigint(20) DEFAULT NULL,
  `id_facture` bigint(20) DEFAULT NULL,
  `montant_paye` double NOT NULL,
  `montant_rest` double NOT NULL,
  `entreprise` bigint(20) DEFAULT NULL,
  `methode_paiement` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`id`, `name`) VALUES
(1, 'Maroc');

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `name`) VALUES
(1, 'client:create'),
(2, 'devises:delete'),
(3, 'devises:edit'),
(4, 'noteCredit:edit'),
(5, 'estimationProduit:delete'),
(6, 'client:edit'),
(7, 'devis:create'),
(8, 'methodePaiement:delete'),
(9, 'remboursement:edit'),
(10, 'factureProduit:create'),
(11, 'niveauPrix:delete'),
(12, 'fournisseur:delete'),
(13, 'livraison:edit'),
(14, 'produitNiveauPrix:read'),
(15, 'alerte:delete'),
(16, 'paiement:delete'),
(17, 'commande:read'),
(18, 'retourProduit:edit'),
(19, 'admin:delete'),
(20, 'noteCredit:read'),
(21, 'livraisonProduit:edit'),
(22, 'produit:delete'),
(23, 'bonCommande:read'),
(24, 'produitNiveauPrix:delete'),
(25, 'commandeExpedition:edit'),
(26, 'client:delete'),
(27, 'commandeProduit:edit'),
(28, 'entrepriseDevises:edit'),
(29, 'nouvelleDevise:delete'),
(30, 'estimation:edit'),
(31, 'livraisonProduit:read'),
(32, 'remboursementProduit:delete'),
(33, 'employe:delete'),
(34, 'devises:create'),
(35, 'bonCommande:create'),
(36, 'estimation:delete'),
(37, 'retourProduitProduit:edit'),
(38, 'facture:delete'),
(39, 'retourProduitProduit:read'),
(40, 'alerte:create'),
(41, 'admin:read'),
(42, 'noteCreditProduit:create'),
(43, 'noteCredit:create'),
(44, 'facture:edit'),
(45, 'niveauStock:read'),
(46, 'niveauPrix:create'),
(47, 'factureProduit:read'),
(48, 'remboursementProduit:read'),
(49, 'factureProduit:delete'),
(50, 'entrepriseDevises:create'),
(51, 'taxe:read'),
(52, 'noteCreditProduit:delete'),
(53, 'devisProduit:edit'),
(54, 'devis:read'),
(55, 'pays:read'),
(56, 'estimation:read'),
(57, 'retourProduit:create'),
(58, 'estimation:create'),
(59, 'estimationProduit:create'),
(60, 'facture:create'),
(61, 'niveauStock:create'),
(62, 'methodePaiement:read'),
(63, 'devisProduit:create'),
(64, 'destinataireEmploye:delete'),
(65, 'adresse:edit'),
(66, 'bonCommandeProduit:delete'),
(67, 'bonCommandeProduit:edit'),
(68, 'niveauPrix:edit'),
(69, 'employe:edit'),
(70, 'taxe:delete'),
(71, 'bonCommande:edit'),
(72, 'commande:delete'),
(73, 'livraison:create'),
(74, 'employe:read'),
(75, 'devis:delete'),
(76, 'alerte:read'),
(77, 'produit:read'),
(78, 'livraison:delete'),
(79, 'produit:edit'),
(80, 'bonCommande:delete'),
(81, 'devisProduit:delete'),
(82, 'methodePaiement:create'),
(83, 'adresse:delete'),
(84, 'produit:create'),
(85, 'methodePaiement:edit'),
(86, 'destinataireEmploye:read'),
(87, 'entreprise:edit'),
(88, 'bonCommandeProduit:read'),
(89, 'produitNiveauPrix:create'),
(90, 'factureProduit:edit'),
(91, 'fournisseur:read'),
(92, 'admin:create'),
(93, 'destinataireEmploye:edit'),
(94, 'paiement:edit'),
(95, 'niveauPrix:read'),
(96, 'admin:edit'),
(97, 'paiement:create'),
(98, 'entreprise:read'),
(99, 'entrepriseDevises:read'),
(100, 'remboursement:read'),
(101, 'retourProduitProduit:create'),
(102, 'nouvelleDevise:read'),
(103, 'nouvelleDevise:create'),
(104, 'adresse:create'),
(105, 'retourProduit:read'),
(106, 'devis:edit'),
(107, 'client:read'),
(108, 'fournisseur:create'),
(109, 'bonCommandeProduit:create'),
(110, 'estimationProduit:edit'),
(111, 'livraison:read'),
(112, 'adresse:read'),
(113, 'facture:read'),
(114, 'commande:edit'),
(115, 'noteCreditProduit:edit'),
(116, 'retourProduitProduit:delete'),
(117, 'entreprise:delete'),
(118, 'destinataireEmploye:create'),
(119, 'niveauStock:edit'),
(120, 'commande:create'),
(121, 'alerte:edit'),
(122, 'pays:delete'),
(123, 'remboursementProduit:create'),
(124, 'remboursement:create'),
(125, 'devises:read'),
(126, 'commandeProduit:delete'),
(127, 'entreprise:create'),
(128, 'devisProduit:read'),
(129, 'employe:create'),
(130, 'commandeExpedition:create'),
(131, 'remboursementProduit:edit'),
(132, 'produitNiveauPrix:edit'),
(133, 'paiement:read'),
(134, 'pays:create'),
(135, 'taxe:edit'),
(136, 'estimationProduit:read'),
(137, 'nouvelleDevise:edit'),
(138, 'livraisonProduit:delete'),
(139, 'commandeExpedition:read'),
(140, 'commandeExpedition:delete'),
(141, 'fournisseur:edit'),
(142, 'livraisonProduit:create'),
(143, 'taxe:create'),
(144, 'remboursement:delete'),
(145, 'retourProduit:delete'),
(146, 'entrepriseDevises:delete'),
(147, 'noteCreditProduit:read'),
(148, 'commandeProduit:create'),
(149, 'commandeProduit:read'),
(150, 'pays:edit'),
(151, 'niveauStock:delete'),
(152, 'noteCredit:delete');

-- --------------------------------------------------------

--
-- Structure de la table `permissions_acces`
--

CREATE TABLE `permissions_acces` (
  `id` bigint(20) NOT NULL,
  `entreprise_id` bigint(20) DEFAULT NULL,
  `etat` bit(1) NOT NULL,
  `nom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `permissions_acces`
--

INSERT INTO `permissions_acces` (`id`, `entreprise_id`, `etat`, `nom`) VALUES
(1, 3, b'1', 'ajouter facture'),
(2, 3, b'1', 'modifier facture'),
(3, 3, b'1', 'supprimer facture'),
(4, 3, b'1', 'ajouter facture'),
(5, 3, b'1', 'modifier facture'),
(6, 3, b'1', 'supprimer facture');

-- --------------------------------------------------------

--
-- Structure de la table `permissions_acces_seq`
--

CREATE TABLE `permissions_acces_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `permissions_acces_seq`
--

INSERT INTO `permissions_acces_seq` (`next_val`) VALUES
(101);

-- --------------------------------------------------------

--
-- Structure de la table `permissions_seq`
--

CREATE TABLE `permissions_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `permissions_seq`
--

INSERT INTO `permissions_seq` (`next_val`) VALUES
(251);

-- --------------------------------------------------------

--
-- Structure de la table `plan`
--

CREATE TABLE `plan` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `max_entreprises` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `plan`
--

INSERT INTO `plan` (`id`, `description`, `max_entreprises`, `name`, `price`) VALUES
(1, 'La version standard', 2, 'FIRST', 100),
(2, 'Choix le plus populaire', 5, 'PREMIUM', 229.99),
(3, 'Possibilités illimitées', 10, 'ELITE', 449.99);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` bigint(20) NOT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `cout_initial` double NOT NULL,
  `disponible` double NOT NULL,
  `emplacement_de_bac` varchar(255) DEFAULT NULL,
  `niveau_stock_initial` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `point_commande` int(11) NOT NULL,
  `prix_achat` double NOT NULL,
  `prix_detail_recommande` double NOT NULL,
  `prix_gros` double NOT NULL,
  `quantite_minimum_commande_client` int(11) NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `devises` bigint(20) DEFAULT NULL,
  `entreprise` bigint(20) DEFAULT NULL,
  `fournisseur` bigint(20) DEFAULT NULL,
  `niveau_stock` bigint(20) DEFAULT NULL,
  `taxe` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `barcode`, `cout_initial`, `disponible`, `emplacement_de_bac`, `niveau_stock_initial`, `nom`, `point_commande`, `prix_achat`, `prix_detail_recommande`, `prix_gros`, `quantite_minimum_commande_client`, `sku`, `devises`, `entreprise`, `fournisseur`, `niveau_stock`, `taxe`) VALUES
(1, '8901234567890', 0, 50, NULL, 50, 'Laptop Pro', 10, 9, 0, 12000, 0, 'LP12345', 1, 3, 1, 1, 1),
(2, '8901234567891', 0, 98, NULL, 99, 'Smartwatch X', 20, 1800, 0, 2600, 0, 'SWX98765', 1, 3, 2, 2, 1),
(3, '8901234567892', 0, 200, NULL, 200, 'Wireless Earbuds', 30, 600, 0, 800, 0, 'WE12345', 1, 3, 2, 3, 2),
(4, '8901234567893', 0, 150, NULL, 150, 'Smartphone Galaxy', 25, 6000, 0, 8000, 0, 'SG45678', 1, 3, 1, 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `produitniveauprix`
--

CREATE TABLE `produitniveauprix` (
  `id` bigint(20) NOT NULL,
  `prix` double NOT NULL,
  `niveau_prix` bigint(20) DEFAULT NULL,
  `produit` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produitniveauprix`
--

INSERT INTO `produitniveauprix` (`id`, `prix`, `niveau_prix`, `produit`) VALUES
(1, 10000, 1, 1),
(2, 9800, 2, 1),
(3, 11000, 3, 1),
(4, 8700, 4, 1),
(5, 8700, 5, 1),
(6, 2500, 1, 2),
(7, 2330, 2, 2),
(8, 2480, 3, 2),
(9, 1600, 4, 2),
(10, 1580, 5, 2),
(11, 710, 1, 3),
(12, 700, 2, 3),
(13, 780, 3, 3),
(14, 540, 4, 3),
(15, 500, 5, 3),
(16, 7500, 1, 4),
(17, 7000, 2, 4),
(18, 7940, 3, 4),
(19, 5700, 4, 4),
(20, 5000, 5, 4);

-- --------------------------------------------------------

--
-- Structure de la table `retourproduit`
--

CREATE TABLE `retourproduit` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `statut` enum('ENATTENTE','LIVRE') DEFAULT NULL,
  `client` bigint(20) DEFAULT NULL,
  `entreprise` bigint(20) DEFAULT NULL,
  `facture` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `retourproduitproduit`
--

CREATE TABLE `retourproduitproduit` (
  `id` bigint(20) NOT NULL,
  `cout` float NOT NULL,
  `quantite` int(11) NOT NULL,
  `produit` bigint(20) DEFAULT NULL,
  `retour_produit` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'ADMIN'),
(2, 'EMPLOYE');

-- --------------------------------------------------------

--
-- Structure de la table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `role` bigint(20) NOT NULL,
  `permission` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `roles_permissions`
--

INSERT INTO `roles_permissions` (`role`, `permission`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(1, 74),
(1, 75),
(1, 76),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(1, 81),
(1, 82),
(1, 83),
(1, 84),
(1, 85),
(1, 86),
(1, 87),
(1, 88),
(1, 89),
(1, 90),
(1, 91),
(1, 92),
(1, 93),
(1, 94),
(1, 95),
(1, 96),
(1, 97),
(1, 98),
(1, 99),
(1, 100),
(1, 101),
(1, 102),
(1, 103),
(1, 104),
(1, 105),
(1, 106),
(1, 107),
(1, 108),
(1, 109),
(1, 110),
(1, 111),
(1, 112),
(1, 113),
(1, 114),
(1, 115),
(1, 116),
(1, 117),
(1, 118),
(1, 119),
(1, 120),
(1, 121),
(1, 122),
(1, 123),
(1, 124),
(1, 125),
(1, 126),
(1, 127),
(1, 128),
(1, 129),
(1, 130),
(1, 131),
(1, 132),
(1, 133),
(1, 134),
(1, 135),
(1, 136),
(1, 137),
(1, 138),
(1, 139),
(1, 140),
(1, 141),
(1, 142),
(1, 143),
(1, 144),
(1, 145),
(1, 146),
(1, 147),
(1, 148),
(1, 149),
(1, 150),
(1, 151),
(1, 152),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 42),
(2, 43),
(2, 44),
(2, 45),
(2, 46),
(2, 47),
(2, 48),
(2, 49),
(2, 50),
(2, 51),
(2, 52),
(2, 53),
(2, 54),
(2, 55),
(2, 56),
(2, 57),
(2, 58),
(2, 59),
(2, 60),
(2, 61),
(2, 62),
(2, 63),
(2, 64),
(2, 65),
(2, 66),
(2, 67),
(2, 68),
(2, 70),
(2, 71),
(2, 72),
(2, 73),
(2, 75),
(2, 76),
(2, 77),
(2, 78),
(2, 79),
(2, 80),
(2, 81),
(2, 82),
(2, 83),
(2, 84),
(2, 85),
(2, 86),
(2, 87),
(2, 88),
(2, 89),
(2, 90),
(2, 91),
(2, 93),
(2, 94),
(2, 95),
(2, 97),
(2, 98),
(2, 99),
(2, 100),
(2, 101),
(2, 102),
(2, 103),
(2, 104),
(2, 105),
(2, 106),
(2, 107),
(2, 108),
(2, 109),
(2, 110),
(2, 111),
(2, 112),
(2, 113),
(2, 114),
(2, 115),
(2, 116),
(2, 117),
(2, 118),
(2, 119),
(2, 120),
(2, 121),
(2, 122),
(2, 123),
(2, 124),
(2, 125),
(2, 126),
(2, 127),
(2, 128),
(2, 130),
(2, 131),
(2, 132),
(2, 133),
(2, 134),
(2, 135),
(2, 136),
(2, 137),
(2, 138),
(2, 139),
(2, 140),
(2, 141),
(2, 142),
(2, 143),
(2, 144),
(2, 145),
(2, 146),
(2, 147),
(2, 148),
(2, 149),
(2, 150),
(2, 151),
(2, 152);

-- --------------------------------------------------------

--
-- Structure de la table `roles_seq`
--

CREATE TABLE `roles_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `roles_seq`
--

INSERT INTO `roles_seq` (`next_val`) VALUES
(101);

-- --------------------------------------------------------

--
-- Structure de la table `subscription`
--

CREATE TABLE `subscription` (
  `id` bigint(20) NOT NULL,
  `subscription_date` datetime(6) DEFAULT NULL,
  `subscription_end_date` datetime(6) DEFAULT NULL,
  `plan_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `subscription`
--

INSERT INTO `subscription` (`id`, `subscription_date`, `subscription_end_date`, `plan_id`, `user_id`) VALUES
(1, '2024-08-28 15:30:58.000000', '2024-09-27 15:30:58.000000', 1, 53);

-- --------------------------------------------------------

--
-- Structure de la table `taxe`
--

CREATE TABLE `taxe` (
  `id` bigint(20) NOT NULL,
  `actif` bit(1) NOT NULL,
  `id_entreprise` bigint(20) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `taux_imposition` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `taxe`
--

INSERT INTO `taxe` (`id`, `actif`, `id_entreprise`, `nom`, `taux_imposition`) VALUES
(1, b'1', 3, 'TVA', 10),
(2, b'1', 3, 'IS', 9),
(3, b'1', 3, 'TP', 11),
(4, b'1', 3, 'IR', 12);

-- --------------------------------------------------------

--
-- Structure de la table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(52, 1),
(53, 1),
(54, 2),
(55, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adresse`
--
ALTER TABLE `adresse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK69gs6dv7sq93s1cgl38cd6ed3` (`pays`);

--
-- Index pour la table `alerte`
--
ALTER TABLE `alerte`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `app_users`
--
ALTER TABLE `app_users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `boncommande`
--
ALTER TABLE `boncommande`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_mg51sx83m2jsf2x75fnl76f6t` (`livraison`),
  ADD KEY `FKdrflf94vp9xt4p7g6s5bn3bsj` (`devises`),
  ADD KEY `FK8rcn1ypu9l2yj2y7geu1bs6n0` (`entreprise`),
  ADD KEY `FKsio6xkh6rljybps26bq1xetq7` (`fournisseur`),
  ADD KEY `FKaewqcosnhuj6840d3byjgff7a` (`niveau_prix`),
  ADD KEY `FKp0mmos4px7p1h3shpo3dyx1k` (`taxe`),
  ADD KEY `FK11vwblph3mb465jh9hve3g2ol` (`taxe_expedition`);

--
-- Index pour la table `boncommandeproduit`
--
ALTER TABLE `boncommandeproduit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK4ho28vq4w70xrldoe6vfo7j6t` (`bon_commande`),
  ADD KEY `FK2pmqxr3sj5jbaqs7uhoqb4utu` (`produit`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_n7gntr2f0s1h9f2xa4b3uawut` (`adresse`),
  ADD KEY `FKoe8m38oer2gog166bi3snvr3f` (`devises`),
  ADD KEY `FKs7r3h2d5a1mf99x04k0w4mhmp` (`entreprise`),
  ADD KEY `FK1ayku4wbk10vbhy2llukgofq9` (`niveau_prix`),
  ADD KEY `FK54scwe180n9755n1sr51guxw6` (`taxe`);

--
-- Index pour la table `client_produit_niveau_prix`
--
ALTER TABLE `client_produit_niveau_prix`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKio2u7bhvha01m5rmdifjt1f7b` (`client`),
  ADD KEY `FK7m1wikkxjtrvijujbcn3q05fo` (`entreprise`),
  ADD KEY `FKehjdhdu3wrfuygbdodva6og7d` (`niveau_prix`),
  ADD KEY `FK26iimp6dgfsho710uys3gi47e` (`produit`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_svdmbne9qyol46qidd798x6en` (`address_expedition`),
  ADD UNIQUE KEY `UK_3qfv7phl79y2d0ch3cpgjfvbs` (`address_facturation`),
  ADD UNIQUE KEY `UK_bpmmuou4mkvq3d7erp9pvdda3` (`facture`),
  ADD KEY `FK4v1k05t5thrjalk8359f7l3e9` (`client`),
  ADD KEY `FKbn9htun9pc0407jiy82t3u1y6` (`devises`),
  ADD KEY `FK7sr2a12wt3utpkak1cudtevxs` (`entreprise`),
  ADD KEY `FKj8o5is68snt0eg17l7i4j63pg` (`niveau_prix`),
  ADD KEY `FKl91txxktbsjorp81hsu7ooamk` (`taxe`),
  ADD KEY `FK664lqdkybkgmbn7p5dw2do8lw` (`taxe_expedition`);

--
-- Index pour la table `commandeproduit`
--
ALTER TABLE `commandeproduit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK991fhnwbqdaib2jv9a4lopysn` (`commande`),
  ADD KEY `FKk3c0iwg9o40h3k8jipk8nlyuu` (`produit`);

--
-- Index pour la table `destinataireemploye`
--
ALTER TABLE `destinataireemploye`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3dsfsmuwp48c6vj7gpo26t9ml` (`alerte`),
  ADD KEY `FKlckh2m6ujmcjhej4kqtwvt9bd` (`employe`);

--
-- Index pour la table `devis`
--
ALTER TABLE `devis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_t4n2178mjojbpurekp10ce1sy` (`paiement`),
  ADD UNIQUE KEY `UK_fl5lbpfon7spd4lr8ubi9hsuj` (`retour_produit`),
  ADD KEY `FKnueatesty6hmol0tuwc98pxkm` (`client`),
  ADD KEY `FK9sn957kv1ue5cstg7t7hjt7n` (`devises`),
  ADD KEY `FKj8agayim9sbmgj7r1tv31kg4q` (`entreprise`),
  ADD KEY `FKjfb7wh52mh2xddabhll8sel2o` (`niveau_prix`),
  ADD KEY `FK4yrnmv5euq5w4lctdmny6d0g7` (`taxe`),
  ADD KEY `FKkxc7b5xs1i21cgfncwosuroqa` (`taxe_expedition`);

--
-- Index pour la table `devises`
--
ALTER TABLE `devises`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpbna068jgf1lw0ivjh5pk6yk5` (`entreprise`),
  ADD KEY `FK91yrwx1rmw2vtx1a7tqvnbsd9` (`nouvelle_devise`);

--
-- Index pour la table `devisproduit`
--
ALTER TABLE `devisproduit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKhhnn1vgd3mi3sux0aum4cxhgc` (`devis`),
  ADD KEY `FKp4oni3medfimlrkj6ds3ys600` (`produit`);

--
-- Index pour la table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_jex8i5slpuu626ea6llb9tx5x` (`adresse`),
  ADD KEY `FKjkf5s6sml07wptjk1cwbb1te0` (`entreprise`);

--
-- Index pour la table `employe_permissions_acces`
--
ALTER TABLE `employe_permissions_acces`
  ADD KEY `FKjdoixnncat2q4rbvw66pnhx5a` (`permissions_acces_id`),
  ADD KEY `FKjf5iysaj6stoow2eoxa8rh9ur` (`employe_id`);

--
-- Index pour la table `entreprise`
--
ALTER TABLE `entreprise`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_fg1hmjr0320bynp5cipoi1wcs` (`adresse`);

--
-- Index pour la table `entreprisedevises`
--
ALTER TABLE `entreprisedevises`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKbp7bwau92pgn5roprfidbncvs` (`devises`),
  ADD KEY `FKlymwrj86w9p346at7mjnwkljn` (`entreprise`);

--
-- Index pour la table `entreprise_employes_adroit_acces`
--
ALTER TABLE `entreprise_employes_adroit_acces`
  ADD KEY `FKayv7rooin9aty8tc6inn0ooy3` (`employes_adroit_acces`),
  ADD KEY `FKegifkcys7kdvuekf5gp6uwqyt` (`entreprise_id`);

--
-- Index pour la table `entreprise_employe_acces`
--
ALTER TABLE `entreprise_employe_acces`
  ADD KEY `FKcw9h5bi7na68bcpkik68ivye8` (`entreprise_id`),
  ADD KEY `FKi0xogorwrlf1x37h79sfg98t1` (`employe_id`);

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_kjxnyxtwx5e1h8dwrr104tqkq` (`address_expedition`),
  ADD UNIQUE KEY `UK_n6f8i7iq9tl6ie6v57nn5n2k1` (`address_facturation`),
  ADD UNIQUE KEY `UK_782cnmnldrr6y0y9o24tohi4u` (`paiement`),
  ADD UNIQUE KEY `UK_tlwh59ra7ifu1f6err3txv4w0` (`retour_produit`),
  ADD KEY `FKn8j0l6u5blg7tuao1x52as0i9` (`client`),
  ADD KEY `FKjwgaagjtnnn0qwam2144dy2n0` (`devises`),
  ADD KEY `FKcwsyq849d5d8umkk1k1puft85` (`entreprise`),
  ADD KEY `FKhyjod6nekmqsdo5xrfhvba45w` (`niveau_prix`),
  ADD KEY `FKoufs7soq6lg2hfykywplwyri8` (`taxe`),
  ADD KEY `FK7j016s0048y9gcaqbq2j8guhn` (`taxe_expedition`);

--
-- Index pour la table `factureproduit`
--
ALTER TABLE `factureproduit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKh2wt71puke6j9rdsq9ps04x49` (`facture`),
  ADD KEY `FKn0hj9vyvgqyl1kxiefth4umu9` (`produit`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_ejjc651lhet7lmjjo0na1j3v4` (`adresse`),
  ADD KEY `FKqi999qcay4l8v6rbfoa08g3gc` (`devises`),
  ADD KEY `FK2epcj054hrnib9yiph2ntvbsk` (`entreprise`),
  ADD KEY `FKs6e1v7fx7xj5ls2u0weo8c17j` (`niveau_prix`),
  ADD KEY `FKscw6pld8jq2oj4mforib9wul1` (`taxe`);

--
-- Index pour la table `livraison`
--
ALTER TABLE `livraison`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKtp2f7xofbc2dbh3hmuqp6ayvr` (`entreprise`),
  ADD KEY `FK7rlfa2ad194wwm0ljw3o4wul4` (`fournisseur`),
  ADD KEY `FKthdgkby7fovri2pslpat2v6qh` (`taxe_expedition`);

--
-- Index pour la table `livraisonproduit`
--
ALTER TABLE `livraisonproduit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK90iswjeoy31m107dqgag38ukq` (`livraison`),
  ADD KEY `FKi16pfkalk76doetjxqb7xrr1d` (`produit`);

--
-- Index pour la table `methodepaiement`
--
ALTER TABLE `methodepaiement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `niveauprix`
--
ALTER TABLE `niveauprix`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `niveaustock`
--
ALTER TABLE `niveaustock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKc0gnh7cvg3q894xdup3qaxadc` (`entreprise`);

--
-- Index pour la table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKdt4j47v4588tm2iahccu25wto` (`employee_id`);

--
-- Index pour la table `nouvelledevise`
--
ALTER TABLE `nouvelledevise`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpw0cfqtdn4c5rfwg8jass1g7u` (`entreprise`);

--
-- Index pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKp81921uh5cw7cchub2yep0ag3` (`entreprise`),
  ADD KEY `FK2dmvaebs9ja1nd2k2jri591pb` (`methode_paiement`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `permissions_acces`
--
ALTER TABLE `permissions_acces`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_1lgwxfg6ux7fawgtdiyhu00na` (`niveau_stock`),
  ADD KEY `FK9ihs7gpud7p0y3p82kn7scbvl` (`devises`),
  ADD KEY `FK7yk924ckmp4179k4uk9v4g1ii` (`entreprise`),
  ADD KEY `FKa04q6cga8xv47c4wivev3qqtl` (`fournisseur`),
  ADD KEY `FKo34xt7vjc0hnhuy850g0206w4` (`taxe`);

--
-- Index pour la table `produitniveauprix`
--
ALTER TABLE `produitniveauprix`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3ohhij2kqnsfk1egcx0t8wbw1` (`niveau_prix`),
  ADD KEY `FKbbxmy2vh3a9oe9jdswwensjss` (`produit`);

--
-- Index pour la table `retourproduit`
--
ALTER TABLE `retourproduit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_c4k0nkv726sedbrcu6yea2241` (`facture`),
  ADD KEY `FK75b4prf6wydv8y7aaqwiy3kfj` (`client`),
  ADD KEY `FK7eew64bic5j2kesjwdtmwn44b` (`entreprise`);

--
-- Index pour la table `retourproduitproduit`
--
ALTER TABLE `retourproduitproduit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKfkqw6f0fhrouw7051p6ph0wj0` (`produit`),
  ADD KEY `FKrgu0c5ndmuewl1nkefn0dape1` (`retour_produit`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`role`,`permission`),
  ADD KEY `FK97jfge82ay9xcc3jp57dm47sb` (`permission`);

--
-- Index pour la table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_tq3cq3gmsss8jjyb2l5sb1o6k` (`user_id`),
  ADD KEY `FK8lkqdq029r91j37wwfkc4k5ci` (`plan_id`);

--
-- Index pour la table `taxe`
--
ALTER TABLE `taxe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_roles`
--
ALTER TABLE `users_roles`
  ADD KEY `FKj6m8fwv7oqv74fcehir1a9ffy` (`role_id`),
  ADD KEY `FKlnlgiial7f8fhu3um3gj3nuw6` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `adresse`
--
ALTER TABLE `adresse`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `alerte`
--
ALTER TABLE `alerte`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `boncommande`
--
ALTER TABLE `boncommande`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `boncommandeproduit`
--
ALTER TABLE `boncommandeproduit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `commandeproduit`
--
ALTER TABLE `commandeproduit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `destinataireemploye`
--
ALTER TABLE `destinataireemploye`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `devis`
--
ALTER TABLE `devis`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `devises`
--
ALTER TABLE `devises`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `devisproduit`
--
ALTER TABLE `devisproduit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `entreprise`
--
ALTER TABLE `entreprise`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `entreprisedevises`
--
ALTER TABLE `entreprisedevises`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `facture`
--
ALTER TABLE `facture`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `factureproduit`
--
ALTER TABLE `factureproduit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `livraison`
--
ALTER TABLE `livraison`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `livraisonproduit`
--
ALTER TABLE `livraisonproduit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `methodepaiement`
--
ALTER TABLE `methodepaiement`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `niveauprix`
--
ALTER TABLE `niveauprix`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `niveaustock`
--
ALTER TABLE `niveaustock`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `nouvelledevise`
--
ALTER TABLE `nouvelledevise`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `paiement`
--
ALTER TABLE `paiement`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `produitniveauprix`
--
ALTER TABLE `produitniveauprix`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `retourproduit`
--
ALTER TABLE `retourproduit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `retourproduitproduit`
--
ALTER TABLE `retourproduitproduit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `taxe`
--
ALTER TABLE `taxe`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `adresse`
--
ALTER TABLE `adresse`
  ADD CONSTRAINT `FK69gs6dv7sq93s1cgl38cd6ed3` FOREIGN KEY (`pays`) REFERENCES `pays` (`id`);

--
-- Contraintes pour la table `boncommande`
--
ALTER TABLE `boncommande`
  ADD CONSTRAINT `FK11vwblph3mb465jh9hve3g2ol` FOREIGN KEY (`taxe_expedition`) REFERENCES `taxe` (`id`),
  ADD CONSTRAINT `FK8rcn1ypu9l2yj2y7geu1bs6n0` FOREIGN KEY (`entreprise`) REFERENCES `entreprise` (`id`),
  ADD CONSTRAINT `FK99cvlki9iqrok3f43tvw1of1v` FOREIGN KEY (`livraison`) REFERENCES `livraison` (`id`),
  ADD CONSTRAINT `FKaewqcosnhuj6840d3byjgff7a` FOREIGN KEY (`niveau_prix`) REFERENCES `niveauprix` (`id`),
  ADD CONSTRAINT `FKdrflf94vp9xt4p7g6s5bn3bsj` FOREIGN KEY (`devises`) REFERENCES `devises` (`id`),
  ADD CONSTRAINT `FKp0mmos4px7p1h3shpo3dyx1k` FOREIGN KEY (`taxe`) REFERENCES `taxe` (`id`),
  ADD CONSTRAINT `FKsio6xkh6rljybps26bq1xetq7` FOREIGN KEY (`fournisseur`) REFERENCES `fournisseur` (`id`);

--
-- Contraintes pour la table `boncommandeproduit`
--
ALTER TABLE `boncommandeproduit`
  ADD CONSTRAINT `FK2pmqxr3sj5jbaqs7uhoqb4utu` FOREIGN KEY (`produit`) REFERENCES `produit` (`id`),
  ADD CONSTRAINT `FK4ho28vq4w70xrldoe6vfo7j6t` FOREIGN KEY (`bon_commande`) REFERENCES `boncommande` (`id`);

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `FK1ayku4wbk10vbhy2llukgofq9` FOREIGN KEY (`niveau_prix`) REFERENCES `niveauprix` (`id`),
  ADD CONSTRAINT `FK1ubj2pn1tjaav0akij1s2uqhr` FOREIGN KEY (`adresse`) REFERENCES `adresse` (`id`),
  ADD CONSTRAINT `FK54scwe180n9755n1sr51guxw6` FOREIGN KEY (`taxe`) REFERENCES `taxe` (`id`),
  ADD CONSTRAINT `FKoe8m38oer2gog166bi3snvr3f` FOREIGN KEY (`devises`) REFERENCES `devises` (`id`),
  ADD CONSTRAINT `FKs7r3h2d5a1mf99x04k0w4mhmp` FOREIGN KEY (`entreprise`) REFERENCES `entreprise` (`id`);

--
-- Contraintes pour la table `client_produit_niveau_prix`
--
ALTER TABLE `client_produit_niveau_prix`
  ADD CONSTRAINT `FK26iimp6dgfsho710uys3gi47e` FOREIGN KEY (`produit`) REFERENCES `produit` (`id`),
  ADD CONSTRAINT `FK7m1wikkxjtrvijujbcn3q05fo` FOREIGN KEY (`entreprise`) REFERENCES `entreprise` (`id`),
  ADD CONSTRAINT `FKehjdhdu3wrfuygbdodva6og7d` FOREIGN KEY (`niveau_prix`) REFERENCES `niveauprix` (`id`),
  ADD CONSTRAINT `FKio2u7bhvha01m5rmdifjt1f7b` FOREIGN KEY (`client`) REFERENCES `client` (`id`);

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK1b9nqbvakh6k9g13kbhi1i96e` FOREIGN KEY (`address_expedition`) REFERENCES `adresse` (`id`),
  ADD CONSTRAINT `FK4v1k05t5thrjalk8359f7l3e9` FOREIGN KEY (`client`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `FK664lqdkybkgmbn7p5dw2do8lw` FOREIGN KEY (`taxe_expedition`) REFERENCES `taxe` (`id`),
  ADD CONSTRAINT `FK7sr2a12wt3utpkak1cudtevxs` FOREIGN KEY (`entreprise`) REFERENCES `entreprise` (`id`),
  ADD CONSTRAINT `FKbn9htun9pc0407jiy82t3u1y6` FOREIGN KEY (`devises`) REFERENCES `devises` (`id`),
  ADD CONSTRAINT `FKcgo9eruxa6cyk12fophd5lq4j` FOREIGN KEY (`address_facturation`) REFERENCES `adresse` (`id`),
  ADD CONSTRAINT `FKj8o5is68snt0eg17l7i4j63pg` FOREIGN KEY (`niveau_prix`) REFERENCES `niveauprix` (`id`),
  ADD CONSTRAINT `FKl702ty1euq6pq34bg59n1g38k` FOREIGN KEY (`facture`) REFERENCES `facture` (`id`),
  ADD CONSTRAINT `FKl91txxktbsjorp81hsu7ooamk` FOREIGN KEY (`taxe`) REFERENCES `taxe` (`id`);

--
-- Contraintes pour la table `commandeproduit`
--
ALTER TABLE `commandeproduit`
  ADD CONSTRAINT `FK991fhnwbqdaib2jv9a4lopysn` FOREIGN KEY (`commande`) REFERENCES `commande` (`id`),
  ADD CONSTRAINT `FKk3c0iwg9o40h3k8jipk8nlyuu` FOREIGN KEY (`produit`) REFERENCES `produit` (`id`);

--
-- Contraintes pour la table `destinataireemploye`
--
ALTER TABLE `destinataireemploye`
  ADD CONSTRAINT `FK3dsfsmuwp48c6vj7gpo26t9ml` FOREIGN KEY (`alerte`) REFERENCES `alerte` (`id`),
  ADD CONSTRAINT `FKlckh2m6ujmcjhej4kqtwvt9bd` FOREIGN KEY (`employe`) REFERENCES `employe` (`id`);

--
-- Contraintes pour la table `devis`
--
ALTER TABLE `devis`
  ADD CONSTRAINT `FK4yrnmv5euq5w4lctdmny6d0g7` FOREIGN KEY (`taxe`) REFERENCES `taxe` (`id`),
  ADD CONSTRAINT `FK7akwhu6d7qv33734bghoo32p6` FOREIGN KEY (`retour_produit`) REFERENCES `retourproduit` (`id`),
  ADD CONSTRAINT `FK9sn957kv1ue5cstg7t7hjt7n` FOREIGN KEY (`devises`) REFERENCES `devises` (`id`),
  ADD CONSTRAINT `FKj8agayim9sbmgj7r1tv31kg4q` FOREIGN KEY (`entreprise`) REFERENCES `entreprise` (`id`),
  ADD CONSTRAINT `FKjfb7wh52mh2xddabhll8sel2o` FOREIGN KEY (`niveau_prix`) REFERENCES `niveauprix` (`id`),
  ADD CONSTRAINT `FKkxc7b5xs1i21cgfncwosuroqa` FOREIGN KEY (`taxe_expedition`) REFERENCES `taxe` (`id`),
  ADD CONSTRAINT `FKnueatesty6hmol0tuwc98pxkm` FOREIGN KEY (`client`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `FKouu6o8xc9vjx7968nme3354l3` FOREIGN KEY (`paiement`) REFERENCES `paiement` (`id`);

--
-- Contraintes pour la table `devises`
--
ALTER TABLE `devises`
  ADD CONSTRAINT `FK91yrwx1rmw2vtx1a7tqvnbsd9` FOREIGN KEY (`nouvelle_devise`) REFERENCES `nouvelledevise` (`id`),
  ADD CONSTRAINT `FKpbna068jgf1lw0ivjh5pk6yk5` FOREIGN KEY (`entreprise`) REFERENCES `entreprise` (`id`);

--
-- Contraintes pour la table `devisproduit`
--
ALTER TABLE `devisproduit`
  ADD CONSTRAINT `FKhhnn1vgd3mi3sux0aum4cxhgc` FOREIGN KEY (`devis`) REFERENCES `devis` (`id`),
  ADD CONSTRAINT `FKp4oni3medfimlrkj6ds3ys600` FOREIGN KEY (`produit`) REFERENCES `produit` (`id`);

--
-- Contraintes pour la table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `FKjkf5s6sml07wptjk1cwbb1te0` FOREIGN KEY (`entreprise`) REFERENCES `entreprise` (`id`),
  ADD CONSTRAINT `FKjxkwou968de2x4vsqdleojho2` FOREIGN KEY (`id`) REFERENCES `app_users` (`id`),
  ADD CONSTRAINT `FKpexcl2kc0ckr5a4u6hktusdrv` FOREIGN KEY (`adresse`) REFERENCES `adresse` (`id`);

--
-- Contraintes pour la table `employe_permissions_acces`
--
ALTER TABLE `employe_permissions_acces`
  ADD CONSTRAINT `FKjdoixnncat2q4rbvw66pnhx5a` FOREIGN KEY (`permissions_acces_id`) REFERENCES `permissions_acces` (`id`),
  ADD CONSTRAINT `FKjf5iysaj6stoow2eoxa8rh9ur` FOREIGN KEY (`employe_id`) REFERENCES `employe` (`id`);

--
-- Contraintes pour la table `entreprise`
--
ALTER TABLE `entreprise`
  ADD CONSTRAINT `FKabphmh621p1u8kirh1esdu56l` FOREIGN KEY (`adresse`) REFERENCES `adresse` (`id`);

--
-- Contraintes pour la table `entreprisedevises`
--
ALTER TABLE `entreprisedevises`
  ADD CONSTRAINT `FKbp7bwau92pgn5roprfidbncvs` FOREIGN KEY (`devises`) REFERENCES `devises` (`id`),
  ADD CONSTRAINT `FKlymwrj86w9p346at7mjnwkljn` FOREIGN KEY (`entreprise`) REFERENCES `entreprise` (`id`);

--
-- Contraintes pour la table `entreprise_employes_adroit_acces`
--
ALTER TABLE `entreprise_employes_adroit_acces`
  ADD CONSTRAINT `FKayv7rooin9aty8tc6inn0ooy3` FOREIGN KEY (`employes_adroit_acces`) REFERENCES `employe` (`id`),
  ADD CONSTRAINT `FKegifkcys7kdvuekf5gp6uwqyt` FOREIGN KEY (`entreprise_id`) REFERENCES `entreprise` (`id`);

--
-- Contraintes pour la table `entreprise_employe_acces`
--
ALTER TABLE `entreprise_employe_acces`
  ADD CONSTRAINT `FKcw9h5bi7na68bcpkik68ivye8` FOREIGN KEY (`entreprise_id`) REFERENCES `entreprise` (`id`),
  ADD CONSTRAINT `FKi0xogorwrlf1x37h79sfg98t1` FOREIGN KEY (`employe_id`) REFERENCES `employe` (`id`);

--
-- Contraintes pour la table `facture`
--
ALTER TABLE `facture`
  ADD CONSTRAINT `FK1u7jt53w7d5dfadt6qsa8dxuf` FOREIGN KEY (`paiement`) REFERENCES `paiement` (`id`),
  ADD CONSTRAINT `FK704goidff5i38x5dodvq2cefx` FOREIGN KEY (`address_expedition`) REFERENCES `adresse` (`id`),
  ADD CONSTRAINT `FK7j016s0048y9gcaqbq2j8guhn` FOREIGN KEY (`taxe_expedition`) REFERENCES `taxe` (`id`),
  ADD CONSTRAINT `FKcwsyq849d5d8umkk1k1puft85` FOREIGN KEY (`entreprise`) REFERENCES `entreprise` (`id`),
  ADD CONSTRAINT `FKf796f6ruup87q9y3g7wmh1gsr` FOREIGN KEY (`retour_produit`) REFERENCES `retourproduit` (`id`),
  ADD CONSTRAINT `FKhyjod6nekmqsdo5xrfhvba45w` FOREIGN KEY (`niveau_prix`) REFERENCES `niveauprix` (`id`),
  ADD CONSTRAINT `FKjwgaagjtnnn0qwam2144dy2n0` FOREIGN KEY (`devises`) REFERENCES `devises` (`id`),
  ADD CONSTRAINT `FKn8j0l6u5blg7tuao1x52as0i9` FOREIGN KEY (`client`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `FKoufs7soq6lg2hfykywplwyri8` FOREIGN KEY (`taxe`) REFERENCES `taxe` (`id`),
  ADD CONSTRAINT `FKr6yybldftvhhwia2fm0x9qs0n` FOREIGN KEY (`address_facturation`) REFERENCES `adresse` (`id`);

--
-- Contraintes pour la table `factureproduit`
--
ALTER TABLE `factureproduit`
  ADD CONSTRAINT `FKh2wt71puke6j9rdsq9ps04x49` FOREIGN KEY (`facture`) REFERENCES `facture` (`id`),
  ADD CONSTRAINT `FKn0hj9vyvgqyl1kxiefth4umu9` FOREIGN KEY (`produit`) REFERENCES `produit` (`id`);

--
-- Contraintes pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD CONSTRAINT `FK2epcj054hrnib9yiph2ntvbsk` FOREIGN KEY (`entreprise`) REFERENCES `entreprise` (`id`),
  ADD CONSTRAINT `FKqi999qcay4l8v6rbfoa08g3gc` FOREIGN KEY (`devises`) REFERENCES `devises` (`id`),
  ADD CONSTRAINT `FKr6a6bdxhip4i9ps8ygicrpguc` FOREIGN KEY (`adresse`) REFERENCES `adresse` (`id`),
  ADD CONSTRAINT `FKs6e1v7fx7xj5ls2u0weo8c17j` FOREIGN KEY (`niveau_prix`) REFERENCES `niveauprix` (`id`),
  ADD CONSTRAINT `FKscw6pld8jq2oj4mforib9wul1` FOREIGN KEY (`taxe`) REFERENCES `taxe` (`id`);

--
-- Contraintes pour la table `livraison`
--
ALTER TABLE `livraison`
  ADD CONSTRAINT `FK7rlfa2ad194wwm0ljw3o4wul4` FOREIGN KEY (`fournisseur`) REFERENCES `fournisseur` (`id`),
  ADD CONSTRAINT `FKthdgkby7fovri2pslpat2v6qh` FOREIGN KEY (`taxe_expedition`) REFERENCES `taxe` (`id`),
  ADD CONSTRAINT `FKtp2f7xofbc2dbh3hmuqp6ayvr` FOREIGN KEY (`entreprise`) REFERENCES `entreprise` (`id`);

--
-- Contraintes pour la table `livraisonproduit`
--
ALTER TABLE `livraisonproduit`
  ADD CONSTRAINT `FK90iswjeoy31m107dqgag38ukq` FOREIGN KEY (`livraison`) REFERENCES `livraison` (`id`),
  ADD CONSTRAINT `FKi16pfkalk76doetjxqb7xrr1d` FOREIGN KEY (`produit`) REFERENCES `produit` (`id`);

--
-- Contraintes pour la table `niveaustock`
--
ALTER TABLE `niveaustock`
  ADD CONSTRAINT `FKc0gnh7cvg3q894xdup3qaxadc` FOREIGN KEY (`entreprise`) REFERENCES `entreprise` (`id`);

--
-- Contraintes pour la table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `FKdt4j47v4588tm2iahccu25wto` FOREIGN KEY (`employee_id`) REFERENCES `employe` (`id`);

--
-- Contraintes pour la table `nouvelledevise`
--
ALTER TABLE `nouvelledevise`
  ADD CONSTRAINT `FKpw0cfqtdn4c5rfwg8jass1g7u` FOREIGN KEY (`entreprise`) REFERENCES `entreprise` (`id`);

--
-- Contraintes pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD CONSTRAINT `FK2dmvaebs9ja1nd2k2jri591pb` FOREIGN KEY (`methode_paiement`) REFERENCES `methodepaiement` (`id`),
  ADD CONSTRAINT `FKp81921uh5cw7cchub2yep0ag3` FOREIGN KEY (`entreprise`) REFERENCES `entreprise` (`id`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `FK7yk924ckmp4179k4uk9v4g1ii` FOREIGN KEY (`entreprise`) REFERENCES `entreprise` (`id`),
  ADD CONSTRAINT `FK9ihs7gpud7p0y3p82kn7scbvl` FOREIGN KEY (`devises`) REFERENCES `devises` (`id`),
  ADD CONSTRAINT `FKa04q6cga8xv47c4wivev3qqtl` FOREIGN KEY (`fournisseur`) REFERENCES `fournisseur` (`id`),
  ADD CONSTRAINT `FKg98jo7myi76t25iiwh4ct8r97` FOREIGN KEY (`niveau_stock`) REFERENCES `niveaustock` (`id`),
  ADD CONSTRAINT `FKo34xt7vjc0hnhuy850g0206w4` FOREIGN KEY (`taxe`) REFERENCES `taxe` (`id`);

--
-- Contraintes pour la table `produitniveauprix`
--
ALTER TABLE `produitniveauprix`
  ADD CONSTRAINT `FK3ohhij2kqnsfk1egcx0t8wbw1` FOREIGN KEY (`niveau_prix`) REFERENCES `niveauprix` (`id`),
  ADD CONSTRAINT `FKbbxmy2vh3a9oe9jdswwensjss` FOREIGN KEY (`produit`) REFERENCES `produit` (`id`);

--
-- Contraintes pour la table `retourproduit`
--
ALTER TABLE `retourproduit`
  ADD CONSTRAINT `FK75b4prf6wydv8y7aaqwiy3kfj` FOREIGN KEY (`client`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `FK7eew64bic5j2kesjwdtmwn44b` FOREIGN KEY (`entreprise`) REFERENCES `entreprise` (`id`),
  ADD CONSTRAINT `FKdh5idske0gyov7gg8ag4et5ft` FOREIGN KEY (`facture`) REFERENCES `facture` (`id`);

--
-- Contraintes pour la table `retourproduitproduit`
--
ALTER TABLE `retourproduitproduit`
  ADD CONSTRAINT `FKfkqw6f0fhrouw7051p6ph0wj0` FOREIGN KEY (`produit`) REFERENCES `produit` (`id`),
  ADD CONSTRAINT `FKrgu0c5ndmuewl1nkefn0dape1` FOREIGN KEY (`retour_produit`) REFERENCES `retourproduit` (`id`);

--
-- Contraintes pour la table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD CONSTRAINT `FK1y4cvrf8cyq0ok6eaw9k60rwu` FOREIGN KEY (`role`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `FK97jfge82ay9xcc3jp57dm47sb` FOREIGN KEY (`permission`) REFERENCES `permissions` (`id`);

--
-- Contraintes pour la table `subscription`
--
ALTER TABLE `subscription`
  ADD CONSTRAINT `FK82og7q41v9h7d9r3nqdagluii` FOREIGN KEY (`user_id`) REFERENCES `app_users` (`id`),
  ADD CONSTRAINT `FK8lkqdq029r91j37wwfkc4k5ci` FOREIGN KEY (`plan_id`) REFERENCES `plan` (`id`);

--
-- Contraintes pour la table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FKj6m8fwv7oqv74fcehir1a9ffy` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `FKlnlgiial7f8fhu3um3gj3nuw6` FOREIGN KEY (`user_id`) REFERENCES `app_users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
