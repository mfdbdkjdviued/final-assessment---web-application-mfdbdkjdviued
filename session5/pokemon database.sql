-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2020 at 01:59 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pokemon`
--
CREATE DATABASE IF NOT EXISTS `pokemon` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pokemon`;

-- --------------------------------------------------------

--
-- Table structure for table `pokedex`
--

CREATE TABLE `pokedex` (
  `pokedex_number` int(3) NOT NULL,
  `name` varchar(10) NOT NULL,
  `abilities` varchar(150) NOT NULL,
  `classfication` varchar(50) NOT NULL,
  `attack` int(3) NOT NULL,
  `defense` int(3) NOT NULL,
  `hp` int(3) NOT NULL,
  `speed` int(3) NOT NULL,
  `type1` varchar(15) NOT NULL,
  `type2` varchar(15) DEFAULT NULL,
  `height_m` decimal(3,2) NOT NULL,
  `weight_kg` decimal(5,2) NOT NULL,
  `generation` int(1) NOT NULL,
  `is_legendary` int(1) NOT NULL,
  `icon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pokedex`
--

INSERT INTO `pokedex` (`pokedex_number`, `name`, `abilities`, `classfication`, `attack`, `defense`, `hp`, `speed`, `type1`, `type2`, `height_m`, `weight_kg`, `generation`, `is_legendary`, `icon`) VALUES
(1, 'Bulbasaur', '[\'Overgrow\', \'Chlorophyll\']', 'Seed Pokemon', 49, 49, 45, 45, 'grass', 'poison', '0.70', '6.90', 1, 0, 'icons/1.png'),
(2, 'Ivysaur', '[\'Overgrow\', \'Chlorophyll\']', 'Seed Pokemon', 62, 63, 60, 60, 'grass', 'poison', '1.00', '13.00', 1, 0, 'icons/2.png'),
(3, 'Venusaur', '[\'Overgrow\', \'Chlorophyll\']', 'Seed Pokemon', 100, 123, 80, 80, 'grass', 'poison', '2.00', '100.00', 1, 0, 'icons/3.png'),
(4, 'Charmander', '[\'Blaze\', \'Solar Power\']', 'Lizard Pokemon', 52, 43, 39, 65, 'fire', '', '0.60', '8.50', 1, 0, 'icons/4.png'),
(5, 'Charmeleon', '[\'Blaze\', \'Solar Power\']', 'Flame Pokemon', 64, 58, 58, 80, 'fire', '', '1.10', '19.00', 1, 0, 'icons/5.png'),
(6, 'Charizard', '[\'Blaze\', \'Solar Power\']', 'Flame Pokemon', 104, 78, 78, 100, 'fire', 'flying', '1.70', '90.50', 1, 0, 'icons/6.png'),
(8, 'Wartortle', '[\'Torrent\', \'Rain Dish\']', 'Turtle Pokemon', 63, 80, 59, 58, 'water', '', '1.00', '22.50', 1, 0, 'icons/8.png'),
(10, 'Caterpie', '[\'Shield Dust\', \'Run Away\']', 'Worm Pokemon', 30, 35, 45, 45, 'bug', '', '0.30', '2.90', 1, 0, 'icons/10.png'),
(11, 'Metapod', '[\'Shed Skin\']', 'Cocoon Pokemon', 20, 55, 50, 30, 'bug', '', '0.70', '9.90', 1, 0, 'icons/11.png'),
(12, 'Butterfree', '[\'Compoundeyes\', \'Tinted Lens\']', 'Butterfly Pokemon', 45, 50, 60, 70, 'bug', 'flying', '1.10', '32.00', 1, 0, 'icons/12.png'),
(14, 'Kakuna', '[\'Shed Skin\']', 'Cocoon Pokemon', 25, 50, 45, 35, 'bug', 'poison', '0.60', '10.00', 1, 0, 'icons/14.png'),
(15, 'Beedrill', '[\'Swarm\', \'Sniper\']', 'Poison Bee Pokemon', 150, 40, 65, 145, 'bug', 'poison', '1.00', '29.50', 1, 0, 'icons/15.png'),
(16, 'Pidgey', '[\'Keen Eye\', \'Tangled Feet\', \'Big Pecks\']', 'Tiny Bird Pokemon', 45, 40, 40, 56, 'normal', 'flying', '0.30', '1.80', 1, 0, 'icons/16.png'),
(17, 'Pidgeotto', '[\'Keen Eye\', \'Tangled Feet\', \'Big Pecks\']', 'Bird Pokemon', 60, 55, 63, 71, 'normal', 'flying', '1.10', '30.00', 1, 0, 'icons/17.png'),
(18, 'Pidgeot', '[\'Keen Eye\', \'Tangled Feet\', \'Big Pecks\']', 'Bird Pokemon', 80, 80, 83, 121, 'normal', 'flying', '1.50', '39.50', 1, 0, 'icons/18.png'),
(19, 'Rattata', '[\'Run Away\', \'Guts\', \'Hustle\', \'Gluttony\', \'Hustle\', \'Thick Fat\']', 'Mouse Pokemon', 56, 35, 30, 72, 'normal', 'dark', '0.30', '3.50', 1, 0, 'icons/19.png'),
(20, 'Raticate', '[\'Run Away\', \'Guts\', \'Hustle\', \'Gluttony\', \'Hustle\', \'Thick Fat\']', 'Mouse Pokemon', 71, 70, 75, 77, 'normal', 'dark', '0.70', '18.50', 1, 0, 'icons/20.png'),
(21, 'Spearow', '[\'Keen Eye\', \'Sniper\']', 'Tiny Bird Pokemon', 60, 30, 40, 70, 'normal', 'flying', '0.30', '2.00', 1, 0, 'icons/21.png'),
(22, 'Fearow', '[\'Keen Eye\', \'Sniper\']', 'Beak Pokemon', 90, 65, 65, 100, 'normal', 'flying', '1.20', '38.00', 1, 0, 'icons/22.png'),
(23, 'Ekans', '[\'Intimidate\', \'Shed Skin\', \'Unnerve\']', 'Snake Pokemon', 60, 44, 35, 55, 'poison', '', '2.00', '6.90', 1, 0, 'icons/23.png'),
(24, 'Arbok', '[\'Intimidate\', \'Shed Skin\', \'Unnerve\']', 'Cobra Pokemon', 95, 69, 60, 80, 'poison', '', '3.50', '65.00', 1, 0, 'icons/24.png'),
(25, 'Pikachu', '[\'Static\', \'Lightningrod\']', 'Mouse Pokemon', 65, 55, 70, 110, 'electric', '', '0.40', '6.00', 1, 0, 'icons/25.png'),
(26, 'Raichu', '[\'Static\', \'Lightningrod\', \'Surge Surfer\']', 'Mouse Pokemon', 85, 50, 60, 110, 'electric', 'electric', '0.80', '30.00', 1, 0, 'icons/26.png'),
(27, 'Sandshrew', '[\'Sand Veil\', \'Sand Rush\', \'Snow Cloak\', \'Slush Rush\']', 'Mouse Pokemon', 75, 90, 50, 40, 'ground', 'ice', '0.60', '12.00', 1, 0, 'icons/27.png'),
(28, 'Sandslash', '[\'Sand Veil\', \'Sand Rush\', \'Snow Cloak\', \'Slush Rush\']', 'Mouse Pokemon', 100, 120, 75, 65, 'ground', 'ice', '1.00', '29.50', 1, 0, 'icons/28.png'),
(29, 'Nidoran♀', '[\'Poison Point\', \'Rivalry\', \'Hustle\']', 'Poison Pin Pokemon', 47, 52, 55, 41, 'poison', '', '0.40', '7.00', 1, 0, 'icons/29.png'),
(30, 'Nidorina', '[\'Poison Point\', \'Rivalry\', \'Hustle\']', 'Poison Pin Pokemon', 62, 67, 70, 56, 'poison', '', '0.80', '20.00', 1, 0, 'icons/30.png'),
(31, 'Nidoqueen', '[\'Poison Point\', \'Rivalry\', \'Sheer Force\']', 'Drill Pokemon', 92, 87, 90, 76, 'poison', 'ground', '1.30', '60.00', 1, 0, 'icons/31.png'),
(32, 'Nidoran♂', '[\'Poison Point\', \'Rivalry\', \'Hustle\']', 'Poison Pin Pokemon', 57, 40, 46, 50, 'poison', '', '0.50', '9.00', 1, 0, 'icons/32.png'),
(33, 'Nidorino', '[\'Poison Point\', \'Rivalry\', \'Hustle\']', 'Poison Pin Pokemon', 72, 57, 61, 65, 'poison', '', '0.90', '19.50', 1, 0, 'icons/33.png'),
(34, 'Nidoking', '[\'Poison Point\', \'Rivalry\', \'Sheer Force\']', 'Drill Pokemon', 102, 77, 81, 85, 'poison', 'ground', '1.40', '62.00', 1, 0, 'icons/34.png'),
(35, 'Clefairy', '[\'Cute Charm\', \'Magic Guard\', \'Friend Guard\']', 'Fairy Pokemon', 45, 48, 70, 35, 'fairy', '', '0.60', '7.50', 1, 0, 'icons/35.png'),
(36, 'Clefable', '[\'Cute Charm\', \'Magic Guard\', \'Unaware\']', 'Fairy Pokemon', 70, 73, 95, 60, 'fairy', '', '1.30', '40.00', 1, 0, 'icons/36.png'),
(37, 'Vulpix', '[\'Flash Fire\', \'Drought\', \'Snow Cloak\', \'Snow Warning\']', 'Fox Pokemon', 41, 40, 38, 65, 'fire', 'ice', '0.60', '9.90', 1, 0, 'icons/37.png'),
(38, 'Ninetales', '[\'Flash Fire\', \'Drought\', \'Snow Cloak\', \'Snow Warning\']', 'Fox Pokemon', 67, 75, 73, 109, 'fire', 'ice', '1.10', '19.90', 1, 0, 'icons/38.png'),
(39, 'Jigglypuff', '[\'Cute Charm\', \'Competitive\', \'Friend Guard\']', 'Balloon Pokemon', 45, 20, 115, 20, 'normal', 'fairy', '0.50', '5.50', 1, 0, 'icons/39.png'),
(40, 'Wigglytuff', '[\'Cute Charm\', \'Competitive\', \'Frisk\']', 'Balloon Pokemon', 70, 45, 140, 45, 'normal', 'fairy', '1.00', '12.00', 1, 0, 'icons/40.png'),
(41, 'Zubat', '[\'Inner Focus\', \'Infiltrator\']', 'Bat Pokemon', 45, 35, 40, 55, 'poison', 'flying', '0.80', '7.50', 1, 0, 'icons/41.png'),
(42, 'Golbat', '[\'Inner Focus\', \'Infiltrator\']', 'Bat Pokemon', 80, 70, 75, 90, 'poison', 'flying', '1.60', '55.00', 1, 0, 'icons/42.png'),
(43, 'Oddish', '[\'Chlorophyll\', \'Run Away\']', 'Weed Pokemon', 50, 55, 45, 30, 'grass', 'poison', '0.50', '5.40', 1, 0, 'icons/43.png'),
(44, 'Gloom', '[\'Chlorophyll\', \'Stench\']', 'Weed Pokemon', 65, 70, 60, 40, 'grass', 'poison', '0.80', '8.60', 1, 0, 'icons/44.png'),
(45, 'Vileplume', '[\'Chlorophyll\', \'Effect Spore\']', 'Flower Pokemon', 80, 85, 75, 50, 'grass', 'poison', '1.20', '18.60', 1, 0, 'icons/45.png'),
(46, 'Paras', '[\'Effect Spore\', \'Dry Skin\', \'Damp\']', 'Mushroom Pokemon', 70, 55, 35, 25, 'bug', 'grass', '0.30', '5.40', 1, 0, 'icons/46.png'),
(47, 'Parasect', '[\'Effect Spore\', \'Dry Skin\', \'Damp\']', 'Mushroom Pokemon', 95, 80, 60, 30, 'bug', 'grass', '1.00', '29.50', 1, 0, 'icons/47.png'),
(48, 'Venonat', '[\'Compoundeyes\', \'Tinted Lens\', \'Run Away\']', 'Insect Pokemon', 55, 50, 60, 45, 'bug', 'poison', '1.00', '30.00', 1, 0, 'icons/48.png'),
(49, 'Venomoth', '[\'Shield Dust\', \'Tinted Lens\', \'Wonder Skin \']', 'Poison Moth Pokemon', 65, 60, 70, 90, 'bug', 'poison', '1.50', '12.50', 1, 0, 'icons/49.png'),
(50, 'Diglett', '[\'Sand Veil\', \'Arena Trap\', \'Sand Force\', \'Sand Veil\', \'Tangling Hair\', \'Sand Force\']', 'Mole Pokemon', 55, 30, 10, 90, 'ground', 'ground', '0.20', '0.80', 1, 0, 'icons/50.png'),
(51, 'Dugtrio', '[\'Sand Veil\', \'Arena Trap\', \'Sand Force\', \'Sand Veil\', \'Tangling Hair\', \'Sand Force\']', 'Mole Pokemon', 100, 60, 35, 110, 'ground', 'ground', '0.70', '33.30', 1, 0, 'icons/51.png'),
(52, 'Meowth', '[\'Pickup\', \'Technician\', \'Unnerve\', \'Pickup\', \'Technician\', \'Rattled\']', 'Scratch Cat Pokemon', 1, 1, 1, 1, 'normal', 'dark', '0.40', '4.20', 1, 0, 'icons/52.png'),
(53, 'Persian', '[\'Limber\', \'Technician\', \'Unnerve\', \'Fur Coat\', \'Technician\', \'Rattled\']', 'Classy Cat Pokemon', 60, 60, 65, 115, 'normal', 'dark', '1.00', '32.00', 1, 0, 'icons/53.png'),
(54, 'Psyduck', '[\'Damp\', \'Cloud Nine\', \'Swift Swim\']', 'Duck Pokemon', 52, 48, 50, 55, 'water', '', '0.80', '19.60', 1, 0, 'icons/54.png'),
(55, 'Golduck', '[\'Damp\', \'Cloud Nine\', \'Swift Swim\']', 'Duck Pokemon', 82, 78, 80, 85, 'water', '', '1.70', '76.60', 1, 0, 'icons/55.png'),
(56, 'Mankey', '[\'Vital Spirit\', \'Anger Point\', \'Defiant\']', 'Pig Monkey Pokemon', 80, 35, 40, 70, 'fighting', '', '0.50', '28.00', 1, 0, 'icons/56.png'),
(57, 'Primeape', '[\'Vital Spirit\', \'Anger Point\', \'Defiant\']', 'Pig Monkey Pokemon', 105, 60, 65, 95, 'fighting', '', '1.00', '32.00', 1, 0, 'icons/57.png'),
(58, 'Growlithe', '[\'Intimidate\', \'Flash Fire\', \'Justified\']', 'Puppy Pokemon', 70, 45, 55, 60, 'fire', '', '0.70', '19.00', 1, 0, 'icons/58.png'),
(59, 'Arcanine', '[\'Intimidate\', \'Flash Fire\', \'Justified\']', 'Legendary Pokemon', 110, 80, 90, 95, 'fire', '', '1.90', '155.00', 1, 0, 'icons/59.png'),
(60, 'Poliwag', '[\'Water Absorb\', \'Damp\', \'Swift Swim\']', 'Tadpole Pokemon', 50, 40, 40, 90, 'water', '', '0.60', '12.40', 1, 0, 'icons/60.png'),
(61, 'Poliwhirl', '[\'Water Absorb\', \'Damp\', \'Swift Swim\']', 'Tadpole Pokemon', 65, 65, 65, 90, 'water', '', '1.00', '20.00', 1, 0, 'icons/61.png'),
(62, 'Poliwrath', '[\'Water Absorb\', \'Damp\', \'Swift Swim\']', 'Tadpole Pokemon', 95, 95, 90, 70, 'water', 'fighting', '1.30', '54.00', 1, 0, 'icons/62.png'),
(63, 'Abra', '[\'Synchronize\', \'Inner Focus\', \'Magic Guard\']', 'Psi Pokemon', 20, 15, 25, 90, 'psychic', '', '0.90', '19.50', 1, 0, 'icons/63.png'),
(64, 'Kadabra', '[\'Synchronize\', \'Inner Focus\', \'Magic Guard\']', 'Psi Pokemon', 35, 30, 40, 105, 'psychic', '', '1.30', '56.50', 1, 0, 'icons/64.png'),
(65, 'Alakazam', '[\'Synchronize\', \'Inner Focus\', \'Magic Guard\']', 'Psi Pokemon', 50, 65, 55, 150, 'psychic', '', '1.50', '48.00', 1, 0, 'icons/65.png'),
(66, 'Machop', '[\'Guts\', \'No Guard\', \'Steadfast\']', 'Superpower Pokemon', 80, 50, 70, 35, 'fighting', '', '0.80', '19.50', 1, 0, 'icons/66.png'),
(67, 'Machoke', '[\'Guts\', \'No Guard\', \'Steadfast\']', 'Superpower Pokemon', 100, 70, 80, 45, 'fighting', '', '1.50', '70.50', 1, 0, 'icons/67.png'),
(68, 'Machamp', '[\'Guts\', \'No Guard\', \'Steadfast\']', 'Superpower Pokemon', 130, 80, 90, 55, 'fighting', '', '1.60', '130.00', 1, 0, 'icons/68.png'),
(69, 'Bellsprout', '[\'Chlorophyll\', \'Gluttony\']', 'Flower Pokemon', 75, 35, 50, 40, 'grass', 'poison', '0.70', '4.00', 1, 0, 'icons/69.png'),
(70, 'Weepinbell', '[\'Chlorophyll\', \'Gluttony\']', 'Flycatcher Pokemon', 90, 50, 65, 55, 'grass', 'poison', '1.00', '6.40', 1, 0, 'icons/70.png'),
(71, 'Victreebel', '[\'Chlorophyll\', \'Gluttony\']', 'Flycatcher Pokemon', 105, 65, 80, 70, 'grass', 'poison', '1.70', '15.50', 1, 0, 'icons/71.png'),
(72, 'Tentacool', '[\'Clear Body\', \'Liquid Ooze\', \'Rain Dish\']', 'Jellyfish Pokemon', 40, 35, 40, 70, 'water', 'poison', '0.90', '45.50', 1, 0, 'icons/72.png'),
(73, 'Tentacruel', '[\'Clear Body\', \'Liquid Ooze\', \'Rain Dish\']', 'Jellyfish Pokemon', 70, 65, 80, 100, 'water', 'poison', '1.60', '55.00', 1, 0, 'icons/73.png'),
(74, 'Geodude', '[\'Rock Head\', \'Sturdy\', \'Sand Veil\', \'Magnet Pull\', \'Sturdy\', \'Galvanize\']', 'Rock Pokemon', 80, 100, 40, 20, 'rock', 'ground', '1.04', '20.00', 1, 0, 'icons/74.png'),
(75, 'Graveler', '[\'Rock Head\', \'Sturdy\', \'Sand Veil\', \'Magnet Pull\', \'Sturdy\', \'Galvanize\']', 'Rock Pokemon', 95, 115, 55, 35, 'rock', 'ground', '1.00', '105.00', 1, 0, 'icons/75.png'),
(76, 'Golem', '[\'Rock Head\', \'Sturdy\', \'Sand Veil\', \'Magnet Pull\', \'Sturdy\', \'Galvanize\']', 'Megaton Pokemon', 120, 130, 80, 45, 'rock', 'ground', '1.40', '300.00', 1, 0, 'icons/76.png'),
(77, 'Ponyta', '[\'Run Away\', \'Flash Fire\', \'Flame Body\']', 'Fire Horse Pokemon', 85, 55, 50, 90, 'fire', '', '1.00', '30.00', 1, 0, 'icons/77.png'),
(78, 'Rapidash', '[\'Run Away\', \'Flash Fire\', \'Flame Body\']', 'Fire Horse Pokemon', 100, 70, 65, 105, 'fire', '', '1.70', '95.00', 1, 0, 'icons/78.png'),
(79, 'Slowpoke', '[\'Oblivious\', \'Own Tempo\', \'Regenerator\']', 'Dopey Pokemon', 65, 65, 90, 15, 'water', 'psychic', '1.20', '36.00', 1, 0, 'icons/79.png'),
(80, 'Slowbro', '[\'Oblivious\', \'Own Tempo\', \'Regenerator\']', 'Hermit Crab Pokemon', 75, 180, 95, 30, 'water', 'psychic', '1.60', '78.50', 1, 0, 'icons/80.png'),
(81, 'Magnemite', '[\'Magnet Pull\', \'Sturdy\', \'Analytic\']', 'Magnet Pokemon', 35, 70, 25, 45, 'electric', 'steel', '0.30', '6.00', 1, 0, 'icons/81.png'),
(82, 'Magneton', '[\'Magnet Pull\', \'Sturdy\', \'Analytic\']', 'Magnet Pokemon', 60, 95, 50, 70, 'electric', 'steel', '1.00', '60.00', 1, 0, 'icons/82.png'),
(83, 'Farfetch\'d', '[\'Keen Eye\', \'Inner Focus\', \'Defiant\']', 'Wild Duck Pokemon', 90, 55, 52, 60, 'normal', 'flying', '0.80', '15.00', 1, 0, 'icons/83.png'),
(84, 'Doduo', '[\'Run Away\', \'Early Bird\', \'Tangled Feet\']', 'Twin Bird Pokemon', 85, 45, 35, 75, 'normal', 'flying', '1.40', '39.20', 1, 0, 'icons/84.png'),
(85, 'Dodrio', '[\'Run Away\', \'Early Bird\', \'Tangled Feet\']', 'Triple Bird Pokemon', 110, 70, 60, 110, 'normal', 'flying', '1.80', '85.20', 1, 0, 'icons/85.png'),
(86, 'Seel', '[\'Thick Fat\', \'Hydration\', \'Ice Body\']', 'Sea Lion Pokemon', 45, 55, 65, 45, 'water', '', '1.10', '90.00', 1, 0, 'icons/86.png'),
(87, 'Dewgong', '[\'Thick Fat\', \'Hydration\', \'Ice Body\']', 'Sea Lion Pokemon', 70, 80, 90, 70, 'water', 'ice', '1.70', '120.00', 1, 0, 'icons/87.png'),
(88, 'Grimer', '[\'Stench\', \'Sticky Hold\', \'Poison Touch\', \'Poison Touch\', \'Gluttony\', \'Power of Alchemy\']', 'Sludge Pokemon', 80, 50, 80, 25, 'poison', 'poison', '0.90', '30.00', 1, 0, 'icons/88.png'),
(89, 'Muk', '[\'Stench\', \'Sticky Hold\', \'Poison Touch\', \'Poison Touch\', \'Gluttony\', \'Power of Alchemy\']', 'Sludge Pokemon', 105, 75, 105, 50, 'poison', 'poison', '1.20', '30.00', 1, 0, 'icons/89.png'),
(90, 'Shellder', '[\'Shell Armor\', \'Skill Link\', \'Overcoat\']', 'Bivalve Pokemon', 65, 100, 30, 40, 'water', '', '0.30', '4.00', 1, 0, 'icons/90.png'),
(91, 'Cloyster', '[\'Shell Armor\', \'Skill Link\', \'Overcoat\']', 'Bivalve Pokemon', 95, 180, 50, 70, 'water', 'ice', '1.50', '132.50', 1, 0, 'icons/91.png'),
(92, 'Gastly', '[\'Levitate\']', 'Gas Pokemon', 35, 30, 30, 80, 'ghost', 'poison', '1.30', '0.10', 1, 0, 'icons/92.png'),
(93, 'Haunter', '[\'Levitate\']', 'Gas Pokemon', 50, 45, 45, 95, 'ghost', 'poison', '1.60', '0.10', 1, 0, 'icons/93.png'),
(94, 'Gengar', '[\'Cursed Body\']', 'Shadow Pokemon', 65, 80, 60, 130, 'ghost', 'poison', '1.50', '40.50', 1, 0, 'icons/94.png'),
(95, 'Onix', '[\'Rock Head\', \'Sturdy\', \'Weak Armor\']', 'Rock Snake Pokemon', 45, 160, 35, 70, 'rock', 'ground', '8.80', '210.00', 1, 0, 'icons/95.png'),
(96, 'Drowzee', '[\'Insomnia\', \'Forewarn\', \'Inner Focus\']', 'Hypnosis Pokemon', 48, 45, 60, 42, 'psychic', '', '1.00', '32.40', 1, 0, 'icons/96.png'),
(97, 'Hypno', '[\'Insomnia\', \'Forewarn\', \'Inner Focus\']', 'Hypnosis Pokemon', 73, 70, 85, 67, 'psychic', '', '1.60', '75.60', 1, 0, 'icons/97.png'),
(98, 'Krabby', '[\'Hyper Cutter\', \'Shell Armor\', \'Sheer Force\']', 'River Crab Pokemon', 105, 90, 30, 50, 'water', '', '0.40', '6.50', 1, 0, 'icons/98.png'),
(99, 'Kingler', '[\'Hyper Cutter\', \'Shell Armor\', \'Sheer Force\']', 'Pincer Pokemon', 130, 115, 55, 75, 'water', '', '1.30', '60.00', 1, 0, 'icons/99.png'),
(100, 'Voltorb', '[\'Soundproof\', \'Static\', \'Aftermath\']', 'Ball Pokemon', 30, 50, 40, 100, 'electric', '', '0.50', '10.40', 1, 0, 'icons/100.png'),
(101, 'Electrode', '[\'Soundproof\', \'Static\', \'Aftermath\']', 'Ball Pokemon', 50, 70, 60, 150, 'electric', '', '1.20', '66.60', 1, 0, 'icons/101.png'),
(102, 'Exeggcute', '[\'Chlorophyll\', \'Harvest\']', 'Egg Pokemon', 40, 80, 60, 40, 'grass', 'psychic', '0.40', '2.50', 1, 0, 'icons/102.png'),
(103, 'Exeggutor', '[\'Chlorophyll\', \'Harvest\', \'Frisk\', \'Harvest\']', 'Coconut Pokemon', 105, 85, 95, 45, 'grass', 'psychic', '2.00', '120.00', 1, 0, 'icons/103.png'),
(104, 'Cubone', '[\'Rock Head\', \'Lightningrod\', \'Battle Armor\']', 'Lonely Pokemon', 50, 95, 50, 35, 'ground', '', '0.40', '6.50', 1, 0, 'icons/104.png'),
(105, 'Marowak', '[\'Rock Head\', \'Lightningrod\', \'Battle Armor\', \'Cursed Body\', \'Lightningrod\', \'Rock Head\']', 'Bone Keeper Pokemon', 80, 110, 60, 45, 'ground', 'fire', '1.00', '45.00', 1, 0, 'icons/105.png'),
(106, 'Hitmonlee', '[\'Limber\', \'Reckless\', \'Unburden\']', 'Kicking Pokemon', 120, 53, 50, 87, 'fighting', '', '1.50', '49.80', 1, 0, 'icons/106.png'),
(107, 'Hitmonchan', '[\'Keen Eye\', \'Iron Fist\', \'Inner Focus\']', 'Punching Pokemon', 105, 79, 50, 76, 'fighting', '', '1.40', '50.20', 1, 0, 'icons/107.png'),
(108, 'Lickitung', '[\'Own Tempo\', \'Oblivious\', \'Cloud Nine\']', 'Licking Pokemon', 55, 75, 90, 30, 'normal', '', '1.20', '65.50', 1, 0, 'icons/108.png'),
(109, 'Koffing', '[\'Levitate\']', 'Poison Gas Pokemon', 65, 95, 40, 35, 'poison', '', '0.60', '1.00', 1, 0, 'icons/109.png'),
(110, 'Weezing', '[\'Levitate\']', 'Poison Gas Pokemon', 90, 120, 65, 60, 'poison', '', '1.20', '9.50', 1, 0, 'icons/110.png'),
(111, 'Rhyhorn', '[\'Lightningrod\', \'Rock Head\', \'Reckless\']', 'Spikes Pokemon', 85, 95, 80, 25, 'ground', 'rock', '1.00', '115.00', 1, 0, 'icons/111.png'),
(112, 'Rhydon', '[\'Lightningrod\', \'Rock Head\', \'Reckless\']', 'Drill Pokemon', 130, 120, 105, 40, 'ground', 'rock', '1.90', '120.00', 1, 0, 'icons/112.png'),
(113, 'Chansey', '[\'Natural Cure\', \'Serene Grace\', \'Healer\']', 'Egg Pokemon', 5, 5, 250, 50, 'normal', '', '1.10', '34.60', 1, 0, 'icons/113.png'),
(114, 'Tangela', '[\'Chlorophyll\', \'Leaf Guard\', \'Regenerator\']', 'Vine Pokemon', 55, 115, 65, 60, 'grass', '', '1.00', '35.00', 1, 0, 'icons/114.png'),
(115, 'Kangaskhan', '[\'Early Bird\', \'Scrappy\', \'Inner Focus\']', 'Parent Pokemon', 125, 100, 105, 100, 'normal', '', '2.20', '80.00', 1, 0, 'icons/115.png'),
(116, 'Horsea', '[\'Swift Swim\', \'Sniper\', \'Damp\']', 'Dragon Pokemon', 40, 70, 30, 60, 'water', '', '0.40', '8.00', 1, 0, 'icons/116.png'),
(117, 'Seadra', '[\'Poison Point\', \'Sniper\', \'Damp\']', 'Dragon Pokemon', 65, 95, 55, 85, 'water', '', '1.20', '25.00', 1, 0, 'icons/117.png'),
(118, 'Goldeen', '[\'Swift Swim\', \'Water Veil\', \'Lightningrod\']', 'Goldfish Pokemon', 67, 60, 45, 63, 'water', '', '0.60', '15.00', 1, 0, 'icons/118.png'),
(119, 'Seaking', '[\'Swift Swim\', \'Water Veil\', \'Lightningrod\']', 'Goldfish Pokemon', 92, 65, 80, 68, 'water', '', '1.30', '39.00', 1, 0, 'icons/119.png'),
(120, 'Staryu', '[\'Illuminate\', \'Natural Cure\', \'Analytic\']', 'Starshape Pokemon', 45, 55, 30, 85, 'water', '', '0.80', '34.50', 1, 0, 'icons/120.png'),
(121, 'Starmie', '[\'Illuminate\', \'Natural Cure\', \'Analytic\']', 'Mysterious Pokemon', 75, 85, 60, 115, 'water', 'psychic', '1.10', '80.00', 1, 0, 'icons/121.png'),
(122, 'Mr. Mime', '[\'Soundproof\', \'Filter\', \'Technician\']', 'Barrier Pokemon', 45, 65, 40, 90, 'psychic', 'fairy', '1.30', '54.50', 1, 0, 'icons/122.png'),
(123, 'Scyther', '[\'Swarm\', \'Technician\', \'Steadfast\']', 'Mantis Pokemon', 110, 80, 70, 105, 'bug', 'flying', '1.50', '56.00', 1, 0, 'icons/123.png'),
(124, 'Jynx', '[\'Oblivious\', \'Forewarn\', \'Dry Skin\']', 'Humanshape Pokemon', 50, 35, 65, 95, 'ice', 'psychic', '1.40', '40.60', 1, 0, 'icons/124.png'),
(125, 'Electabuzz', '[\'Static\', \'Vital Spirit\']', 'Electric Pokemon', 83, 57, 65, 105, 'electric', '', '1.10', '30.00', 1, 0, 'icons/125.png'),
(126, 'Magmar', '[\'Flame Body\', \'Vital Spirit\']', 'Spitfire Pokemon', 95, 57, 65, 93, 'fire', '', '1.30', '44.50', 1, 0, 'icons/126.png'),
(127, 'Pinsir', '[\'Hyper Cutter\', \'Mold Breaker\', \'Moxie\']', 'Stagbeetle Pokemon', 155, 120, 65, 105, 'bug', '', '1.50', '55.00', 1, 0, 'icons/127.png'),
(128, 'Tauros', '[\'Intimidate\', \'Anger Point\', \'Sheer Force\']', 'Wild Bull Pokemon', 100, 95, 75, 110, 'normal', '', '1.40', '88.40', 1, 0, 'icons/128.png'),
(129, 'Magikarp', '[\'Swift Swim\', \'Rattled\']', 'Fish Pokemon', 10, 55, 20, 80, 'water', '', '0.90', '10.00', 1, 0, 'icons/129.png'),
(130, 'Gyarados', '[\'Intimidate\', \'Moxie\']', 'Atrocious Pokemon', 155, 109, 95, 81, 'water', 'flying', '6.50', '235.00', 1, 0, 'icons/130.png'),
(131, 'Lapras', '[\'Water Absorb\', \'Shell Armor\', \'Hydration\']', 'Transport Pokemon', 85, 80, 130, 60, 'water', 'ice', '2.50', '220.00', 1, 0, 'icons/131.png'),
(132, 'Ditto', '[\'Limber\', \'Imposter\']', 'Transform Pokemon', 48, 48, 48, 48, 'normal', '', '0.30', '4.00', 1, 0, 'icons/132.png'),
(133, 'Eevee', '[\'Run Away\', \'Adaptability\', \'Anticipation\']', 'Evolution Pokemon', 55, 50, 55, 55, 'normal', '', '0.30', '6.50', 1, 0, 'icons/133.png'),
(134, 'Vaporeon', '[\'Water Absorb\', \'Hydration\']', 'Bubble Jet Pokemon', 65, 60, 130, 65, 'water', '', '1.00', '29.00', 1, 0, 'icons/134.png'),
(135, 'Jolteon', '[\'Volt Absorb\', \'Quick Feet\']', 'Lightning Pokemon', 65, 60, 65, 130, 'electric', '', '0.80', '24.50', 1, 0, 'icons/135.png'),
(136, 'Flareon', '[\'Flash Fire\', \'Guts\']', 'Flame Pokemon', 130, 60, 65, 65, 'fire', '', '0.90', '25.00', 1, 0, 'icons/136.png'),
(137, 'Porygon', '[\'Trace\', \'Download\', \'Analytic\']', 'Virtual Pokemon', 60, 70, 65, 40, 'normal', '', '0.80', '36.50', 1, 0, 'icons/137.png'),
(138, 'Omanyte', '[\'Swift Swim\', \'Shell Armor\', \'Weak Armor\']', 'Spiral Pokemon', 40, 100, 35, 35, 'rock', 'water', '0.40', '7.50', 1, 0, 'icons/138.png'),
(139, 'Omastar', '[\'Swift Swim\', \'Shell Armor\', \'Weak Armor\']', 'Spiral Pokemon', 60, 125, 70, 55, 'rock', 'water', '1.00', '35.00', 1, 0, 'icons/139.png'),
(140, 'Kabuto', '[\'Swift Swim\', \'Battle Armor\', \'Weak Armor\']', 'Shellfish Pokemon', 80, 90, 30, 55, 'rock', 'water', '0.50', '11.50', 1, 0, 'icons/140.png'),
(141, 'Kabutops', '[\'Swift Swim\', \'Battle Armor\', \'Weak Armor\']', 'Shellfish Pokemon', 115, 105, 60, 80, 'rock', 'water', '1.30', '40.50', 1, 0, 'icons/141.png'),
(142, 'Aerodactyl', '[\'Rock Head\', \'Pressure\', \'Unnerve\']', 'Fossil Pokemon', 135, 85, 80, 150, 'rock', 'flying', '1.80', '59.00', 1, 0, 'icons/142.png'),
(143, 'Snorlax', '[\'Immunity\', \'Thick Fat\', \'Gluttony\']', 'Sleeping Pokemon', 110, 65, 160, 30, 'normal', '', '2.10', '460.00', 1, 0, 'icons/143.png'),
(144, 'Articuno', '[\'Pressure\', \'Snow Cloak\']', 'Freeze Pokemon', 85, 100, 90, 85, 'ice', 'flying', '1.70', '55.40', 1, 1, 'icons/144.png'),
(145, 'Zapdos', '[\'Pressure\', \'Static\']', 'Electric Pokemon', 90, 85, 90, 100, 'electric', 'flying', '1.60', '52.60', 1, 1, 'icons/145.png'),
(146, 'Moltres', '[\'Pressure\', \'Flame Body\']', 'Flame Pokemon', 100, 90, 90, 90, 'fire', 'flying', '2.00', '60.00', 1, 1, 'icons/146.png'),
(147, 'Dratini', '[\'Shed Skin\', \'Marvel Scale\']', 'Dragon Pokemon', 64, 45, 41, 50, 'dragon', '', '1.80', '3.30', 1, 0, 'icons/147.png'),
(148, 'Dragonair', '[\'Shed Skin\', \'Marvel Scale\']', 'Dragon Pokemon', 84, 65, 61, 70, 'dragon', '', '4.00', '16.50', 1, 0, 'icons/148.png'),
(149, 'Dragonite', '[\'Inner Focus\', \'Multiscale\']', 'Dragon Pokemon', 134, 95, 91, 80, 'dragon', 'flying', '2.20', '210.00', 1, 0, 'icons/149.png'),
(150, 'Mewtwo', '[\'Pressure\', \'Unnerve\']', 'Genetic Pokemon', 150, 200, 106, 140, 'psychic', '', '2.00', '122.00', 1, 1, 'icons/150.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pokedex`
--
ALTER TABLE `pokedex`
  ADD PRIMARY KEY (`pokedex_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
