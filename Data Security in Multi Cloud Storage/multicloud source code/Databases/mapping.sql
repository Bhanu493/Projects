
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mapping` 

USE `mapping`;


DROP TABLE IF EXISTS `clouds`;

CREATE TABLE `clouds` (
  `cname` varchar(1000) DEFAULT NULL,
  `sts` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


insert  into `clouds`(`cname`,`sts`) values ('cloud1','Active'),('cloud2','Active'),('cloud3','DeActivate'),('cloud4','Active'),('cloud5','Active'),('cloud6','Active');


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


DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `name` varchar(20) DEFAULT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


insert  into `register`(`name`,`uname`,`password`,`email`,`contact`) values ('pinki','pinki','pinki','pinki@gmail.com','9921567753'),('ruhi','ruhi','ruhi','ruhi@gmail.com','8522991105'),('vidhya','vidhya','vidhya','vidhyagaikwad19@gmail.com','7507091685');


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

insert  into `store`(`fid`,`fname`,`sig1`,`sig2`,`sig3`,`unm`,`sk`) values (1,'java.txt','\0=#�g���I��y�4[.��:۟s��+�]��,{��!�o�%�D>�','e�\Z�����`^�������x30�|3���,{��!�o�%�D>�','��:{�t#�y����Bgk�/P.0�����,{��!�o�%�D>�','ruhi','7652'),(2,'aa.txt','ca���~����i��14�W �b�������*�U��9��9�ǹ/�T��O��){�p�佨�)��}�ћ�q�>x��Jr���́��V���=��\r�ʖ��Ɓ�v�ɾ֡8���8F�C��UVTQ^G<1��7��e�\Z��IDu@�[LK!6N�	u|^U����F��X�.nU�[h�dD-�u��\0�A�*X�U��','C�`���if��X�����7k�a`��9f\Z����m(r�)D��+�<���ؼ�V�\"&��y��N�(l>3/D�L�x1��.�X��.pdhR��3�3@qq�S����D��R�s���W��L������lzB7E(���Ql�ܯ��B�8J¦=u�<�`m�o�p���^��9��Oc���{!�Ɓ^t��-�u��\0�A�*X�U��','�\r\\LT��ҭ�5�g��y��.)n�?p��Ҷ�ޢH��Ï��ǵ�F��tg�ӝ��=�����=�Ӳǁ�V�خ�A�[-N!J��n=�r\'�\n�f�̈*�|l��C��wg��}\r�\ny������wh�bVkݫ�����N,��X♋uk۠�o�~�i����\Z�t[ҵ��fE;	;���S/4���U-�u��\0�A�*X�U��','vidhya','7747'),(3,'java.txt','i��Lz�쁁ʍ��٠.h���»��\\0\\���έ�jx�>=&��L���Dl�i��I��^4:|POz��D\rZ]��i�%�k�p���XhHG�)�8�����{x�㻴Lf��0/���묣(��]Mx\0f~t��ǝ�c2\n����w�{6o}��5�Ғ�]�����l&J9�f�Ob��h߲�3p�Ɂ݇�]\r�p���H^#wWk�N�KV�&�!Z����9 t�~��4�F��T�+�V�sA,$�;���%�rD�����c�_���a\0�n����W0\\�Gicm��r$����@ �T{��	�Z�䶱ѰaGg:�bز/@h�F�n����my\\���/̘@\\)���o�]bŹ�-w�6���śz�\nrq,A�a$gXS�qf�9h[3Y��҈%�_c�� �\n	(����W*\'��ᔧ�f ���*�ޛ��\'�[�9�OmP��5JXn=3\'iz�x��y�:sJ!\"�B���:Bƿ���0�TX#, c��	-!gW�\rf��8ùWP�<͠w���%�~o��i���\\�J���s�P}ɻ���#Qz\r��;�J\0i��v�8#��m�����\Zr<�N��:������ث�x�\Zu�ns(�A���W��\0L��|VƏ�+�$�m|�u,vs�O^�HL�&ԯ��а��<D��a_�K�v����;�kB3Z+Q�K-p/�R�E6|1��\0ޞ�0{��<��&�k�C��[�-w���eNrh�����\"��ڷ�\"��?z���/�@������\0�5/�wq�������;�윉`ܸ�G�&MTW|SE�����BaWP#�.WI$�\")��9���c:���)�[��S����������-lz\'29��ҜJ�����D�d��-�/6&�ɠ��9d�L��z�ȇ���V���@�#HMg8&2�Cz���x@f��d5؄��|�Y���ZK�Q<ȭy��V7��G/o1��Ғ�h���\0��j�� w4�R_����Yv�WJ|���M���o�wk��*#','��z>\Z�%\n\"�/T�gE�pkY�0�О\"�nT>���*���T��aR��ƽ��?���������:�~�e��s\'ǌ4����@r2�����f�x�)�R���J\'��SvW5��#0��I�p���H���kT��\'��o)�mE�	�AN�!\'�\rl�E���!�gzl�)t\nv���m�k����g�韎ؽ�3�n�{����m�;�e���Y�`���w�cܽ����r�y�p��_O�W^s��D���\089���V����b0O�_t�T��X>싸���HD\ZMP�]�ؗH%��X!x~r20��Uxf隸v��\ZY1��+$Q�� <R�7�\n��_5.,P�\'X�#��O͞S�w��$2��Cl�pQpT�0��c��lY�@�GH\nb 4v/���e.�������^K�Y�{��\n���\"�d&M6؇#�i��xT;Y;�9�L��4)���,�\nf���ŋ\Z(cF����\\�3\\�/�H�\r�;�\\_��[	�;�M⁜uU��cڒ�+h|����N�TP.�D���e��w���m�uɚ�Pe���m0��m�R\"�@\\M�,���j�vP�`{ي�IF��_�P��i��Ph9PҜ=��Ǯ(��:�4Rq��<��-ؖ���eD�ܺ\Zc%��V�$v#�C�&\r�BR���Q�\r��%�X��A��x}�}#���k�D����H>EWeb/��W�էRz��GBiI��V|I��#%�m����B�������!�왼�yr�~\"#K[Y�|*�T��U�v��@�l9���N[�����ΰ�?���]��1���8ʹ�j>�=�x��FSx��,�t\\��[s��?|��[��%�e�Y��+�\n	�.��~\Zċ2�(��X\\*�\0e�V:)���Ǫ ��Lx�����=����F�>�\\mz��3�SAw�F=�����a�4:�f\rj�I�ρ#��Q\0�\ZsDto�&��C���c#���&nu�e\"D�ѥ4��A��#','M�fB���9��(��a�9�|7�J�cD�Z�����#N��G}��Z1.x�!3@��T�>���C��-l$�o��:���`��;r#A-���G�kZ�{\'91��Y�\'��3h�{+|92�P�>�TX;�ү[�LǠ=�3�٫�2�{�o�Ջ`rM�V)o�0���!p��;�1�Ǘͺ�UL�K���I.�C8����q�`���P�7G)*� 9�ǈ�a������l��{m-~�>�x���\\B#B�����+]�L�Pw�Qt�H$=P�ΘL�R��7f\Z��-]D�R�ks�3�V%�����$��1���MX�\Zb{�&�]��2�h�@��cr���u� ��]Q	�\'yaB}֣b<�3[��,G��p�p\\}�����[����#lIGd\\�!�yk�{%�^�(���AP�&�N��ʹ�b��pE�\Z���z[K�w�z�P�F�C��(D\"<�����Qt�Ш�C�%[x�Ǵ,����)A�IV��Wk�%MaN�Nx�o�\\�=�l�����e+>�ˢ��_�kM��0�7Hx��h˰��֛��D�O��R�!�%1t�������l^���Gk��B��O���Bw��F$��·���=tY:ƀ\"�&�G���\\���:`nI�+RR�X��m:x��~����xl�T?P(�1��\rB��\0e/��ɝ�[��,d!.���;ݓR5)Tc`LU9��3޲9����~)�ԫ_��rڭx�@��6�y��\'�˥7ga0$���G��4����A���:��ہ��{V X�j���|�U$X�ƞ?܌z��x����#G(�C���.�4�K�b�����L ��\'WD@4�\n�y	�b��]�Be�ko6(���jn�[��M�	��S����Zg=�w�ّ�J5�9j�ە@4�KT=��e���ı\Z��I^�R�C��ֿ�\0I&5*5��g\r�2Ɵ��E�Φ8J�u� i<�\"�$/��T�9g�@�i��PԒNT�7�������w!��QF.��(�?�L���B�','vidhya','41454');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
