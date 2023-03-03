-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 25 jan. 2023 à 16:41
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gymfitworkout`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--



-- --------------------------------------------------------

--
-- Structure de la table `exercises`
--

CREATE TABLE `exercises` (
  `id` INT UNSIGNED NULL,
  `nom` varchar(171) COLLATE utf8_unicode_ci NOT NULL,
  `partie` varchar(171) COLLATE utf8_unicode_ci NOT NULL,
  `cible` text COLLATE utf8_unicode_ci NOT NULL,
  `equipement` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `exercises`
--

INSERT INTO `exercises` (`id`, `nom`, `partie`, `cible`, `equipement`, `description`, `created_at`, `updated_at`) VALUES
(1, 'curls en supination', 'bras', 'biceps,deltoïdes', 'haltère,barre', 'Saisissez l\'haltère d\'une main, alors que celle-ci se trouve en position neutre. En effectuant une ortation du poignet pour amener le pouce vers l\'extérieur, pliez le bras à la force du biceps.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(2, 'hammer curl', 'bras', 'biceps,avant-bras', 'haltère', 'Saisissez l\'haltère d\'une main, alors que celle-ci se trouve en position neutre (pouce vers le haut, c\'est à dire en prise marteau, d\'ou le nom de l\'exercie). Pliez le bras en gardant toujours le pouce vers le haut. Montez l\'haltère le plus haut possible.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(3, 'stretch curls', 'bras', 'biceps', 'élastique', 'Debout, le pied droit en arrière, marchez sur l\'élastique afin de le tendre à votre convenance pour lui donner la résistance appropriée. Saisissez-le avec votre main droite. A la force du biceps, ramenez l\'avant-bras sur le bras en conservant la main en supination (auriculaire vers le corps).', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(4, 'curls sur banc incliné', 'bras', 'biceps,avant-bras', 'haltère', 'Haltères en mains, allongez-vous sur un banc incliné le plus horizontal possible. A la force du biceps, ramenez l\'avant-bras sur le bras. Ne levez que légèrement le coude avant de redescendre.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(5, 'curls au pupitre \"Larry Scott\"', 'bras', 'biceps,avant-bras', 'haltère,barre', 'Assis, saississez une barre ou les haltères, main en supination (pouces à l\'extérieur). Placez les bras sur le pupitre. Remontez la charge à la force du biceps.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(6, 'brachial curls sur poulie basse', 'bras', 'biceps', 'poulie', 'Allongez-vous latéralement, côté droit sur un tapis de sol dans le prolongement de la poulie, tête vers la machine. Tendez le bras droit vers la poulie, puis fléchissez le bras pour amener la main à la base du cou. Puis retourner lentement dans la position initiale.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(7, 'biceps, bras en croix, à la poulie haute', 'bras', 'biceps', 'poulie', 'Debout au centre de la poulie vis-à-vis, bras écartés, poignées de la poulie haute saisies mains en supination: \n- inspirer et fléchir les avant-bras; \n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(8, 'power biceps curl à la poulie basse', 'bras', 'biceps', 'poulie', 'La poulie est derrière vous, la poignée réglée légèrement en hauteur afin que le levier formée avec la main soit agréable, sans avoir à donner d\'à-coup. Bloquez votre coude sur l\'appui dorsal de la machine ou un banc. Penchez -vous en avant pour rammaser la poignée et remettez-vous en place. En prennant appui sur le coude, à la force du poids 1 seconde dans la position de contraction avant de redescendre, puis répétez.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(9, 'extension des poignets à la barre', 'avant-bras', 'avant-bras', 'barre', 'Assis, les avants-bras reposant sur les cuisses ou sur un banc, la barre tenue mains en pronation, les poignets en flexion passive: \n- effectuer une extension des poignets.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(10, 'flexion des poignets à la barre', 'avant-bras', 'avant-bras', 'barre', 'Assis, les avants-bras reposant sur les cuisses ou sur un banc, la barre tenue mains en supination( c\'est à dire les pouces vers l\'extérieur), les poignets en flexion passive: \n- inspirer et fléchir les poignets.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(11, 'flexion des avant-bras à la barre, mains en pronation', 'avant-bras', 'avant-bras,biceps', 'barre', 'Debout, jambes légèrement écartées, bras tendus, maisn en pronation (c\'est-à-dire pouces vers l\'intérieur): \n- inspirer et fléchir les avnts-bras, expirer en fin de mouvement; \n- revenir à la position de départ en contrôant la descente de la barre.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(12, 'triceps à la barre haute, mains en pronation', 'bras', 'triceps', 'poulie', 'Debout, face à l\'appareil, les mains sur la poignée coudes le long du corps: \n- inspirer et effectuer une extension des avant-bras en veillant à ne pas écarter les coudes du corps ;\n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(13, 'triceps à la poulie haute, mains en supination', 'bras', 'triceps,avant-bras', 'poulie', 'Debout, face à l\'appareil, les bras le long du corps, les coudes fléchis, les mains sur les poignées:\r\n- inspirer et étendre les avant-bras en veillant à ne pas écarter les coudes du corps ;\r\n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(14, 'extension alternée des avant-bras à la poulie haute, main en supination', 'bras', 'triceps', 'poulie', 'Debout, face à l\'appareil, la poignée saisie en supination : \n- inspirer et effectuer une extension de l\'avant-bras; \n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(15, 'triceps à la poulie arrière atlas', 'bras', 'triceps', 'poulie', 'Assis sur la machine, dos à la poulie, la poignée saisie mains en pronation, les bras un peu plus haut que l\'horizontale, les coudes fléchis : \n- inspirer et effectuer une extension des avant-bras en veillant à ne pas trop écarter les coudes ; \n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(16, 'extension des avant-bras à la barre, couché sur un banc', 'bras', 'triceps', 'barre', 'Allongé sur un banc horizontal, la barre prise en pronation, les bras verticaux : \n- inspirer et effectuer une flexion des avant-bras, en veillant à ne pas trop écarter les coudes, pour descendre la barre au niveau du front ou derrière la tête; \n- revenir à la position de départ et expirer en fin d\'effort.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(17, 'tension des avant-bras, couché avec haltères', 'bras', 'triceps', 'haltère', 'Allongé sur un plan horizontal avec un haltère dans chaque main, bras verticaux: \n- inspirer et fléchir les avant-bras en contrôlant le mouvement; \n- revenir à la position de départ et expirer en fin d\'effort.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(18, 'extension vertical alternée des bras avec haltères', 'bras', 'triceps', 'haltère', 'Assis ou debout, l\'haltère saisi d\'une main, départ bras vertical : \n- inspirer et effectuer une flexion de l\'avant-bras pour amener l\'haltère derrière la nuque ; \n- revenir à la position de départ et expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(19, 'extension alternée des avant-bras avec un haltère, buste penché en avant', 'bras', 'triceps', 'haltère', 'Debout, les jambes légèrement fléchies, le buste penché en avant en conservant le dos droit. Le bras à l\'horizontale, le long du corps, coude fléchi:\n- inspirer et effectuer une extension de l\'avant-bras ;\n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(20, 'extension des avant-bras, assis, un haltère court tenu à deux mains', 'bras', 'triceps', 'haltère', 'Assis, l\'haltère saisi à deux mains derrière la nuque : \n- inspirer et effectuer une extension des avant-bras ; \n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(21, 'extension des avant-bras, assis à la barre', 'bras', 'triceps', 'haltère', 'Assis ou debout, barre tenue les mains en pronation, bras verticaux:\r\n- inspirer et effectuer une flexion des avant-bras pour amener la barre derrière la nuque ;\r\n- revenir à la position de départ et expirer en fin d\'extension.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(22, 'dips ou repulsion entre deux bancs', 'bras', 'triceps,pectauraux', 'poid du corps', 'les mains sur le bord d\'un banc, les pieds reposant sur un autre banc, le corps dans le vide:\r\n- inspirer et effectuer une flexion des avant-bras suivie d\'une répulsion ou extension des avant-bras;\r\n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(23, 'développé derrière de la nuque à la barre', 'épaules', 'deltoïdes,triceps', 'barre', 'Assis, le dos bien droit, la barre tenue derrière la nuque, saisie mains en pronation :\r\n- inspirer et développer la barre verticalement sans trop cambrer le dos ;\r\n- expirer en fin d\'effort.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(24, 'développé \"devant\" à la barre', 'épaules', 'deltoïdes,triceps', 'barre', 'Assis, dos bien droit, la barre tenue mains en pronation, reposant sur le haut de la poitrine:\r\n-inspirer et développer la barre verticalement ;\r\n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(25, 'développé assis avec haltères', 'épaules', 'deltoïdes,triceps', 'haltère', 'Assis sur un banc, le dos bien droit, les haltères au niveau des épaules, tenus mains en pronation (pouces vers l\'intérieur):\n- inspirer et développer jusqu\'à tendre les bras verticalement;\n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(26, 'développé \"devant\" avec rotation des poignets', 'épaules', 'deltoïdes,triceps', 'haltère', 'Assis sur un banc, le dos bien droit, les bras fléchis, les coudes vers l\'avant, les haltères saisis mains en supination (c\'est-à-dire les pouces vers l\'extérieur) et maintenus au niveau des épaules: \n- inspirer et développer jusqu\'à tendre les bras verticalement en effectuant une rotation des poignets de 90° pour amener les mains en pronation (c\'est-à-dire les pouces vers l\'intérieur) ; \n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(27, 'élévation latérale, buste penchée en avant', 'épaules', 'deltoïdes,trapèze haut,trapèze bas', 'haltère', 'Debout, les jambes écartées et légèrement fléchies, le buste penché en avant en conservant le dos plat, les bras pendants, haltères en mains, coudes légèrement fléchis : \n- inspirer et élever les bras jusqu\'à l\'horizontale ; \n- expirer en fin d\'effort.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(28, 'élévation latérale des bras avec haltères', 'épaules', 'deltoïdes,trapèze haut', 'haltère', 'Debout, jambes légèrement écartées, le dos bien droit, les bras le long du corps, un haltère dans chaque main : \n- élever les bras jusqu\'à l\'horizontale, coudes un peu fléchis ; \n- revenir à la position de départ', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(29, 'élévation alternée \"en avant\" ou frontal avec haltères', 'épaules', 'deltoïdes', 'haltère', 'Debout, les pieds légèrement écartés, les haltères pris en pronation reposant sur les cuisses ou légèrement sur les côtés : \n- inspirer et effectuer une élévation alternée des bras en avant (ou antépulsion) jusqu\'au niveau des yeux ; \n- expirer en fin d\'effort.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(30, 'élévation latérale, couché sur le côté', 'épaules', 'deltoïdes', 'haltère', 'Allongé sur le côté, au sol ou sur un banc, un haltère en main pris en pronation: \n- inspirer et élever le bras jusqu\'à la verticale ; jusqu\'à une intensité maximale en fin de mouvement (quand les bras arrivent à l\'horizontale); \n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(31, 'élévation \"en avant\" alternée à la poulie basse', 'épaules', 'deltoïdes', 'poulie', 'Debout, les pieds légèrement écartés, les bras le long du corps, la poignée en main, prise en pronation: \n- inspirer et élever en avant le bras jusqu\'au niveau des yeux; \n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(32, 'élévation \"en vant\" à la poulie basse, main en supination', 'épaules', 'deltoïdes', 'poulie', 'Debout, les pieds légèrement écartés, les bras le long du corps, la poignée saisie main en semi-pronation (cet exercice se réalise avec une poignée spécialement adaptée à la prise en semi-pronation) : \n- inspirer et élever le bras en avant, jusqu\'au niveau des yeux, expirer en fin de montée ; \n- revenir lentement en position de départ et recommencer.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(33, 'arrière des épaules aux poulies côte à côte', 'épaules', 'deltoïdes,trapèze bas', 'poulie', 'Debout face aux poulies, les bras tendus en avant, la poignée droite saisie avec la main gauche et la poignée gauche saisie avec la main droite : \n- inspirer et écarter les bras, expirer en fin de mouvement ; \n- revenir à la position de départ en contrôlant le mouvement et recommencer.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(34, 'rotation externe du bras à la poulie', 'épaules', 'deltoïdes,trapèze bas', 'poulie', 'La poulie descendue au niveau de la taille, le corps de profil par rapport à l\'appareil, la poignée en main, le bras le long du corps, le coude fléchi, l\'avant-bras contre le ventre : \n- effectuer une rotation externe du bras, en essayant si possible de maintenir le bras contre le corps et le coude fléchi.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(35, 'élévation latérale à la poulie basse, buste penché en avant', 'épaules', 'deltoïdes,trapèze bas', 'poulie', 'Debout, les pieds écartés, jambes légèrement fléchies, le buste penché en avant en conservant le dos plat, les bras pendants, une poignée dans chaque main, les câbles se croisant : \n- inspirer et élever les bras jusqu\'à l\'horizontale ; \n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(36, 'élévation latérale alternée à la poulie basse', 'épaules', 'deltoïdes', 'poulie', 'La poignée en main, le bras le long du corps :\r\n- inspirer et élever le bras jusqu\'à l\'horizontale ;\r\n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(37, 'élévation \"en avant ou frontale\" avec un haltère', 'épaules', 'deltoïdes,trapèze haut', 'haltère', 'Debout, jambes légèrement écartées, dos bien droit, les abdominaux contractés, un haltère reposant sur les cuisses, tenu les mains croisées sur la poignée, paumes face à face, les bras tendus: \n- inspirer et élever l\'haltère jusqu\'au niveau des yeux; \n- redescendre doucement en évitant toute secousse ; \n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(38, 'élévation \"en avant ou frontale\" à la barre', 'épaules', 'deltoïdes,trapèze haut', 'barre', 'Debout, jambes légèrement écartées, la barre reposant sur les cuisses, saisie mains en pronation, le dos bien droit, les abdominaux contractés : \n- inspirer et élever la barre, bras tendus, jusqu\'au niveau des yeux; \n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(39, 'tirage vertical à la barre, mains écartées', 'épaules', 'deltoïdes,trapèze haut,abdominaux', 'barre', 'Debout, jambes légèrement écartées, le dos bien droit, la barre saisie en pronation reposant sur les cuisses, les mains un peu plus écartées que la largeur des épaules: \n- inspirer et tirer la barre le long du corps jusqu\'au menton en montant les coudes le plus haut possible ; \n- contrôler la descente de la barre en évitant toute secousse ; \n- expirer en fin d\'effort.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(40, 'élévation latérale à la machine', 'épaules', 'deltoïdes', 'machine assisté', 'Assis sur la machine, les poignées en main : \n- inspirer et élever les coudes jusqu\'à l\'horizontale; \n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(41, 'arrière des épaules à la machine', 'épaules', 'deltoïdes', 'machine assisté', 'Assis face à la machine, le buste appuyé sur le dossier, les bras tendus en avant, les poignées en main : \n- inspirer, écarter les bras et resserrer les omoplates en fin de mouvement ; \n- expirer.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(42, 'développé-incliné', 'pectoraux', 'pectauraux,deltoïdes,triceps', 'barre', 'Assis sur un banc incliné entre 45° et 60° , saisir la barre, mains en pronation, avec un écartement supérieur à celui des épaules: \n- inspirer et descendre la barre sur la fourchette sternale ; \n- développer, en expirant à la fin du mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(43, 'développé-couché ou \"bench press\"', 'pectoraux', 'pectauraux,deltoïdes,triceps', 'barre', 'Allongé sur un banc horizontal, les fessiers en contact avec le banc, les pieds au sol: \n- saisir la barre, mains en pronation en prenant un écartement supérieur à la largeur des épaules; \n- inspirer et descendre la barre en contrôlant le mouvement jusqu\'à la poitrine; \n- développer en expirant en fin d\'effort.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(44, 'développé-couché, mains resserrées', 'pectoraux', 'pectauraux,deltoïdes,triceps', 'barre', 'Allongé sur un banc horizontal, les fessiers en contact avec le banc, les pieds au sol, saisir la barre mains en pronation avec un écartement variable de 10 à 40 cm selon la souplesse des poignets: \n- inspirer et descendre la barre sur la poitrine, les coudes écartés, en contrôlant le mouvement ; \n- développer, expirer en fin d\'effort.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(45, 'développé-décliné', 'pectoraux', 'pectauraux,deltoïdes,triceps', 'barre', 'Allongé, tête en bas, sur un banc plus ou moins incliné (entre 20° et 40°), pieds fixés, saisir la barre, mains en pronation, avec un écartement égal ou supérieur à la largeur des épaules : \n- inspirer et descendre la barre sur le bas des pectoraux en contrôlant le mouvement; \n- développer en expirant en fin d\'effort.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(46, 'développé-couché à la machine convergente', 'pectoraux', 'pectauraux,triceps', 'machine assisté', 'Allongé sur la machine, les fessiers en contact avec le banc, les pieds au sol, les poignées en mains: \n- inspirer et développer; \n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(47, '\"dips\" ou répulsions aux barres parallèles', 'pectoraux', 'pectauraux,triceps,deltoïdes', 'machine assisté', 'En appui sur les barres parallèles, les bras tendus, les jambes dans le vide: \n- inspirer et fléchir complètement les avant-bras pour amener la poitrine au niveau des barres; \n- effectuer la répulsion, expirer en fin d\'effort.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(48, 'pompes', 'pectoraux', 'pectauraux,triceps', 'poid du corps', 'En appui face au sol, les bras tendus, mains écartées de la largeur des épaules (ou plus), les pieds serrés ou très légèrement écartés: \n- inspirer et fléchir les bras pour amener la cage thoracique près du sol en évitant de creuser excessivement la région lombaires; \n- pousser jusqu\'à l\'extension complète des bras ; \n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(49, 'développé-couché avec haltères', 'pectoraux', 'pectauraux,deltoïdes,triceps', 'haltère', 'Allongé sur un banc horizontal, les pieds au sol pour assurer la stabilité, coudes fléchis, mains en pronation en tenant les haltères au niveau de la poitrine : \n- inspirer et tendre les bras verticalement en effectuant une rotation des avant-bras pour ramener les mains face à face ; \n- lorsqu\'elles se retrouvent face à face, il est possible d\'effectuer une contraction isométrique pour localiser l\'effort sur la partie sternale des grands pectoraux ; \n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(50, 'écarté-couché avec haltères', 'pectoraux', 'pectauraux', 'haltère', 'Allongé sur un banc étroit pour ne pas gêner les mouvements des épaules, les haltères en mains, bras tendus ou coudes légèrement fléchis pour soulager l\'articulation : \n- inspirer, puis écarter les bras jusqu\'à l\'horizontale ; \n- relever les bras jusqu\'à la verticale en expirant; \n- provoquer une petite contraction isométrique en fin de mouvement pour accentuer le travail sur la partie sternale des pectoraux.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(51, 'développé-incliné avec haltères', 'pectoraux', 'pectauraux,triceps,deltoïdes', 'haltère', 'Assis sur un banc plus ou moins incliné (pas plus de 60° pour ne pas trop reporter le travail sur les deltoïdes), coudes fléchis, haltères saisis mains en pronation :\r\n- inspirer et tendre les bras verticalement en rapprochant les haltères ;\r\n- expirer en fin de mouvement', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(52, 'écarté-incliné avec haltères', 'pectoraux', 'pectauraux,deltoïdes', 'haltère', 'Assis sur un banc incliné entre 45° et 60°, haltères en mains, bras tendus verticalement ou légèrement fléchis pour soulager l\'articulation du coude:\r\n- inspirer puis écarter les bras jusqu\'à l\'horizontale ;\r\n- relever les bras jusqu\'à la verticale en expirant.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(53, 'écarté à la machine', 'pectoraux', 'pectauraux', 'machine assisté', 'Assis sur la machine, bras écartés en position horizontale, coudes fléchis reposant sur le point d\'application de la force, avant-bras et poignets relâchés: \n- inspirer et resserrer les bras au maximum ; \n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(54, 'écarté debout à la poulie vis-à-vis', 'pectoraux', 'pectauraux', 'poulie', 'Debout, jambes légèrement écartées, le buste un peu incliné, bras écartés, poignées en mains, coudes légèrement fléchis : \n- inspirer et resserrer les bras pour amener les poignées en contact; \n- expirer en fin de contraction; \n- revenir sans à-coups à la position de départ et recommencer.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(55, '\"pull-over\" avec haltères', 'pectoraux', 'pectauraux', 'poulie', 'Allongé sur un banc, pieds au sol, un haltère pris à deux mains, bras tendus, les disques reposant sur les paumes, pouces et index enserrant la poignée : \n- inspirer et descendre l\'haltère derrière la tête en fléchissant légèrement les coudes ; \n- expirer en revenant à la position de départ', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(56, '\"pull-over\" à la barre, couché sur un banc horizontal', 'pectoraux', 'pectauraux,grand dorsal', 'barre', 'Bras tendus, la barre prise en pronation, mains écartées de la largeur des épaules : \n- inspirer en gonflant la poitrine au maximum et descendre la barre derrière la tête en fléchissant légèrement les coudes ; \n- expirer en revenant à la position de départ.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(57, 'traction à la barre fixe', 'dos', 'grand dorsal,biceps,trapèze bas', 'barre de traction', 'En suspension, à la barre fixe, mains très écartées en pronation: \n- inspirer et effectuer une traction pour amener la poitrine presque au niveau de la barre ; \n- expirer en fin de mouvement ; \n- revenir à la position de départ en contrôlant la descente et recommencer.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(58, 'traction à la barre fixe, mains en supination', 'dos', 'grand dorsal,trapèze bas', 'barre de traction', 'En suspension à la barre fixe, mains en supination écartées d\'une largeur d\'épaules; \n- inspirer et effectuer, en sortant la poitrine, une traction pour amener le menton à la hauteur de la barre; \n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(59, 'tirage-poitrine à la poulie haute', 'dos', 'grand dorsal,trapèze bas,deltoïdes', 'poulie', 'Assis face à l\'appareil, les jambes calées, la barre prise en pronation, mains très écartées : \n- inspirer et tirer la barre jusqu\'à la fourchette sternale en sortant la poitrine et en ramenant les coudes vers l\'arrière ; \n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(60, 'tirage à la poulie basse prise serrée, mains en semi-pronation', 'dos', 'grand dorsal,trapèze bas,trapèze haut,deltoïdes,lombaires', 'poulie', 'Assis, face à l\'appareil, les pieds sur les cales, buste fléchi: \n- inspirer et ramener la poignée à la base du sternum, en redressant le dos et en timnt les coudes en arrière le plus loin possible ; \n- expirer en fin de mouvement et revenir sans à-coups à la position de départ.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(61, 'tirage à la poulie basse avec une barre large, mains en pronation', 'dos', 'grand dorsal,trapèze bas,trapèze haut,deltoïdes,lombaires', 'poulie', 'Assis, face à l\'appareil, les pieds sur les cales, buste fléchi, la barre saisie les mains en pronations (pouces vers l\'intérieur) plus écartées que la largeur des épaules : \n- inspirer et tirer la barre vers la poitrine en redressant le dos et en maintenant les coudes levés ; \n- expirer en fin de mouvement et revenir sans à-coups à la position de départ.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(62, 'tirage-nuque à la poulie haute', 'dos', 'grand dorsal,trapèze bas,biceps', 'poulie', 'Assis face à l\'appareil, les cuisses calées sous les boudins, la barre prise en pronation, mains très écartées:\r\n- inspirer et tirer la barre jusqu\'à la nuque en ramenant les coudes le long du corps;\r\n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(63, 'tirage-poitrine à la poulie haute avec une poignée à ses prises rapprochées', 'dos', 'grand dorsal,biceps', 'poulie', 'Assis, face à l\'appareil, les genoux bloqués:\r\n- inspirer et ramener la poignée jusqu\'au sternum en gonflant la poitrine et en inclinant légèrement le buste en arrière;\r\n- expirer en fin de mouvement', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(64, 'tirage bras tendus à la poulie haute', 'dos', 'grand dorsal,triceps', 'poulie', 'Debout, face à l\'appareil, pieds légèrement écartés, barre saisie en pronation bras tendus, mains distantes d\'une largeur d\'épaules:\n- le dos fixé et la sangle abdominale contractée, inspirer et amener la barre jusqu\'aux cuisses en conservant les bras tendus (ou les coudes très légèrement fléchis);\n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(65, 'tirage horizontal avec un haltère', 'dos', 'grand dorsal,biceps,deltoïdes,trapèze haut', 'haltère', 'L\'haltère en main, pris en semi-pronation, la main et le genou opposés en appui sur le banc :\r\n- le dos fixé, inspirer et tirer l\'haltère le plus haut possible, le bras le long du corps, en ramenant le coude bien en arrière ;\r\n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(66, 'tirage horizontal avec haltères', 'dos', 'grand dorsal,biceps,deltoïdes,trapèze haut,trapèze bas,avant-bras,lombaires', 'haltère', 'Debout, les genoux légèrement fléchis, le buste incliné plus ou moins à 45°, le dos bien plat, les bras relâchés le long du corps, un haltère dans chaque main, saisis mains en semi-pronation :\r\n- inspirer, effectuer un blocage respiratoire et une contraction isométrique de la sangle abdominale, tirer les haltères le plus haut possible en gardant les coudes le plus proches du corps et resserrer les omoplates en fin de mouvement ;\r\n- revenir à la position de départ et expirer', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(67, 'tirage horizontal à la barre', 'dos', 'grand dorsal,biceps,deltoïdes,trapèze haut,trapèze bas,lombaires,abdominaux', 'barre', 'Debout, les genoux légèrement fléchis, le buste incliné à 45°, dos bien plat, la barre saisie en pronation, mains plus écartées que la largeur des épaules et bras pendants:\r\n- inspirer, effectuer un blocage respiratoire et une contraction isométrique de la sangle abdominale, tirer la barre jusqu\'à la poitrine ;\r\n- reprendre la position de départ et expirer.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(68, 'tirage à la barre en T, sans appui ventral', 'dos', 'grand dorsal,biceps,deltoïdes,trapèze haut,trapèze bas,lombaires,abdominaux', 'barre', 'Genoux légèrement fléchis, la barre passant entre les jambes, les poignées saisies mains en pronation, le dos bien plat, le buste incliné à 45°: \n- inspirer et ramener la barre jusqu\'à la poitrine; \n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(69, 'tirage à la barre en T avec appui ventral', 'dos', 'grand dorsal,biceps,deltoïdes,trapèze haut,trapèze bas', 'machine assisté', 'En appui ventral sur le banc incliné :\r\n- inspirer et ramener la barre prise en pronation jusqu\'à la poitrine ;\r\n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(70, 'soulevé de terre, jambes tendues', 'dos', 'fessiers,ischio-jambiers,lombaires', 'barre', 'Debout, pieds légèrement écartés, face à la barre posée au sol :\n- inspirer, pencher le buste en avant, en gardant le dos cambré et, si possible, en conservant les jambes tendues ;\n- saisir la barre, mains en pronation, bras relâchés, et redresser le buste jusqu\'à la verticale, le dos toujours fixé, la bascule s\'effectuant au niveau des hanches ; expirer en fin de mouvement;\n- revenir à la position de départ, sans toutefois reposer la barre, et recommencer.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(71, 'soulevé de terre', 'dos', 'grand dorsal,trapèze haut,trapèze bas,quadriceps,adducteurs,ischio-jambiers,abdominaux,fessiers,mollets,lombaires', 'barre', 'Debout, face à la barre, jambes écartées, pieds vers l\'extérieur, toujours dans l\'axe des genoux : \n-fléchir les jambes pour amener les cuisses à l\'horizontale ; saisir la barre, bras tendus, mains en pronation, à peu près écartées de la largeur des épaules (en inversant la prise d\'une main - soit une main en supination et l\'autre en pronation, on empêche la barre de rouler, ce qui permet de maintenir des charges extrêmement lourdes) ; \n- inspirer, bloquer la respiration, creuser légèrement le dos, contracter la sangle abdominale et tendre les jambes en redressant le buste pour se retrouver en position verticale, les épaules tirées en arrière ; expirer en fin de mouvement; \n- reposer la barre au sol en bloquant la respiration, sans jamais arrondir le dos.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(72, 'soulevé de terre à la trap barre', 'dos', 'grand dorsal,trapèze haut,trapèze bas,quadriceps,adducteurs,ischio-jambiers,abdominaux,fessiers,mollets,lombaires', 'trap barre', 'Debout, bien centré dans la barre (attention : un mauvais centrage entraînera une instabilité latérale), jambes légèrement écartées, le dos bien fixé et un peu cambré : \n-fléchir les jambes pour amener les cuisses à peu près à l\'horizontale; \n- bras tendus, saisir les poignées de la barre en veillant à bien centrer la prise des mains; \n- inspirer, bloquer la respiration, contracter la sangle abdominale et la région lombaires et soulever la barre en tendant les jambes, sans jamais arrondir le bas du dos, expirer en fin d\'effort ; \n-maintenir l\'extension du corps deux secondes, puis reposer la barre en maintenant la sangle abdominale et la région lombaires contractées.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(73, 'extension du buste au banc', 'dos', 'quadriceps,ischio-jambiers,lombaires', 'machine assisté', 'Installé sur le banc, les chevilles bloquées, l\'axe de flexion passant par l\'articulation coxo-fémorale, le pubis en dehors du banc: \n- buste fléchi, effectuer une extension jusqu\'à l\'horizontale en relevant la tête ; \n- puis réaliser une hyperextension.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(74, 'extension du buste à la machine', 'dos', 'lombaires', 'machine assisté', 'Assis sur le siège de l\'appareil, le buste basculé en avant, le boudin de la machine placé au niveau des omoplates (ou scapulas): \n- inspirer et redresser le buste au maximum ; \n- revenir lentement en expirant à la position de départ et recommencer', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(75, 'tirage vertical à la barre, mains serrées', 'dos', 'trapèze haut,trapèze bas,deltoïdes,lombaires', 'barre', 'Debout, jambes légèrement écartées, dos bien droit, la barre saisie mains en pronation, celles-ci écartées d\'une largeur de paume ou un peu plus:\r\n- inspirer et tirer la barre le long du corps jusqu\'au menton en montant les coudes le plus haut possible;\r\n- expirer et contrôler la descente de la barre en évitant toute secousse.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(76, 'haussement d\'épaules à la barre', 'dos', 'trapèze haut', 'barre', 'Debout, jambes légèrement écartées, face à la barre posée à même le sol ou sur un support: \n- la saisir mains en pronation ou en prise inversée si la charge est importante, avec un écartement un peu supérieur à la largeur des épaules; \n- les bras relâchés, le dos bien droit, les abdominaux contractés, effectuer des haussements d\'épaules.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(77, 'haussement et rotation des épaules avec haltères', 'dos', 'trapèze haut', 'haltère', 'Debout, jambes légèrement écartées, tête bien droite ou un peu penchée en avant, bras relâchés le long du corps un haltère dans chaque main: hausser les épaules en leur faisant effectuer une rotation antéro-postérieure, puis revenir à la position initiale.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(78, 'haussement d\'épaules à la trap barre', 'dos', 'trapèze haut', 'trap barre', 'Debout, jambes légèrement écartées, face à la barre posée au sol ou sur un support : \n- saisir la barre en veillant à bien centrer la prise en mains (attention : avec des charges importantes sur une trap barre, une prise en mains mal ajustée fera basculer la barre vers l\'avant ou l\'arrière) ; \n-la tête bien droite ou légèrement en avant, les bras relâchés, le dos bien droit, les abdominaux contractés, effectuer des haussements d\'épaules.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(79, 'haussement d\'épaules au cadre-guidé ou à la machine', 'dos', 'trapèze haut', 'machine assisté', 'Debout, face à l\'appareil, saisir la barre en pronation, mains un peu plus écartées que la largeur des épaules ou, si la machine le permet, en semi-pronation, paumes face à face: \n- tête et dos bien droits, effectuer des haussements d\'épaules', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(80, 'flexion des cuisses avec haltères', 'jambes', 'lombaires,quadriceps,ischio-jambiers,fessier,abdominaux', 'haltère', 'Debout, pieds légèrement écartés, un haltère dans chaque main, les bras relâchés:\n- regarder droit devant soi, inspirer, cambrer légèrement le dos et effectuer une flexion des cuisses;\n- quand les fémurs arrivent à l\'horizontale, réaliser une extension des jambes pour revenir à la position initiale;\n- expirer en fin d\'effort.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(81, 'flexion des cuisses avec un haltère tenu entre les jambes', 'jambes', 'lombaires,quadriceps,ischio-jambiers,fessiers,abdominaux,trapèze haut', 'haltère', 'Debout, les jambes écartées, les pieds dirigés vers l\'extérieur, un haltère maintenu entre les jambes : \n- regarder droit devant soi, cambrer légèrement le dos, inspirer, bloquer la respiration et effectuer une flexion des cuisses;\n- quand les fémurs arrivent à l\'horizontale, réaliser une extension des jambes pour revenir à la position initiale ;\n- expirer en fin de mouvement', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(82, 'squat barre devant', 'jambes', 'lombaires,quadriceps,ischio-jambiers,fessiers,abdominaux,adducteurs', 'barre', 'Debout, pieds plus ou moins écartés de la largeur des épaules, la barre saisie mains en pronation, reposant sur le haut des muscles pectoraux et sur les faisceaux antérieurs du deltoïde: \n- inspirer fortement pour maintenir une pression intra-thoracique qui empêchera le buste de s\'affaisser vers l\'avant, cambrer légèrement le dos, contracter la sangle abdominale et fléchir les cuisses pour les amener à l\'horizontale; \n- revenir à la position initiale ; expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(83, 'squat', 'jambes', 'lombaires,quadriceps,ischio-jambiers,fessiers,abdominaux,adducteurs', 'barre', 'La barre posée sur le support, se glisser dessous et la placer sur les trapèzes un peu plus haut que les deltoïdes postérieurs ; saisir la barre à pleines mains avec un écartement variable selon les morphologies et tirer les coudes en arrière ; \n- inspirer fortement (pour maintenir une pression intra-thoracique qui empêchera le buste de s\'affaisser vers l\'avant), cambrer légèrement le dos, regarder droit devant soi et décoller la barre du support ; \n- reculer d\'un ou deux pas, s\'arrêter pieds parallèles (ou les pointes un peu vers l\'extérieur), plus ou moins écartés de la largeur des épaules, s\'accroupir en inclinant le dos vers l\'avant, en contrôlant la descente et sans jamais arrondir la colonne vertébrale;\n- quand les fémurs arrivent à l\'horizontale, effectuer une extension des jambes en redressant le buste pour se retrouver dans la position de départ; \n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(84, 'squat jambes écartées', 'jambes', 'quadriceps,ischio-jambiers,lombaires,adducteurs,abducteurs,abdominaux,fessiers', 'barre', 'Ce mouvement s\'effectue de la même façon que le squat classique, mais les jambes sont largement écartées et les pointes des pieds tournées vers l\'extérieur.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(85, 'presse à cuisses inclinée', 'jambes', 'ischio-jambiers,quadriceps,adducteurs,lombaires', 'machine assisté', 'Installé sur l\'appareil, le dos bien calé sur le dossier, les pieds moyennement écartés:\r\n- inspirer, débloquer la sécurité et fléchir les genoux au maximum de façon à ramener les cuisses sur les côtés de la cage thoracique ;\r\n- revenir en position de départ en expirant en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(86, 'presse incliné ou \"hack squat\"', 'jambes', 'quadriceps,lombaires,fessiers,abdominaux,ischio-jambiers', 'presse à cuisse', 'Les jambes tendues, le dos contre le dossier, les épaules calées sous les boudins (hack signifie \"attelage\", les boudins rappelant le collier que l\'on passe aux animaux de trait), les pieds moyennement écartés: \n- inspirer, débloquer la sécurité et effectuer une flexion des jambes ; \n- revenir à la position de départ, expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(87, 'box squat', 'jambes', 'lombaires,quadriceps,ischio-jambiers,fessiers,abdominaux', 'barre', 'Cette technique consiste à réaliser un squat en s\'asseyant sur un banc pendant une ou deux secondes et en remontant.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(88, 'extension des jambes à la machine', 'jambes', 'quadriceps', 'machine assisté', 'Assis sur la machine, les mains agrippées aux poignées ou au siège pour maintenir le buste immobile, les genoux fléchis, les chevilles placées sous les boudins: \n- inspirer et effectuer une extension des jambes jusqu\'à l\'horizontale; \n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(89, 'ischio-jambiers, couhé à la machine, ou \"leg curl\"', 'jambes', 'ischio-jambiers,mollets', 'machine assisté', 'Allongé à plat ventre sur la machine, mains sur les poignées, jambes tendues, chevilles engagées sous les boudins : \n- inspirer et effectuer une flexion simultanée des jambes, en essayant de toucher les fesses avec les talons ; expirer en fin d\'effort; \n- revenir à la position de départ en contrôlant le mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(90, 'ischio-jambiers, debout alternés à la machine', 'jambes', 'ischio-jambiers,mollets', 'machine assisté', 'Debout, le buste reposant sur le support, le genou calé, la jambe en extension, la cheville placée sous le boudin:\r\n- inspirer et fléchir le genou ;\r\n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(91, 'ichio-jambiers, assis à la machine', 'jambes', 'ischio-jambiers,mollets', 'machine assisté', 'Assise à la machine, jambes tendues, chevilles placées sur le boudin, cuisses calées, mains sur les poignées: \n- inspirer et effectuer une flexion des jambes ; \n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(92, 'flexion du buste en avant ou \"good morning\"', 'jambes', 'ischio-jambiers,fessiers,lombaires', 'barre', 'Debout, pieds légèrement écartés, la barre reposant sur les trapèzes ou un peu plus bas sur les deltoïdes postérieurs: \n- inspirer et fléchir le buste en avant jusqu\'à l\'horizontale en gardant le dos bien droit, l\'axe de flexion passant par l\'articulation coxo-fémorale ; \n- retrouver la position de départ et expirer.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(93, 'adducteurs à la poulie basse', 'jambes', 'adducteurs', 'poulie', 'Debout sur une jambe, l\'autre reliée à la sangle, la main opposée en appui sur le cadre de la machine ou sur un support quelconque : \n- ramener la jambe en croisant par-devant celle qui est en appui.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(94, 'adducteurs à la machine', 'jambes', 'adducteurs', 'machine assisté', 'Assis sur la machine, jambes écartées :\r\n- resserrer les cuisses ;\r\n- revenir à la position de départ en contrôlant le mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(95, 'flexion et extension des pieds', 'jambes', 'mollets', 'poid du corps,barre', 'Debout, l\'avant des pieds engagé sur une marche, une main en appui sur le mur ou sur la rampe pour plus de stabilité:\r\n- effectuer lentement une flexion des pieds pour bien étirer les mollets:\r\n- puis enchaîner sur une extension des pieds (flexion plantaire) en maintenant l\'articulation des genoux en extension, ou légèrement fléchie', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(96, 'extension des pieds à la machine', 'jambes', 'mollets', 'machine assisté,presse à cuisse', 'Debout, le dos bien droit, les épaules sous les parties rembourrées de l\'appareil, l\'avant des pieds engagé sur la cale, les chevilles en flexion passive: \n- effectuer une extension des pieds (flexion plantaire) en maintenant toujours l\'articulation des genoux en extension.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(97, 'extension d\'un pied avec haltère', 'jambes', 'mollets', 'haltère', 'Debout sur une jambe, l\'avant-pied engagé sur une cale, une main tenant un haltère, l\'autre agrippée à un support pour un meilleur équilibre : \n- effectuer une extension du pied (flexion plantaire) en maintenant l\'articulation du genou en extension ou très légèrement fléchie ; \n- revenir à la position initiale.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(98, 'mollets à la machine, poid reposant sur le bassin', 'jambes', 'mollets', 'machine assisté', 'Les pieds sur la cale en flexion passive, jambes tendues, buste incliné, avant-bras reposant sur le support antérieur, la partie rembourrée de la machine reposant sur le bassin :\n- effectuer une extension des pieds ou flexion plantaire.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(99, 'extension des pieds, assis à la machine, ou presse à soléaires', 'jambes', 'mollets', 'machine assisté', 'Assis sur l\'appareil, le bas des cuisses engagé sous la partie rembourrée, l\'avant des pieds sur le socle, les chevilles en flexion passive: effectuer une extension des pieds (flexion plantaire).', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(100, 'soléaires à la barre', 'jambes', 'mollets', 'barre', 'Assis sur un banc, une cale placée sous l\'avant des pieds, la barre posée sur le bas des cuisses: \n- effectuer une extension des pieds (flexion plantaire).', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(101, 'fente avant', 'fessiers', 'fessiers,quadriceps', 'barre', 'Debout, jambes légèrement écartées, la barre derrière la nuque reposant sur les muscles trapèzes: \n- inspirer et effectuer un grand pas en avant en gardant le tronc le plus droit possible ; lors de la fente, la cuisse déplacée vers l\'avant doit se stabiliser à l\'horizontale ou légèrement en dessous ; \n- revenir en position initiale et expirer.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(102, 'fente avant avec haltères', 'fessiers', 'fessiers,quadriceps', 'haltère', 'Debout, jambes légèrement écartées, un haltère dans chaque main: \n- inspirer et effectuer un grand pas en gardant le buste le plus droit possible ; \n- lorsque la cuisse portée en avant arrive à l\'horizontale ou légèrement en dessous, effectuer une extension tonique de celle-ci pour revenir à la position initiale ; \n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(103, 'extension de la hanche à la poulie basse', 'fessiers', 'fessiers,ischio-jambiers', 'poulie', 'Debout face à l\'appareil, les mains sur la poignée, le bassin incliné en avant, une jambe en appui, l\'autre reliée à la poulie basse:\r\n- effectuer une extension de la hanche.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(104, 'extension de la hanche à la machine', 'fessiers', 'fessiers,ischio-jambiers', 'machine assisté', 'Le buste un peu incliné vers l\'avant, les mains sur les poignées, une jambe en appui, l\'autre ramenée légèrement en avant, le boudin placé sous l\'articulation du genou à mi-distance de la cheville: \n- inspirer et ramener la cuisse en arrière pour porter la hanche en hyperextension ; \n- maintenir la contraction en isométrie pendant deux secondes, et revenir à la position de départ; expirer en fin d\'extension.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(105, 'extension de la hanche au sol', 'fessiers', 'fessiers,ischio-jambiers', 'poid du corps', 'Agenouillé sur une jambe, l\'autre ramenée sous la poitrine, en appui sur les coudes ou sur les mains, bras tendus : \n- ramener la jambe fléchie sous la poitrine en arrière, jusqu\'à effectuer une extension complète de la hanche.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(106, 'relevé de bassin au sol', 'fessiers', 'fessiers,ischio-jambiers', 'poid du corps', 'Allongé sur le dos, les mains à plat sur le sol, les bras Je long du corps, les genoux fléchis:\r\n- inspirer et décoller les fesses du sol en poussant à fond sur les pieds;\r\n- maintenir la position deux secondes et redescendre Je bassin sans toutefois poser les fesses au sol;\r\n- expirer et recommencer.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(107, 'abduction de la hanche, debout à la poulie basse', 'fessiers', 'abducteurs', 'poulie', 'Debout, une jambe en appui, l\'autre reliée à la poulie basse, la main opposée en appui pour stabiliser le corps :\r\n- élever latéralement la jambe le plus haut possible.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(108, 'abduction de la hanche, debout à la machine', 'fessiers', 'abducteurs', 'machine assisté', 'Debout sur la machine, une jambe en appui, le boudin placé sur la face externe de l\'autre jambe au-dessous de l\'articulation du genou: \n- élever latéralement la jambe le plus haut possible et revenir lentement à la position de départ.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(109, 'abduction de la hanche au sol', 'fessiers', 'abducteurs', 'poid du corps', 'Couché sur le côté, la tête maintenue : \n- effectuer une élévation latérale de la jambe, Je genou devant être toujours tendu et l\'abduction ne devant pas dépasser les 70°.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(110, 'abducteurs, assis à la machine', 'fessiers', 'abducteurs', 'machine assisté', 'Assis sur la machine : \n- écarter les cuisses au maximum.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(111, 'crunch', 'abdominaux', 'abdominaux', 'poid du corps', 'Allongé sur le dos, les mains derrière la tête, les cuisses à la verticale, les genoux fléchis:\r\n- inspirer et décoller les épaules du sol en rapprochant les genoux de la tête par un enroulement du rachis ;\r\n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(112, 'relevé du buste au sol', 'abdominaux', 'abdominaux', 'poid du corps', 'Couché sur le dos, les genoux fléchis, les pieds au sol, les mains derrière la tête :\r\n- inspirer et relever le buste en arrondissant le dos ;\r\n- expirer en fin de mouvement ;\r\n- revenir à la position initiale, mais cette fois-ci sans reposer le buste ;', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(113, 'relevé du buste à l\'espalier', 'abdominaux', 'abdominaux', 'poid du corps', 'Les pieds calés dans l\'espalier, les cuisses à la verticale, le buste au sol, les mains\r\nderrière la tête :\r\n- inspirer et remonter le buste le plus haut possible en arrondissant la colonne vertébrale ;\r\n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(114, 'décollements des épaules avec enroulement vertébral ou \"crunch\", jambes en appui sur un banc', 'abdominaux', 'abdominaux', 'poid du corps', 'Les jambes posées sur un banc, le buste au sol, mains derrière la tête: \n- inspirer et décoller les épaules en enroulant le dos pour essayer de toucher les genoux avec la tête ; \n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(115, 'relevé du buste au banc incliné', 'abdominaux', 'abdominaux', 'poid du corps', 'Assis sur le banc, les pieds calés sous les boudins, les mains derrière la nuque, inspirer et\r\nincliner le buste sans jamais dépasser 20°:\r\n- remonter en arrondissant légèrement le dos pour mieux localiser sur le droit de l\'abdomen ;\r\n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(116, 'relevé du buste en suspension au banc', 'abdominaux', 'abdominaux', 'poid du corps', 'Les pieds calés sous les boudins, le buste dans le vide, les mains derrière la tête : \n- inspirer et relever le buste pour essayer de toucher les genoux avec la tête, en veillant à toujours enrouler la colonne vertébrale; \n- expirer en fin de contraction.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(117, 'enroulement vertébral ou \"crunch\" à la poulie haute', 'abdominaux', 'abdominaux', 'poulie', 'À genoux, la barre derrière la nuque : \n- inspirer et enrouler le rachis pour rapprocher le sternum du pubis; \n- expirer pendant l\'exécution.', '2022-10-25 14:35:15', '2022-10-25 14:35:15');
INSERT INTO `exercises` (`id`, `nom`, `partie`, `cible`, `equipement`, `description`, `created_at`, `updated_at`) VALUES
(118, 'abdominaux ou \"crunch\" à la machine', 'abdominaux', 'abdominaux,quadriceps', 'machine assisté', 'Assis sur la machine, les mains tenant les poignées, les pieds calés sous\r\nles boudins :\r\n- inspirer et enrouler le rachis en essayant de rapprocher le plus possible le sternum du pubis ;\r\n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(119, 'relevé de jambes à la planche inclinée et décollement du bassin', 'abdominaux', 'abdominaux,quadriceps', 'poid du corps', 'Allongé sur la planche inclinée, les mains agrippées aux barreaux, ou aux poignées: \n- relever les jambes jusqu\'à l\'horizontale ; \n- décoller ensuite le bassin en enroulant la colonne vertébrale pour essayer de toucher la tête avec les genoux.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(120, 'relevé des genoux à la chaise abdominale', 'abdominaux', 'abdominaux,quadriceps', 'machine assisté', 'En appui sur les coudes, le dos calé: \n- inspirer et remonter les genoux vers la poitrine en arrondissant le dos pour bien contracter la sangle abdominale; \n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(121, 'relevé de jambes, suspendu à la barre', 'abdominaux', 'abdominaux', 'barre de traction', 'En suspension à la barre fixe : \n- inspirer et remonter les genoux le plus haut possible en veillant à rapprocher le pubis du sternum par un enroulement du rachis; \n- expirer en fin de mouvement.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(122, 'rotation du buste avec bâton', 'abdominaux', 'abdominaux', 'barre', 'Debout, jambes écartées, un bâton placé au niveau des trapèzes au-dessus des deltoïdes postérieurs, les mains reposant sur ce bâton sans toutefois trop appuyer :\n- effectuer des rotations du buste d\'un côté puis de l\'autre en maintenant le bassin immobile par une contraction isométrique des fessiers.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(123, 'flexion latéral du buste avec lest', 'abdominaux', 'abdominaux', 'haltère,kettlebell', 'Debout, jambes légèrement écartées, une main derrière la tête, un haltère tenu dans l\'autre main : \n- effectuer une flexion latérale du buste du côté opposé à l\'haltère ; \n- revenir à la position initiale, ou la dépasser en effectuant cette fois-ci une flexion passive du buste ; \n- alterner les séries en changeant l\'haltère de côté sans temps de récupération.', '2022-10-25 14:35:15', '2022-10-25 14:35:15'),
(124, 'flexion latéral du buste au banc', 'abdominaux', 'abdominaux', 'poid du corps', 'De côté, la hanche sur le banc, le buste dans le vide, les mains derrière la tête ou sur la poitrine, les pieds calés sous les boudins :\r\n- effectuer des flexions latérales du buste vers le haut.', '2022-10-25 14:35:15', '2022-10-25 14:35:15');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `partie_corps`
--

CREATE TABLE `partie_corps` (
  `id` INT UNSIGNED NOT NULL,
  `nom` varchar(171) COLLATE utf8_unicode_ci NOT NULL,
  `id_exercise` INT UNSIGNED,
  FOREIGN KEY (`id_exercise`) REFERENCES `exercises` (`id`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `partie_corps`
--

INSERT INTO `partie_corps` (`id`, `nom`, `id_exercise`) VALUES
(1, 'bras', 1),
(2, 'bras', 2),
(3, 'bras', 3),
(4, 'bras', 4),
(5, 'bras', 5),
(6, 'bras', 6),
(7, 'bras', 7),
(8, 'bras', 8),
(9, 'avant-bras', 9),
(10, 'avant-bras', 10),
(11, 'avant-bras', 11),
(12, 'bras', 12),
(13, 'bras', 13),
(14, 'bras', 14),
(15, 'bras', 15),
(16, 'bras', 16),
(17, 'bras', 17),
(18, 'bras', 18),
(19, 'bras', 19),
(20, 'bras', 20),
(21, 'bras', 21),
(22, 'bras', 22),
(23, 'épaules', 23),
(24, 'épaules', 24),
(25, 'épaules', 25),
(26, 'épaules', 26),
(27, 'épaules', 27),
(28, 'épaules', 28),
(29, 'épaules', 29),
(30, 'épaules', 30),
(31, 'épaules', 31),
(32, 'épaules', 32),
(33, 'épaules', 33),
(34, 'épaules', 34),
(35, 'épaules', 35),
(36, 'épaules', 36),
(37, 'épaules', 37),
(38, 'épaules', 38),
(39, 'épaules', 39),
(40, 'épaules', 40),
(41, 'épaules', 41),
(42, 'pectoraux', 42),
(43, 'pectoraux', 43),
(44, 'pectoraux', 44),
(45, 'pectoraux', 45),
(46, 'pectoraux', 46),
(47, 'pectoraux', 47),
(48, 'pectoraux', 48),
(49, 'pectoraux', 49),
(50, 'pectoraux', 50),
(51, 'pectoraux', 51),
(52, 'pectoraux', 52),
(53, 'pectoraux', 53),
(54, 'pectoraux', 54),
(55, 'pectoraux', 55),
(56, 'pectoraux', 56),
(57, 'dos', 57),
(58, 'dos', 58),
(59, 'dos', 59),
(60, 'dos', 60),
(61, 'dos', 61),
(62, 'dos', 62),
(63, 'dos', 63),
(64, 'dos', 64),
(65, 'dos', 65),
(66, 'dos', 66),
(67, 'dos', 67),
(68, 'dos', 68),
(69, 'dos', 69),
(70, 'dos', 70),
(71, 'dos', 71),
(72, 'dos', 72),
(73, 'dos', 73),
(74, 'dos', 74),
(75, 'dos', 75),
(76, 'dos', 76),
(77, 'dos', 77),
(78, 'dos', 78),
(79, 'dos', 79),
(80, 'jambes', 80),
(81, 'jambes', 81),
(82, 'jambes', 82),
(83, 'jambes', 83),
(84, 'jambes', 84),
(85, 'jambes', 85),
(86, 'jambes', 86),
(87, 'jambes', 87),
(88, 'jambes', 88),
(89, 'jambes', 89),
(90, 'jambes', 90),
(91, 'jambes', 91),
(92, 'jambes', 92),
(93, 'jambes', 93),
(94, 'jambes', 94),
(95, 'jambes', 95),
(96, 'jambes', 96),
(97, 'jambes', 97),
(98, 'jambes', 98),
(99, 'jambes', 99),
(100, 'jambes', 100),
(101, 'fessiers', 101),
(102, 'fessiers', 102),
(103, 'fessiers', 103),
(104, 'fessiers', 104),
(105, 'fessiers', 105),
(106, 'fessiers', 106),
(107, 'fessiers', 107),
(108, 'fessiers', 108),
(109, 'fessiers', 109),
(110, 'fessiers', 110),
(111, 'abdominaux', 111),
(112, 'abdominaux', 112),
(113, 'abdominaux', 113),
(114, 'abdominaux', 114),
(115, 'abdominaux', 115),
(116, 'abdominaux', 116),
(117, 'abdominaux', 117),
(118, 'abdominaux', 118),
(119, 'abdominaux', 119),
(120, 'abdominaux', 120),
(121, 'abdominaux', 121),
(122, 'abdominaux', 122),
(123, 'abdominaux', 123),
(124, 'abdominaux', 124),
(128, 'bras', 1),
(129, 'bras', 2),
(130, 'bras', 3),
(131, 'bras', 4),
(132, 'bras', 5),
(133, 'bras', 6),
(134, 'bras', 7),
(135, 'bras', 8),
(136, 'avant-bras', 9),
(137, 'avant-bras', 10),
(138, 'avant-bras', 11),
(139, 'bras', 12),
(140, 'bras', 13),
(141, 'bras', 14),
(142, 'bras', 15),
(143, 'bras', 16),
(144, 'bras', 17),
(145, 'bras', 18),
(146, 'bras', 19),
(147, 'bras', 20),
(148, 'bras', 21),
(149, 'bras', 22),
(150, 'épaules', 23),
(151, 'épaules', 24),
(152, 'épaules', 25),
(153, 'épaules', 26),
(154, 'épaules', 27),
(155, 'épaules', 28),
(156, 'épaules', 29),
(157, 'épaules', 30),
(158, 'épaules', 31),
(159, 'épaules', 32),
(160, 'épaules', 33),
(161, 'épaules', 34),
(162, 'épaules', 35),
(163, 'épaules', 36),
(164, 'épaules', 37),
(165, 'épaules', 38),
(166, 'épaules', 39),
(167, 'épaules', 40),
(168, 'épaules', 41),
(169, 'pectoraux', 42),
(170, 'pectoraux', 43),
(171, 'pectoraux', 44),
(172, 'pectoraux', 45),
(173, 'pectoraux', 46),
(174, 'pectoraux', 47),
(175, 'pectoraux', 48),
(176, 'pectoraux', 49),
(177, 'pectoraux', 50),
(178, 'pectoraux', 51),
(179, 'pectoraux', 52),
(180, 'pectoraux', 53),
(181, 'pectoraux', 54),
(182, 'pectoraux', 55),
(183, 'pectoraux', 56),
(184, 'dos', 57),
(185, 'dos', 58),
(186, 'dos', 59),
(187, 'dos', 60),
(188, 'dos', 61),
(189, 'dos', 62),
(190, 'dos', 63),
(191, 'dos', 64),
(192, 'dos', 65),
(193, 'dos', 66),
(194, 'dos', 67),
(195, 'dos', 68),
(196, 'dos', 69),
(197, 'dos', 70),
(198, 'dos', 71),
(199, 'dos', 72),
(200, 'dos', 73),
(201, 'dos', 74),
(202, 'dos', 75),
(203, 'dos', 76),
(204, 'dos', 77),
(205, 'dos', 78),
(206, 'dos', 79),
(207, 'jambes', 80),
(208, 'jambes', 81),
(209, 'jambes', 82),
(210, 'jambes', 83),
(211, 'jambes', 84),
(212, 'jambes', 85),
(213, 'jambes', 86),
(214, 'jambes', 87),
(215, 'jambes', 88),
(216, 'jambes', 89),
(217, 'jambes', 90),
(218, 'jambes', 91),
(219, 'jambes', 92),
(220, 'jambes', 93),
(221, 'jambes', 94),
(222, 'jambes', 95),
(223, 'jambes', 96),
(224, 'jambes', 97),
(225, 'jambes', 98),
(226, 'jambes', 99),
(227, 'jambes', 100),
(228, 'fessiers', 101),
(229, 'fessiers', 102),
(230, 'fessiers', 103),
(231, 'fessiers', 104),
(232, 'fessiers', 105),
(233, 'fessiers', 106),
(234, 'fessiers', 107),
(235, 'fessiers', 108),
(236, 'fessiers', 109),
(237, 'fessiers', 110),
(238, 'abdominaux', 111),
(239, 'abdominaux', 112),
(240, 'abdominaux', 113),
(241, 'abdominaux', 114),
(242, 'abdominaux', 115),
(243, 'abdominaux', 116),
(244, 'abdominaux', 117),
(245, 'abdominaux', 118),
(246, 'abdominaux', 119),
(247, 'abdominaux', 120),
(248, 'abdominaux', 121),
(249, 'abdominaux', 122),
(250, 'abdominaux', 123),
(251, 'abdominaux', 124);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coach_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `roles`, `password`, `first_name`, `last_name`, `email`, `coach_id`) VALUES
(11, '[\"ROLE_COACH\"]', '$2y$13$i6zIDMbb1MRplRYmnLNEKO.a6LplvCeGvgkRdJmrwwN.Q0zeova46', 'Richard', 'Rousset', 'blanc.dominique@sfr.fr', NULL),
(12, '[\"ROLE_USER\"]', '$2y$13$pOX6ztQpHJt5zLKyN332weSOoo463DLQOjefDKZdkdm2M8BRyG5w.', 'Denis', 'Blondel', 'emilie.gauthier@lacroix.com', 11),
(13, '[\"ROLE_USER\"]', '$2y$13$yHfa9FMq27cHDcD5GAWFlOhfC0H8MWl3BpqSqeShTUhQ3RX2Xc642', 'Sébastien', 'Roger', 'anne.bousquet@pasquier.org', 11),
(14, '[\"ROLE_USER\"]', '$2y$13$RTENbKKSqhu7yz0hzuJLheokCK4.0zNtXqhc2DBLNzEHzzzHyWL6m', 'Benoît', 'Guichard', 'michelle18@voila.fr', 11),
(15, '[\"ROLE_USER\"]', '$2y$13$gCvbUjgprK3eHdX7luYXbeHaiHpoL.6cNnNsI39foOzpdlMmTAiQe', 'Théophile', 'Allain', 'renaud.adele@ifrance.com', 11),
(16, '[\"ROLE_USER\"]', '$2y$13$bCXnQTqDrREoWy8v9dc10eOyVJvQ3anlJt2rZh0WTNCb8/Cl8ZrIm', 'Élise', 'Imbert', 'christine.raymond@guerin.fr', 11),
(17, '[\"ROLE_USER\"]', '$2y$13$Hjo90nvFH1ow.S59OjYJOe0HcMglv4VEdmNuvMQxJ5D2St1xv5NA2', 'Victoire', 'Maillot', 'henri.fernandes@tiscali.fr', 11),
(18, '[\"ROLE_USER\"]', '$2y$13$/B8T4K3n1ted3ggL68w.YeoIvLxeERopcB4cgP9ifa/AbdDcZL1Da', 'Gilles', 'Ruiz', 'zlambert@tiscali.fr', 11),
(19, '[\"ROLE_USER\"]', '$2y$13$SjFFZ8dDBlb7HDebKpK0B..gbpsA.bKQpNDZ3Rgq260Xl.9iLYINe', 'Anastasie', 'De Sousa', 'ihoarau@wanadoo.fr', 11),
(20, '[\"ROLE_USER\"]', '$2y$13$16UWrzZkh6pe80vuyKeDo.LJt66Z/ETEWtd8W4hszfchNJKiGAxji', 'Nathalie', 'Da Silva', 'anouk32@ifrance.com', 11),
(21, '[\"ROLE_COACH\"]', '$2y$13$bT/r7idywBrQngA8.EpMBufJc8G9donNhLjAY3ibrvNHtNFswQwm6', 'Michel', 'Adam', 'laure55@maillet.com', NULL),
(22, '[\"ROLE_USER\"]', '$2y$13$jVyOtCEeJVVS0A5//pQm3u7iWthgCsrRJJUzEuAxrpi6G6mCnwGfy', 'Grégoire', 'Marty', 'bourgeois.olivier@marques.com', 21),
(23, '[\"ROLE_USER\"]', '$2y$13$X78fXmhH7J9S5M6ZUEg8Deosu9/Li/yfHQfTJ9yymtqtwISBnXNNy', 'Thierry', 'Letellier', 'jvallet@girard.com', 21),
(24, '[\"ROLE_USER\"]', '$2y$13$/FmIt71RcK0hEunN2t0ch.wro6APKCvagRtxg0CMjgFX/.SoahbO6', 'Jacques', 'Lambert', 'emilie10@hotmail.fr', 21),
(25, '[\"ROLE_USER\"]', '$2y$13$P.fbInVKMbypmk5Us9SaGegSfxYKuMXKvzO5xfuKXLEBfOU7Z/x/.', 'Franck', 'Gaillard', 'dmaurice@orange.fr', 21),
(26, '[\"ROLE_USER\"]', '$2y$13$iNsKq6kcI3gsSm02IEaVM.zkPXeM.ejYr8IuLPHHt6b6F6hV9jJyG', 'Test', 'Test', 'pgaillard@club-internet.fr', 21),
(27, '[\"ROLE_USER\"]', '$2y$13$ADCz7qu2R6OwrWWZVsiWTewNEHqbJxjNSVZ9sIgzerm5S.NFWzVXC', 'Thibault', 'Dubois', 'valerie01@laporte.com', 21),
(28, '[\"ROLE_USER\"]', '$2y$13$h7aAT/tzgrB3ENQBPBoBVOUUaY7hYQZGf1cW5/T0S2uxUC3sOKwbe', 'Guillaume', 'Clement', 'dufour.sophie@sfr.fr', 21),
(29, '[\"ROLE_USER\"]', '$2y$13$L3FG1sAKnnQjPXv2fRENUeYOAU9Wh.iTEwovT2Z.mjR1M7YUKtE4O', 'Alain', 'Nguyen', 'michele.bertrand@dupuy.com', 21),
(30, '[\"ROLE_USER\"]', '$2y$13$kMeuwdq8h25Mp33yPHGB0.34i0VtPvRI.9Dr2yoIX8ITBlyZHMnmO', 'Édouard', 'Pasquier', 'dlevy@daniel.com', 21),
(31, '[\"ROLE_COACH\"]', '$2y$13$4yRup7.K1NPBtuTcbOKGsebuTrdBFmJTume9Ht1KmmsNXcbo7hZ2W', 'Guy', 'Le Roux', 'jacob.philippine@sfr.fr', NULL),
(32, '[\"ROLE_USER\"]', '$2y$13$Ha1y0KG.t6av/2mvsO4w7OXc5t2cqgPE9qk29ZXqdnMZbTvGAjZ7q', 'Marguerite', 'Clement', 'wcarpentier@noel.net', 31),
(33, '[\"ROLE_USER\"]', '$2y$13$EXRJsLvU80dwpuIGueIhc.2.JzpNXe9KrJudvwwOikBmGsU97O4gi', 'William', 'Salmon', 'gregoire97@bouygtel.fr', 31),
(34, '[\"ROLE_USER\"]', '$2y$13$JZSj2yYzuwYdZEWdNpItGelKQGTy0CjHyopWGxIEsvt7129Y.K8/W', 'Manon', 'Grondin', 'patrick.samson@dbmail.com', 31),
(35, '[\"ROLE_USER\"]', '$2y$13$hRxYq0.SsUgDzvYP0PHWX.v8L8c30nAVSOgBuNa2OeYJ/c/tZpfse', 'Paul', 'Lambert', 'pmarion@wagner.org', 31),
(36, '[\"ROLE_USER\"]', '$2y$13$q8j6hRtfZU3IS4XbtyI.L.S1jhQWXumpIu1hFGUHR.kDNjR/UHIl2', 'Aimé', 'Bodin', 'astrid82@dbmail.com', 31),
(37, '[\"ROLE_USER\"]', '$2y$13$NaUpO9MhDTf0wh9baDQWAuk59mSkZUSLa35XlLwOQFjDBnfglh14K', 'Sabine', 'Traore', 'imartineau@laposte.net', 31),
(38, '[\"ROLE_USER\"]', '$2y$13$dDtx.lNmLfeApxL9blrYmOUPfzUMTm7CpKmDLbWYY2nWagSWziYpS', 'Matthieu', 'Riou', 'bertrand56@renaud.net', 31),
(39, '[\"ROLE_COACH\"]', '$2y$13$aT1NoLCgWJ45ywbqfBqboeV0XyIZYWgF/Kl.Fib7JbtxSqiL720bC', 'Philippine', 'Weber', 'margaud98@durand.net', NULL),
(40, '[\"ROLE_USER\"]', '$2y$13$suPuIzgLUEVBRp6a8UE8NOolpjhJoY8dSw3e6G.Xo9KaXfqB/jgxu', 'Alain', 'Carlier', 'deoliveira.eleonore@vallet.com', 39),
(41, '[\"ROLE_USER\"]', '$2y$13$NHui2Kvp6YFwJIQFduMU0ecKtSKJ7ousBR72BXyRXVj96CqAH3pES', 'Jeanne', 'Bertrand', 'thibault.bigot@dbmail.com', 39),
(42, '[\"ROLE_USER\"]', '$2y$13$u250K3BFI.euwgZ0r/6HUOIiDxw39n8rLqybnXpok26ibmNlSNjoq', 'Margaret', 'Rey', 'rene34@ifrance.com', 39),
(43, '[\"ROLE_USER\"]', '$2y$13$vXlREkHk6nd8.30oFFBp9.T4NoHbjZHNV9ZnO96bz4zgIw6iyez2a', 'Margot', 'Hebert', 'obouvet@club-internet.fr', 39),
(44, '[\"ROLE_USER\"]', '$2y$13$dbf5Gq3P1Pp/HsF3NazMre8GxgCQyNdOK5VqOYeG2bdpRFvdkyC9m', 'Olivier', 'Dupont', 'roland.pasquier@noos.fr', 39),
(45, '[\"ROLE_COACH\"]', '$2y$13$K5aXA9TVrX9AirErJafpC.hnmUHJ1psDV2um8PreyTvH7.m3eOYDq', 'Alex', 'Barre', 'rbazin@alexandre.com', NULL),
(46, '[\"ROLE_USER\"]', '$2y$13$cXQ/7LpHyrhsjXdjixcqO.MSNR2YRsVUDPVTIDemkdkqlsHYdzMHe', 'Auguste', 'Le Gall', 'lemonnier.agnes@schneider.com', 45),
(47, '[\"ROLE_USER\"]', '$2y$13$WGo42569wpBCMycClhRr4./aVEFVVy.9JQGsS/DgVdafvQSmNiUy2', 'Gilbert', 'Foucher', 'legall.thierry@barbier.fr', 45),
(48, '[\"ROLE_USER\"]', '$2y$13$zZl9FbaNCRVJOXvdnwKErefm9p.ori3pWHxeIiI5X1fwHmRqoOWiq', 'Alfred', 'Richard', 'adrienne.mercier@orange.fr', 45),
(49, '[\"ROLE_USER\"]', '$2y$13$n62Zx//m1SASz7PPLsAksuqJnDAojOA2v5XiJ79cA6jSvfCpcAn7W', 'Adrienne', 'Hernandez', 'wagner.marcelle@hotmail.fr', 45),
(50, '[\"ROLE_USER\"]', '$2y$13$aFFCjlky1.No30H7ov3/auwXwJa1HAkoQd2lNFqHjc3mez19wcaYG', 'Colette', 'Hubert', 'adrien11@live.com', 45),
(51, '[\"ROLE_COACH\"]', '$2y$13$oo9LpLYh4HelOSIBJ85/geHWuZne98aZnKp9DVMdOkOTwOMwYKRzS', 'Emmanuelle', 'Gregoire', 'christelle17@club-internet.fr', NULL),
(52, '[\"ROLE_USER\"]', '$2y$13$KiL3hJ2f3vuLBPj4N6tM0ejua3GoV5SyPsIdqasaitOxlkuRkPcoK', 'Timothée', 'Delmas', 'catherine.marin@bouygtel.fr', 51),
(53, '[\"ROLE_USER\"]', '$2y$13$gDjJ7zELXj.VOZCamwOMx.q8jWz/1WNzPdZlsYK0GrBnlMcqBzW1q', 'Richard', 'Riviere', 'antoine.didier@deoliveira.com', 51),
(54, '[\"ROLE_USER\"]', '$2y$13$KPZ.3pa.jxWMPzWu2mnGOO0gHEPzenR2iOd.//t1Fqm9Su7uyp9L6', 'Luce', 'Lemoine', 'michel.gerard@guichard.org', 51),
(55, '[\"ROLE_USER\"]', '$2y$13$coOq0bYA/t1FBug/Fnl7VuX9aXWCaXVpbj79g85Z.rnmC5pGhSdw2', 'Brigitte', 'Clement', 'margaux46@noos.fr', 51),
(56, '[\"ROLE_USER\"]', '$2y$13$IJ/di6bIjX57A1ScOUNPWe86Vc5QJgIwaMzPBmA6cevFzxes5HXGK', 'Arthur', 'Guerin', 'dossantos.isaac@fournier.org', 51),
(57, '[\"ROLE_USER\"]', '$2y$13$.Gd5Nx0LCwDlaEkoQWA6ROouf.WeNbaar1DNGQVDbpaKxGylTZCYO', 'David', 'Adrien', 'william82@free.fr', 51),
(58, '[\"ROLE_USER\"]', '$2y$13$9/ohyxLWIDmyYLWDDJCssOc8DhjmyL90vj5Qd/hVAelkpGwxhs3hK', 'Jérôme', 'Hernandez', 'rmathieu@gmail.com', 51),
(59, '[\"ROLE_USER\"]', '$2y$13$N0a9mFITh979FTxplms3Q.ft0wZIhg0EfRjbdcn3HnUMjmvW8RHXS', 'Caroline', 'Pelletier', 'adelaide.hebert@leleu.net', 51),
(60, '[\"ROLE_USER\"]', '$2y$13$MhoOD2abuWUsWpQrbsgK7eUXa8x9DmKMsg4BB0N0p8G5oUCF9pncq', 'Pénélope', 'Mace', 'olivie68@ifrance.com', 51),
(61, '[\"ROLE_USER\"]', '$2y$13$4WKg6Jiq4P5pBUX5b4Q3rOVKPbPf34JzBBe4eoxrSJBwg.Xjd8jLu', 'Aurélie', 'Royer', 'arousset@orange.fr', 51),
(62, '[\"ROLE_USER\"]', '$2y$13$NeNRt6QVn/F6X023R/o6RO0IkJ2JRxGCKGiX18aoJk6uR6cl.dPEm', 'Denis', 'Rolland', 'ubouvet@legendre.fr', 51),
(63, '[\"ROLE_COACH\"]', '$2y$13$BU7fQSUCQ5yP.pe0u.yC6eZL6LzGmfO/bkYuQMr0Eax7p1g0hsJoW', 'Bernard', 'Fischer', 'tcollin@petitjean.org', NULL),
(64, '[\"ROLE_USER\"]', '$2y$13$tsr6RStEbyC/pzQ.flsVa.A4QX842qG5a46w5P9jx8blWmI3hetvS', 'Aimé', 'Godard', 'aleroy@moreau.org', 63),
(65, '[\"ROLE_USER\"]', '$2y$13$NxKfLxdZkuI3v/ShaZwa5uHs2IzwrZyN5HMgWyyyT5j8cJjx9r0xu', 'Élisabeth', 'Chevallier', 'rey.robert@orange.fr', 63),
(66, '[\"ROLE_USER\"]', '$2y$13$c3AJtnW/YldE5oRwlcZDy.DbFmX2oQddsGbZGildw/Lq8DN1XxYiW', 'William', 'Gallet', 'vbertrand@yahoo.fr', 63),
(67, '[\"ROLE_USER\"]', '$2y$13$eZg0WnswLHmdAQ9ZnZRRfOHJwv6a4CYs/A/meUckv.3oPL9ucVZFC', 'Luc', 'Marion', 'ubernier@maillot.com', 63),
(68, '[\"ROLE_USER\"]', '$2y$13$DhnbUKsi0YMEy0uzJ5/4uuzwLNbdT9zgJOJfpHY1HB6l9keK5U2dm', 'Gabrielle', 'Gerard', 'zroger@club-internet.fr', 63),
(69, '[\"ROLE_USER\"]', '$2y$13$iJIvyryixj0f.d/T9tjGteGDUlaBC9ZfpUoyTQXGUpDBcm1sUWf9G', 'Martine', 'Hubert', 'chantal51@yahoo.fr', 63),
(70, '[\"ROLE_COACH\"]', '$2y$13$xnrPhR7pcFfuNchyKVp9mOyD3HgKu0dGvv5HnK0WSVVEuA914NrZy', 'Martine', 'Besnard', 'aimee49@wanadoo.fr', NULL),
(71, '[\"ROLE_USER\"]', '$2y$13$zZvh4EDDbyKrDZGn2ulww.3TK7O0OdH6gbC1guFoTh3h7fALk6yI.', 'Émile', 'Joubert', 'riviere.camille@tiscali.fr', 70),
(72, '[\"ROLE_USER\"]', '$2y$13$mW/PuzNn5YUWS1p6ExwCYe5Q1bV8qAmMGCsqc19yQyGKh4AaJAX8y', 'Louise', 'Lambert', 'marchand.martine@gregoire.com', 70),
(73, '[\"ROLE_USER\"]', '$2y$13$lPzbZZT9K1KfoUSm35UujO4/iegORpxSZhhe15RSz4PTXJqEAMHTa', 'Pierre', 'Launay', 'juliette13@wanadoo.fr', 70),
(74, '[\"ROLE_USER\"]', '$2y$13$hEyZE/yG52j2WL24ZXIYne/ABh2yJMrjTNUQxKYiizGLc8ugoSS7O', 'Agathe', 'Wagner', 'genevieve.perrin@levy.net', 70),
(75, '[\"ROLE_USER\"]', '$2y$13$BnAM4LU96h8oPzwgNE8aX.E0McIgiYl6LwLNfc8vurzUjNS/.sQM.', 'Michel', 'Thomas', 'alphonse.parent@gregoire.fr', 70),
(76, '[\"ROLE_USER\"]', '$2y$13$Pxod3FjUs74wSeOj/uEjBe2TvppTLz92P81c6/0iQiTZT4/7yjqxa', 'André', 'Lopes', 'helene.camus@tiscali.fr', 70),
(77, '[\"ROLE_USER\"]', '$2y$13$1VOtUI6tt1g.Dti9tDyrUewpcTRyYUWLLR9e.ZeF7fe774ap2G4e.', 'Adrienne', 'Lambert', 'morin.nicolas@bernier.fr', 70),
(78, '[\"ROLE_USER\"]', '$2y$13$WQ.OJqPs.6wpXFw9Pap1uuK6jKO.Uines16MEUOBAtaGO0RtAvOw2', 'Agathe', 'Breton', 'ugaudin@arnaud.net', 70),
(79, '[\"ROLE_COACH\"]', '$2y$13$.Ruwdb3iHLa/zYDx1xZREevf3.kmIhR/v00ASU7JXUgerq8f6Et8S', 'Virginie', 'Faivre', 'noel.thomas@gregoire.net', NULL),
(80, '[\"ROLE_USER\"]', '$2y$13$IGuX7uCC3IPuZqAgXMUdB.i70K5ZAWSk5dbPX3.wHug/Vb9sj..9m', 'Test', 'Martin', 'olivier23@barbier.fr', 79),
(81, '[\"ROLE_USER\"]', '$2y$13$VCxyJT2lq3hJKYolj8M.sOhqvY.p6e.jbl/4JyUHGgeNLVI7onZeK', 'Augustin', 'Pinto', 'maryse72@chauvin.com', 79),
(82, '[\"ROLE_USER\"]', '$2y$13$EfrVheCQF/t96m8FyBe5uu8C.T3QIgDSm2r4RltzFBC.cXK8UBtNq', 'Jules', 'Grenier', 'rolland.christine@lacombe.fr', 79),
(83, '[\"ROLE_USER\"]', '$2y$13$SQ2UI/ZnvAKfBDV9N4mLn.hA5SMvu0sB9Hs.DEdfystvC4p4DctsS', 'Capucine', 'Vasseur', 'allain.laetitia@tele2.fr', 79),
(84, '[\"ROLE_USER\"]', '$2y$13$UpRuT392vU9kYbhFXOf3FuslDiuUgPs9oHmwmyeWfhJogLYv9RL2i', 'Colette', 'Rousseau', 'marchal.guillaume@sfr.fr', 79),
(85, '[\"ROLE_USER\"]', '$2y$13$nvhBCgrOHLpz5wyxEhrMvuPZPvTrh4PSs8vPzMXnjM1CdI4HHbD36', 'Emmanuel', 'Bouvier', 'anais17@courtois.com', 79),
(86, '[\"ROLE_USER\"]', '$2y$13$6iR5Tb.22MEW8KZdKndmj.MkL7zc3wb0DpXqEX8OYF6aNX0VAKS3e', 'Franck', 'Gimenez', 'bourdon.thierry@boyer.fr', 79),
(87, '[\"ROLE_USER\"]', '$2y$13$wiHyRw2wYMoLH8TLZZRgpedAQ2IgYIAmnvteaSGCUTXGSI9N449ua', 'Maggie', 'Begue', 'roland29@gmail.com', 79),
(88, '[\"ROLE_USER\"]', '$2y$13$V7G.aBhK1t9jbsxAuNBPpOJAl5Nd2CnjApoTyCJmB.ZdzzRZ9Xgza', 'Benjamin', 'Gaudin', 'manon.rey@wanadoo.fr', 79),
(89, '[\"ROLE_USER\"]', '$2y$13$KUbXMHDf5vwoo6vYjvAoR.dOM7OxAoYudl8/CXIE/hyCwNBQmw4Xu', 'Théodore', 'Teixeira', 'wjoseph@noos.fr', 79),
(90, '[\"ROLE_COACH\"]', '$2y$13$zY0FTp.iFxoroLJVPZDQY.CtNGQwP28GqGvVr2TCHeyY2nQgUZTCO', 'Monique', 'Bertrand', 'vcollet@ifrance.com', NULL),
(91, '[\"ROLE_USER\"]', '$2y$13$sPhICPdYSrhxhW1PXvIqhuMAbQoLtAJQDQBGqVY4Te9gKb1enqRse', 'Éric', 'Leclerc', 'michelle.roche@gmail.com', 90),
(92, '[\"ROLE_USER\"]', '$2y$13$hMcLTd5VQIvB2zOOiofSue8w4JvVRK2XJ3M5QJvxyeYFrs7yhJoPO', 'Nicolas', 'Marchand', 'andre.bousquet@navarro.fr', 90),
(93, '[\"ROLE_USER\"]', '$2y$13$eWNSCWowjyZz9czt/ZCB5.KxTMCj5mUAllClH14bGzElHNYLQJ74q', 'Robert', 'Leduc', 'slegendre@live.com', 90),
(94, '[\"ROLE_USER\"]', '$2y$13$wt7CP1PmU6wmgOvVEXgaI.sBXEdXQWVgugVS.whrRl.1HlrL4XF7O', 'Claude', 'Raynaud', 'rbarbier@live.com', 90),
(95, '[\"ROLE_USER\"]', '$2y$13$Vb8rtAiM9UCYpRPhUywbUeKndyAyb5A.txXAeeyTYO2SX1NSb0Xpq', 'Étienne', 'Bernier', 'jsamson@voila.fr', 90),
(96, '[\"ROLE_USER\"]', '$2y$13$qQRFfuPMSfdZ600Pkl/uxOY7URkccjJl1crETvEo1aK6g5zAksvxK', 'Lucie', 'Gomez', 'adele72@pascal.fr', 90),
(97, '[\"ROLE_USER\"]', '$2y$13$Rwm4eobkNzY8eKO6epoITe2TkzH/knW4GRIK24WcWJTTAFSGOyCni', 'Philippe', 'Caron', 'xberthelot@wanadoo.fr', 90);

-- --------------------------------------------------------

--
-- Structure de la table `workout`
--

CREATE TABLE `workout` (
  `id` INT UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cible` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `workout`
--

INSERT INTO `workout` (`id`, `nom`, `cible`, `created_at`, `updated_at`) VALUES
(1, 'Perte de poids', 'jambes', NULL, NULL),
(2, 'Prise de masses', 'bras,épaules,avant-bras', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `workout_exercise`
--

CREATE TABLE `workout_exercise` (
  `workout_id` INT UNSIGNED NULL,
  `exercise_id` INT UNSIGNED NOT NULL,
  `repetition` int(11) DEFAULT NULL,
  `serie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `workout_exercise`
--

INSERT INTO `workout_exercise` (`workout_id`, `exercise_id`, `repetition`, `serie`) VALUES
(1, 81, NULL, NULL),
(1, 82, NULL, NULL),
(1, 83, NULL, NULL),
(1, 84, NULL, NULL),
(1, 85, NULL, NULL),
(1, 86, NULL, NULL),
(1, 87, NULL, NULL),
(1, 88, NULL, NULL),
(1, 89, NULL, NULL),
(1, 90, NULL, NULL),
(1, 91, NULL, NULL),
(1, 92, NULL, NULL),
(1, 93, NULL, NULL),
(1, 94, NULL, NULL),
(1, 95, NULL, NULL),
(1, 96, NULL, NULL),
(1, 97, NULL, NULL),
(1, 98, NULL, NULL),
(1, 99, NULL, NULL),
(1, 100, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `workout_partie_corps`
--

CREATE TABLE `workout_partie_corps` (
  `workout_id` bigint(20) UNSIGNED NOT NULL,
  `partie_corps_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `workout_partie_corps`
--

INSERT INTO `workout_partie_corps` (`workout_id`, `partie_corps_id`) VALUES
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
(2, 19),
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
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
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
(2, 69),
(2, 70),
(2, 71),
(2, 72),
(2, 73),
(2, 74),
(2, 75),
(2, 76),
(2, 77),
(2, 78),
(2, 79);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `exercises`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `partie_corps`
--
ALTER TABLE `partie_corps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_exercise` (`id_exercise`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  ADD KEY `IDX_8D93D6493C105691` (`coach_id`);

--
-- Index pour la table `workout`
--
ALTER TABLE `workout`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `workout_exercise`
--
ALTER TABLE `workout_exercise`
  ADD PRIMARY KEY (`workout_id`,`exercise_id`),
  ADD KEY `workout_exercise_ibfk_2` (`exercise_id`);

--
-- Index pour la table `workout_partie_corps`
--
ALTER TABLE `workout_partie_corps`
  ADD PRIMARY KEY (`workout_id`,`partie_corps_id`),
  ADD KEY `workout_id` (`workout_id`),
  ADD KEY `partie_corps_id` (`partie_corps_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `exercises`
--
ALTER TABLE `exercises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `partie_corps`
--
ALTER TABLE `partie_corps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT pour la table `workout`
--
ALTER TABLE `workout`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `partie_corps`
--
ALTER TABLE `partie_corps`
  ADD CONSTRAINT `partie_corps_ibfk_1` FOREIGN KEY (`id_exercise`) REFERENCES `exercises` (`id`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D6493C105691` FOREIGN KEY (`coach_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `workout_exercise`
--
ALTER TABLE `workout_exercise`
  ADD CONSTRAINT `workout_exercise_ibfk_1` FOREIGN KEY (`workout_id`) REFERENCES `workout` (`id`),
  ADD CONSTRAINT `workout_exercise_ibfk_2` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`);

--
-- Contraintes pour la table `workout_partie_corps`
--
ALTER TABLE `workout_partie_corps`
  ADD CONSTRAINT `workout_partie_corps_ibfk_1` FOREIGN KEY (`workout_id`) REFERENCES `workout` (`id`),
  ADD CONSTRAINT `workout_partie_corps_ibfk_2` FOREIGN KEY (`partie_corps_id`) REFERENCES `partie_corps` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
