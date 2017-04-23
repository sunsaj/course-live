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
  `ass_sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `ass_id` int(11) DEFAULT NULL,
  `stu_id` int(11) DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file_id` int(11) DEFAULT NULL,
  `body` text,
  PRIMARY KEY (`ass_sub_id`),
  KEY `ass_id` (`ass_id`),
  KEY `stu_id` (`stu_id`),
  KEY `file_id` (`file_id`),
  CONSTRAINT `ass_sub_ibfk_1` FOREIGN KEY (`ass_id`) REFERENCES `assignment` (`ass_id`),
  CONSTRAINT `ass_sub_ibfk_2` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`),
  CONSTRAINT `ass_sub_ibfk_3` FOREIGN KEY (`file_id`) REFERENCES `file` (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ass_sub` */

/*Table structure for table `assignment` */

DROP TABLE IF EXISTS `assignment`;

CREATE TABLE `assignment` (
  `ass_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_subm` date DEFAULT NULL,
  `ass_no` int(2) DEFAULT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `body` text,
  PRIMARY KEY (`ass_id`),
  KEY `t_id` (`t_id`),
  KEY `c_id` (`c_id`),
  KEY `sub_id` (`sub_id`),
  CONSTRAINT `assignment_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `teacher` (`t_id`),
  CONSTRAINT `assignment_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `class` (`c_id`),
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `categories` */

insert  into `categories`(`id`,`name`,`created_at`) values (1,'Computer Science','2017-04-21 12:41:14');

/*Table structure for table `class` */

DROP TABLE IF EXISTS `class`;

CREATE TABLE `class` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sem` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `class` */

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `comments` */

/*Table structure for table `course_material` */

DROP TABLE IF EXISTS `course_material`;

CREATE TABLE `course_material` (
  `cm_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_id` int(11) DEFAULT NULL,
  `body` text,
  `file_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cm_id`),
  KEY `sub_id` (`sub_id`),
  KEY `file_id` (`file_id`),
  CONSTRAINT `course_material_ibfk_1` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`sub_id`),
  CONSTRAINT `course_material_ibfk_2` FOREIGN KEY (`file_id`) REFERENCES `file` (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `course_material` */

/*Table structure for table `file` */

DROP TABLE IF EXISTS `file`;

CREATE TABLE `file` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) DEFAULT NULL,
  `f_body` text,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `file` */

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `notice` */

insert  into `notice`(`n_id`,`slug`,`title`,`body`,`created_by`,`created_at`) values (1,'lorem-ipsum ','Lorem Ipsum ','simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',NULL,'2017-04-19 17:59:47'),(2,'come-from','Come From','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum ',NULL,'2017-04-19 18:00:49'),(8,'First-Notice','First Notice','<p><strong>This is edited</strong> It <s>is a long established </s><em>fact that a reader will be distracted </em>by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>',1,'2017-04-20 16:32:56');

/*Table structure for table `notice_file` */

DROP TABLE IF EXISTS `notice_file`;

CREATE TABLE `notice_file` (
  `n_f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) DEFAULT NULL,
  `n_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`n_f_id`),
  KEY `n_id` (`n_id`),
  CONSTRAINT `notice_file_ibfk_1` FOREIGN KEY (`n_id`) REFERENCES `notice` (`n_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `notice_file` */

/*Table structure for table `post` */

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) DEFAULT NULL,
  `author` int(11) DEFAULT NULL,
  `quest` text,
  `des` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `post` */

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `posts` */

insert  into `posts`(`id`,`category_id`,`user_id`,`title`,`slug`,`body`,`post_image`,`created_at`) values (1,1,1,'What is RAM ?','What-is-RAM','<p>Random Acess</p>','noimage.jpg','2017-04-21 13:10:25'),(2,1,1,'What is Rom?','What-is-Rom','<p>R</p>','noimage.jpg','2017-04-21 13:12:03'),(3,1,1,'What is CPU?','What-is-CPU','<p>cpu</p>','noimage.jpg','2017-04-21 13:13:07'),(4,1,1,'ada','ada','<p>adad</p>','hd-dark-wallpapers-4.jpg','2017-04-21 13:15:24');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student` */

/*Table structure for table `subject` */

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `syllabus` text,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `subject` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `teacher` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `usr_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`usr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`usr_id`,`firstname`,`lastname`,`email`,`username`,`password`) values (1,'Rahul','Saj','rahulsaj@rocketmail.com','rahul','202cb962ac59075b964b07152d234b70');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
