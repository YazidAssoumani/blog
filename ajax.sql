-- Adminer 4.7.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

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
(6,	'2019-02-21 09:50:32',	'Rachida'),
(14,	'2019-02-21 12:21:49',	'Viveeee Viveeee Viveeee le RSAAAAAAA'),
(15,	'2019-02-21 13:04:42',	'Yuuuu-Giiiiiiiiiii-OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOH'),
(19,	'2019-02-21 13:17:11',	'azerty'),
(21,	'2019-02-21 13:20:26',	'Big Meme '),
(22,	'2019-02-21 13:20:58',	'POi'),
(24,	'2019-02-21 13:22:10',	'Lorem ipsum'),
(25,	'2019-02-21 13:31:05',	'Boooooooyyaaaa'),
(26,	'2019-02-21 13:31:23',	'Hmmmmm'),
(27,	'2019-02-22 07:47:51',	'DEf'),
(28,	'2019-02-22 07:47:59',	'desgegr'),
(29,	'2019-02-22 07:49:36',	'gsdgrher'),
(30,	'2019-02-22 11:04:29',	'TEOIhoigjserigt'),
(31,	'2019-02-22 11:05:11',	'ughpmgpi');

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `students` (`id`, `nom`, `prenom`) VALUES
(1,	'AHMANE',	'Mourad'),
(2,	'AMZIL',	'Rachida'),
(3,	'ASSOUMANI',	'Yazid'),
(4,	'CHAPUS',	'Mathias'),
(5,	'COIRET',	'Bryan'),
(6,	'COUTAS',	'Axel'),
(7,	'DORE',	'Jérémy'),
(8,	'FLIPO',	'Morgann'),
(9,	'HUGUES',	'Isabelle'),
(10,	'LE COZ',	'Maxime'),
(11,	'NARY',	'Aina'),
(12,	'PARIS',	'Romain'),
(13,	'POMA',	'Yohan'),
(14,	'PONOMARENKO',	'Nicolas'),
(15,	'REBEYROLLE',	'Eric'),
(16,	'SHARMAZANASHVILI',	'Georges'),
(17,	'ZOGHLAMI',	'Mohamed');

-- 2019-02-22 14:01:28
