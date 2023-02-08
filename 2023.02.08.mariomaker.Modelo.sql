DROP DATABASE IF EXISTS mariomaker;

CREATE DATABASE mariomaker CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

USE `mariomaker`;


DROP TABLE IF EXISTS `dificuldades`;

CREATE TABLE `dificuldades` (
  `id_dificuldades` int NOT NULL AUTO_INCREMENT,
  `dificuldades_level` enum('normal','easy','expert','superExpert') DEFAULT NULL,
  `id_recordes` int DEFAULT NULL,
  `id_fases` int DEFAULT NULL,
  `id_estilos_de_mapas` int DEFAULT NULL,
  `id_player` int DEFAULT NULL,
  PRIMARY KEY (`id_dificuldades`),
  KEY `id_fases` (`id_fases`),
  KEY `id_player` (`id_player`),
  KEY `id_recordes` (`id_recordes`),
  KEY `id_estilos_de_mapas` (`id_estilos_de_mapas`)
) ;


DROP TABLE IF EXISTS `estilos_de_mapas`;

CREATE TABLE `estilos_de_mapas` (
  `id_estilos_de_mapas` int NOT NULL AUTO_INCREMENT,
  `estilos_de_mapas_title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_recordes` int DEFAULT NULL,
  `id_dificuldades` int DEFAULT NULL,
  `id_fases` int DEFAULT NULL,
  `id_player` int DEFAULT NULL,
  PRIMARY KEY (`id_estilos_de_mapas`),
  KEY `id_recordes` (`id_recordes`),
  KEY `id_player` (`id_player`),
  KEY `id_fases` (`id_fases`),
  KEY `id_dificuldades` (`id_dificuldades`)
);

DROP TABLE IF EXISTS `fases`;

CREATE TABLE `fases` (
  `id_fases` int NOT NULL AUTO_INCREMENT,
  `fases_title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_recordes` int DEFAULT NULL,
  `id_dificuldades` int DEFAULT NULL,
  `id_estilos_de_mapas` int DEFAULT NULL,
  `id_player` int DEFAULT NULL,
  PRIMARY KEY (`id_fases`),
  KEY `id_recordes` (`id_recordes`),
  KEY `id_estilos_de_mapas` (`id_estilos_de_mapas`),
  KEY `id_player` (`id_player`),
  KEY `id_dificuldades` (`id_dificuldades`)
) ;

DROP TABLE IF EXISTS `player`;

CREATE TABLE `player` (
  `id_player` int NOT NULL AUTO_INCREMENT,
  `player_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `player_região` varchar (2) default 'BR',
  `id_recordes` int DEFAULT NULL,
  `id_dificuldades` int DEFAULT NULL,
  `id_estilos_de_mapas` int DEFAULT NULL,
  `id_fases` int DEFAULT NULL,
  PRIMARY KEY (`id_player`),
  KEY `id_recordes` (`id_recordes`),
  KEY `id_estilos_de_mapas` (`id_estilos_de_mapas`),
  KEY `id_fases` (`id_fases`),
  KEY `id_dificuldades` (`id_dificuldades`)
) ;

DROP TABLE IF EXISTS `recordes`;

CREATE TABLE `recordes` (
  `id_recordes` int NOT NULL AUTO_INCREMENT,
  `recordes_player` varchar(255) NOT NULL,
  `recordes_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recordes_timeRecord` INT NOT NULL,
  `id_dificuldades` int DEFAULT NULL,
  `id_fases` int DEFAULT NULL,
  `id_estilos_de_mapas` int DEFAULT NULL,
  `id_player` int DEFAULT NULL,
  PRIMARY KEY (`id_recordes`),
  KEY `id_fases` (`id_fases`),
  KEY `id_estilos_de_mapas` (`id_estilos_de_mapas`),
  KEY `id_player` (`id_player`),
  KEY `id_dificuldades` (`id_dificuldades`)
);








