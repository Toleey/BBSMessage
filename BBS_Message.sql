CREATE DATABASE /*!32312 IF NOT EXISTS*/`BBS_Message` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `BBS_Message`;

DROP TABLE IF EXISTS `msg_userinfo`;

CREATE TABLE `msg_userinfo`(
	`username` VARCHAR(20) NOT NULL,
	`password` VARCHAR(20) NOT NULL,
	`email` varchar(20) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `msg`;

CREATE TABLE `msg`(
	`msgid` INT NOT NULL,
	`username` VARCHAR(100) NOT NULL,
	`title` VARCHAR(20) NOT NULL,
	`msgcontent` VARCHAR(20) NOT NULL,
	`state` INT NOT NULL,
	`sendto` VARCHAR(20) NOT NULL,
	`msg_create_date` DATETIME NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;