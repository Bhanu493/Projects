
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cloud4` 

USE `cloud4`;


DROP TABLE IF EXISTS `cloud4`;

CREATE TABLE `cloud4` (
  `fid` int(100) DEFAULT NULL,
  `fnm` varchar(255) DEFAULT NULL,
  `sig2` blob,
  `p2` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


