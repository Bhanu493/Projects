/*
SQLyog Community v11.52 (32 bit)
MySQL - 5.1.37-community-log : Database - mapping
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mapping` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mapping`;

/*Table structure for table `clouds` */

DROP TABLE IF EXISTS `clouds`;

CREATE TABLE `clouds` (
  `cname` varchar(1000) DEFAULT NULL,
  `sts` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `clouds` */

insert  into `clouds`(`cname`,`sts`) values ('cloud1','Active'),('cloud2','Active'),('cloud3','DeActivate'),('cloud4','Active'),('cloud5','Active'),('cloud6','Active');

/*Table structure for table `map` */

DROP TABLE IF EXISTS `map`;

CREATE TABLE `map` (
  `fid` int(100) DEFAULT NULL,
  `fname` varchar(2000) DEFAULT NULL,
  `unm` varchar(500) DEFAULT NULL,
  `sk` varchar(500) DEFAULT NULL,
  `fsize` double DEFAULT NULL,
  `datee` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `map` */

insert  into `map`(`fid`,`fname`,`unm`,`sk`,`fsize`,`datee`) values (1,'java.txt','ruhi','7652',0.0712890625,'Wed May 11 15:21:48 IST 2016'),(2,'aa.txt','vidhya','7747',0.7255859375,'Wed May 11 16:26:23 IST 2016'),(3,'java.txt','vidhya','41454',5.1552734375,'Wed May 11 16:27:48 IST 2016');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `name` varchar(20) DEFAULT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`name`,`uname`,`password`,`email`,`contact`) values ('pinki','pinki','pinki','pinki@gmail.com','9921567753'),('ruhi','ruhi','ruhi','ruhi@gmail.com','8522991105'),('vidhya','vidhya','vidhya','vidhyagaikwad19@gmail.com','7507091685');

/*Table structure for table `store` */

DROP TABLE IF EXISTS `store`;

CREATE TABLE `store` (
  `fid` int(100) DEFAULT NULL,
  `fname` varchar(2000) DEFAULT NULL,
  `sig1` blob,
  `sig2` blob,
  `sig3` blob,
  `unm` varchar(500) DEFAULT NULL,
  `sk` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `store` */

insert  into `store`(`fid`,`fname`,`sig1`,`sig2`,`sig3`,`unm`,`sk`) values (1,'java.txt','\0=#šg²œÅI“Žyô4[.êë:ÛŸs›´+ó]šÍ,{•Þ!ÇoÍ%ýD>±','eð\Z”¤ž™Í`^¶´ñ·ú½Þßx30Á|3§ÓÍ,{•Þ!ÇoÍ%ýD>±','¢®:{Ât#÷yâ¸–õäBgkŸ/P.0¿•ôËÍ,{•Þ!ÇoÍ%ýD>±','ruhi','7652'),(2,'aa.txt','ca‹¦ø~ˆÇå¶iÁ»14×W ¬b’‚þèåø›*ËUÿÇ9ûå9˜Ç¹/âTÝÚO¶ê){Õpòä½¨î)¥ü}ªÑ›q>x”­Jr®³ñ²Ìž½VðŽù=­¿\rÕÊ–­ÓÆúvÖÉ¾Ö¡8½ÿŽ8FÇCÎÄUVTQ^G<1±­7¹še­\ZÐåIDu@ò¹[LK!6NÑ	u|^U‚œ»áFóÔX¾.nU[hÓdD-âuÅé\0ÜAž*X÷U§Å','Cä`¹ºêifÈÇX¿ÔÉÕé7kÕa`Ž‰9f\Z„èµõ­m(r×)DÊñ”—+•<¼‹˜Ø¼þVÛ\"&¼…y„¿N³(l>3/DäLx1þ©.¤Xªî.pdhRº‰3‰3@qqÿS’´õÓDƒÌRös°¸®WäÀLšàÂò·Ýô‚ŸlzB7E(§¾ŽQl‘Ü¯‰çBù8JÂ¦=ué<Ö`m”oŽp‚¡¤^¿ô9®™OcæèÐ{!èÆ^tÄð-âuÅé\0ÜAž*X÷U§Å','ø\r\\LTßöÒ­¥5ñgèçyÄÉ.)nñ?p‚¤Ò¶ìÞ¢HÚèÃ¢ÇµÕF¤•tg¾Ó¡ãŠ=Îâ½‡²’=ˆÓ²Ç°VÝØ®ƒAêƒ[-N!JýÈn=¯r\'ð’\nõfœÌˆ*ø|lÿúCÅíwg¸}\r¤\nyª‹Êö²Úwh¤bVkÝ«ú§ «¬N,§®Xâ™‹ukÛ œoð~¾i»’ÌÑ\Z×t[Òµ›ÑfE;	;ÈõÅS/4¦ùÈU-âuÅé\0ÜAž*X÷U§Å','vidhya','7747'),(3,'java.txt','i¿ÂLzµìÊŒ‚Ù .h‘õÂÂ»úš\\0\\ƒÆØÎ­³jxë>=&þ„L²¹ˆDl¤išÒI€å^4:|POzðÕD\rZ]¤˜iŠ%«k×píºÚXhHGÓ)û8ÀµóÐá{x¬ã»´î‘¥LføÏ0/îÙµë¬£(˜Þ]Mx\0f~tö÷Ç¬c2\nîÔéÄw¿{6o}£½5°Ò’¼]òê«àŒçl&J9¢fîOböÇhß²€3pÁÉÝ‡Ó]\r§pÈÂñ½H^#wWkéN‡KV¤&Ü!ZßÁêø9 t‰~ºí4å¨F÷üTÚ+ÙVþsA,$³;€Âð%rD«¸£ðcÙ_Œåóa\0£nºƒãìW0\\ÎGicmïÊr$‚šºÇ@ ãT{À¾	žZØä¶±Ñ°aGg:´bØ²/@hÙFßn¸ÜÀ•my\\Œ•õ/Ì˜@\\)»ºo]bÅ¹Š-w¦6‹À¦Å›z£\nrq,Aòa$gXSšqf°9h[3YãßÒˆ%í_c«ó Ì\n	(ÃóüíW*\'¢¨á”§Õf ÉÜù*·Þ›òÁ\'Œ[Ô9úOmPÔÛ5JXn=3\'izˆxú—yƒ:sJ!\"ÞBÎÂ:BÆ¿ç”ˆí0ÝTX#, c’à¯	-!gWØ\rfõÈ8Ã¹WPÒ<Í wØóšÅ%ú~oÂéiìü\\J”ô—sî³P}É»à€º#Qz\rË—;óJ\0iÛê¬vŸ8#“mž…áËÔ\Zr<ýN€­:¯ô¬™ÓÄØ««xÃ\Zu“ns(ˆAøò´àW˜Ù\0L¹É|VÆû+Ñ$Ìm|–u,vsÇO^æHLð&Ô¯†¨Ð°¬ó<DÂî’a_‚KËv©þ“‰;—kB3Z+QÑK-p/ƒR¦E6|1­¡\0ÞžÂ0{žˆ<À·&škûCÀ½[¦-wìãï‚eNrh±¢ž–“\"–ôÚ·¶\"Þõ?zŸò ß/‡@’¶ž´Æü\0ü5/àwqëà›‹áú³;Íìœ‰`Ü¸¤GŸ&MTW|SE¬¦¹ãBaWP#‘.WI$Ò\")‘û9ò±Ûýc:—úÈ)å[ãÏS•­Òà–èü±–è-lz\'29¿»ÒœJ¡ø¤˜ìD¸dñÆ-Ä/6&ýÉ ˜ö9d²L•âz¯È‡—†°V†©Ì@Ÿ#HMg8&2öCz¤¿Ñx@fœ†d5Ø„Œü|ÕY€ËéZK†Q<È­y¨»V7ÜåG/o1úŸÒ’áh…ý±\0÷Âj¤ w4óR_ÀìŒåYv½WJ|õMÃýéoÌwk·°*#','×ïz>\Zú%\n\"ˆ/TàgEépkYç0÷Ðž\"ŠnT>„ û*ÛÂä±T¥ïaR®—Æ½çò?Èç¨Ûîô¹Øÿ:˜~ÆeØðs\'ÇŒ4þ”á™É@r2‰šÆê²æ‚f“xé)ØRµ—±J\'¤SvW5§ë#0£ÇI±p›ËùHÚÆËkTö¡\'ÇÜo)«mE˜	AN¯!\'Ä\rlá¨E¦¼ã´!ºgzlÏ)t\nv‘©ðm†kµ»çºgéŸŽØ½Ñ3æ”nÔ{®³¯Ým½;™eû‹ÊYÃ`¯ú¨wßcÜ½–¹“§råŒyé¦pûú_OíW^s’ƒD²–ü\089¹µÔV–¡áôb0O‚_tÔTÄßX>ì‹¸ÐäHD\ZMPÂ‘]îÂ›Ø—H%Š¹X!x~r20“ÃUxféš¸v¨\ZY1ŸÄ+$QÕé <RÛ7Ø\n‘®_5.,PÄ\'XÞ#†ûOÍžSðw±—$2èØClÉpQpTÞ0´c…˜lYÿ@îGH\nb 4v/­ŽŸe.–ëëêßåÓ^KY·{ö \n‚µ\"¼d&M6Ø‡#Þiç¶ÏxT;Y;â9ÍLšŒ4)âÕÞ,®\nfýÖûÅ‹\Z(cF’ÛÅÑ\\ö3\\ˆ/êH°\r´;¼\\_®³[	·;¤MâœuU³ëcÚ’í+h|½ ËÌNþTP.ÛDòÈåeõöwÎûæmÕuÉš†Peœ´ùm0ÕãµmR\"§@\\M™,¯êàj™vP `{ÙŠIFŒ¡_ÔP€½i›ÀPh9PÒœ=ÂÐÇ®(Šá:½4RqœŸ<îÂ-Ø–«á¾×eD÷Üº\Zc%”¾Vù$v#§Cô&\r”BRƒ˜ Q˜\rÊ%‚XªúA“¢x}È}#åªæÝkÚDñÀ†¢H>EWeb/šŸW‚Õ§Rz…öGBiI‚ÉV|I²ª#%Ômõ‰Ññ´BûƒÁ¨›´Î!Þì™¼«yrþ~\"#K[YŒ|*±T¬©U·vôœ@ªl9°¦N[˜ºàýè˜Î°á–?™³ã]·Ñ1öáÈ8Ê¹ªj>—=å®xæó–žFSx‚õ,ýt\\½¨[s·?|››[Ö·%æeôY¸ñ¸+ž\n	¯.­‚~\ZÄ‹2Ó(ø‡X\\*Ù\0eÊV:)ëýÇª ¤¡Lxû°òŒ»=ãÍûF¾>½\\mzþ¡3ˆSAwÖF=µëÇÅßa¸4:üf\rjâIéÏ#ÔÿQ\0˜\ZsDto¬&ÞúCªÀåc#‹×&nuÍe\"D§Ñ¥4§ÞA¦³#','MÔfB…å¶ý9©ü(ãôaÖ9”|7°JšcDÀZôÈøÆû#N¿¡G}¬ò¬Z1.xž!3@æ°TÖ>¹³C¬-l$îoš¼:æ»Ëö`–ƒ;r#A-ï®ýêG®kZÎ{\'91“ÁYï\'Ñà´3h›{+|92÷PÖ>ÀTX;žÒ¯[ËLÇ =„3‘Ù«Ð2³{°oûÕ‹`rMáV)oñ0Ùá‚Í!p‹í;É1ÄÇ—Íº­UL•K¹äÕI.óC8Ç­ÊçqÌ`–à÷Pð7G)*„ 9ÕÇˆºaÇý™‘Ÿ‡l•è{m-~‡>‹x·ý£\\B#B†ˆª–+]ÃLÞPwÄQtÀH$=P÷Î˜L»RÇá7f\Z“-]DžRæksØ3“V%Ûóìà—$’Õ1ÀæõMXü\Zb{ç&õ]ðü2²h¢@øÅcr˜Äuã ¡³]Q	ç\'yaB}Ö£b<º3[Å,GÞìp†p\\}§íØðú[”‚ƒ×#lIGd\\ä!Óyk¿{%’^û(ÕîõAPÍ&ÝN¦¢Ê¹™b‘ÆpE¿\Zª¤•z[Kßwµz‚PÃFíC³ö(D\"<¼ú­§÷Qt‘Ð¨„Cƒ%[xéÇ´,µ» ¢)AÂIV¾…WkÈ%MaNšNxÌo‚\\Ö=½lÖ¯âúÙe+>¬Ë¢ýˆ_ŒkMÊþ0¾7Hx½˜hË°û«Ö›ï¾àD¸OøŸRÔ!²%1tàœ’˜ƒŠ«l^ÚÔðGk¸—B¼çO…§˜BwîéšF$² Î‡û»Ü=tY:Æ€\"œ&ÈG–üá\\¹¾¥:`nI‚+RR‰X™³m:xªî~µ¤ÌþxlÖT?P(‰1ðÂ\rB«Â\0e/„‘Éµ[ðÄ,d!.ƒ¢è;Ý“R5)Tc`LU9‰ØÂŽ3Þ²9åÓâÑ~)ÁÔ«_žärÚ­xß@–6ÇyäÈ\'ÚË¥7ga0$‚ÖÍG…¿4‚ˆ–§AÀ¸Ç:‰¿ÛŒû{V XÜj­ˆë|—U$Xó¾Æž?ÜŒzž”xÖéþ“#G(»C¼¼È.¶4–K b€ŽÈüL ©˜\'WD@4¯\n´y	’bïÛ]•Be£ko6(²ý¢jnØ[æùMí	õñS·€­Zg=­wÆÙ‘ÜJ5Ð9jÉÛ•@4¶KT=‚»e³õ£Ä±\Z I^‡RØC­ÎÖ¿€\0I&5*5Ž¤g\rŠ2ÆŸ½¾EØÎ¦8J²u i<š\"è$/¤‰T§9g–@®iñ¡ûPÔ’NTä7íúµÝú¹w!Á™QF.¨›(ê?ßLÓÞÒB®','vidhya','41454');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
