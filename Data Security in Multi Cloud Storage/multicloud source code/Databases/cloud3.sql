CREATE DATABASE /*!32312 IF NOT EXISTS*/`cloud3` 

USE `cloud3`;


DROP TABLE IF EXISTS `cloud3`;

CREATE TABLE `cloud3` (
  `fid` int(255) DEFAULT NULL,
  `fnm` varchar(2000) DEFAULT NULL,
  `sig2` blob,
  `p2` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


