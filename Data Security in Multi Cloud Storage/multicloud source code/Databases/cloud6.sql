
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cloud6` 

USE `cloud6`;


DROP TABLE IF EXISTS `cloud6`;

CREATE TABLE `cloud6` (
  `fid` int(100) DEFAULT NULL,
  `fnm` varchar(255) DEFAULT NULL,
  `sig3` blob,
  `p3` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


