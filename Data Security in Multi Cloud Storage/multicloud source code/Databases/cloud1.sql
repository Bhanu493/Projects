
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cloud1`

USE `cloud1`;


DROP TABLE IF EXISTS `cloud1`;

CREATE TABLE `cloud1` (
  `fid` int(100) DEFAULT NULL,
  `fnm` varchar(255) DEFAULT NULL,
  `sig1` blob,
  `p1` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


