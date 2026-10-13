-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 24 déc. 2025 à 02:58
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
-- Base de données : `mamacook`
--

-- --------------------------------------------------------

--
-- Structure de la table `recettes`
--

CREATE TABLE `recettes` (
  `id` int(11) NOT NULL,
  `titre` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `recettes`
--

INSERT INTO `recettes` (`id`, `titre`, `description`, `image`) VALUES
(1, 'Thiebou Dieune', 'Description : Riz au poisson et légumes, plat national emblématique du Sénégal.\r\nIngrédients🧾:\r\n ✅ Riz\r\n ✅poisson\r\n ✅tomate concentrée\r\n ✅carotte\r\n ✅chou\r\n ✅manioc\r\n ✅aubergine\r\n ✅huile\r\n ✅condiments \r\nPlat simple à base de riz,poisson et des legumes.', 'thieboudieune.jpeg'),
(2, 'Thiebou yapp', 'Description: Riz à la viande (bœuf ou mouton) richement assaisonné et coloré.\r\nIngrédients🧾: \r\n✅Riz\r\n✅viande\r\n✅oignons\r\n✅ail\r\n✅huile\r\n✅poivre\r\n✅légumes (optionnel)\r\nPlat simple à base de riz,viande.', 'thiebouyapp.jpeg'),
(3, 'Domoda Dieune', 'Description : Ragoût de poisson à la sauce tomate onctueuse et citronnée.\r\nIngrédients🧾: \r\n✅Poisson \r\n✅tomate concentrée \r\n✅farine \r\n✅oignons\r\n✅citron \r\n✅légumes\r\n✅riz. \r\nPlat simple à base de riz blanc,poisson,farigne.', 'domoda.jpeg'),
(4, 'Yassa Guinar', 'Description : Poulet mariné aux oignons, citron et olives, servi avec du riz blanc.\r\nIngrédients🧾: \r\n✅Poulet \r\n✅beaucoup d’oignons\r\n✅citrons\r\n✅moutarde\r\n✅olives\r\n✅ail,piment, riz \r\nPlat simple à base de riz blanc,poulet,oignon.', 'yassa.jpeg'),
(5, 'Thiere Tamkharite', 'Description :Couscous de mil à la viande préparé traditionnellement pour le nouvel an.\r\nIngrédients🧾: \r\n✅Couscous de mil(thiéré)\r\n✅viande\r\n✅haricots blancs\r\n✅raisins secs\r\n✅légumes\r\n✅sauce tomate\r\nPlat simple à base de couscous au mil,viande et d\'autres ingredeint', 'thiere.jpeg'),
(6, 'Lakhou Sow', 'Description: Bouillie de mil épaisse servie avec du lait caillé sucré.\r\nIngrédients🧾: \r\n✅Farine de mil (granulés)\r\n✅lait caillé \r\n✅sucre\r\n✅fleur d’oranger ou vanille.\r\nPlat simple à base de bouillie de mil,lait caillet.', 'lakh.jpeg'),
(7, 'Thiagry', 'Description: Dessert crémeux à base de granulés de mil et de yaourt sucré.\r\nIngrédients🧾:\r\n✅Granulés de mil cuits à la vapeur\r\n✅lait caillé ou yaourt\r\n✅sucre\r\n✅lait concentré\r\n✅muscade.\r\nPlat simple à base de millet epais,lait caillet.', 'thiagry.jpeg'),
(8, 'Fonde', 'Description: Bouillie légère de fines boules de mil, consommée au petit-déjeuner ou soir.\r\nIngrédients🧾:\r\n✅Petites perles de mil\r\n✅sucre\r\n✅lait(souvent servi avec du lait caillé). \r\nPlat simple à base de bouillie de mil.', 'fonde.jpeg'),
(9, 'Mafe Yapp', 'Description: Sauce onctueuse à la pâte d\'arachide et viande, servie avec du riz.\r\n✅Ingrédients🧾: \r\n✅Viande\r\n✅pâte d\'arachide \r\n✅tomate concentrée \r\n✅oignons \r\n✅carottes,pommes de terre\r\n✅riz\r\nPlat simple à base de riz blanc,pate d\'arachide,viande.', 'mafe.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(2, 'test@mamacook.com', '$2y$10$Vir4zHegCGTPQRwz7L5XIOx8kndkpTDi6jFFxt5SgwkhyJiGNX0fW');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `recettes`
--
ALTER TABLE `recettes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `recettes`
--
ALTER TABLE `recettes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
