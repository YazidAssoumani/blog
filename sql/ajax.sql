-- Adminer 4.7.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `creation_date` datetime NOT NULL,
  `student_id` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `creation_date` (`creation_date`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_create` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `comments` (`id`, `date_create`, `content`) VALUES
(1,	'2019-02-21 09:12:40',	'BGE GHL vbne'),
(2,	'2019-02-21 09:39:53',	'Marseille'),
(3,	'2019-02-21 09:40:27',	'Je suis content'),
(4,	'2019-02-21 09:41:16',	'Ah ok bon'),
(5,	'2019-02-21 09:50:32',	'Rachida'),
(6,	'2019-02-21 12:21:49',	'Viveeee Viveeee Viveeee le RSAAAAAAA'),
(7,	'2019-02-21 13:04:42',	'Yuuuu-Giiiiiiiiiii-OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOH'),
(8,	'2019-02-21 13:17:11',	'azerty'),
(9,	'2019-02-21 13:20:26',	'Big Meme '),
(10,	'2019-02-21 13:20:58',	'POi'),
(11,	'2019-02-21 13:22:10',	'Lorem ipsum'),
(12,	'2019-02-21 13:31:05',	'Boooooooyyaaaa'),
(13,	'2019-02-21 13:31:23',	'Hmmmmm'),
(14,	'2019-02-22 07:47:51',	'DEf'),
(15,	'2019-02-22 07:47:59',	'desgegr'),
(16,	'2019-02-22 07:49:36',	'gsdgrher'),
(17,	'2019-02-22 11:04:29',	'TEOIhoigjserigt'),
(18,	'2019-02-22 11:05:11',	'ughpmgpi');

DROP TABLE IF EXISTS `dislikes`;
CREATE TABLE `dislikes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numbers` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `dislikes` (`id`, `numbers`) VALUES
(1,	45);

DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numbers` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `likes` (`id`, `numbers`) VALUES
(1,	75);

DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `lastName` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `students` (`id`, `lastName`, `firstName`, `email`) VALUES
(1,	'AHMANE',	'Mourad',	''),
(2,	'AMZIL',	'Rachida',	''),
(3,	'ASSOUMANI',	'Yazid',	''),
(4,	'CHAPUS',	'Mathias',	''),
(5,	'COIRET',	'Bryan',	''),
(6,	'COUTAS',	'Axel',	''),
(7,	'DORE',	'Jérémy',	''),
(8,	'FLIPO',	'Morgann',	''),
(9,	'HUGUES',	'Isabelle',	''),
(10,	'LE COZ',	'Maxime',	''),
(11,	'NARY',	'Aina',	''),
(12,	'PARIS',	'Romain',	''),
(13,	'POMA',	'Yohan',	''),
(14,	'PONOMARENKO',	'Nicolas',	''),
(15,	'REBEYROLLE',	'Eric',	''),
(16,	'SHARMAZANASHVILI',	'Georges',	''),
(17,	'ZOGHLAMI',	'Mohamed',	''),
(18,	'PANCHO',	'Pipoune',	'pipoune.pancho@wakfu.iop'),
(19,	'POPOVIC',	'Popol',	'popol.popovic@rutube.ru'),
(20,	'LE FRONT DE BOIS',	'Rolando',	'frontdebois@om.net'),
(21,	'TADA',	'Raymond',	'remontada.arena@6-1.ldc'),
(22,	'TRETRE',	'tre',	'tre@'),
(27,	'BOOO',	'BAAAA',	'baaaaa@boooo.ba'),
(28,	'LEOOO',	'oleeee',	'mama@'),
(29,	'PILLARMAN',	'Ayaaaa',	'jojoke@zawarudo.jojo'),
(30,	'DZZD',	'zdez',	'zd@'),
(31,	'NOM',	'prenom',	'email@'),
(32,	'TOI',	'Moi',	'toitoimontoi@chanson.nul'),
(33,	'UUUUU',	'ooooo',	'aaaa@aa.a'),
(35,	'MIAWW',	'miaou',	'chat@');

-- 2019-03-11 14:44:19
