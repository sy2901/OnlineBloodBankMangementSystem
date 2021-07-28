DROP TABLE IF EXISTS `bregister`;

CREATE TABLE `bregister` (
  `bid` Varchar(12) NOT NULL,
  `bname` varchar(45) NOT NULL,
  `bld` varchar(10) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(150) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`bid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `bregister` VALUES (1,'Blood Bank','B+','8450943184','bld@gmail.com','Mumbai','12345678');

DROP TABLE IF EXISTS `hregister`;

CREATE TABLE `hregister` (
  `hid` varchar(12) NOT NULL,
  `hname` varchar(45) NOT NULL,
  `bld` varchar(45) NOT NULL,
  `trdate` varchar(45) NOT NULL,
  `contact` varchar(10) NOT NULL,
   `email` varchar(45)NOT NULL,
  `address` varchar(150) NOT NULL,
  `pass` varchar(45) NOT NULL,
  
  PRIMARY KEY (`hid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `hregister` VALUES (1,'dfdf','B+','22/13/2001','8450943184','dfdf@gmail.com','adsdfds','12345678');

DROP TABLE IF EXISTS `uregister`;

CREATE TABLE `uregister` (
  `uid` varchar(12) NOT NULL,
  `name` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `bld` varchar(45) NOT NULL,
  `location` varchar(150) NOT NULL,
  `pass` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `uregister` VALUES (1,'Shiv','Kashinath','8450943184','shiv@gmail.com','Male','02/09/2001','B+','Badlapur','skyadav292001');