
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cloud5` 

USE `cloud5`;


DROP TABLE IF EXISTS `cloud5`;

CREATE TABLE `cloud5` (
  `fid` int(100) DEFAULT NULL,
  `fnm` varchar(255) DEFAULT NULL,
  `sig3` blob,
  `p3` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


