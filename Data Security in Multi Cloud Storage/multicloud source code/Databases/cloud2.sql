
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cloud2`

USE `cloud2`;


DROP TABLE IF EXISTS `cloud2`;

CREATE TABLE `cloud2` (
  `fid` int(255) DEFAULT NULL,
  `fnm` varchar(2000) DEFAULT NULL,
  `sig1` blob,
  `p1` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


