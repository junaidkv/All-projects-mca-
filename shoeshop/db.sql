/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.7.9 : Database - shoeshop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shoeshop` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `shoeshop`;

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `products_code` int(11) DEFAULT NULL,
  `cart_qnty` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `cart` */

/*Table structure for table `orderdetails` */

DROP TABLE IF EXISTS `orderdetails`;

CREATE TABLE `orderdetails` (
  `orderdetails_id` int(11) NOT NULL AUTO_INCREMENT,
  `ordermaster_id` int(11) DEFAULT NULL,
  `products_code` int(11) DEFAULT NULL,
  `orderdetails_qnty` int(11) DEFAULT NULL,
  `orderdetails_amt` double DEFAULT NULL,
  PRIMARY KEY (`orderdetails_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `orderdetails` */

insert  into `orderdetails`(`orderdetails_id`,`ordermaster_id`,`products_code`,`orderdetails_qnty`,`orderdetails_amt`) values (1,1,3,2,4500);

/*Table structure for table `ordermaster` */

DROP TABLE IF EXISTS `ordermaster`;

CREATE TABLE `ordermaster` (
  `ordermaster_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ordermaster_date` date DEFAULT NULL,
  `ordermaster_total` double DEFAULT NULL,
  `ordermaster_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ordermaster_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `ordermaster` */

insert  into `ordermaster`(`ordermaster_id`,`user_id`,`ordermaster_date`,`ordermaster_total`,`ordermaster_status`) values (1,2,'2020-04-11',9000,'Delivered');

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ordermaster_id` int(11) DEFAULT NULL,
  `payment_type` varchar(40) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_amt` double DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

insert  into `payment`(`payment_id`,`user_id`,`ordermaster_id`,`payment_type`,`payment_date`,`payment_amt`) values (1,2,1,'Online','2020-04-11',9000);

/*Table structure for table `productimage` */

DROP TABLE IF EXISTS `productimage`;

CREATE TABLE `productimage` (
  `productimage_id` int(11) NOT NULL AUTO_INCREMENT,
  `productimage_path` varchar(2000) DEFAULT NULL,
  `productimage_title` varchar(50) DEFAULT NULL,
  `products_code` int(11) DEFAULT NULL,
  PRIMARY KEY (`productimage_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `productimage` */

insert  into `productimage`(`productimage_id`,`productimage_path`,`productimage_title`,`products_code`) values (1,'images/5e82ef88c36fa.jpg','redtape men',2),(2,'shoeImage/shoe_5e3547e8cc46e.jpg','mac doc',3),(3,'shoeImage/shoe_5e3547fd7320a.jpg','SOLO',4),(4,'shoeImage/shoe_5e35481728432.jpg','redtape',1),(5,'shoeImage/shoe_5e3e695b638e7.jpg','redtape',1);

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `products_code` int(11) NOT NULL AUTO_INCREMENT,
  `products_name` varchar(50) DEFAULT NULL,
  `products_price` varchar(50) DEFAULT NULL,
  `products_color` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`products_code`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `products` */

insert  into `products`(`products_code`,`products_name`,`products_price`,`products_color`) values (1,'redtape','2000','brown'),(2,'redtape men','2000','brown'),(3,'mac doc','4500','brown'),(4,'redtape solo','5000','brown'),(5,'nike','2000','white');

/*Table structure for table `shipping` */

DROP TABLE IF EXISTS `shipping`;

CREATE TABLE `shipping` (
  `shipping_id` int(11) NOT NULL AUTO_INCREMENT,
  `ordermaster_id` int(11) DEFAULT NULL,
  `shipping_fname` varchar(30) DEFAULT NULL,
  `shipping_lname` varchar(30) DEFAULT NULL,
  `shipping_mobile` int(10) DEFAULT NULL,
  `shipping_email` varchar(50) DEFAULT NULL,
  `shipping_hname` varchar(50) DEFAULT NULL,
  `shipping_city` varchar(30) DEFAULT NULL,
  `shipping_state` varchar(30) DEFAULT NULL,
  `shipping_country` varchar(30) DEFAULT NULL,
  `shipping_pin` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`shipping_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `shipping` */

insert  into `shipping`(`shipping_id`,`ordermaster_id`,`shipping_fname`,`shipping_lname`,`shipping_mobile`,`shipping_email`,`shipping_hname`,`shipping_city`,`shipping_state`,`shipping_country`,`shipping_pin`) values (1,1,'al','trh',344,'q@gmail.com','abc','ernakulam','kerala','india','683594');

/*Table structure for table `size` */

DROP TABLE IF EXISTS `size`;

CREATE TABLE `size` (
  `size_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_code` int(11) DEFAULT NULL,
  `size` int(50) DEFAULT NULL,
  `size_qnt` int(50) DEFAULT NULL,
  PRIMARY KEY (`size_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `size` */

insert  into `size`(`size_id`,`products_code`,`size`,`size_qnt`) values (1,3,5,10),(2,2,4,5),(3,4,10,50),(4,3,4,100);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_firstname` varchar(500) DEFAULT NULL,
  `user_lastname` varchar(500) DEFAULT NULL,
  `user_mobile` varchar(500) DEFAULT NULL,
  `user_email` varchar(500) DEFAULT NULL,
  `user_password` varchar(500) DEFAULT NULL,
  `user_type` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`user_id`,`user_firstname`,`user_lastname`,`user_mobile`,`user_email`,`user_password`,`user_type`) values (1,'e','e','55','admin@gmail.com','admin','admin'),(2,'al','trh','344','q@gmail.com','44','user'),(3,'rr','uu','555','e@gmail.com','55','user'),(4,'rtrtt','tr','4444','g@g.com','777','user'),(5,'f','gh','44','cg@g.com','44','user'),(6,'corrine','rodrigues','9544365909','corr@gmail.com','777','user'),(7,'crilsin','rodrigues','9745655406','crisline@gmail.com','777','user'),(8,'sads','fd','999','h@g.com','888','user'),(9,'reert','df','74368','o@gmail.com','ooo','user'),(10,'akhila','mol','9875641256','akhila@gmail.com','123','user'),(11,'fathima','mackr','9544365909','fathima@gmail.com','123','user');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
