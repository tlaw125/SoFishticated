DROP DATABASE IF EXISTS sofishdb;
CREATE DATABASE sofishdb;
USE sofishdb;
DROP TABLE IF EXISTS `articles`;
DROP TABLE IF EXISTS `wood`;
DROP TABLE IF EXISTS `rocks`;
DROP TABLE IF EXISTS `plants`;
DROP TABLE IF EXISTS `shrimp`;
DROP TABLE IF EXISTS `fish`;

CREATE TABLE `fish` (
  `id` INTEGER auto_increment NOT NULL,
  `commonName` varchar(45) NOT NULL,
  `sciName` varchar(45) NOT NULL,
  `type` varchar(20) NOT NULL,
  `family` varchar(45),
  `careLvl` varchar(25),
  `temperament` varchar(25),
  `waterParams` varchar(128),
  `maxSize` varchar(25),
  `imagePath` varchar(256),
  `breeding` varchar(30),
  `genderID` varchar(1048),
  `description` varchar(2096),
  PRIMARY KEY (`id`)
);

CREATE TABLE `shrimp` (
  `id` INTEGER auto_increment NOT NULL,
  `commonName` varchar(45) NOT NULL,
  `sciName` varchar(45) NOT NULL,
  `type` varchar(45),
  `careLvl` varchar(25),
  `waterParams` varchar(128),
  `maxSize` varchar(25),
  `imagePath` varchar(256),
  `description` varchar(1048),
  PRIMARY KEY (`id`)
);


CREATE TABLE `plants` (
  `id` INTEGER auto_increment NOT NULL,
  `name` varchar(45) NOT NULL,
  `type` varchar(45),
  `careLvl` varchar(25),
  `growth` varchar(25),
  `light` varchar(25),
  `co2` varchar(25),
  `imagePath` varchar(256),
  `description` varchar(1048),
  PRIMARY KEY (`id`)
);


CREATE TABLE `rocks` (
  `id` INTEGER auto_increment NOT NULL,
  `name` varchar(45) NOT NULL,
  `imagePath` varchar(256),
  `description` varchar(1048),
  PRIMARY KEY (`id`)
);



CREATE TABLE `wood` (
  `id` INTEGER auto_increment NOT NULL,
  `name` varchar(45) NOT NULL,
  `imagePath` varchar(256),
  `description` varchar(1048),
  PRIMARY KEY (`id`)
);


CREATE TABLE `articles` (
  `tag` varchar(45) NOT NULL,
  `title` varchar(45) NOT NULL,
  `content` varchar(8384),
  PRIMARY KEY (`tag`)
);
