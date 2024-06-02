-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : dim. 02 juin 2024 à 00:30
-- Version du serveur : 8.0.30
-- Version de PHP : 8.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pokedex`
--

-- --------------------------------------------------------

--
-- Structure de la table `pokemon`
--

CREATE TABLE `pokemon` (
  `id_pok` bigint UNSIGNED NOT NULL,
  `nom_pok` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pokemon`
--

INSERT INTO `pokemon` (`id_pok`, `nom_pok`, `image`) VALUES
(1, 'Bulbizarre', '001'),
(2, 'Herbizarre', '002'),
(3, 'Florizarre', '003'),
(4, 'Salameche', '004'),
(5, 'Reptincel', '005'),
(6, 'Dracaufeu', '006'),
(7, 'Carapuce', '007'),
(8, 'Carabaffe', '008'),
(9, 'Tortank', '009'),
(10, 'Chenipan', '010'),
(11, 'Chrysacier', '011'),
(12, 'Papilusion', '012'),
(13, 'Aspicot', '013'),
(14, 'Coconfort', '014'),
(15, 'Dardargnan', '015'),
(16, 'Roucool', '016'),
(17, 'Roucoups', '017'),
(18, 'Roucarnage', '018'),
(19, 'Rattata', '019'),
(20, 'Rattatac', '020'),
(21, 'Piafabec', '021'),
(22, 'Rapasdepic', '022'),
(23, 'Abo', '023'),
(24, 'Arbok', '024'),
(25, 'Pikachu', '025'),
(26, 'Raichu', '026'),
(27, 'Sabelette', '027'),
(28, 'Sablaireau', '028'),
(29, 'NidoranF', '029'),
(30, 'Nidorina', '030'),
(31, 'Nidoqueen', '031'),
(32, 'NidoranM', '032'),
(33, 'Nidorino', '033'),
(34, 'Nidoking', '034'),
(35, 'Melofee', '035'),
(36, 'Melodelfe', '036'),
(37, 'Goupix', '037'),
(38, 'Feunard', '038'),
(39, 'Rondoudou', '039'),
(40, 'Grodoudou', '040'),
(41, 'Nosferapti', '041'),
(42, 'Nosferalto', '042'),
(43, 'Mystherbe', '043'),
(44, 'Ortide', '044'),
(45, 'Rafflesia', '045'),
(46, 'Paras', '046'),
(47, 'Parasect', '047'),
(48, 'Mimitoss', '048'),
(49, 'Aeromite', '049'),
(50, 'Taupiqueur', '050'),
(51, 'Triopikeur', '051'),
(52, 'Miaouss', '052'),
(53, 'Persian', '053'),
(54, 'Psykokwak', '054'),
(55, 'Akwakwak', '055'),
(56, 'Ferosinge', '056'),
(57, 'Colossinge', '057'),
(58, 'Caninos', '058'),
(59, 'Arcanin', '059'),
(60, 'Ptitard', '060'),
(61, 'Tetarte', '061'),
(62, 'Tartard', '062'),
(63, 'Abra', '063'),
(64, 'Kadabra', '064'),
(65, 'Alakazam', '065'),
(66, 'Machoc', '066'),
(67, 'Machopeur', '067'),
(68, 'Mackogneur', '068'),
(69, 'Chetiflor', '069'),
(70, 'Boustiflor', '070'),
(71, 'Empiflor', '071'),
(72, 'Tentacool', '072'),
(73, 'Tentacruel', '073'),
(74, 'Racaillou', '074'),
(75, 'Gravalanch', '075'),
(76, 'Grolem', '076'),
(77, 'Ponyta', '077'),
(78, 'Galopa', '078'),
(79, 'Ramoloss', '079'),
(80, 'Flagadoss', '080'),
(81, 'Magneti', '081'),
(82, 'Magneton', '082'),
(83, 'Canarticho', '083'),
(84, 'Doduo', '084'),
(85, 'Dodrio', '085'),
(86, 'Otaria', '086'),
(87, 'Lamantine', '087'),
(88, 'Tadmorv', '088'),
(89, 'Grotadmorv', '089'),
(90, 'Kokiyas', '090'),
(91, 'Crustabri', '091'),
(92, 'Fantominus', '092'),
(93, 'Spectrum', '093'),
(94, 'Ectoplasma', '094'),
(95, 'Onix', '095'),
(96, 'Soporifik', '096'),
(97, 'Hypnomade', '097'),
(98, 'Krabby', '098'),
(99, 'Krabboss', '099'),
(100, 'Voltorbe', '100'),
(101, 'Electrode', '101'),
(102, 'Noeunoeuf', '102'),
(103, 'Noadkoko', '103'),
(104, 'Osselait', '104'),
(105, 'Ossatueur', '105'),
(106, 'Kicklee', '106'),
(107, 'Tygnon', '107'),
(108, 'Excelangue', '108'),
(109, 'Smogo', '109'),
(110, 'Smogogo', '110'),
(111, 'Rhinocorne', '111'),
(112, 'Rhinoferos', '112'),
(113, 'Leveinard', '113'),
(114, 'Saquedeneu', '114'),
(115, 'Kangourex', '115'),
(116, 'Hypotrempe', '116'),
(117, 'Hypocean', '117'),
(118, 'Poissirene', '118'),
(119, 'Poissoroy', '119'),
(120, 'Stari', '120'),
(121, 'Staross', '121'),
(122, 'M. Mime', '122'),
(123, 'Insecateur', '123'),
(124, 'Lippoutou', '124'),
(125, 'Elektek', '125'),
(126, 'Magmar', '126'),
(127, 'Scarabrute', '127'),
(128, 'Tauros', '128'),
(129, 'Magicarpe', '129'),
(130, 'Leviator', '130'),
(131, 'Lokhlass', '131'),
(132, 'Metamorph', '132'),
(133, 'Evoli', '133'),
(134, 'Aquali', '134'),
(135, 'Voltali', '135'),
(136, 'Pyroli', '136'),
(137, 'Porygon', '137'),
(138, 'Amonita', '138'),
(139, 'Amonistar', '139'),
(140, 'Kabuto', '140'),
(141, 'Kabutops', '141'),
(142, 'Ptera', '142'),
(143, 'Ronflex', '143'),
(144, 'Artikodin', '144'),
(145, 'Electhor', '145'),
(146, 'Sulfura', '146'),
(147, 'Minidraco', '147'),
(148, 'Draco', '148'),
(149, 'Dracolosse', '149'),
(150, 'Mewtwo', '150'),
(151, 'Mew', '151');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id_pok`),
  ADD UNIQUE KEY `id_pok` (`id_pok`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id_pok` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
