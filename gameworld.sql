-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 14 dec 2018 om 08:28
-- Serverversie: 5.7.19
-- PHP-versie: 7.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gameworld`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gamecategory`
--

CREATE TABLE `gamecategory` (
  `categoryID` int(3) NOT NULL,
  `categoryTitle` varchar(50) NOT NULL,
  `categoryDescription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `gamecategory`
--

INSERT INTO `gamecategory` (`categoryID`, `categoryTitle`, `categoryDescription`) VALUES
(1, 'PS4', 'De PlayStation 4 (PS4) is een spelcomputer van Sony Interactive Entertainment die in Europa sinds 29 november 2013 verkrijgbaar is. De opvolger van de PlayStation 3 is op 20 februari 2013 aangekondigd in New York tijdens een persconferentie, die volledig in het teken stond van de nieuwe console.[9][10] De PlayStation 4 maakt deel uit van de achtste generatie in de geschiedenis van de spelcomputer.'),
(2, 'xbox', 'De Xbox is een spelcomputer van Microsoft. Hij werd op 15 november 2001 uitgebracht in Noord-Amerika, op 22 februari 2002 in Japan en op 14 maart 2002 werd de Europese markt betreden.'),
(3, 'PC', 'MasterRace');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `games`
--

CREATE TABLE `games` (
  `gameId` int(3) NOT NULL COMMENT 'product id is uniek',
  `gameTitle` varchar(50) NOT NULL,
  `gameDescription` text NOT NULL,
  `gamePrice` decimal(5,2) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `gameImage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `games`
--

INSERT INTO `games` (`gameId`, `gameTitle`, `gameDescription`, `gamePrice`, `categoryid`, `gameImage`) VALUES
(1, 'Rocket League', 'Rocket League is een racevoetbalspel ontwikkeld door Psyonix. In het spel besturen spelers een auto waarmee ze moeten proberen doelpunten te scoren op een veld dat overeenkomsten vertoont met een voetbalveld.', '19.99', 1, 'rocketLeague.jpg'),
(2, 'fifa 19', 'FIFA 19 is een voetbalsimulatiespel ontwikkeld door EA Canada. Het spel werd uitgegeven door EA Sports en is op 28 september 2018 uitgekomen voor de Nintendo Switch, de PlayStation 3, de PlayStation 4, Windows, de Xbox 360 en de Xbox One.', '59.99', 2, 'fifa19.jpg'),
(3, 'Farming Simulator 19', 'De ultieme landbouwsimulatie keert dit jaar terug met een complete herziening van de grafische engine, met de meest opvallende en meeslepende beelden en effecten, samen met de diepste en meest complete landbouwervaring ooit op consoles en pc.', '34.99', 3, 'farming.jpg'),
(4, 'GTA 5', 'Grand Theft Auto V is een computerspel uit de Grand Theft Auto-serie van Rockstar Games. Het spel is ontwikkeld door Rockstar North en kwam op 17 september 2013 uit voor PlayStation 3 en Xbox 360.', '39.99', 3, 'gta5.jpg'),
(5, 'red dead redemption 2', 'Red Dead Redemption 2 is een action-adventurespel ontwikkeld door Rockstar Studios. Het spel wordt uitgegeven door Rockstar Games en kwam op 26 oktober 2018 uit voor PlayStation 4 en Xbox One. Het spel speelt zich 12 jaar voor de gebeurtenissen van Red Dead Redemption af, dat in 2010 uitkwam.', '59.99', 1, 'RedDead2.jpg'),
(6, 'Battlefield V', 'Battlefield V is een first-person shooter ontwikkeld door EA DICE. Het spel wordt uitgegeven door Electronic Arts en is op 20 november 2018 uitgekomen voor de PlayStation 4, Windows en de Xbox One. Het is het zestiende spel uit de Battlefield-serie.', '59.99', 3, 'battlefield-5.jpg'),
(7, 'Marvel\'s Spider-Man', 'Spider-Man is een action-adventurespel ontwikkeld door Insomniac Games. Het spel wordt uitgegeven door Sony Interactive Entertainment en kwam op 7 september 2018 uit voor de PlayStation 4.', '49.99', 1, 'spider-man.jpg'),
(8, 'Call of Duty: Black Ops 4', 'Call of Duty: Black Ops 4 is een first-person shooter ontwikkeld door Treyarch. Het spel wordt uitgegeven door Activision en kwam op 12 oktober 2018 uit voor de PlayStation 4, Windows en de Xbox One. Het is het vijftiende spel in de Call of Duty-serie en het vijfde spel in de Black Ops-verhaallijn.', '59.99', 3, 'cod4.jpg'),
(9, 'Fortnite', 'Fortnite is een third-person shooter ontwikkeld door Epic Games en People Can Fly. Het spel wordt uitgegeven door Epic Games en kwam op 25 juli 2017 als vroegtijdige toegang uit, en is beschikbaar voor macOS, iOS, PlayStation 4, Windows en Xbox One.', '1.00', 3, 'fortnite.jpg'),
(10, 'For Honor', 'For Honor is een actievechtspel ontwikkeld door Ubisoft Montreal en uitgegeven door Ubisoft voor Windows, PlayStation 4 en Xbox One. De speler speelt alleen of samen met andere spelers bijvoorbeeld 4 vs 4.', '40.00', 2, 'ForHonor.jpg'),
(11, 'Project Cars', 'Project CARS is geleid, getest en beoordeeld door een gepassioneerde groep race-fans en professionele coureurs. Deze game vertegenwoordigt de volgende generatie van racing simulatie als de ultieme combinatie van de passie van de fans en de expertise van de ontwikkelaar.', '30.00', 1, 'projectcars.jpg'),
(12, 'Assassin’s Creed: Odyssey', 'Assassin\'s Creed Odyssey is een action-adventure ontwikkeld door Ubisoft Quebec. Het spel wordt uitgegeven door Ubisoft en kwam op 5 oktober 2018 uit voor de PlayStation 4.', '60.00', 1, 'assasin.jpg'),
(13, 'Call Of Duty: WWII', 'Call of Duty: WWII is een first-person shooter ontwikkeld door Sledgehammer Games. Het spel wordt uitgegeven door Activision en is op 3 november 2017 uitgebracht voor Microsoft Windows.', '50.00', 1, 'codww2.jpg'),
(14, 'The Last of Us Remastered', 'The Last of Us speelt zich af in een post-apocalyptische wereld waarin het veertienjarige meisje Ellie en veteraan Joel moeten zien te overleven.', '19.00', 1, 'thelast.jpg'),
(15, 'Uncharted 4: A Thief\'s End', 'Drie jaar na de gebeurtenissen van Uncharted 3, Drake\'s Deception heeft Nathan Drake besloten zijn dagen als schattenjager achter zich te laten.', '19.00', 1, 'uncharted.jpg'),
(16, 'Fallout 76', 'Bethesda Game Studios, de bekroonde ontwikkelaars van Skyrim en Fallout 4, verwelkomen je in Fallout 76.', '44.00', 2, 'fallout.jpg'),
(17, 'Cities Skylines Complete Edition', 'Cities: Skylines is de moderne variant van de klassieke stad simulatie game. De game introduceert namelijk nieuwe game play elementen om het realisme omhoog te schroeven.', '28.90', 2, 'cities.jpg'),
(18, 'Sid Meier’s Civilization VI', 'Het spel speelt sneller en vlotter dan de voorgaande delen zonder dat er is ingeleverd op diepgang. Elk spel leer ik weer nieuwe dingen en elke keer probeer ik net weer iets beter te spelen. Het is een heerlijk spel om een avond voor uit te trekken en doordat het spel turnbased is, kun je alle tijd nemen voor elke beurt.', '54.90', 2, 'sid.jpg'),
(19, 'Lego: Harry Potter Jaren 1-4', 'Na het succes van Lego Star Wars, Lego Batman en Lego Indiana Jon is is hier eindelijk de Lego-versie rond Harry Potter. Natuurlijk staan bekende concepten.', '19.00', 2, 'harry.jpg'),
(20, 'RollerCoaster Tycoon: Classic PC', 'RollerCoaster Tycoon: Classic is een nieuwe RCT-ervaring, de combinatie van de beste functionaliteit van de twee meest succesvolle en geliefde RCT-games uit de geschiedenis van de serie RollerCoaster Tycoon en RollerCoaster Tycoon 2.', '14.99', 2, 'rollor.jpg'),
(21, 'SimCity (PC) EN - Windows', 'Simcity betekent de comeback van de gamereeks waaruit het stadsimulatorgenre voortkwam. Gebruik de macht van je verbeelding en creëer je eigen wereld!', '20.00', 2, 'simcity.jpg'),
(22, 'Just Dance: 2019', 'Dans jij op elk moment van de de dag? Dan is Just Dance 2019 jouw game! Leer de tofste moves uit de musicvideo’s van dit moment en dans de sterren van de hemel.', '38.00', 3, 'justdance.jpg'),
(23, 'Forza Horizon 4: Standard Edition', 'Verken prachtige, historische Britse landschappen. Ontdek meren, valleien, kastelen en adembenemende omgevingen in verbluffende 4K-resolutie met HDR. De seizoenen veranderen alles!', '50.00', 3, 'forza.jpg'),
(24, 'F1 2018 Headline Edition', 'Met alle officiële teams, coureurs en 21 circuits van het seizoen 2018 zien we in F1 2018 voor het eerst sinds 2008 de terugkeer van de Franse Grand Prix met het circuit Paul Ricard, waar de Franse Grand Prix voor het laatst in 1990 werd gehouden.', '50.00', 3, 'f1.jpg');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `gamecategory`
--
ALTER TABLE `gamecategory`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexen voor tabel `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`gameId`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `gamecategory`
--
ALTER TABLE `gamecategory`
  MODIFY `categoryID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `games`
--
ALTER TABLE `games`
  MODIFY `gameId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'product id is uniek', AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
