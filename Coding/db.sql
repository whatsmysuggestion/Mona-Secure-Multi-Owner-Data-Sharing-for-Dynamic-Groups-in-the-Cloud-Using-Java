/*
SQLyog - Free MySQL GUI v5.15
Host - 5.0.83-community-nt : Database - mona
*********************************************************************
Server version : 5.0.83-community-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `mona`;

USE `mona`;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `adddata` */

DROP TABLE IF EXISTS `adddata`;

CREATE TABLE `adddata` (
  `fileid` varchar(255) default NULL,
  `filename` varchar(255) default NULL,
  `Dataowner` varchar(255) default NULL,
  `Data` varchar(255) default NULL,
  `file` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adddata` */

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert into `admin` (`username`,`password`) values ('admin','admin');

/*Table structure for table `groupmanager` */

DROP TABLE IF EXISTS `groupmanager`;

CREATE TABLE `groupmanager` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `groupmanager` */

insert into `groupmanager` (`id`,`name`,`username`,`pass`,`email`,`phone`,`date`) values (3,'logeshteam','logesh','logesh','logesh.softwin@gmail.com','987374324','25/06/2013 02:59:52 PM');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert into `user` (`id`,`name`,`username`,`pass`,`email`,`phone`,`date`) values (4,'sf','dfgfgdsf','dsfd','sdf','sdf','25/06/2013 04:03:03 PM');
insert into `user` (`id`,`name`,`username`,`pass`,`email`,`phone`,`date`) values (5,'logeshteam','log','log','logesh.softwin@gmail.com','545435345','01/07/2013 10:29:12 AM');
insert into `user` (`id`,`name`,`username`,`pass`,`email`,`phone`,`date`) values (6,'logesh','log','log','dsf','sdf','01/07/2013 10:36:07 AM');

/*Table structure for table `userquery` */

DROP TABLE IF EXISTS `userquery`;

CREATE TABLE `userquery` (
  `id` varchar(40) default NULL,
  `name` varchar(40) default NULL,
  `path` varchar(250) default NULL,
  `date` varchar(250) default NULL,
  `secretkey` varchar(250) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userquery` */

insert into `userquery` (`id`,`name`,`path`,`date`,`secretkey`) values ('n138','2013 Development.xlsx','C:UploadedFiles2013 Development.xlsx','05/08/2013 01:04:46 PM','DM568');
insert into `userquery` (`id`,`name`,`path`,`date`,`secretkey`) values ('n69','2013 Development.xlsx','C:UploadedFiles2013 Development.xlsx','05/08/2013 03:09:54 PM','pending');
insert into `userquery` (`id`,`name`,`path`,`date`,`secretkey`) values ('n694','2013 Development.xlsx','C:UploadedFiles2013 Development.xlsx','05/08/2013 03:14:24 PM','pending');
insert into `userquery` (`id`,`name`,`path`,`date`,`secretkey`) values ('n796','2013 Development.xlsx','C:UploadedFiles2013 Development.xlsx','05/08/2013 03:16:26 PM','pending');
insert into `userquery` (`id`,`name`,`path`,`date`,`secretkey`) values ('n935','2013 Development.xlsx','C:UploadedFiles2013 Development.xlsx','05/08/2013 03:19:14 PM','pending');
insert into `userquery` (`id`,`name`,`path`,`date`,`secretkey`) values ('n77','2013 Development.xlsx','C:UploadedFiles2013 Development.xlsx','05/08/2013 04:55:32 PM','pending');
insert into `userquery` (`id`,`name`,`path`,`date`,`secretkey`) values ('n495','2013 Development.xlsx','C:UploadedFiles2013 Development.xlsx','05/08/2013 05:00:10 PM','pending');
insert into `userquery` (`id`,`name`,`path`,`date`,`secretkey`) values ('n136','2013 Development.xlsx','C:UploadedFiles2013 Development.xlsx','05/08/2013 05:08:48 PM','pending');
insert into `userquery` (`id`,`name`,`path`,`date`,`secretkey`) values ('n424','2013 Development.xlsx','C:UploadedFiles2013 Development.xlsx','10/08/2013 02:50:00 PM','pending');

SET SQL_MODE=@OLD_SQL_MODE;