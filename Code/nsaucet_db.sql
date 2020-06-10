-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Client :  sqletud.u-pem.fr
-- Généré le :  Jeu 06 Juin 2019 à 19:10
-- Version du serveur :  5.5.62-0+deb8u1-log
-- Version de PHP :  7.0.33-0+deb9u3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `nsaucet_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `idArt` int(4) NOT NULL,
  `nomArticleFR` varchar(50) NOT NULL,
  `nomArticleEN` varchar(50) NOT NULL,
  `contenuFR` varchar(50) NOT NULL,
  `contenuEN` varchar(50) NOT NULL,
  `descArtFR` text NOT NULL,
  `descArtEN` text NOT NULL,
  `idImg` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`idArt`, `nomArticleFR`, `nomArticleEN`, `contenuFR`, `contenuEN`, `descArtFR`, `descArtEN`, `idImg`) VALUES
(1, 'Cathédrale Notre-Dame du Siège', 'Cathedral of Saint Mary of the See', '../article/CathedraleFR.txt', '../article/CathedraleEN.txt', 'La mosquée a été construite par un mouvement morrocan berbers musulmans fondé au XIIème siècle.\r\nLe caliph Abu Yaqub Yusuf fait construire une nouvelle mosquée en 1172 au sud de la ville. La nouvelle mosquée sera consacrée en 1182 mais la construction ne sera pas fini avant 1198.\r\nElle remplace celle construite entre 829 et 830 par Umar Ibn Adabbas.', 'The mosque was built by a Morrocan Muslim berbers movement founded in the 12th century.\r\nCaliph Abu Yaqub Yusuf built a new mosque in 1172 south of the city. The new mosque was consecrated in 1182 but the construction was not finished until 1198.\r\nIt replaces the one built between 829 and 830 by Umar Ibn Adabbas.', 9),
(2, 'Alcazar', 'The Alcazar', '../article/AlcazarFR.txt', '../article/AlcazarEN.txt', 'L\'Alcazar et ses jardins ne sont pas moins représentatifs que la Cathédrale des phases essentielles de l\'histoire de Séville. Ce palais-forteresse fut édifié dès 712 par les conquérants arabes pour contrôler le Guadalquivir et conserve une enceinte crénelée d\'époque almohade ainsi que plusieurs espaces intérieurs, antérieurs à la Reconquête.', 'The Alcazar and its gardens are no less representative than the Cathedral of the essential phases of Seville\'s history. This fortress-palace was built in 712 by the Arab conquerors to control the Guadalquivir and preserves a crenellated Almohad period enclosure, as well as several interior spaces dating from before the Reconquest.', 10),
(3, 'Archive Général des Indes', 'General Archive of the Indies', '../article/LonjaFR.txt', '../article/LonjaEN.txt', 'Pour contrôler le commerce avec les colonies d\'Amérique, Philippe II décida la construction d\'une nouvelle \"Casa de Contratacion\" dont les plans furent exécutés par Juan de Herrera, son architecte favori. \r\nCette \"bourse\" devait succéder à un établissement analogue, installé depuis 1503 dans les dépendances de l\'Alcazar.', 'To control trade with the American colonies, Philip II decided to build a new \"Casa de Contratacion\" whose plans were executed by Juan de Herrera, his favourite architect. \r\nThis \"stock exchange\" was to succeed a similar establishment, installed since 1503 in the outbuildings of the Alcazar.', 11),
(4, 'La Giralda', 'The Giralda', '../article/GiraldaFR.txt', '../article/GiraldaEN.txt', 'La Giralda fut commandité par Abu Yaqub Yusuf en 1184. L\'oeuvre est achevée en 1198.\r\nIl s\'agit de l\'ancien minaret de la Grande Mosquée construit de 1172 à 1198 par l\'émir Yaqub al-Mansour, qui rivalise par ses dimensions et par l\'élégance de son décor avec la Koutoubia de Marrakech et la Tour Hassan de Rabat, les deux autres monuments majeurs de l\'époque.', 'The Giralda was sponsored by Abu Yaqub Yusuf in 1184. The work was completed in 1198.\r\nIt is the former minaret of the Great Mosque built from 1172 to 1198 by Amir Yaqub al-Mansur, which competes in size and elegance of decoration with the Koutoubia of Marrakech and the Hassan Tower of Rabat, the other two major monuments of the time.', 12);

-- --------------------------------------------------------

--
-- Structure de la table `chronologie`
--

CREATE TABLE `chronologie` (
  `idChrono` int(3) NOT NULL,
  `periode` varchar(50) NOT NULL,
  `descChronoFR` text NOT NULL,
  `descChronoEN` text NOT NULL,
  `date` smallint(5) NOT NULL DEFAULT '2019'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `chronologie`
--

INSERT INTO `chronologie` (`idChrono`, `periode`, `descChronoFR`, `descChronoEN`, `date`) VALUES
(1, 'VIII ème av J.-C.', 'Selon la légende, fondation de Séville par les Tartessiens sous le nom Ispal ou Spal (selon les sources latines).\r\n', 'According to legend, Seville was founded by the Tartessians under the name of Ispal or Spal(according to Latin sources).', -800),
(2, '-216', 'Les Carthaginois s’emparent de Séville.', 'The Carthaginians takes Seville.', -216),
(3, '-206', 'Séville conquise par les Romains (Ville rebaptisée Hispalis).', 'Seville conquered by the Romans (City renamed Hispalis).', -206),
(4, '-45', 'Séville devient une colonie romaine.', 'Seville became a Roman colony.', -45),
(5, '711', 'Séville conquise par Moussa Ibn Noçaïr.', 'Seville conquered by Moussa Ibn Noçaïr.', 711),
(6, '844', 'Construction de L\'Alcazar', 'Construction of the Alcazar', 844),
(7, '1147', 'Débarquement des Almohades', 'Disembarking of the Almohades', 1147),
(8, '1172', 'Construction de la Grande Mosquée par Abu Yaqub Yusuf ', 'Construction of the Great Mosque by Abu Yagub Yusuf', 1172),
(9, '1184-1198', 'Édification de la Giralda', 'Edification of the Giralda', 1184),
(10, '??/08/1247 -  23/11/1248', 'Siège de Séville par Ferdinand III de Castille', 'Siege of Seville by Ferdinand III of Castille', 1247),
(11, '1503', 'Début de l’âge d’or, la ville de Séville obtient le monopole des échanges commerciaux avec les Indes nouvellement découvertes.', 'The beginning of the golden age, the city of Seville obtained a monopoly on trade with the newly discovered Indies', 1503),
(12, '20/08/1503', 'Création de la “Casa de Contratación” par Isabelle la Catholique.', 'Creation of the \"Casa de Contratación\" by Isabella I of Castile.', 1503),
(13, '1785', 'Création de ‘Archivo General de Indias”.', 'Creation of ‘Archivo General de Indias”.', 1785),
(14, '1810-1812', 'Occupation de la ville par les troupes françaises.', 'Occupation of the city by French troops.', 1810),
(15, '1929', 'Exposition ibéro-américaine (marque l’entrée de Séville dans le XXe siècle).', 'Ibero-American Exhibition (marks Seville\'s entry into the 20th century).', 1929),
(16, '1987', 'Inscription de l’Alcazar, Archivo General de Indias et de la Cathédrale au patrimoine mondial de l’UNESCO.', 'Inscription of the Alcazar, Archivo General de Indias and the Cathedral on the UNESCO World Heritage List.', 1987),
(17, '1992', 'Séville accueille l’Exposition universelle.', 'Seville hosts the Universal Exhibition.', 1992),
(18, '426', 'Séville conquise par les Vandales.', 'Seville conquered by the Vandals.', 426),
(19, '441', 'Séville conquise par les Suèves.', 'Seville conquered by the Suevas.', 441),
(20, '456', 'Séville conquise par les Wisigoths.', 'Seville conquered by the Visigoths.', 456),
(21, '844', 'Incursion des Vikings qui détruisent des mosquées.', 'Incursion of the Vikings who destroy mosques.', 844);

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `idImg` int(5) NOT NULL,
  `img` varchar(250) NOT NULL,
  `imgMin` varchar(50) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `idMonument` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `image`
--

INSERT INTO `image` (`idImg`, `img`, `imgMin`, `source`, `idMonument`) VALUES
(1, 'Prosper_Mérimée.jpg', NULL, 'Wikipédia', NULL),
(2, 'noimage.png', NULL, NULL, NULL),
(3, 'Edgar_Quinet.jpg', NULL, 'Wikipédia', NULL),
(4, 'theophile_gautier.jpg', NULL, 'Wikipédia', NULL),
(5, 'Victor_Hugo.jpg', NULL, 'Wikipédia', NULL),
(6, 'Edgar_Quinet.jpg', NULL, 'Wikipédia', NULL),
(7, 'Alexandre_Dumas.jpg', NULL, 'Wikipédia', NULL),
(8, 'Voltaire.jpg', NULL, 'Wikipédia', NULL),
(9, '../image/383BIS_16retouche.jpg', '../image/M_383BIS_16retouche.jpg', 'ICOMOS', 2),
(10, '../image/383BIS_12.jpg', '../image/M_383BIS_12.jpg', 'ICOMOS', 1),
(11, '../image/383BIS_17.jpg', '../image/M_383BIS_17.jpg', 'ICOMOS', 3),
(12, '../image/383BIS_29retouche.jpg', '../image/M_383BIS_29retouche.jpg', 'ICOMOS', 4),
(13, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Sevilla_Cathedral_-_Southeast.jpg/1280px-Sevilla_Cathedral_-_Southeast.jpg', NULL, 'Wikipédia', 2),
(14, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Spain_Andalusia_Seville_BW_2015-10-23_14-22-53_cropp.jpg/1024px-Spain_Andalusia_Seville_BW_2015-10-23_14-22-53_cropp.jpg', NULL, 'Wikipédia', 2),
(15, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/La_Giralda_August_2012_Seville_Spain.jpg/800px-La_Giralda_August_2012_Seville_Spain.jpg', NULL, 'Wikipédia', 4),
(16, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Cloches_de_la_Giralda%2C_S%C3%A9ville_%281988%29.JPG/800px-Cloches_de_la_Giralda%2C_S%C3%A9ville_%281988%29.JPG', NULL, 'Wikipédia', 4),
(17, 'https://upload.wikimedia.org/wikipedia/commons/7/73/Cathedral_and_Archivo_de_Indias_-_Seville.jpg', NULL, 'Wikipédia', 3),
(18, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/Archivo_de_Indias_001.jpg/800px-Archivo_de_Indias_001.jpg', NULL, 'Wikipédia', 3),
(19, 'https://cdn.pixabay.com/photo/2016/03/19/20/10/hall-1267374_960_720.jpg  ', NULL, 'Pixabay', 3),
(20, 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Patio_de_la_Monter%C3%ADa%2C_01.jpg/1920px-Patio_de_la_Monter%C3%ADa%2C_01.jpg', NULL, 'Wikipédia', 1),
(21, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Sevilla-Reales_Alcazares-Jard%C3%ADn_del_Marqu%C3%A9s_de_la_Vega_Incl%C3%A1n-20110915.jpg/1920px-Sevilla-Reales_Alcazares-Jard%C3%ADn_del_Marqu%C3%A9s_de_la_Vega_Incl%C3%A1n-20110915.jpg', NULL, 'Wikipédia', 1),
(22, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Sevilla_Alcazar_03.jpg/1920px-Sevilla_Alcazar_03.jpg', NULL, 'Wikipédia', 1),
(23, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Patio_de_las_doncellas.jpg/1920px-Patio_de_las_doncellas.jpg', NULL, 'Wikipédia', 1),
(24, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Reales_Alc%C3%A1zares_de_Sevilla_-_Sal%C3%B3n_de_Embajadores.jpg/1024px-Reales_Alc%C3%A1zares_de_Sevilla_-_Sal%C3%B3n_de_Embajadores.jpg', NULL, 'Wikipédia', 1),
(25, '../image/383BIS_9.jpg', '../image/M_383BIS_9.jpg', 'ICOMOS', 1),
(26, '../image/383BIS_10.jpg', '../image/M_383BIS_10.jpg', 'ICOMOS', 1),
(27, '../image/383BIS_15.jpg', '../image/M_383BIS_15.jpg', 'ICOMOS', 1),
(28, '../image/383BIS_21.jpg', '../image/M_383BIS_21.jpg', 'ICOMOS', 1),
(29, '../image/383BIS_22.jpg', '../image/M_383BIS_22.jpg', 'ICOMOS', 1),
(30, '../image/383BIS_24retouche.jpg', '../image/M_383BIS_24retouche.jpg', 'ICOMOS', 1),
(31, '../image/383BIS_34.jpg', '../image/M_383BIS_34.jpg', 'ICOMOS', 1),
(32, '../image/383BIS_43.jpg', '../image/M_383BIS_43.jpg', 'ICOMOS', 1),
(33, '../image/383BIS_46.jpg', '../image/M_383BIS_46.jpg', 'ICOMOS', 1),
(34, '../image/383BIS_1.jpg', '../image/M_383BIS_1.jpg', 'ICOMOS', 2),
(35, '../image/383BIS_2retouche.jpg', '../image/M_383BIS_2retouche.jpg', 'ICOMOS', 2),
(36, '../image/383BIS_3retouche.jpg', '../image/M_383BIS_3retouche.jpg', 'ICOMOS', 2),
(37, '../image/383BIS_4.jpg', '../image/M_383BIS_4.jpg', 'ICOMOS', 2),
(38, '../image/383BIS_5.jpg', '../image/M_383BIS_5.jpg', 'ICOMOS', 2),
(40, '../image/383BIS_6.jpg', '../image/M_383BIS_6.jpg', 'ICOMOS', 2),
(41, '../image/383BIS_7.jpg', '../image/M_383BIS_7.jpg', 'ICOMOS', 2),
(42, '../image/383BIS_57.jpg', '../image/M_383BIS_57.jpg', 'ICOMOS', 2),
(43, '../image/383BIS_59.jpg', '../image/M_383BIS_59.jpg', 'ICOMOS', 2),
(44, '../image/383BIS_62.jpg', '../image/M_383BIS_62.jpg', 'ICOMOS', 2),
(45, '../image/383BIS_58.jpg', '../image/M_383BIS_58.jpg', 'ICOMOS', 4);

-- --------------------------------------------------------

--
-- Structure de la table `monument`
--

CREATE TABLE `monument` (
  `idMonument` int(2) NOT NULL,
  `nomMonumentFR` varchar(60) NOT NULL,
  `nomMonumentEN` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `monument`
--

INSERT INTO `monument` (`idMonument`, `nomMonumentFR`, `nomMonumentEN`) VALUES
(1, 'Alcazar', 'The Alcazar'),
(2, 'Cathédrale Notre-Dame du Siège', 'Cathedral of Saint Mary of the See'),
(3, 'Archive Général des Indes', 'General Archive of the Indies'),
(4, 'La Giralda', 'The Giralda');

-- --------------------------------------------------------

--
-- Structure de la table `voyageur`
--

CREATE TABLE `voyageur` (
  `idVoyageur` int(2) NOT NULL,
  `nomVoyageur` varchar(100) NOT NULL,
  `contenuFR` text NOT NULL,
  `contenuEN` text NOT NULL,
  `idImg` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `voyageur`
--

INSERT INTO `voyageur` (`idVoyageur`, `nomVoyageur`, `contenuFR`, `contenuEN`, `idImg`) VALUES
(1, 'Prosper Mérimée', '<p><b>À propos de Séville :</b>\n“Séville seule à posséder plusieurs don Juans; mainte autre ville cite le sien.”\n</p><p>\n<b>Biographie :</b>\nProsper Mérimée est un auteur issu d’un milieu bourgeois et artiste. Ce dernier a fait des études de droit avant de s’intéresser à la littérature.\nC’est dès 1825 qu’il commence à publier des textes en particulier des nouvelles qui le feront connaître et qui lui vaudront d’être élu à l’académie française en 1844.\n\nMérimée a fait deux voyages en Espagne, dont un voyage en 1830 où il rencontrera le futur comte de mojito et un autre voyage en 1853\nL’un de ses ouvrages qui a marqué les esprits est Carmen qui inspirera la création de nombreux monuments, dont l’opéra de Carmen ainsi que Carmen devant les arènes de Séville.\n</p><p>\n<b>Carmen :</b>\nSa recherche bibliographique et ses souvenirs de voyage nourriront ce court récit qu’est Carmen qui symbolise sa passion destructrice pour l’Espagne.\n</p>', '<p><b>About Seville :</b>\n“Séville seule à posséder plusieurs don Juans; mainte autre ville cite le sien.”\n</p><p>\n<b>Biography :</b>\nProsper Mérimée was an author who comes from a rich and artistic background. He did some studies in right before starting to be interested in literature.\n\nIt was in 1825 that he began publishing texts, particularly short stories, that would make him known and earn him an election to the French Academy in 1844.\n\nMérimée made two trips to Spain, one in 1830 to meet the future Earl of Mojito and another in 1853\nOne of his most memorable works is Carmen, which will inspire the creation of many monuments, including Carmen\'s opera and Carmen in front of the Seville arenas.\n</p><p>\n<b>Carmen :</b>\n<p>His bibliographical research and his memories of his travels will feed this short story that is Carmen, which symbolizes his destructive passion for Spain.</p>\n', 1),
(2, 'Pierre-Léonce Imbert', '<p><b>À propos de Séville :</b>\n“Nous voici donc revenus à Séville, cité charmante bâtie par Hercule dans une atmosphère embaumée.”\n</p><p>\n<b>Biographie :</b>\nC’est un journaliste né à Castang en Dordogne au XIXème siècle. Il a été l’auteur de nombreuses oeuvres dont  “L\'Espagne, splendeurs et misères”.\n</p><p>\n<b>L\'Espagne, splendeurs et misères :</b>\nCet ouvrage s\'inscrit dans une politique de conservation patrimoniale des ouvrages de la littérature Française mise en place avec la BNF (Bibliothèque nationale de France).\nIl est édité en 1875. Il contient des ouvrages en rapport avec l’espagne et Séville en particulier (pages 87 - 92). L’auteur y décrit les expériences qu’il a ressenties en visitant patrimoines de Séville.</p>', '<p><b>About Seville :</b>\n“Nous voici donc revenus à Séville, cité charmante bâtie par Hercule dans une atmosphère embaumée.”\n</p><p>\n<b>Biography :</b>\nPierre-Léonce Imbert was a journalist born in Castang in the Dordogne in the 19th century.\n He has written many works including \"L\'Espagne, splendeurs et misères”.\n</p>\n<p><b>L\'Espagne, splendeurs et misères :</b>\nThis book is part of a policy of heritage conservation of French literary works set up with the BNF (Bibliothèque nationale de France).\nIt was published in 1875. It contains works related to Spain and Seville in particular (pages 87 - 92). In it, the author describes the experiences he had while visiting the heritage of Seville.</p>', 2),
(3, 'Théophile Gautier', '<p><b>À propos de Séville :</b>\n“Sur le Guadalquivir, en sortant de Séville, \nQuand l\'oeil à l\'horizon se tourne avec regret, \nLes dômes, les clochers font comme une forêt :\nÀ chaque tour de roue il surgit une aiguille.”\n</p><p>\n<b>Biographie :</b>\nJules Pierre Théophile Gautier, né à Tarbes le 30 août 1811 et mort à Neuilly-sur-Seine le 23 octobre 1872, est un poète, romancier et critique d\'art français. En 1831-1832 il publiera ses premières poésies. \nC’est en 1840 en compagnie d’Eugène Piot que se déroule son premier voyage en Espagne qu’il connaissait d’ici là à travers les Contes d’Espagne et d’Italie d’Alfred et les Orientales de Victor Hugo.\nDe cette expérience, il écrira “Voyage en Espagne”, une sorte de carnets d\'impressions vigoureuses qui décrit son voyage.\n</p><p>\n<b>Perspective :</b>\nPerspective est un de ses nombreux poèmes écrits au cours de son voyage en Espagne entre mai et octobre 1840.\nCe poème décrit le paysage de la ville de Séville ainsi que ses nombreux monuments.</p>', '<p><b>About Seville :</b>\n“Sur le Guadalquivir, en sortant de Séville, \nQuand l\'oeil à l\'horizon se tourne avec regret, \nLes dômes, les clochers font comme une forêt :\nÀ chaque tour de roue il surgit une aiguille.”\n</p><p>\n<b>Biography :</b>\nJules Pierre Théophile Gautier, born at Tarben the 30 august 1811 and died at Neuilly-sur-Seine the 23 october 1872 was a poete, a novelist and and a french art critic.\nHe started to publish his first poems between 1831 and 1832.\n\nIn 1840, with Eugene Piot he started to travel around spain, a country he only knew through the “Contes d’Espagne et d’Italie” from Alfred and “les Orientales” from Victor Hugo\n\nFrom his experiences, he wrote “Voyage en Espagne” a kind of carnet which describe the sensation he had during his journey.\n</p><p>\n<b>Perspective :</b>\nPerspective was on of his many poems written between may and october 1840 during his journey in Spain.\nIt describes Seville’s landscape and it severals monuments.</p>', 4),
(7, 'Edgar Quinet', '<p><b>À propos de Séville :</b>\r\n“Je me suis donner le plaisir à Séville de monter ces beaux chevaux andalous et de faire de longues courses dans les environs.”</p>\r\n<p><b>Biographie :</b>\r\nJean-Louis Edgar Quinet, né à Bourg-en-Bresse (Ain) le 17 février 1803 et mort à Versailles le 27 mars 1875, est un historien, poète, philosophe et homme politique français, républicain et anticlérical.\r\nAttiré par la littérature, Edgar Quinet publie son premier ouvrage “les Tablettes du juif errant” en 1823.\r\nTout au long de sa vie il entreprit de nombreux voyages.</p><p>\r\n<b>Correspondance à sa mère :</b>\r\n“Edgar Quinet attribue à sa mère ce qu\'il avait en lui de meilleur.“\r\nAinsi en 1877 sont publiées dans un livre ses lettres intimes pour sa mère. Il y décrit dans ses lettres ses voyages dont ceux en Espagne.\r\nIl y décrira son ressenti du paysage ainsi que les monuments qui s’y trouvaient.</p>', '<p><b>About Seville :</b>\r\n“Je me suis donner le plaisir à Séville de monter ces beaux chevaux andalous et de faire de longues courses dans les environs.”</p><p>\r\n<b>Biography :</b>\r\nJean-Louis Edgar Quinet, born at Bourg-en-Bresse the 17 february 1803 and decreased the 27 march 1875, was a historian,poete,philosoph, and a french politican, republicain et anticlerical.\r\nAttracted to literature, Edgar Quinet released his first book which was “Les Tablettes du juif errant” in 1823.\r\nHe travelled a lot during his life.</p><p>\r\n<b>Correspondance à sa mère :</b>\r\n\"Edgar Quinet gives to his mother the best of him.\"\r\nThus in 1877 are published in a book his private letters for his mother. In his letters, he describes his travels, including those to Spain.\r\nHe will describe his feeling of the landscape and the monuments that were there.</p>', 6),
(8, 'Victor Hugo', '<p><b>À propos de Séville :</b>\r\n\"Toutes ces villes d\'Espagne \r\nS\'étendent dans la campagne \r\nOu hérissent la sierra ; \"</p><p>\r\n<b>Biographie :</b>\r\nVictor Hugo est un poète, dramaturge et prosateur romantique français, né le 26 février 1802 à Besançon et mort le 22 mai 1885 à Paris. Il est considéré comme l\'un des plus importants écrivains de langue française. Il est aussi une personnalité politique et un intellectuel engagé qui a joué un rôle majeur dans l\'histoire du XIXe siècle.\r\nVictor Hugo occupe une place marquante dans l\'histoire des lettres françaises au XIXe siècle, dans des genres et des domaines d\'une remarquable variété.</p><p>\r\n<b>Les orientales “Grenade” :</b>\r\nGrenade est un des nombreux poèmes présent dans le recueil “Orientale” écrit par Victor Hugo.</p>', '<p><b>About Seville :</b>\r\n\"Toutes ces villes d\'Espagne \r\nS\'étendent dans la campagne \r\nOu hérissent la sierra ; \"</p><p>\r\n<b>Biography :</b>\r\nVictor Hugo was a French poet, playwright and romantic prose writer, born on 26 February 1802 in Besançon and died on 22 May 1885 in Paris. He was considered as one of the most important French-speaking writers. He was also a political figure and a committed intellectual who played a major role in the history of the 19th century.\r\nVictor Hugo occupies a prominent place in the history of French literature in the 19th century, in genres and fields of remarkable variety.</p><p>\r\n<b>Les orientales “Grenade” :</b>\r\nGranada is one of the many poems in the \"Orientale\" collection written by Victor Hugo.</p>', 5),
(9, 'Alexandre Dumas', '<p><b>À propos de Séville :</b>\r\n“Demain, je vous parlerai de la perle de l\'Andalousie.”</p><p>\r\n<b>Biographie :</b>\r\nAlexandre Dumas (dit aussi Alexandre Dumas père) est un écrivain français né le 24 juillet 1802 à Villers-Cotterêts (Aisne) et mort le 5 décembre 1870 au hameau de Puys, ancienne commune de Neuville-lès-Dieppe, aujourd\'hui intégrée à Dieppe (Seine-Maritime).\r\nC’est en 1840 qu’il entreprend son premier voyage en Espagne.</p><p>\r\n<b>Lettres choisies :</b>\r\nEn 1846, A. Dumas se rend en Espagne pour le mariage de l\'infante d\'Espagne et du duc de Montpensier. Il suit avec son groupe d\'amis un itinéraire qui le mène de Paris à Cadix et visite l\'Andalousie. Il est séduit par les danseuses de Séville et emmène ainsi le lecteur au spectacle et au bal pour un séjour festif.</p>', '<p><b>About Seville :</b>\n“Demain, je vous parlerai de la perle de l\'Andalousie.”</p><p>\n<b>Biography :</b>\nAlexandre Dumas (also known as Alexandre Dumas father) was a french writer born on 24 July 1802 in Villers-Cotterêts (Aisne) and died on 5 December 1870 in the hamlet of Puys, a former commune of Neuville-lès-Dieppe, now part of Dieppe (Seine-Maritime).\nIt was in 1840 that he began his first trip to Spain.</p><p>\n<b>Lettres choisies :</b>\nIn 1846, A. Dumas went to Spain for the marriage of the Spanish infanta and the Duke of Montpensier. He and his group of friends followed a route that took him from Paris to Cadiz and visited Andalusia. He was seduced by the Seville dancers and thus took the reader to the show and the ball for a festive trip.</p>', 7),
(10, 'POITOU Eugène', '<p><b>À propos de Séville :</b>\r\n“Il est difficile d\'imaginer rien de plus merveilleux que cet Alcazar.”</p><p>\r\n<b>Biographie :</b>\r\nEugène Poitou est un magistrat et un critique littéraire qui a vécu durant le XIXème siècle.</p><p>\r\n<b>Voyage en Espagne :</b>\r\nVoyage en Espagne est un livre écrit par Poitou Eugène et illustré par V.Foulquier où il décrit son voyage.</p>', '<p><b>About Seville :</b>\r\n“Il est difficile d\'imaginer rien de plus merveilleux que cet Alcazar.”</p>\r\n<p><b>Biography :</b>\r\nEugène Poitou was a magistrate and literary critic who lived during the 19th century.</p>\r\n<p><b>Voyage en Espagne :</b>\r\n“Voyage en Espagne” is a book written by Poitou Eugène and illustrated by V. Foulquier where he describes his journey.</p>', 2),
(11, 'Voltaire', '<p><b>A propos de Séville :</b>\n\"La cour était à Séville, les galions étaient arrivés, tout respirait l\'abondance et la joie dans la plus belle saison de l\'année.\"</p><p>\n<b>Biographie :</b>\nFrançois-Marie Arouet, dit Voltaire, né le 21 novembre 1694 à Paris, ville où il est mort le 30 mai 1778 (à 83 ans), est un écrivain et philosophe français qui a marqué le XVIIIe siècle et qui occupe une place particulière dans la mémoire collective française et internationale.\nAprès des études de rhétorique et de philosophie chez les jésuites, ainsi que des études de droit, François Marie Arouet, dit Voltaire, opte pour la carrière littéraire. </p><p>\n<b>Scarmentado :</b>\nHistoire des voyages de Scarmentado  est un conte philosophique de Voltaire écrit vers 1753.\nCe conte, ironique, nous fait voyager dans divers pays d\'Europe, en Asie, en Afrique et fait référence à l\'Amérique, à travers le personnage de Scarmentado, dont le nom provient du mot espagnol \"escarmentado\" qui signifie \"instruit par l\'expérience\".</p>', '<p><b>About Seville :</b>\n\"La cour était à Séville, les galions étaient arrivés, tout respirait l\'abondance et la joie dans la plus belle saison de l\'année.\"</p><p>\n<b>Biography :</b>\nFrançois-Marie Arouet, known as Voltaire, born on 21 November 1694 in Paris, the city where he died on 30 May 1778 (at the age of 83), was a French writer and philosopher who marked the 18th century and occupies a special place in the French and international collective memory.\nAfter studying rhetoric and philosophy with the Jesuits, as well as law, François Marie Arouet, known as Voltaire, opted for a literary career.</p><p>\n<b>Scarmentado :</b>\nThe History of Scarmentado\'s Travels is a philosophical tale by Voltaire written around 1753.\nThis ironic tale takes us to various countries in Europe, Asia and Africa and refers to America, through the character of Scarmentado, whose name comes from the Spanish word \"escarmentado\" which means \"learned by experience\".</p>', 8);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`idArt`),
  ADD KEY `idImg` (`idImg`);

--
-- Index pour la table `chronologie`
--
ALTER TABLE `chronologie`
  ADD PRIMARY KEY (`idChrono`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`idImg`),
  ADD KEY `idMonument` (`idMonument`);

--
-- Index pour la table `monument`
--
ALTER TABLE `monument`
  ADD PRIMARY KEY (`idMonument`);

--
-- Index pour la table `voyageur`
--
ALTER TABLE `voyageur`
  ADD PRIMARY KEY (`idVoyageur`),
  ADD KEY `idImg` (`idImg`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `idArt` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `chronologie`
--
ALTER TABLE `chronologie`
  MODIFY `idChrono` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `idImg` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT pour la table `monument`
--
ALTER TABLE `monument`
  MODIFY `idMonument` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `voyageur`
--
ALTER TABLE `voyageur`
  MODIFY `idVoyageur` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`idImg`) REFERENCES `image` (`idImg`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`idMonument`) REFERENCES `monument` (`idMonument`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `voyageur`
--
ALTER TABLE `voyageur`
  ADD CONSTRAINT `voyageur_ibfk_1` FOREIGN KEY (`idImg`) REFERENCES `image` (`idImg`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
