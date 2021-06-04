-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 03, 2021 at 04:05 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bddzerules`
--

-- --------------------------------------------------------

--
-- Table structure for table `avis`
--

CREATE TABLE `avis` (
  `ID_Utilisateur` int(11) NOT NULL,
  `ID_Regle_Alternative` int(11) NOT NULL,
  `Commentaire` varchar(255) DEFAULT NULL,
  `Note` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `boutique`
--

CREATE TABLE `boutique` (
  `ID_Boutique` int(11) NOT NULL,
  `Localisation` varchar(255) DEFAULT NULL,
  `Nom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `conseille`
--

CREATE TABLE `conseille` (
  `ID_Jeux` int(11) NOT NULL,
  `ID_Boutique` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `filtre`
--

CREATE TABLE `filtre` (
  `Nb_joueurs` int(11) NOT NULL,
  `Materiel` varchar(255) DEFAULT NULL,
  `Duree` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jeu`
--

CREATE TABLE `jeu` (
  `ID_Jeux` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jeu`
--

INSERT INTO `jeu` (`ID_Jeux`, `Nom`) VALUES
(1, 'Uno'),
(2, 'Président'),
(3, 'Tarot'),
(4, 'Texas Poker'),
(5, 'Bridge'),
(6, 'Yams'),
(7, 'Suite'),
(8, 'As'),
(9, 'Backgammon'),
(10, 'Monopoly'),
(11, 'Scrabble');

-- --------------------------------------------------------

--
-- Table structure for table `partage`
--

CREATE TABLE `partage` (
  `ID_Utilisateur` int(11) NOT NULL,
  `ID_Regle_Alternative` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `possede`
--

CREATE TABLE `possede` (
  `ID_Jeux` int(11) NOT NULL,
  `ID_REGLE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `propose`
--

CREATE TABLE `propose` (
  `ID_Jeux` int(11) NOT NULL,
  `Nb_joueurs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `regle_alternative`
--

CREATE TABLE `regle_alternative` (
  `ID_Regle_Alternative` int(11) NOT NULL,
  `ID_Jeux` int(11) NOT NULL,
  `ID_Utilisateur` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Createur` varchar(255) DEFAULT NULL,
  `DESCRIPTION` text,
  `Nb_joueurs` int(11) DEFAULT NULL,
  `Duree` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `regle_alternative`
--

INSERT INTO `regle_alternative` (`ID_Regle_Alternative`, `ID_Jeux`, `ID_Utilisateur`, `Nom`, `Createur`, `DESCRIPTION`, `Nb_joueurs`, `Duree`) VALUES
(1, 1, 1, 'UnoXtrem', 'coco', 'C est le UNon en mieux wola', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `regle_officielle`
--

CREATE TABLE `regle_officielle` (
  `ID_REGLE` int(11) NOT NULL,
  `ID_Jeux` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Nb_joueurs` varchar(255) DEFAULT NULL,
  `Description` text,
  `Duree` varchar(255) DEFAULT NULL,
  `Materiel` varchar(255) DEFAULT NULL,
  `Preparation` text,
  `Base` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `regle_officielle`
--

INSERT INTO `regle_officielle` (`ID_REGLE`, `ID_Jeux`, `Nom`, `Nb_joueurs`, `Description`, `Duree`, `Materiel`, `Preparation`, `Base`) VALUES
(1, 1, 'Uno', '4', 'Pour gagner au Uno, vous devez être le 1er à vous débarrasser de toutes vos cartes (à chaque manche afin de marquer des points).\r\n\r\nLes cartes que vos adversaires ont encore en mains vous rapportent plus de points. Les points se cumulent d’une manche à l’autre.\r\nLe premier joueur à obtenir 500 points est déclaré vainqueur.', '10', 'Cartes', 'Tout le monde pioche une carte. Le joueur obtenant le chiffre le plus élevé est le donneur (toute carte avec un symbole compte pour zéro).\r\nLe donneur bat les cartes et en distribue 7 par joueur.\r\nLes autres cartes sont placées faces cachées et forment la PIOCHE.\r\nLa carte du dessus de la PIOCHE est retournée pour constituer le TALON.\r\nREMARQUE : si une carte action (symboles) est retournée en début de TALON.', 'Le joueur placé à gauche du donneur commence.\r\nLe principe : les joueurs doivent recouvrir la carte visible du TALON par une carte :\r\nde même couleur,\r\nou portant le même numéro\r\nou le même symbole que celle-ci.\r\nSi le joueur ne possède pas de carte lui permettant de jouer,\r\n–>il PIOCHE une carte : Si cette carte peut être jouée, il a le droit de la poser. Sinon, il passe son tour et conserve cette carte supplémentaire.\r\nLes joueurs peuvent choisir de NE PAS jouer une carte.\r\n—> Ils doivent alors PIOCHER une carte. Si cette carte peut être jouée, ils peuvent la poser, mais ils ne peuvent pas jouer une carte qu’ils avaient déjà en main avant de piocher.'),
(2, 2, 'Président', 'minimum 4 joueurs', 'Pour gagner le jeu du président, vous devez être le premier à ne plus avoir de cartes. Dans ce cas, le jeu doit continuer jusqu\'à ce qu\'il ne reste plus qu\'un seul joueur avec les cartes. Vous pouvez donc commencer à nommer vos joueurs.\r\n\r\nLe premier joueur s\'appelle le Président\r\nLe deuxième joueur est appelé vice-président\r\nLe troisième joueur s\'appelle vice-trou du cul\r\nLe quatrième joueur s\'appelle le trou du cul\r\nSi vous jouez à 5, le troisième joueur sera appelé Neutre.\r\n\r\nLors de la prochaine partie, le président recevra les 2 meilleures cartes du Trou du cul. En échange, le président donne 2 cartes de son choix.\r\nIdem pour le vice-président et le vice-trou du cul sauf qu’une seule carte est échangée.', NULL, 'Cartes', 'La hiérarchie des cartes est un peu particulière puisque la carte la plus forte est le 2. Suit ensuit l’As, le Roi la Dame, le Valet, le 10 etc… Le 2 permet donc au joueur qu’il la possède d’avoir toujours le dernier mot lors d’une série.\r\n\r\nLors de la première partie, l’un des joueurs distribue toutes les cartes aux participants. Le joueur situé à sa gauche commence la partie et pose de 1 à 4 cartes de même valeur.', 'Le but étant de se débarrasser le premier de toutes ses cartes, il est bien entendu judicieux de jouer les petites cartes qui seront difficiles a placer lors d’une série (exemple le 3 qui ne peut que être joué par un joueur au commencement).\r\n\r\nLe joueur suivant a alors plusieurs possibilités :\r\n\r\n Il n’a pas de cartes plus hautes ou pas le nombre requis, il passe son tour\r\nIl a une ou des cartes supérieurs et pose par dessus celles précédemment jouées.\r\nIl a une ou des cartes de même valeur et les pose par dessus faisant ainsi sauté le tour du prochain joueur.\r\n\r\n'),
(3, 3, 'Tarot', '4', 'La partie se termine quand le dernier pli est joué. Le preneur compte le nombre des bouts et la valeur de toutes les cartes qu’il a gagnées. Le score de chaque joueur est actualisé, et une nouvelle manche commence, jusqu’à la fin du jeu.\r\n\r\nLe jeu se termine quand un nombre déterminé de plis sont joués. Ce nombre est déterminé au début du jeu.\r\nSi tous les 4 joueurs passent, la partie est annulée. Alors le vainqueur du jeu est le joueur ayant le score le plus élevé.\r\nSi deux ou plus de joueurs possèdent des scores égaux, une manche supplémentaire est jouée.', '10', 'Cartes', 'Le jeu est étalé sur le tapis face cachée et chaque joueur pioche une carte. Le joueur ayant la carte la plus faible est désigné pour distribuer.\r\n\r\nAu début de la manche, le donneur distribue les cartes 3 par 3 en sens inverse des aiguilles d’une montre. Pendant qu’il distribue, le donneur constitue une pile de 6 cartes prélevées une par une appelées “chien”. Les 3 premières et les 3 dernières cartes du paquet ne peuvent pas être distribuées au chien. A la fin de la distribution chaque joueur reçoit 18 cartes.\r\n\r\nLe premier donneur de cartes est choisi de manière aléatoire et lors des manches suivantes le joueur suivant est le nouveau donneur dans le sens inverse des aiguilles d’une montre.', 'C’est toujours le joueur situé à gauche du donneur qui commence la partie. Il joue une couleur et les autres joueurs ont l’obligation de fournir la couleur demandée si bien entendu, ils en possèdent les cartes. Si ils n’en possèdent pas, ils peuvent couper à l’atout. Le gagnant du pli est celui qui ouvre le tour suivant.\r\n\r\nConcernant les atouts, les joueurs ont l’obligation de monter à l’atout, c’est-à-dire de jouer une carte d’atout supérieure à celle précédemment jouée. Si un joueur ne possède plus d’atouts, ni de cartes de la couleur demandée, il peut poser n’importe quelle carte de son jeu.\r\n\r\nL’excuse est toujours conservée par le joueur qui la possède. Le joueur ne peut remporter le pli puisqu’elle n’a pas de valeur directe lorsqu’elle est jouée. Celui-ci doit alors lorsque le tour est finit donner une carte sans valeur qu’il choisit en échange dans les précédentes levées pour compléter le pli. L’excuse ne peut être jouée au dernier tour sous peine de la perdre.'),
(4, 4, 'Poker', '2 à 10', 'Lorsque plusieurs adversaires peuvent former une combinaison de poker équivalente, ils sont parfois départagés par le kicker (c’est une carte privative qui sert parfois à départager les mains de moins de 5 cartes). Le kicker peut-être utilisé dans un carré, un brelan, une double paire, une paire et lorsque les participants n’ont qu’une carte haute à disposition.\r\n\r\nQuand plusieurs adversaires disposent d’une couleur ou d’une suite, c’est la carte la plus haute détenue par chacun qui fait éventuellement la différence (sauf si les cartes du board sont supérieurs aux cartes privatives).\r\n\r\nDans plusieurs situations, les joueurs peuvent être ex aequo lors du showdown (abattage, moment ou chaque participant en jeu montre son jeu), dans ce cas, le pot est divisé par le nombre de joueurs ex aequo.', '90', 'Cartes', 'Au poker, quelque soit la variante, une main est toujours constituée de 5 cartes.\r\n\r\nLes joueurs qui le souhaitent peuvent rejeter leur main (poser leurs cartes face contre tapis). Ils ne pourront alors pas prétendre au gain du pot. Toute main rejetée ne peut être retournée. Les autres joueurs peuvent cependant en faire la demande au propriétaire des cartes mais lui seul est à même d’en prendre la décision.\r\n\r\nUne main peut être considérée comme irrégulière si elle n’a pas le nombre de cartes requis (5, une main est toujours constituée de 5 cartes au poker). Elle est aussi considérée comme telle si elle a été en contact avec des cartes rejetées.\r\n', 'La partie se déroulera ensuite dans le sens des aiguilles d’une montre.\r\n\r\nLa cave doit être placée sur la table, nous l’appellerons alors « tapis » (d’où l’expression « faire tapis » qui signifie « miser tous ses jetons restants »). Aucun jeton ne doit être caché et tout joueur est responsable de ses cartes. Il doit donc protéger sa main.\r\n'),
(5, 5, 'Bridge', '4', 'Le Bridge se joue à 4 joueurs répartis en 2 équipes (ou paires). A la table de Bridge chaque joueur s\'assoie en face de son partenaire. Il est d\'usage de repérer les joueurs l\'aide des points cardinaux : l\'équipe Nord-Sud est donc opposée l\'équipe Est-Ouest.\r\n\r\nLorsque l\'on joue, l\'un des joueurs  choisit une de ses cartes et la pose sur la table, face découverte. Puis le joueur situé à sa gauche fait de même et enfin les 2 autres joueurs. Les 4 cartes ainsi posées sur la table constituent une levée et cette levée est gagnée par le camp du joueur qui fournit la carte la plus forte.\r\n\r\nLe jeu consiste, pour chaque camp, à réaliser un nombre de levées (ou de plis) au moins égal au nombre de levées déterminé par les enchères. Puisque chaque joueur a 13 cartes, il y a 13 levées possibles.', '120', 'Cartes', 'Pour jouer on utilise un jeu de 52 cartes comprenant 4 couleurs de 13 cartes chacune : les Piques, les Cœurs, les Carreaux et les Trèfles. Dans chaque couleur la carte la plus forte est l\'As, puis le Roi, la Dame, le Valet, le 10, le 9 et ainsi de suite jusqu\'au 2. As, Roi, Dame et Valet constituent les 4 honneurs d\'une couleur.\r\n\r\nCes 4 couleurs sont classées en 2 catégories : Pique et Cœur sont appelées des couleurs \"majeures\". Carreau et Trèfle sont appelées des couleurs \"mineures\".\r\n\r\nChaque joueur est donneur à tour de rôle. La distribution des cartes se fait une une, joueur par joueur, en tournant dans le sens des aiguilles d\'une montre. Chaque joueur reçoit 13 cartes.', 'Le joueur qui joue la première carte d\'une levée choisit la carte qui lui convient parmi toutes celles qu\'il a en main. La couleur de cette première carte impose aux autres joueurs de jouer une carte de même couleur. On dit qu\'ils doivent \"fournir la couleur\".\r\n\r\nLa carte la plus forte gagne\r\nC\'est le joueur qui aura joué la carte la plus forte de la couleur demandée qui gagne la levée et c\'est lui qui jouera la première carte de la levée suivante, et ainsi de suite pour les 13 levées.\r\n\r\nSi un joueur possède des cartes dans la couleur demandée, il en joue une de son choix.\r\n\r\nSi en revanche il n\'a pas de carte de la couleur demandée, il peut, au choix, soit défausser, soit couper.\r\n\r\nL\'atout, désigné par les enchères, est une couleur plus forte que les autres. En effet une petite carte d\'atout est plus forte que n\'importe quelle carte d\'une autre couleur. Le joueur qui coupe, gagne donc la levée, à moins qu\'un autre joueur ne surcoupe, c\'est-à-dire ne coupe avec un atout supérieur. '),
(6, 6, 'Yams', '2', 'Une partie de Yams a un nombre de tours qui correspond aux combinaisons à réaliser sur une fiche de score ; le jeu Yams se termine donc au 13ème tour.\r\n\r\nLa partie de Yams se termine quand chaque joueur a rempli sa grille de score. Chacun compte ses points en commençant par la section haute (sans oublier le bonus de 35 points s\'il est validé), puis la section basse, et enfin en additionnant les totaux 1 et 2.\r\n\r\nLe gagnant est le joueur qui totalise le plus de points.\r\n', '60', 'Dés', 'Pour ce jeu il n\'y a pas forcément de préparation mais il faut tout de même avoir en tête les différents combinaisons possibles et les points que cela rapporte.\r\n\r\nBrelan : 3 dés identiques = somme des 5 dés\r\n\r\ncarré 4 dés identiques = somme des 5 dés\r\n\r\nfull : 3 identique + 2 identique = 25 points\r\n\r\npetite suite : 4 dés qui se suivent  = 25 points\r\n\r\ngrande suite : 5 dés qui se suivent = 40 points\r\n\r\nYams : 5 dés identique = 50 points \r\n', 'Après avoir déterminé le premier joueur et le sens du jeu, chaque joueur dispose de 3 lancers par tour pour réaliser une combinaison précise.\r\n \r\nAu 1er lancer le joueur jette tous ses dés. S\'il est satisfait du résultat, il peut s’arrêter là et noter le score de la combinaison sur la fiche de score, sinon il rejoue.\r\n\r\nAu 2ème et 3ème lancer, le joueur a le choix de relancer tous ses dés ou seulement quelques-uns pour tenter de réaliser une combinaison.\r\nAprès ses 3 lancers de dés le joueur doit obligatoirement noter son résultat dans une case combinaison de la fiche de score. S\'il lui est impossible de remplir une case, il doit alors barrer une combinaison de son choix et ne pourra plus la réaliser par la suite.\r\n'),
(7, 7, 'Suite', '2 ou plus', 'Le gagnant est celui qui atteint 100 points (ou qui a 20 jetons)\r\n\r\n', '20', 'Dés', 'Pour ce jeu il n\'y a pas forcément de préparation mais il faut tout de même avoir en tête les différents combinaisons possibles et les points que cela rapporte.\r\n\r\nS\'il fait du premier jet: 1.2.3.4.5.6. il se marque 25 points (ou prend 5 jetons)\r\n\r\nS\'il fait du premier jet: 1.2.3.4.5. et un autre il se marque 20 points (ou prend 4 jetons)\r\n\r\nS\'il fait du premier jet: 1.2.3.4. et deux autres il se marque 15 points (ou prend 3 jetons)\r\n\r\nS\'il fait du premier jet: 1.2.3. et trois autres il se marque 10 points (ou prend 2 jetons)\r\n\r\nS\'il fait du premier jet: 1.2. et quatre autres il se marque 5 points (ou prend 1 jeton)\r\n', 'Le premier joueur que l\'on déterminera  lance les 6 dés.\r\n\r\nPuis c\'est au joueur suivant de tenter de faire une toute petite suite ou une grande suite et de marquer ses points ou de prendre des jetons de la manière indiquée dans la partie préparation.\r\n\r\nAttention, si un joueur fait 3 as, il repart à zéro (ou rend tous ses jetons)\r\n'),
(8, 8, 'As', '3 ou 7', 'Le gagnant est celui qui place le dernier 1 au milieu.\r\n\r\nPour gagner il ne faut compter que sur sa chance.\r\n', '20', 'Dés', 'Le premier à jouer est celui qui fait le plus grand nombre de points au premier lancer de dés.', 'Le joueur lance les 5 dés. Puis il place le ou les 1 au milieu de la table, donne le ou les 2 à son voisin de gauche, le ou les 5 à son voisin de droite et rejoue les dés restant. C\'est-à-dire ceux qui indiquaient 4, 3 ou 6.\r\nIl continue ainsi à jeter les dés tant qu\'il ne fait pas un as, un 2 ou un 5, puis c\'est au joueur placé à sa gauche de jouer (celui qui a reçu les dés qui faisaient 2).\r\n'),
(9, 9, 'Backgammon', '2', 'Le gagnant est celui qui enlève tous ses pions du plateau avant l’adversaire.\r\n\r\nMême si cela ne saute pas aux yeux au premier abord, le backgammon est un jeu de course ou de parcours où 2 joueurs s’affrontent.\r\n\r\nChaque participant possède 15 pions, 2 dés, un gobelet et un cube appelé « videau ». Les joueurs bougent leurs pions sur le plateau dépendamment des scores aux dés, et cela, dans le sens des aiguilles d’une montre. La sortie des pions se fait en les ramenant dans son camp qui est le jan intérieur et en les sortant du jeu. Il faut savoir que les parties de backgammon sont rapides, et il ne faut pas tarder à avancer les dames.', '20', 'Plateau', 'Avant de commencer une partie, les 2 joueurs lancent en même temps le dé, et celui qui a le chiffre le plus élevé débute le jeu.\r\n\r\nS’il y a égalité, les deux participants recommencent.\r\n', 'Les joueurs lancent par tour leurs 2 dés. Ils peuvent déplacer un ou plusieurs pions d’un nombre de cases égal au nombre affiché sur chacun des 2 dés. Pour faire avancer les pions, le joueur doit concerter les dés, il les lance et fait des mouvements en conséquence.\r\n\r\nPendant la partie, si un joueur déplace un seul pion, il ne peut pas déplacer ce pion de 6 cases directement, car le déplacement se fait seulement en 2 temps : 4 cases puis 2 ou 2 cases puis 4.'),
(10, 10, 'Monopoly', '2 à 6', 'Pour gagner au Monopoly, il faut être le dernier joueur qui n’ait pas fait faillite.\r\n', '60', 'Plateau', 'Bougez votre pion d’autant de cases que le nombre de points indiqué sur les dés et dans le sens des aiguilles d’une montre.\r\n\r\nLa case où vous vous arrêterez déterminera ce que vous avez à faire. Voir la rubrique « Types de Cases » ci-dessous.\r\n\r\nSi vous passez par ou vous arrêtez sur la case DÉPART, vous recevez M200 de la Banque.\r\n\r\nSi vous faites un double aux dés, effectuez les opérations habituelles sur la case où vous vous arrêtez puis relancez les dés (étapes 1 à 4).\r\n\r\nAttention ! Si vous faites trois doubles de suite, rendez-vous immédiatement en prison.\r\n\r\nLorsque vous avez terminé votre tour, donnez les dés au joueur situé sur votre gauche.\r\n', 'Chaque joueur lance les deux dés blancs. Celui qui fait le plus gros score commence la partie.\r\n\r\nVous pouvez acheter la propriété sur laquelle vous vous arrêtez en payant à la Banque le prix indiqué sur la case du plateau de jeu.\r\n\r\nVous recevrez en échange, comme preuve de cette acquisition, une carte de propriété que vous devez garder face visible devant vous.\r\nSi vous décidez de ne pas l’acheter, le banquier doit immédiatement ouvrir une vente aux enchères.\r\n\r\nLorsque vous achetez des propriétés, vous devez penser à acheter, si possible, les autres propriétés du même groupe de couleur. Par exemple : si vous achetez un terrain vert, vous devez essayer d’acheter les 2 autres terrains verts au cours de la partie.\r\n\r\nPosséder un groupe de couleur augmente le montant du loyer que les autres joueurs ont à payer quand ils atterrissent sur une de ces propriétés et vous permet également de construire des maisons et des hôtels pour encore augmenter vos revenus.\r\n\r\nSi vous vous arrêtez sur une propriété qui appartient à un autre joueur, il peut vous demander de payer un loyer. Le montant du loyer est indiqué sur le titre de propriété et varie selon le nombre de bâtiments qu’elle comporte. Vous n’avez pas à payer de loyer si la propriété est hypothéquée.\r\n'),
(11, 11, 'Scrabble', '2 à 4', 'Pour gagner il faut avoir le plus grand nombre de point\r\n\r\nLorsqu’un mot est placé sur le plateau, sa valeur est calculée comme suit : on additionne la somme des valeurs de chaque lettre, en tenant compte des éventuelles cases « lettre compte double » ou « lettre compte triple » sur lesquelles sont posées ces lettres, puis on multiplie cette somme en tenant compte des éventuelles cases « mot compte double » ou « mot compte triple » sur lesquelles est posé ce mot.\r\n\r\nSi le mot passe sur deux cases « mot compte double », sa valeur est multipliée par 4 (« quadruple »). Si le mot passe sur deux cases « mot compte triple », sa valeur est multipliée par 9 (« nonuple »).\r\n\r\nSi le mot posé forme simultanément d’autres mots, la valeur de ces mots est également comptabilisée, puis on additionne la valeur de tous les mots formés. L’effet multiplicateur d’une case n’est pris en compte que pour le(s) mot(s) posé(s) en premier sur cette case.\r\n\r\nAu coup suivant, seul la valeur de la lettre posée sur la case est prise en compte. Si un joueur utilise ses 7 pions pour former un mot, il a un bonus de 50 points. Chaque jeu de Scrabble possède 2 pions « blancs », ce sont les jokers.\r\n\r\nLeur valeur est de 0 point, mais ils peuvent remplacer n’importe quelle lettre de l’alphabet, au choix du joueur. Ils permettent souvent de faire un « Scrabble » et d’obtenir ainsi la prime de 50 points.', '30', 'Plateau', 'Chaque joueur pioche à tour de rôle une lettre dans le sac. Celui qui obtient la lettre la plus proche de A (dans l’ordre alphabétique) joue en premier. Si plusieurs joueurs ont pioché la même lettre, ils posent leur lettre sur la table puis piochent chacun une nouvelle lettre dans le sac.\r\n\r\nSi un joueur a pioché un joker (lettre blanche), il le pose sur la table puis pioche une nouvelle lettre dans le sac. Une fois le premier joueur déterminé, l’ ordre des joueurs peut être déterminé au choix : – par la lettre piochée par chaque joueur – par l’ordre des aiguilles d’une montre', 'Lorsque c’est son tour, un joueur pioche 7 pions dans le sac, puis il doit poser un mot d’au moins 2 lettres sur le plateau en utilisant un ou plusieurs de ses pions.\r\n\r\nUne fois le mot posé, les points de ce mot sont ajoutés à son score (voir plus bas, « Décompte des points » ), et c’est au tour du joueur suivant.\r\n\r\nAu début de la partie, le mot placé par le premier joueur doit obligatoirement passer par la case centrale, marquée d’une étoile. Cette case faisant office de case « mot compte double », la valeur du mot posé est multipliée par deux.\r\n\r\nEnsuite, chaque mot placé par un joueur doit obligatoirement se raccorder sur une ou plusieurs lettres déjà posées sur la grille.\r\n\r\nSi un mot placé par un joueur forme d’autres mots, ceux-ci doivent également être des mots valides.\r\n\r\nUn mot est valide s’il figure dans l’édition en vigueur du dictionnaire « L’Officiel du Scrabble » (ODS), édité par Larousse.');

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `ID_Utilisateur` int(11) NOT NULL,
  `Pseudo` varchar(255) DEFAULT NULL,
  `Mail` varchar(255) DEFAULT NULL,
  `mdp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`ID_Utilisateur`, `Pseudo`, `Mail`, `mdp`) VALUES
(1, 'Coco', 'coco@cocotier.co', 'CocoLeCoco'),
(2, 'eerré\"\'r', 'SYBzone@gmail.com', '32c27b9de01e4ee198f0463f0cb2ebaabef21d95'),
(3, 'Félix', 'felixallaire25@gmail.com', '32c27b9de01e4ee198f0463f0cb2ebaabef21d95'),
(4, 'test', 'test@test.com', '32c27b9de01e4ee198f0463f0cb2ebaabef21d95'),
(5, 'fefou', 'testfefou@test.com', '9cf95dacd226dcf43da376cdb6cbba7035218921'),
(6, 'gangsta', 'gangsta@gang.com', '9cf95dacd226dcf43da376cdb6cbba7035218921'),
(7, 'test', 'SYBzone@gmail.com', '9cf95dacd226dcf43da376cdb6cbba7035218921'),
(8, 'test', 'SYBzone@gmail.com', '5a9cf67e86ca9737d77fe30e613f70ea1ef9e6b2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`ID_Utilisateur`,`ID_Regle_Alternative`),
  ADD KEY `ID_Regle_Alternative` (`ID_Regle_Alternative`);

--
-- Indexes for table `boutique`
--
ALTER TABLE `boutique`
  ADD PRIMARY KEY (`ID_Boutique`);

--
-- Indexes for table `conseille`
--
ALTER TABLE `conseille`
  ADD PRIMARY KEY (`ID_Jeux`,`ID_Boutique`),
  ADD KEY `ID_Boutique` (`ID_Boutique`);

--
-- Indexes for table `filtre`
--
ALTER TABLE `filtre`
  ADD PRIMARY KEY (`Nb_joueurs`);

--
-- Indexes for table `jeu`
--
ALTER TABLE `jeu`
  ADD PRIMARY KEY (`ID_Jeux`);

--
-- Indexes for table `partage`
--
ALTER TABLE `partage`
  ADD PRIMARY KEY (`ID_Utilisateur`,`ID_Regle_Alternative`),
  ADD KEY `ID_Regle_Alternative` (`ID_Regle_Alternative`);

--
-- Indexes for table `possede`
--
ALTER TABLE `possede`
  ADD PRIMARY KEY (`ID_Jeux`,`ID_REGLE`),
  ADD KEY `ID_REGLE` (`ID_REGLE`);

--
-- Indexes for table `propose`
--
ALTER TABLE `propose`
  ADD PRIMARY KEY (`ID_Jeux`,`Nb_joueurs`),
  ADD KEY `Nb_joueurs` (`Nb_joueurs`);

--
-- Indexes for table `regle_alternative`
--
ALTER TABLE `regle_alternative`
  ADD PRIMARY KEY (`ID_Regle_Alternative`),
  ADD KEY `ID_Utilisateur` (`ID_Utilisateur`),
  ADD KEY `ID_Jeux` (`ID_Jeux`);

--
-- Indexes for table `regle_officielle`
--
ALTER TABLE `regle_officielle`
  ADD PRIMARY KEY (`ID_REGLE`),
  ADD KEY `ID_Jeux` (`ID_Jeux`);

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`ID_Utilisateur`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `ID_Utilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `avis`
--
ALTER TABLE `avis`
  ADD CONSTRAINT `avis_ibfk_2` FOREIGN KEY (`ID_Regle_Alternative`) REFERENCES `regle_alternative` (`ID_Regle_Alternative`);

--
-- Constraints for table `conseille`
--
ALTER TABLE `conseille`
  ADD CONSTRAINT `conseille_ibfk_1` FOREIGN KEY (`ID_Jeux`) REFERENCES `jeu` (`ID_Jeux`),
  ADD CONSTRAINT `conseille_ibfk_2` FOREIGN KEY (`ID_Boutique`) REFERENCES `boutique` (`ID_Boutique`);

--
-- Constraints for table `partage`
--
ALTER TABLE `partage`
  ADD CONSTRAINT `partage_ibfk_2` FOREIGN KEY (`ID_Regle_Alternative`) REFERENCES `regle_alternative` (`ID_Regle_Alternative`);

--
-- Constraints for table `possede`
--
ALTER TABLE `possede`
  ADD CONSTRAINT `possede_ibfk_1` FOREIGN KEY (`ID_Jeux`) REFERENCES `jeu` (`ID_Jeux`),
  ADD CONSTRAINT `possede_ibfk_2` FOREIGN KEY (`ID_REGLE`) REFERENCES `regle_officielle` (`ID_REGLE`);

--
-- Constraints for table `propose`
--
ALTER TABLE `propose`
  ADD CONSTRAINT `propose_ibfk_1` FOREIGN KEY (`ID_Jeux`) REFERENCES `jeu` (`ID_Jeux`),
  ADD CONSTRAINT `propose_ibfk_2` FOREIGN KEY (`Nb_joueurs`) REFERENCES `filtre` (`Nb_joueurs`);

--
-- Constraints for table `regle_alternative`
--
ALTER TABLE `regle_alternative`
  ADD CONSTRAINT `regle_alternative_ibfk_2` FOREIGN KEY (`ID_Jeux`) REFERENCES `jeu` (`ID_Jeux`);

--
-- Constraints for table `regle_officielle`
--
ALTER TABLE `regle_officielle`
  ADD CONSTRAINT `ID_Jeux` FOREIGN KEY (`ID_Jeux`) REFERENCES `jeu` (`ID_Jeux`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
