-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 23 avr. 2021 à 15:13
-- Version du serveur :  10.5.6-MariaDB-1:10.5.6+maria~stretch
-- Version de PHP : 7.3.19-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `RDVMedicaux`
--

-- --------------------------------------------------------

--
-- Structure de la table `authentification`
--

CREATE TABLE `authentification` (
  `token` varchar(500) NOT NULL,
  `idPatient` int(11) DEFAULT NULL,
  `ipAppareil` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `authentification`
--

INSERT INTO `authentification` (`token`, `idPatient`, `ipAppareil`) VALUES
('42b229a8c049c56bb5dc13ae206cfbb7815ad9ec5ef4366691972994c07e', 17, '172.18.204.5'),
('c6e4e67c8d211bd09f1a534089ee3b514d64a9a5004b8b719843bcbd59fa', 16, '172.18.204.6'),
('e4897b728b381cf8713f562fb10622fb91d50300a91b94eefc08a47efce4', 15, '192.168.100.254');

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE `patient` (
  `idPatient` int(11) NOT NULL,
  `nomPatient` varchar(100) DEFAULT NULL,
  `prenomPatient` varchar(100) DEFAULT NULL,
  `ruePatient` varchar(200) DEFAULT NULL,
  `cpPatient` varchar(5) DEFAULT NULL,
  `villePatient` varchar(100) DEFAULT NULL,
  `telPatient` varchar(10) DEFAULT NULL,
  `loginPatient` varchar(500) DEFAULT NULL,
  `motDePassePatient` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `patient`
--

INSERT INTO `patient` (`idPatient`, `nomPatient`, `prenomPatient`, `ruePatient`, `cpPatient`, `villePatient`, `telPatient`, `loginPatient`, `motDePassePatient`) VALUES
(15, 'hittin', 'yann', '15 rue Louis Simon', '54150', 'Briey', '0505050505', 'yhittin', '$2y$10$JUhnSIcNgA0aZHOhE5eox.K9xCO.fB1FDzcpdnMR.doo42TW/2pVO'),
(16, 'Burgon', 'Dylan', '13 rue des tanneries', '88300', 'Neufchateau', '0643655971', 'bubu', '$2y$10$pc1OEIXv6tgHEg2dghQ6FuZnEa8ICQNaxeEba.aUKS72Xl3DvpS5W'),
(17, 'lolo', 'lolo', 'rue des lolo', 'lolo', 'lolo', '0781874879', 'lolo', '$2y$10$SbHrCa56O7cPfNW4FE7YhuNz1rKUJarXhKPPG.8sITQy/nmZVQRVi');

-- --------------------------------------------------------

--
-- Structure de la table `rdv`
--

CREATE TABLE `rdv` (
  `idRdv` int(11) NOT NULL,
  `dateHeureRdv` datetime DEFAULT NULL,
  `idPatient` int(10) DEFAULT NULL,
  `idMedecin` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `rdv`
--

INSERT INTO `rdv` (`idRdv`, `dateHeureRdv`, `idPatient`, `idMedecin`) VALUES
(47, '2021-04-04 16:22:00', 17, 'f83c9d4559d00183bfa10ee86909a180a1f05d9a'),
(48, '2021-04-02 18:19:00', 17, 'f83c9d4559d00183bfa10ee86909a180a1f05d9a'),
(49, '2021-07-16 19:20:00', 17, 'f83c9d4559d00183bfa10ee86909a180a1f05d9a'),
(59, '2021-04-14 19:45:00', 16, '5ff8a93f2767b12ce8464dc20fc3b231acbf88a6'),
(61, '2021-06-30 16:49:00', 17, '75b5de8c054aae5daa204a44e1fd946e9af720f4'),
(64, '2021-04-23 18:50:00', 16, '6da92af04876b2dd388525071e80b729f2bd133a'),
(65, '2021-04-21 20:51:00', 16, 'b49b4948c1b6bc3b591e44db5c2f62ee05d6e1f2'),
(66, '2021-04-15 19:52:00', 16, 'b49b4948c1b6bc3b591e44db5c2f62ee05d6e1f2'),
(67, '2021-06-23 20:52:00', 16, '10d2cf11e89240e2a61f9951c2370eb26d8cc02c'),
(68, '2021-04-10 10:10:00', 16, 'b49b4948c1b6bc3b591e44db5c2f62ee05d6e1f2'),
(69, '2021-04-10 14:52:00', 16, 'bbe793e7dd6e7e41b9321438471c697b9c3d72cd'),
(70, '2022-02-15 06:30:00', 16, '5859c091492eb7e5aaa920c57a0016e2ca37c450'),
(71, '2021-04-03 17:52:00', 16, '5ff8a93f2767b12ce8464dc20fc3b231acbf88a6'),
(74, '2021-04-11 16:00:00', 16, 'f5b3e1b6efb2bf95d002f3a86b9d315838d35cb0'),
(75, '2021-04-03 18:57:00', 17, '5ff8a93f2767b12ce8464dc20fc3b231acbf88a6'),
(76, '2021-05-13 20:26:00', 16, '5ff8a93f2767b12ce8464dc20fc3b231acbf88a6'),
(82, '2021-04-25 20:06:00', 15, 'b49b4948c1b6bc3b591e44db5c2f62ee05d6e1f2');

--
-- Déclencheurs `rdv`
--
DELIMITER $$
CREATE TRIGGER `rdvDate_insert` BEFORE INSERT ON `rdv` FOR EACH ROW BEGIN
	DECLARE dateDujour varchar(500) DEFAULT "";
	SELECT NOW() INTO dateDujour;
	IF (NEW.dateHeureRdv < dateDujour) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Impossible d''ajouter le rendez-vous : date saisie supérieur à la date actuelle';
	END IF;
END
$$
DELIMITER ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `authentification`
--
ALTER TABLE `authentification`
  ADD PRIMARY KEY (`token`),
  ADD KEY `idPatient` (`idPatient`);

--
-- Index pour la table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`idPatient`);

--
-- Index pour la table `rdv`
--
ALTER TABLE `rdv`
  ADD PRIMARY KEY (`idRdv`),
  ADD KEY `idPatient` (`idPatient`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `patient`
--
ALTER TABLE `patient`
  MODIFY `idPatient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `rdv`
--
ALTER TABLE `rdv`
  MODIFY `idRdv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `authentification`
--
ALTER TABLE `authentification`
  ADD CONSTRAINT `authentification_ibfk_1` FOREIGN KEY (`idPatient`) REFERENCES `patient` (`idPatient`);

--
-- Contraintes pour la table `rdv`
--
ALTER TABLE `rdv`
  ADD CONSTRAINT `rdv_ibfk_1` FOREIGN KEY (`idPatient`) REFERENCES `patient` (`idPatient`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
