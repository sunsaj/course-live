/*
SQLyog Professional v12.09 (64 bit)
MySQL - 10.1.21-MariaDB : Database - cl2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cl2` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `cl2`;

/*Table structure for table `ass_sub` */

DROP TABLE IF EXISTS `ass_sub`;

CREATE TABLE `ass_sub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ass_id` int(11) DEFAULT NULL,
  `stu_id` int(11) DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file_id` int(11) DEFAULT NULL,
  `body` text,
  PRIMARY KEY (`id`),
  KEY `ass_id` (`ass_id`),
  KEY `stu_id` (`stu_id`),
  KEY `file_id` (`file_id`),
  CONSTRAINT `ass_sub_ibfk_1` FOREIGN KEY (`ass_id`) REFERENCES `assignment` (`ass_id`),
  CONSTRAINT `ass_sub_ibfk_2` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`),
  CONSTRAINT `ass_sub_ibfk_3` FOREIGN KEY (`file_id`) REFERENCES `file` (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ass_sub` */

/*Table structure for table `assgn_file` */

DROP TABLE IF EXISTS `assgn_file`;

CREATE TABLE `assgn_file` (
  `id` int(11) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `as_sub_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `assgn_file` */

/*Table structure for table `assignment` */

DROP TABLE IF EXISTS `assignment`;

CREATE TABLE `assignment` (
  `ass_id` int(11) NOT NULL AUTO_INCREMENT,
  `body` text,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_subm` date DEFAULT NULL,
  `ass_no` int(2) DEFAULT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ass_id`),
  KEY `t_id` (`created_by`),
  KEY `c_id` (`class_id`),
  KEY `sub_id` (`sub_id`),
  CONSTRAINT `assignment_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `teacher` (`t_id`),
  CONSTRAINT `assignment_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `class` (`c_id`),
  CONSTRAINT `assignment_ibfk_3` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `assignment` */

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `categories` */

insert  into `categories`(`id`,`name`,`created_at`) values (1,'Computer Science','2017-04-21 12:41:14'),(2,'Electronics','2017-04-21 19:17:07');

/*Table structure for table `class` */

DROP TABLE IF EXISTS `class`;

CREATE TABLE `class` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sem` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `class` */

insert  into `class`(`c_id`,`name`,`sem`) values (1,'T1',6);

/*Table structure for table `class_sub` */

DROP TABLE IF EXISTS `class_sub`;

CREATE TABLE `class_sub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `class_sub` */

insert  into `class_sub`(`id`,`sub_id`,`class_id`) values (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1);

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `usr_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `comments` */

insert  into `comments`(`id`,`post_id`,`usr_id`,`body`,`created_at`) values (1,5,1,'<ul><li>answer1</li><li>dssdcsdf</li></ul>','2017-04-21 16:27:09'),(2,1,1,'<p>gsgter</p>','2017-04-21 17:02:45'),(3,1,1,'<p>rgegegeg</p>','2017-04-21 17:02:54'),(4,1,1,'<p>gfgsfgfsg</p>','2017-04-21 17:33:57'),(5,6,1,'<p>ASs</p>','2017-04-21 17:34:20'),(6,6,1,'<p>SDSDFAF</p>','2017-04-21 17:34:26'),(7,6,1,'<p>fwefwsgfgfsfsd</p>','2017-04-21 19:16:36'),(8,7,1,'<p>diode is made of semiconductor</p>','2017-04-21 19:18:58'),(9,18,1,'<p>Brain of computer.</p>','2017-04-21 22:01:58'),(10,20,1,'<p>sale</p>','2017-04-22 14:48:21'),(11,20,1,'<p>sale2</p>','2017-04-22 14:48:35'),(12,21,2,'<p>ddadfafad</p><p>&nbsp;</p>','2017-04-26 16:01:37'),(13,21,2,'<p>dvvvxvxcvcx</p>','2017-04-26 16:01:45'),(14,21,2,'<p>dvdvadvadv</p>','2017-04-26 16:01:51');

/*Table structure for table `file` */

DROP TABLE IF EXISTS `file`;

CREATE TABLE `file` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) DEFAULT NULL,
  `f_body` text,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `file` */

/*Table structure for table `notes` */

DROP TABLE IF EXISTS `notes`;

CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `unit` int(2) DEFAULT NULL,
  `body` text,
  PRIMARY KEY (`id`),
  KEY `sub_id` (`sub_id`),
  CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`sub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `notes` */

insert  into `notes`(`id`,`sub_id`,`title`,`unit`,`body`) values (1,1,'8085',2,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n'),(2,1,'8086',3,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n'),(3,2,'Variables',2,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n');

/*Table structure for table `notes_file` */

DROP TABLE IF EXISTS `notes_file`;

CREATE TABLE `notes_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `notes_file` */

/*Table structure for table `notice` */

DROP TABLE IF EXISTS `notice`;

CREATE TABLE `notice` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `notice` */

insert  into `notice`(`n_id`,`slug`,`title`,`body`,`created_by`,`created_at`) values (1,'lorem-ipsum ','Lorem Ipsum ','simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',NULL,'2017-04-19 17:59:47'),(2,'come-from','Come From','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum ',NULL,'2017-04-19 18:00:49'),(9,'First-Notice','First Notice','<p>This is edited It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>',1,'2017-04-21 22:04:15');

/*Table structure for table `notice_file` */

DROP TABLE IF EXISTS `notice_file`;

CREATE TABLE `notice_file` (
  `n_f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) DEFAULT NULL,
  `n_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`n_f_id`),
  KEY `n_id` (`n_id`),
  CONSTRAINT `notice_file_ibfk_1` FOREIGN KEY (`n_id`) REFERENCES `notice` (`n_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `notice_file` */

insert  into `notice_file`(`n_f_id`,`f_name`,`n_id`) values (1,'CS-502_OS_list_of_experiment.docx',9),(2,'DBMS_LAB_MANUAL_FINAL251115.docx',9);

/*Table structure for table `posts` */

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `posts` */

insert  into `posts`(`id`,`category_id`,`user_id`,`title`,`slug`,`body`,`post_image`,`created_at`) values (18,1,1,'What is CPU?','What-is-CPU','<p>Central processing unit</p>','hd-dark-wallpapers-4.jpg','2017-04-21 22:00:30'),(19,2,1,'What is Diode ?','What-is-Diode','','Hawaii-Beach-Wallpaper-HD.jpg','2017-04-21 22:01:16'),(20,1,1,'What is RAM ?','What-is-RAM','','noimage.jpg','2017-04-21 22:01:37');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL AUTO_INCREMENT,
  `usr_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stu_id`),
  KEY `usr_id` (`usr_id`),
  KEY `c_id` (`c_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`usr_id`) REFERENCES `user` (`usr_id`),
  CONSTRAINT `student_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `class` (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`stu_id`,`usr_id`,`c_id`,`branch`) values (1,2,1,'CS');

/*Table structure for table `subject` */

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `branch` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `subject` */

insert  into `subject`(`sub_id`,`name`,`code`,`branch`) values (1,'MicroProcesspor and Interface','CS-601','Computer Science'),(2,'Principle of Programming Language','CS-602','Computer Science'),(3,'Software Engg. and Project Management','CS-603','Computer Science'),(4,'Computer Networks','CS-604','Computer Science'),(5,'Advance Computer Architecture','CS-605','Computer Science');

/*Table structure for table `syllabus` */

DROP TABLE IF EXISTS `syllabus`;

CREATE TABLE `syllabus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_id` int(11) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `syllabus` */

insert  into `syllabus`(`id`,`sub_id`,`file`) values (1,1,'cs601.pdf'),(2,2,'cs602.pdf'),(3,3,'cs603.pdf'),(4,4,'cs604.pdf'),(5,5,'cs605.pdf');

/*Table structure for table `tag` */

DROP TABLE IF EXISTS `tag`;

CREATE TABLE `tag` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`tag_id`),
  KEY `forum_id` (`p_id`),
  CONSTRAINT `tag_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `post` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tag` */

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `usr_id` int(11) DEFAULT NULL,
  `class_coordinate_id` int(11) DEFAULT NULL,
  `dept` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`t_id`),
  KEY `usr_id` (`usr_id`),
  CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`usr_id`) REFERENCES `user` (`usr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `teacher` */

insert  into `teacher`(`t_id`,`usr_id`,`class_coordinate_id`,`dept`) values (1,3,NULL,'Computer Science');

/*Table structure for table `teaches` */

DROP TABLE IF EXISTS `teaches`;

CREATE TABLE `teaches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `t_id` int(11) DEFAULT NULL,
  `sub_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `teaches` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `usr_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` int(2) DEFAULT '1',
  PRIMARY KEY (`usr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`usr_id`,`firstname`,`lastname`,`email`,`username`,`password`,`role`) values (1,'Rahul','Saj','rahulsaj@rocketmail.com','rahul','202cb962ac59075b964b07152d234b70',0),(2,'Reshma','Saj','reshmasaj04@gmail.com','ammu','a9ed7eddf973221cb16e9b64396479c2',1),(3,'Suni','Sajeev','suni@gmail.com','suni','992495fa40ccbd3fa2590bc4f3a0347b',2),(4,'M U ','Sajeev','sajeev@gmail.com','sajeev','a1d2de6a4578ee48cf1e03f3763b36a5',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
