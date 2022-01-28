

CREATE TABLE `tblcoauthors` (
  `coa_id` int(11) NOT NULL AUTO_INCREMENT,
  `coa_name` char(64) DEFAULT NULL,
  `coa_affiliation` text DEFAULT NULL,
  `coa_email` char(64) DEFAULT NULL,
  `coa_man_id` varchar(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `last_updated` char(64) DEFAULT NULL,
  PRIMARY KEY (`coa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

INSERT IGNORE INTO tblcoauthors VALUES('1','Virgie P. Almenteros-Alcantara','University of the Philippines Los Baños','vaalcantara@up.edu.ph','1','2020-12-23 16:34:38','');
INSERT IGNORE INTO tblcoauthors VALUES('2','Mariam Canales Kabirun','Mindanao State University','mariamkabirun@gmail.com','4','2021-01-08 20:34:08','');
INSERT IGNORE INTO tblcoauthors VALUES('3','Nourshamsia Casuela Barosa','Department of Science and Technology VI','barosanourshamsia@gmail.com','4','2021-01-08 20:34:08','');
INSERT IGNORE INTO tblcoauthors VALUES('4','','','','4','2021-01-08 20:34:08','');
INSERT IGNORE INTO tblcoauthors VALUES('5','Andrew Regis Salamat','National Research Council of the Philippines','andrew.r.salamat@gmail.com','5','2021-01-11 09:51:23','');
INSERT IGNORE INTO tblcoauthors VALUES('6','TERESITA T. RUNGDUIN','Philippine Normal University','rungduin.tt@pnu.edu.ph','6','2021-01-11 11:53:08','');
INSERT IGNORE INTO tblcoauthors VALUES('7','Teresita Tabbada Rungduin','Philippine Normal University','rungduin.tt@pnu.edu.ph','7','2021-01-11 12:18:04','');
INSERT IGNORE INTO tblcoauthors VALUES('8','John Ray B. Acopio','Mapua University','','7','2021-01-11 12:18:04','');
INSERT IGNORE INTO tblcoauthors VALUES('9','Abigail Parcasio Cid-Andres','Polytechnic University of the Philippines','gerard_balde@yahoo.com','8','2021-01-12 09:38:21','');
INSERT IGNORE INTO tblcoauthors VALUES('10','DARWIN CRUZ RUNGDUIN','Colegio de San Juan de Letran','darwin.rungduin@letran.edu.ph','9','2021-01-12 18:27:14','');
INSERT IGNORE INTO tblcoauthors VALUES('11','John Ray B. Acopio','Mapua Institute of Technology','acopio.jrb@yahoo.com','9','2021-01-12 18:27:14','');
INSERT IGNORE INTO tblcoauthors VALUES('12','MARIAM CAÑALES KABIRUN','MINDANAO STATE UNIVERSITY-MARAWI','mariam.kabirun@msumain.edu.ph','24','2021-01-16 19:37:35','');
INSERT IGNORE INTO tblcoauthors VALUES('13','Nourshamsia Casuela Barosa','Department of Science and Technology VI','barosanourshamsia@gmail.com','24','2021-01-16 19:37:35','');
INSERT IGNORE INTO tblcoauthors VALUES('14','MARIAM CAÑALES KABIRUN','MINDANAO STATE UNIVERSITY-MARAWI','mariam.kabirun@gmail.com','25','2021-01-16 19:45:57','');
INSERT IGNORE INTO tblcoauthors VALUES('15','Nourshamsia Casuela Barosa','Department of Science and Technology VI','barosanourshamsia@gmail.com','25','2021-01-16 19:45:57','');
INSERT IGNORE INTO tblcoauthors VALUES('16','Reynald V. Gimena','','','26','2021-01-16 20:40:22','');
INSERT IGNORE INTO tblcoauthors VALUES('17','Nazma Eza','','','26','2021-01-16 20:40:22','');
INSERT IGNORE INTO tblcoauthors VALUES('18','Reynald V. Gimena','COF, Mindanao State University, Marawi','raiynenald@gmail.com','27','2021-01-16 20:53:06','');
INSERT IGNORE INTO tblcoauthors VALUES('19','Nazma D. Eza','Biology Department, CNSM, Marawi Mindanao State University-Marawi','nazmaeza@gmail.com','27','2021-01-16 20:53:06','');
INSERT IGNORE INTO tblcoauthors VALUES('20','Ricomina A. Salic','Datu Lantud National High School, Department of Education, Ramain, Lanao del Sur','','28','2021-01-16 21:08:19','');
INSERT IGNORE INTO tblcoauthors VALUES('21','Fema Mag-aso Abamo','Mindanao State University Marawi','yadfem@yahoo.com','28','2021-01-16 21:08:19','');
INSERT IGNORE INTO tblcoauthors VALUES('22','Sukarno D. Tanggol','Mindanao State University-Iligan Institute of Technology','chancellor@g.msuiit.edu.ph','28','2021-01-16 21:08:19','');
INSERT IGNORE INTO tblcoauthors VALUES('23','Misael Mohamad Sanguila','Mindanao State University','msanguila@gmail.com','29','2021-01-16 21:18:53','');
INSERT IGNORE INTO tblcoauthors VALUES('24','Myrna Jean A Mendoza','Mindanao State University-Iligan Institute of Technology (MSU-IIT)','mendozamyrmajean@yahoo.com.ph','30','2021-01-16 21:35:50','');
INSERT IGNORE INTO tblcoauthors VALUES('25','Liwayway S. Viloria','','','30','2021-01-16 21:35:50','');
INSERT IGNORE INTO tblcoauthors VALUES('26','Aleta C. Fabregas','Polytechnic University of the Philippines ','aletfabregas@gmail.com','31','2021-02-03 09:24:45','');
INSERT IGNORE INTO tblcoauthors VALUES('33','Kabirun, Mariam C.','Biology Department, College of Natural Sciences and Mathematics, Mindanao State University, Marawi City','mariam.kabirun@msumain.edu.ph','38','2021-02-03 18:08:50','');
INSERT IGNORE INTO tblcoauthors VALUES('34','Barosa, Nourshamsia C.','Department of Science and Technology, Iloilo City','barosanourshamsia@gmail.com','38','2021-02-03 18:08:50','');
INSERT IGNORE INTO tblcoauthors VALUES('35','Amparado, Beverly B.','Biology Department, College of Natural Sciences and Mathematics, Mindanao State University, Marawi City','beverly.amparado@msumain.edu.ph','38','2021-02-03 18:08:50','');
INSERT IGNORE INTO tblcoauthors VALUES('36','','','','38','2021-02-03 18:08:50','');
INSERT IGNORE INTO tblcoauthors VALUES('37','Maria Cecilia Macabuac Ferolin','Mindanao State University - Iligan Institute of Technology','cesferolin@gmail.com','39','2021-02-03 18:22:12','');
INSERT IGNORE INTO tblcoauthors VALUES('38','Arnold P. Alamon','Department of the College of Arts and Social Sciences of the  Mindanao State University – Iligan Institute of Technology','apalamon@gmail.com','40','2021-02-03 18:37:48','');
INSERT IGNORE INTO tblcoauthors VALUES('39','','','','40','2021-02-03 18:37:48','');



CREATE TABLE `tblcriterias` (
  `row_id` int(11) NOT NULL AUTO_INCREMENT,
  `crt_subject` text DEFAULT NULL,
  `crt_description` text DEFAULT NULL,
  `crt_weight` int(3) DEFAULT NULL,
  `crt_type` char(12) DEFAULT NULL,
  `crt_input_name` char(32) NOT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT IGNORE INTO tblcriterias VALUES('1','Relevance','The technical outputs (research\'s results) are significant based on the objectives of the project.','30','text','scr_crt_1');
INSERT IGNORE INTO tblcriterias VALUES('2','Scope/Content','The breadth and depth of information from the researcher\'s results are sufficient to contribute to the attainment of the general and specific objectives.','30','text','scr_crt_2');
INSERT IGNORE INTO tblcriterias VALUES('3','Quality','The research results were creatively presented:','20','text','scr_crt_3');
INSERT IGNORE INTO tblcriterias VALUES('4','','a. Syntax, grammar, and language.','','','');
INSERT IGNORE INTO tblcriterias VALUES('5','','b. Illustrations, photos, graphs, etc.','','','');
INSERT IGNORE INTO tblcriterias VALUES('6','Timeliness','The research\'s results are applicable or have great potential to be used as tools (policy or technology) in addressing present regional and national issues.','20','text','scr_crt_4');



CREATE TABLE `tblfeedbacks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fb_rate_ui` int(11) NOT NULL,
  `fb_suggest_ui` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_rate_ux` int(11) NOT NULL,
  `fb_suggest_ux` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_usr_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_notif` int(11) NOT NULL DEFAULT 0,
  `fb_system` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT IGNORE INTO tblfeedbacks VALUES('1','1','','3','','158','1','3','2020-11-13 15:18:52','');
INSERT IGNORE INTO tblfeedbacks VALUES('2','3','','3','','160','1','3','2020-11-21 06:44:25','');
INSERT IGNORE INTO tblfeedbacks VALUES('3','3','very nice
','3','very good service
','161','1','3','2020-11-21 11:01:49','');
INSERT IGNORE INTO tblfeedbacks VALUES('4','3','','3','','167','1','3','2020-12-19 12:22:53','');
INSERT IGNORE INTO tblfeedbacks VALUES('5','3','','3','','7','1','1','2020-12-19 12:53:48','');
INSERT IGNORE INTO tblfeedbacks VALUES('8','3','','3','','171','1','3','2021-01-08 13:08:54','');
INSERT IGNORE INTO tblfeedbacks VALUES('10','3','1. allow Reviewers to upload a file or several files
2. change \"Principal Author\" to \"Corresponding Author\"









','3','','1283','1','2','2021-01-12 10:07:32','');
INSERT IGNORE INTO tblfeedbacks VALUES('11','2','','2','','SA994','1','2','2021-01-16 19:22:55','');
INSERT IGNORE INTO tblfeedbacks VALUES('12','3','','3','','SA37ecb9a66c7a60372c3616d28de73b13','1','1','2021-01-21 13:14:13','');
INSERT IGNORE INTO tblfeedbacks VALUES('13','3','','3','','SAff000e0321d1b5d08691fce9ac4d1733','1','2','2021-01-26 13:37:54','');
INSERT IGNORE INTO tblfeedbacks VALUES('14','3','','3','','175','1','3','2021-01-27 13:50:59','');
INSERT IGNORE INTO tblfeedbacks VALUES('15','3','','3','','4751','1','2','2021-01-31 19:35:07','');
INSERT IGNORE INTO tblfeedbacks VALUES('16','3','Convenient.','3','Fast.
','178','1','3','2021-02-05 18:12:04','');
INSERT IGNORE INTO tblfeedbacks VALUES('17','3','','3','','179','1','3','2021-02-11 01:33:50','');
INSERT IGNORE INTO tblfeedbacks VALUES('18','3','','3','','182','1','3','2021-02-15 06:06:05','');
INSERT IGNORE INTO tblfeedbacks VALUES('19','3','','3','','183','1','3','2021-02-15 06:09:51','');
INSERT IGNORE INTO tblfeedbacks VALUES('20','2','','2','','SAa942372b7357a3a87cfdb1e44337aa4d','1','2','2021-02-16 13:19:26','');
INSERT IGNORE INTO tblfeedbacks VALUES('21','3','da','3','adsasd','NaN','1','3','2021-06-11 13:48:42','');
INSERT IGNORE INTO tblfeedbacks VALUES('22','3','asd','3','ads','NaN','1','3','2021-06-11 14:04:07','');
INSERT IGNORE INTO tblfeedbacks VALUES('23','3','asd','3','asd','NaN','1','3','2021-06-11 14:11:45','');
INSERT IGNORE INTO tblfeedbacks VALUES('24','3','asd','3','asd','NaN','1','3','2021-06-11 14:19:51','');
INSERT IGNORE INTO tblfeedbacks VALUES('25','3','fghfg','3','fgh','NaN','1','3','2021-06-14 14:44:51','');
INSERT IGNORE INTO tblfeedbacks VALUES('26','3','dfgfd','3','dfg','NaN','1','3','2021-06-14 14:46:38','');



CREATE TABLE `tblfinalreviews` (
  `row_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_usr_id` varchar(64) NOT NULL,
  `com_man_id` int(2) NOT NULL,
  `com_review` int(2) NOT NULL,
  `com_remarks` text DEFAULT NULL,
  `date_created` varchar(16) DEFAULT NULL,
  `last_updated` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `tbllogs` (
  `row_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_user_id` varchar(64) NOT NULL,
  `log_action` char(64) NOT NULL,
  `log_insert_id` char(64) DEFAULT NULL,
  `log_user_role` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `notif_open` int(1) DEFAULT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB AUTO_INCREMENT=366 DEFAULT CHARSET=utf8;

INSERT IGNORE INTO tbllogs VALUES('1','7','logout','0','8','2021-01-15 12:00:14','0');
INSERT IGNORE INTO tbllogs VALUES('2','7','login','0','8','2021-01-15 13:04:37','0');
INSERT IGNORE INTO tbllogs VALUES('3','SA994','login','0','3','2021-01-16 18:47:45','0');
INSERT IGNORE INTO tbllogs VALUES('4','SA994','logout','0','3','2021-01-16 19:22:58','0');
INSERT IGNORE INTO tbllogs VALUES('5','201','uploaded','24','1','2021-01-16 19:37:35','0');
INSERT IGNORE INTO tbllogs VALUES('6','SA994','login','0','3','2021-01-16 19:38:33','0');
INSERT IGNORE INTO tbllogs VALUES('7','201','uploaded','25','1','2021-01-16 19:45:57','0');
INSERT IGNORE INTO tbllogs VALUES('8','2575','uploaded','26','1','2021-01-16 20:40:22','0');
INSERT IGNORE INTO tbllogs VALUES('9','2575','uploaded','27','1','2021-01-16 20:53:06','1');
INSERT IGNORE INTO tbllogs VALUES('10','3342','uploaded','28','1','2021-01-16 21:08:19','0');
INSERT IGNORE INTO tbllogs VALUES('11','1800','uploaded','29','1','2021-01-16 21:18:53','0');
INSERT IGNORE INTO tbllogs VALUES('12','2985','uploaded','30','1','2021-01-16 21:35:50','0');
INSERT IGNORE INTO tbllogs VALUES('13','SA994','login','0','3','2021-01-16 21:45:30','0');
INSERT IGNORE INTO tbllogs VALUES('14','SA994','logout','0','3','2021-01-16 21:48:22','0');
INSERT IGNORE INTO tbllogs VALUES('15','7','login','0','8','2021-01-18 08:15:39','0');
INSERT IGNORE INTO tbllogs VALUES('16','7','logout','0','8','2021-01-18 08:37:07','0');
INSERT IGNORE INTO tbllogs VALUES('17','7','login','0','8','2021-01-19 13:39:50','0');
INSERT IGNORE INTO tbllogs VALUES('18','7','logout','0','8','2021-01-19 13:40:15','0');
INSERT IGNORE INTO tbllogs VALUES('19','7','login','0','8','2021-01-19 14:25:45','0');
INSERT IGNORE INTO tbllogs VALUES('20','7','logout','0','8','2021-01-19 14:26:18','0');
INSERT IGNORE INTO tbllogs VALUES('22','SA994','login','0','3','2021-01-20 16:02:13','0');
INSERT IGNORE INTO tbllogs VALUES('23','SA994','logout','0','3','2021-01-20 16:03:50','0');
INSERT IGNORE INTO tbllogs VALUES('24','7','login','0','8','2021-01-20 16:04:36','1');
INSERT IGNORE INTO tbllogs VALUES('25','7','logout','0','8','2021-01-20 16:46:01','1');
INSERT IGNORE INTO tbllogs VALUES('26','7','login','0','8','2021-01-21 09:54:45','1');
INSERT IGNORE INTO tbllogs VALUES('27','7','logout','0','8','2021-01-21 10:04:13','0');
INSERT IGNORE INTO tbllogs VALUES('28','SA37ecb9a66c7a60372c3616d28de73b13','login','0','6','2021-01-21 13:13:42','1');
INSERT IGNORE INTO tbllogs VALUES('29','SA37ecb9a66c7a60372c3616d28de73b13','logout','0','6','2021-01-21 13:14:18','0');
INSERT IGNORE INTO tbllogs VALUES('30','SA994','login','0','3','2021-01-21 13:15:13','0');
INSERT IGNORE INTO tbllogs VALUES('31','SA994','added reviewers for','24','3','2021-01-21 13:37:21','0');
INSERT IGNORE INTO tbllogs VALUES('32','SA994','added reviewers for','24','3','2021-01-21 13:37:21','0');
INSERT IGNORE INTO tbllogs VALUES('33','SA994','added reviewers for','24','3','2021-01-21 13:37:21','0');
INSERT IGNORE INTO tbllogs VALUES('34','SA994','added reviewers for','25','3','2021-01-21 13:41:47','0');
INSERT IGNORE INTO tbllogs VALUES('35','SA994','added reviewers for','25','3','2021-01-21 13:41:47','1');
INSERT IGNORE INTO tbllogs VALUES('36','SA994','added reviewers for','25','3','2021-01-21 13:41:47','0');
INSERT IGNORE INTO tbllogs VALUES('37','SA994','added reviewers for','29','3','2021-01-21 13:44:21','0');
INSERT IGNORE INTO tbllogs VALUES('38','SA994','added reviewers for','29','3','2021-01-21 13:44:21','0');
INSERT IGNORE INTO tbllogs VALUES('39','SA994','added reviewers for','29','3','2021-01-21 13:44:21','0');
INSERT IGNORE INTO tbllogs VALUES('40','4609','accepted review request for','25','5','2021-01-21 13:47:09','0');
INSERT IGNORE INTO tbllogs VALUES('41','SA994','added reviewers for','30','3','2021-01-21 13:49:02','0');
INSERT IGNORE INTO tbllogs VALUES('42','SA994','added reviewers for','30','3','2021-01-21 13:49:02','1');
INSERT IGNORE INTO tbllogs VALUES('43','SA994','added reviewers for','30','3','2021-01-21 13:49:02','0');
INSERT IGNORE INTO tbllogs VALUES('44','4609','login','0','5','2021-01-21 13:49:32','0');
INSERT IGNORE INTO tbllogs VALUES('45','SA994','added reviewers for','27','3','2021-01-21 13:51:25','0');
INSERT IGNORE INTO tbllogs VALUES('46','SA994','added reviewers for','27','3','2021-01-21 13:51:25','0');
INSERT IGNORE INTO tbllogs VALUES('47','SA994','added reviewers for','27','3','2021-01-21 13:51:25','0');
INSERT IGNORE INTO tbllogs VALUES('48','4609','logout','0','5','2021-01-21 13:54:44','1');
INSERT IGNORE INTO tbllogs VALUES('49','SA994','added reviewers for','28','3','2021-01-21 13:58:19','0');
INSERT IGNORE INTO tbllogs VALUES('50','SA994','added reviewers for','28','3','2021-01-21 13:58:19','0');
INSERT IGNORE INTO tbllogs VALUES('51','SA994','added reviewers for','28','3','2021-01-21 13:58:19','0');
INSERT IGNORE INTO tbllogs VALUES('52','SA994','added reviewers for','28','3','2021-01-21 13:58:20','0');
INSERT IGNORE INTO tbllogs VALUES('53','SA994','added reviewers for','26','3','2021-01-21 14:00:42','1');
INSERT IGNORE INTO tbllogs VALUES('54','SA994','added reviewers for','26','3','2021-01-21 14:00:42','0');
INSERT IGNORE INTO tbllogs VALUES('55','SA994','added reviewers for','26','3','2021-01-21 14:00:43','0');
INSERT IGNORE INTO tbllogs VALUES('56','4729','accepted review request for','26','5','2021-01-21 14:01:53','0');
INSERT IGNORE INTO tbllogs VALUES('57','4729','login','0','5','2021-01-21 14:03:51','0');
INSERT IGNORE INTO tbllogs VALUES('58','2852','accepted review request for','29','5','2021-01-21 14:06:09','0');
INSERT IGNORE INTO tbllogs VALUES('59','4729','reviewed','26','5','2021-01-21 14:08:08','0');
INSERT IGNORE INTO tbllogs VALUES('60','1391','accepted review request for','30','5','2021-01-21 14:13:21','0');
INSERT IGNORE INTO tbllogs VALUES('61','286','accepted review request for','25','5','2021-01-21 14:13:40','0');
INSERT IGNORE INTO tbllogs VALUES('62','4751','accepted review request for','24','5','2021-01-21 14:31:41','0');
INSERT IGNORE INTO tbllogs VALUES('63','4751','login','0','5','2021-01-21 14:33:23','0');
INSERT IGNORE INTO tbllogs VALUES('64','4751','logout','0','5','2021-01-21 14:34:35','0');
INSERT IGNORE INTO tbllogs VALUES('65','SAff000e0321d1b5d08691fce9ac4d1733','login','0','3','2021-01-21 14:44:11','0');
INSERT IGNORE INTO tbllogs VALUES('66','SAff000e0321d1b5d08691fce9ac4d1733','logout','0','3','2021-01-21 14:44:26','0');
INSERT IGNORE INTO tbllogs VALUES('67','SAff000e0321d1b5d08691fce9ac4d1733','login','0','3','2021-01-21 14:44:35','0');
INSERT IGNORE INTO tbllogs VALUES('68','6039','accepted review request for','29','5','2021-01-21 14:48:19','0');
INSERT IGNORE INTO tbllogs VALUES('69','SAff000e0321d1b5d08691fce9ac4d1733','logout','0','3','2021-01-21 14:48:30','0');
INSERT IGNORE INTO tbllogs VALUES('70','1929','accepted review request for','28','5','2021-01-21 14:57:12','0');
INSERT IGNORE INTO tbllogs VALUES('71','SA994','logout','0','3','2021-01-21 15:13:34','0');
INSERT IGNORE INTO tbllogs VALUES('72','SA37ecb9a66c7a60372c3616d28de73b13','login','0','6','2021-01-21 15:13:36','0');
INSERT IGNORE INTO tbllogs VALUES('73','1929','login','0','5','2021-01-21 15:13:37','0');
INSERT IGNORE INTO tbllogs VALUES('74','5082','accepted review request for','30','5','2021-01-21 15:22:02','0');
INSERT IGNORE INTO tbllogs VALUES('75','6039','login','0','5','2021-01-21 15:22:55','0');
INSERT IGNORE INTO tbllogs VALUES('76','5082','login','0','5','2021-01-21 15:28:23','0');
INSERT IGNORE INTO tbllogs VALUES('77','1929','reviewed','28','5','2021-01-21 15:33:56','0');
INSERT IGNORE INTO tbllogs VALUES('78','431','accepted review request for','28','5','2021-01-21 16:36:09','0');
INSERT IGNORE INTO tbllogs VALUES('79','431','login','0','5','2021-01-21 16:37:52','0');
INSERT IGNORE INTO tbllogs VALUES('80','6559','accepted review request for','26','5','2021-01-21 18:58:37','0');
INSERT IGNORE INTO tbllogs VALUES('81','6039','login','0','5','2021-01-21 21:50:58','0');
INSERT IGNORE INTO tbllogs VALUES('82','6186','accepted review request for','26','5','2021-01-22 03:25:32','0');
INSERT IGNORE INTO tbllogs VALUES('83','6186','login','0','5','2021-01-22 03:26:46','0');
INSERT IGNORE INTO tbllogs VALUES('84','7','login','0','8','2021-01-22 10:02:17','0');
INSERT IGNORE INTO tbllogs VALUES('85','938','accepted review request for','24','5','2021-01-22 10:47:01','0');
INSERT IGNORE INTO tbllogs VALUES('86','1378','accepted review request for','27','5','2021-01-22 11:54:38','0');
INSERT IGNORE INTO tbllogs VALUES('87','7','login','0','8','2021-01-22 15:38:50','0');
INSERT IGNORE INTO tbllogs VALUES('88','7','logout','0','8','2021-01-22 15:39:15','0');
INSERT IGNORE INTO tbllogs VALUES('89','SAff000e0321d1b5d08691fce9ac4d1733','login','0','3','2021-01-22 18:18:20','0');
INSERT IGNORE INTO tbllogs VALUES('90','1097','accepted review request for','28','5','2021-01-23 15:42:10','1');
INSERT IGNORE INTO tbllogs VALUES('91','286','login','0','5','2021-01-23 16:17:01','0');
INSERT IGNORE INTO tbllogs VALUES('92','1138','accepted review request for','28','5','2021-01-23 19:10:09','0');
INSERT IGNORE INTO tbllogs VALUES('93','1138','login','0','5','2021-01-23 19:12:12','0');
INSERT IGNORE INTO tbllogs VALUES('94','7','login','0','8','2021-01-23 19:40:31','0');
INSERT IGNORE INTO tbllogs VALUES('95','7','login','0','8','2021-01-23 19:40:57','0');
INSERT IGNORE INTO tbllogs VALUES('96','7','logout','0','8','2021-01-23 19:43:31','0');
INSERT IGNORE INTO tbllogs VALUES('97','2850','accepted review request for','24','5','2021-01-23 19:54:20','0');
INSERT IGNORE INTO tbllogs VALUES('98','1097','login','0','5','2021-01-23 20:53:51','0');
INSERT IGNORE INTO tbllogs VALUES('99','286','login','0','5','2021-01-23 20:54:36','0');
INSERT IGNORE INTO tbllogs VALUES('100','286','reviewed','25','5','2021-01-23 21:14:04','0');
INSERT IGNORE INTO tbllogs VALUES('101','1097','login','0','5','2021-01-24 09:15:37','0');
INSERT IGNORE INTO tbllogs VALUES('102','253','accepted review request for','27','5','2021-01-24 09:29:33','0');
INSERT IGNORE INTO tbllogs VALUES('103','253','login','0','5','2021-01-24 09:30:04','0');
INSERT IGNORE INTO tbllogs VALUES('104','253','reviewed','27','5','2021-01-24 10:08:25','0');
INSERT IGNORE INTO tbllogs VALUES('105','390','accepted review request for','25','5','2021-01-24 10:27:10','0');
INSERT IGNORE INTO tbllogs VALUES('106','390','login','0','5','2021-01-24 10:27:54','0');
INSERT IGNORE INTO tbllogs VALUES('107','390','reviewed','25','5','2021-01-24 10:32:39','0');
INSERT IGNORE INTO tbllogs VALUES('108','7','login','0','8','2021-01-25 08:31:33','0');
INSERT IGNORE INTO tbllogs VALUES('109','7','logout','0','8','2021-01-25 08:33:30','0');
INSERT IGNORE INTO tbllogs VALUES('110','7','login','0','8','2021-01-25 08:59:28','0');
INSERT IGNORE INTO tbllogs VALUES('111','SAff000e0321d1b5d08691fce9ac4d1733','login','0','3','2021-01-25 09:10:00','0');
INSERT IGNORE INTO tbllogs VALUES('112','SAff000e0321d1b5d08691fce9ac4d1733','logout','0','3','2021-01-25 09:24:27','0');
INSERT IGNORE INTO tbllogs VALUES('113','1138','login','0','5','2021-01-26 02:51:32','0');
INSERT IGNORE INTO tbllogs VALUES('114','1138','reviewed','28','5','2021-01-26 05:08:43','0');
INSERT IGNORE INTO tbllogs VALUES('115','4609','login','0','5','2021-01-26 11:10:02','0');
INSERT IGNORE INTO tbllogs VALUES('116','4609','reviewed','25','5','2021-01-26 11:22:12','0');
INSERT IGNORE INTO tbllogs VALUES('117','SAff000e0321d1b5d08691fce9ac4d1733','login','0','3','2021-01-26 13:35:20','0');
INSERT IGNORE INTO tbllogs VALUES('118','SAff000e0321d1b5d08691fce9ac4d1733','logout','0','3','2021-01-26 13:37:56','0');
INSERT IGNORE INTO tbllogs VALUES('119','SAff000e0321d1b5d08691fce9ac4d1733','login','0','3','2021-01-26 14:41:00','0');
INSERT IGNORE INTO tbllogs VALUES('120','SAff000e0321d1b5d08691fce9ac4d1733','logout','0','3','2021-01-26 14:41:51','0');
INSERT IGNORE INTO tbllogs VALUES('121','1097','login','0','5','2021-01-26 21:13:18','0');
INSERT IGNORE INTO tbllogs VALUES('122','7','login','0','8','2021-01-27 08:15:00','0');
INSERT IGNORE INTO tbllogs VALUES('123','7','logout','0','8','2021-01-27 08:18:40','0');
INSERT IGNORE INTO tbllogs VALUES('124','7','login','0','8','2021-01-27 13:50:54','0');
INSERT IGNORE INTO tbllogs VALUES('125','7','logout','0','8','2021-01-27 13:52:48','0');
INSERT IGNORE INTO tbllogs VALUES('126','6039','login','0','5','2021-01-27 14:48:31','0');
INSERT IGNORE INTO tbllogs VALUES('127','6039','reviewed','29','5','2021-01-27 16:22:39','0');
INSERT IGNORE INTO tbllogs VALUES('128','SA994','login','0','3','2021-01-28 11:19:32','0');
INSERT IGNORE INTO tbllogs VALUES('129','SA37ecb9a66c7a60372c3616d28de73b13','login','0','6','2021-01-28 11:24:17','0');
INSERT IGNORE INTO tbllogs VALUES('130','SA994','logout','0','3','2021-01-28 12:46:25','0');
INSERT IGNORE INTO tbllogs VALUES('131','SA994','login','0','3','2021-01-28 12:46:35','0');
INSERT IGNORE INTO tbllogs VALUES('132','938','login','0','5','2021-01-28 16:44:34','0');
INSERT IGNORE INTO tbllogs VALUES('133','938','reviewed','24','5','2021-01-28 16:46:44','0');
INSERT IGNORE INTO tbllogs VALUES('134','938','logout','0','5','2021-01-28 16:46:54','0');
INSERT IGNORE INTO tbllogs VALUES('135','7','login','0','8','2021-01-29 09:29:10','0');
INSERT IGNORE INTO tbllogs VALUES('136','4751','login','0','5','2021-01-31 11:04:49','0');
INSERT IGNORE INTO tbllogs VALUES('137','4751','login','0','5','2021-01-31 13:26:53','0');
INSERT IGNORE INTO tbllogs VALUES('138','4751','reviewed','24','5','2021-01-31 19:10:48','0');
INSERT IGNORE INTO tbllogs VALUES('139','4751','logout','0','5','2021-01-31 19:35:11','0');
INSERT IGNORE INTO tbllogs VALUES('140','4751','login','0','5','2021-01-31 19:40:49','0');
INSERT IGNORE INTO tbllogs VALUES('141','4751','logout','0','5','2021-01-31 19:45:07','0');
INSERT IGNORE INTO tbllogs VALUES('142','SA994','login','0','3','2021-02-01 09:37:48','0');
INSERT IGNORE INTO tbllogs VALUES('143','4751','login','0','5','2021-02-01 12:12:34','0');
INSERT IGNORE INTO tbllogs VALUES('144','4751','logout','0','5','2021-02-01 12:40:40','0');
INSERT IGNORE INTO tbllogs VALUES('145','SA994','login','0','3','2021-02-02 09:43:16','0');
INSERT IGNORE INTO tbllogs VALUES('146','4609','login','0','5','2021-02-02 14:08:33','0');
INSERT IGNORE INTO tbllogs VALUES('147','6039','login','0','5','2021-02-02 16:16:49','0');
INSERT IGNORE INTO tbllogs VALUES('148','7','login','0','8','2021-02-02 16:19:32','0');
INSERT IGNORE INTO tbllogs VALUES('149','7','logout','0','8','2021-02-02 16:19:58','0');
INSERT IGNORE INTO tbllogs VALUES('150','4751','login','0','5','2021-02-02 19:47:26','0');
INSERT IGNORE INTO tbllogs VALUES('151','4751','logout','0','5','2021-02-02 19:48:00','0');
INSERT IGNORE INTO tbllogs VALUES('152','7','login','0','8','2021-02-03 09:12:56','0');
INSERT IGNORE INTO tbllogs VALUES('153','7','logout','0','8','2021-02-03 09:14:05','0');
INSERT IGNORE INTO tbllogs VALUES('154','8117','uploaded','31','1','2021-02-03 09:24:45','0');
INSERT IGNORE INTO tbllogs VALUES('161','7','login','0','8','2021-02-03 15:08:23','0');
INSERT IGNORE INTO tbllogs VALUES('162','7','logout','0','8','2021-02-03 15:17:11','0');
INSERT IGNORE INTO tbllogs VALUES('163','201','uploaded','38','1','2021-02-03 18:08:50','0');
INSERT IGNORE INTO tbllogs VALUES('164','3687','uploaded','39','1','2021-02-03 18:22:12','0');
INSERT IGNORE INTO tbllogs VALUES('165','599','uploaded','40','1','2021-02-03 18:37:48','0');
INSERT IGNORE INTO tbllogs VALUES('166','SA994','login','0','3','2021-02-04 08:26:38','0');
INSERT IGNORE INTO tbllogs VALUES('167','SA994','logout','0','3','2021-02-04 10:52:45','0');
INSERT IGNORE INTO tbllogs VALUES('168','SA994','login','0','3','2021-02-04 10:52:48','0');
INSERT IGNORE INTO tbllogs VALUES('169','SA994','login','0','3','2021-02-04 14:08:22','0');
INSERT IGNORE INTO tbllogs VALUES('170','4729','login','0','5','2021-02-04 14:12:53','0');
INSERT IGNORE INTO tbllogs VALUES('171','4609','login','0','5','2021-02-04 14:18:16','0');
INSERT IGNORE INTO tbllogs VALUES('172','7','login','0','8','2021-02-04 14:33:44','0');
INSERT IGNORE INTO tbllogs VALUES('173','7','logout','0','8','2021-02-04 14:35:08','0');
INSERT IGNORE INTO tbllogs VALUES('174','SA994','logout','0','3','2021-02-04 14:40:39','0');
INSERT IGNORE INTO tbllogs VALUES('175','7','login','0','8','2021-02-04 15:57:32','0');
INSERT IGNORE INTO tbllogs VALUES('176','7','login','0','8','2021-02-04 16:04:58','0');
INSERT IGNORE INTO tbllogs VALUES('177','7','logout','0','8','2021-02-04 16:21:33','0');
INSERT IGNORE INTO tbllogs VALUES('178','SA994','login','0','3','2021-02-04 16:21:43','0');
INSERT IGNORE INTO tbllogs VALUES('179','SA994','logout','0','3','2021-02-04 16:35:55','0');
INSERT IGNORE INTO tbllogs VALUES('180','7','logout','0','8','2021-02-04 16:47:08','0');
INSERT IGNORE INTO tbllogs VALUES('181','7','login','0','8','2021-02-04 16:54:53','0');
INSERT IGNORE INTO tbllogs VALUES('182','7','logout','0','8','2021-02-04 16:56:22','0');
INSERT IGNORE INTO tbllogs VALUES('183','8127','uploaded','41','1','2021-02-04 20:14:29','0');
INSERT IGNORE INTO tbllogs VALUES('194','8127','uploaded','52','1','2021-02-04 20:23:07','0');
INSERT IGNORE INTO tbllogs VALUES('195','1097','login','0','5','2021-02-04 21:32:29','0');
INSERT IGNORE INTO tbllogs VALUES('196','1097','reviewed','28','5','2021-02-04 21:56:05','0');
INSERT IGNORE INTO tbllogs VALUES('197','7','login','0','8','2021-02-05 08:36:30','0');
INSERT IGNORE INTO tbllogs VALUES('198','SA994','login','0','3','2021-02-05 08:51:24','0');
INSERT IGNORE INTO tbllogs VALUES('199','SA994','added reviewers for','30','3','2021-02-05 09:22:59','0');
INSERT IGNORE INTO tbllogs VALUES('200','SA994','added reviewers for','30','3','2021-02-05 09:22:59','0');
INSERT IGNORE INTO tbllogs VALUES('201','SA994','added reviewers for','30','3','2021-02-05 09:22:59','0');
INSERT IGNORE INTO tbllogs VALUES('202','SA994','added reviewers for','30','3','2021-02-05 09:22:59','0');
INSERT IGNORE INTO tbllogs VALUES('203','4298','accepted review request for','30','5','2021-02-05 09:30:31','0');
INSERT IGNORE INTO tbllogs VALUES('204','SA994','added reviewers for','29','3','2021-02-05 09:39:34','0');
INSERT IGNORE INTO tbllogs VALUES('205','SA994','added reviewers for','29','3','2021-02-05 09:39:34','0');
INSERT IGNORE INTO tbllogs VALUES('206','SA994','added reviewers for','29','3','2021-02-05 09:39:34','0');
INSERT IGNORE INTO tbllogs VALUES('207','SA994','added reviewers for','29','3','2021-02-05 09:39:34','0');
INSERT IGNORE INTO tbllogs VALUES('208','7','login','0','8','2021-02-05 10:04:00','0');
INSERT IGNORE INTO tbllogs VALUES('209','972','accepted review request for','30','5','2021-02-05 10:05:28','0');
INSERT IGNORE INTO tbllogs VALUES('210','7','logout','0','8','2021-02-05 10:21:07','0');
INSERT IGNORE INTO tbllogs VALUES('211','SA994','added reviewers for','28','3','2021-02-05 10:23:46','0');
INSERT IGNORE INTO tbllogs VALUES('212','SA994','added reviewers for','28','3','2021-02-05 10:23:46','0');
INSERT IGNORE INTO tbllogs VALUES('213','SA994','added reviewers for','28','3','2021-02-05 10:23:46','0');
INSERT IGNORE INTO tbllogs VALUES('214','SA994','added reviewers for','27','3','2021-02-05 10:36:58','0');
INSERT IGNORE INTO tbllogs VALUES('215','SA994','added reviewers for','27','3','2021-02-05 10:36:58','0');
INSERT IGNORE INTO tbllogs VALUES('216','SA994','added reviewers for','27','3','2021-02-05 10:36:58','0');
INSERT IGNORE INTO tbllogs VALUES('217','SA994','added reviewers for','27','3','2021-02-05 10:36:58','0');
INSERT IGNORE INTO tbllogs VALUES('218','SA994','added reviewers for','26','3','2021-02-05 10:47:55','0');
INSERT IGNORE INTO tbllogs VALUES('219','SA994','added reviewers for','26','3','2021-02-05 10:47:55','0');
INSERT IGNORE INTO tbllogs VALUES('220','SA994','added reviewers for','26','3','2021-02-05 10:47:55','0');
INSERT IGNORE INTO tbllogs VALUES('221','SA994','added reviewers for','26','3','2021-02-05 10:47:55','0');
INSERT IGNORE INTO tbllogs VALUES('222','SA994','added reviewers for','25','3','2021-02-05 11:02:25','0');
INSERT IGNORE INTO tbllogs VALUES('223','SA994','added reviewers for','25','3','2021-02-05 11:02:25','0');
INSERT IGNORE INTO tbllogs VALUES('224','SA994','added reviewers for','25','3','2021-02-05 11:02:25','0');
INSERT IGNORE INTO tbllogs VALUES('225','SA994','added reviewers for','25','3','2021-02-05 11:02:25','0');
INSERT IGNORE INTO tbllogs VALUES('226','6186','login','0','5','2021-02-05 11:07:17','0');
INSERT IGNORE INTO tbllogs VALUES('227','SA994','added reviewers for','24','3','2021-02-05 11:11:09','0');
INSERT IGNORE INTO tbllogs VALUES('228','SA994','added reviewers for','24','3','2021-02-05 11:11:09','0');
INSERT IGNORE INTO tbllogs VALUES('229','SA994','added reviewers for','24','3','2021-02-05 11:11:09','0');
INSERT IGNORE INTO tbllogs VALUES('230','SA994','added reviewers for','24','3','2021-02-05 11:11:09','0');
INSERT IGNORE INTO tbllogs VALUES('231','SA994','added reviewers for','40','3','2021-02-05 11:22:50','0');
INSERT IGNORE INTO tbllogs VALUES('232','SA994','added reviewers for','40','3','2021-02-05 11:22:50','0');
INSERT IGNORE INTO tbllogs VALUES('233','SA994','added reviewers for','40','3','2021-02-05 11:22:50','0');
INSERT IGNORE INTO tbllogs VALUES('234','SA994','added reviewers for','40','3','2021-02-05 11:22:50','0');
INSERT IGNORE INTO tbllogs VALUES('235','SA994','added reviewers for','38','3','2021-02-05 11:57:18','0');
INSERT IGNORE INTO tbllogs VALUES('236','SA994','added reviewers for','38','3','2021-02-05 11:57:18','0');
INSERT IGNORE INTO tbllogs VALUES('237','SA994','added reviewers for','38','3','2021-02-05 11:57:18','0');
INSERT IGNORE INTO tbllogs VALUES('238','SA994','added reviewers for','38','3','2021-02-05 11:57:18','0');
INSERT IGNORE INTO tbllogs VALUES('239','3629','accepted review request for','29','5','2021-02-05 12:02:05','0');
INSERT IGNORE INTO tbllogs VALUES('240','7','logout','0','8','2021-02-05 14:18:24','0');
INSERT IGNORE INTO tbllogs VALUES('241','5082','reviewed','30','5','2021-02-05 14:23:46','0');
INSERT IGNORE INTO tbllogs VALUES('242','7','login','0','8','2021-02-05 15:13:12','0');
INSERT IGNORE INTO tbllogs VALUES('243','7','logout','0','8','2021-02-05 15:15:59','0');
INSERT IGNORE INTO tbllogs VALUES('244','7','login','0','8','2021-02-05 15:21:59','0');
INSERT IGNORE INTO tbllogs VALUES('245','7','logout','0','8','2021-02-05 15:23:23','0');
INSERT IGNORE INTO tbllogs VALUES('246','7','login','0','8','2021-02-05 15:29:11','0');
INSERT IGNORE INTO tbllogs VALUES('247','820','accepted review request for','29','5','2021-02-05 16:54:37','0');
INSERT IGNORE INTO tbllogs VALUES('248','820','login','0','5','2021-02-05 16:56:17','0');
INSERT IGNORE INTO tbllogs VALUES('249','6559','login','0','5','2021-02-05 18:28:09','0');
INSERT IGNORE INTO tbllogs VALUES('250','6559','reviewed','26','5','2021-02-05 18:38:35','0');
INSERT IGNORE INTO tbllogs VALUES('251','6186','reviewed','26','5','2021-02-06 10:16:03','0');
INSERT IGNORE INTO tbllogs VALUES('252','431','login','0','5','2021-02-06 10:32:18','0');
INSERT IGNORE INTO tbllogs VALUES('253','431','reviewed','28','5','2021-02-06 11:25:35','0');
INSERT IGNORE INTO tbllogs VALUES('254','6800','uploaded','53','1','2021-02-06 16:16:12','0');
INSERT IGNORE INTO tbllogs VALUES('255','6802','accepted review request for','28','5','2021-02-07 10:27:14','0');
INSERT IGNORE INTO tbllogs VALUES('256','6802','login','0','5','2021-02-07 10:32:33','0');
INSERT IGNORE INTO tbllogs VALUES('257','6802','login','0','5','2021-02-07 10:35:37','0');
INSERT IGNORE INTO tbllogs VALUES('258','52','accepted review request for','25','5','2021-02-07 11:12:06','0');
INSERT IGNORE INTO tbllogs VALUES('259','5287','accepted review request for','27','5','2021-02-07 11:25:27','0');
INSERT IGNORE INTO tbllogs VALUES('260','104','accepted review request for','25','5','2021-02-07 11:27:55','0');
INSERT IGNORE INTO tbllogs VALUES('261','1951','accepted review request for','29','5','2021-02-07 11:28:40','0');
INSERT IGNORE INTO tbllogs VALUES('262','1951','login','0','5','2021-02-07 11:30:54','0');
INSERT IGNORE INTO tbllogs VALUES('263','1146','accepted review request for','38','5','2021-02-07 12:41:40','0');
INSERT IGNORE INTO tbllogs VALUES('264','736','accepted review request for','26','5','2021-02-07 12:49:13','0');
INSERT IGNORE INTO tbllogs VALUES('265','6802','reviewed','28','5','2021-02-07 13:48:30','0');
INSERT IGNORE INTO tbllogs VALUES('266','7','login','0','8','2021-02-07 15:20:42','0');
INSERT IGNORE INTO tbllogs VALUES('267','7','logout','0','8','2021-02-07 15:21:19','0');
INSERT IGNORE INTO tbllogs VALUES('268','866','accepted review request for','29','5','2021-02-07 15:48:10','0');
INSERT IGNORE INTO tbllogs VALUES('269','4298','login','0','5','2021-02-07 16:01:14','0');
INSERT IGNORE INTO tbllogs VALUES('270','4298','reviewed','30','5','2021-02-07 16:34:45','0');
INSERT IGNORE INTO tbllogs VALUES('271','4599','login','0','1','2021-02-07 17:18:49','0');
INSERT IGNORE INTO tbllogs VALUES('272','5167','accepted review request for','26','5','2021-02-07 18:02:55','0');
INSERT IGNORE INTO tbllogs VALUES('273','5167','login','0','5','2021-02-07 18:04:18','0');
INSERT IGNORE INTO tbllogs VALUES('274','352','accepted review request for','25','5','2021-02-07 18:04:38','0');
INSERT IGNORE INTO tbllogs VALUES('275','352','login','0','5','2021-02-07 18:06:07','0');
INSERT IGNORE INTO tbllogs VALUES('276','5737','accepted review request for','38','5','2021-02-07 19:24:16','0');
INSERT IGNORE INTO tbllogs VALUES('277','5737','login','0','5','2021-02-07 19:26:14','0');
INSERT IGNORE INTO tbllogs VALUES('278','178','accepted review request for','25','5','2021-02-07 19:31:46','0');
INSERT IGNORE INTO tbllogs VALUES('279','178','login','0','5','2021-02-07 19:34:10','0');
INSERT IGNORE INTO tbllogs VALUES('280','5737','reviewed','38','5','2021-02-07 19:34:16','0');
INSERT IGNORE INTO tbllogs VALUES('281','5287','login','0','5','2021-02-07 19:35:33','0');
INSERT IGNORE INTO tbllogs VALUES('282','972','login','0','5','2021-02-07 21:46:26','0');
INSERT IGNORE INTO tbllogs VALUES('283','SA994','login','0','3','2021-02-08 07:03:54','0');
INSERT IGNORE INTO tbllogs VALUES('284','460','accepted review request for','24','5','2021-02-08 07:08:31','0');
INSERT IGNORE INTO tbllogs VALUES('286','7','login','0','8','2021-02-08 08:25:02','0');
INSERT IGNORE INTO tbllogs VALUES('287','7','logout','0','8','2021-02-08 08:43:11','0');
INSERT IGNORE INTO tbllogs VALUES('288','4050','uploaded','55','1','2021-02-08 08:43:39','0');
INSERT IGNORE INTO tbllogs VALUES('289','7','login','0','8','2021-02-08 08:55:00','0');
INSERT IGNORE INTO tbllogs VALUES('290','2061','accepted review request for','28','5','2021-02-08 09:10:23','0');
INSERT IGNORE INTO tbllogs VALUES('291','2061','login','0','5','2021-02-08 09:13:23','0');
INSERT IGNORE INTO tbllogs VALUES('292','5272','accepted review request for','38','5','2021-02-08 10:16:10','0');
INSERT IGNORE INTO tbllogs VALUES('293','5272','login','0','5','2021-02-08 10:17:11','0');
INSERT IGNORE INTO tbllogs VALUES('294','5272','reviewed','38','5','2021-02-08 11:20:52','0');
INSERT IGNORE INTO tbllogs VALUES('295','7','login','0','8','2021-02-08 14:45:20','0');
INSERT IGNORE INTO tbllogs VALUES('296','5287','reviewed','27','5','2021-02-09 22:06:31','0');
INSERT IGNORE INTO tbllogs VALUES('297','2061','reviewed','28','5','2021-02-10 00:40:46','0');
INSERT IGNORE INTO tbllogs VALUES('298','7','login','0','8','2021-02-10 08:56:01','0');
INSERT IGNORE INTO tbllogs VALUES('299','7','logout','0','8','2021-02-10 08:56:27','0');
INSERT IGNORE INTO tbllogs VALUES('301','7','login','0','8','2021-02-10 09:38:52','0');
INSERT IGNORE INTO tbllogs VALUES('302','7','logout','0','8','2021-02-10 09:50:15','0');
INSERT IGNORE INTO tbllogs VALUES('305','7','login','0','8','2021-02-10 10:21:19','0');
INSERT IGNORE INTO tbllogs VALUES('306','7','logout','0','8','2021-02-10 10:22:42','0');
INSERT IGNORE INTO tbllogs VALUES('307','SA994','login','0','3','2021-02-10 10:56:43','0');
INSERT IGNORE INTO tbllogs VALUES('308','SA994','login','0','3','2021-02-10 13:09:50','0');
INSERT IGNORE INTO tbllogs VALUES('309','352','login','0','5','2021-02-10 16:22:20','0');
INSERT IGNORE INTO tbllogs VALUES('310','352','reviewed','25','5','2021-02-10 16:43:35','0');
INSERT IGNORE INTO tbllogs VALUES('311','SA994','login','0','3','2021-02-11 09:08:34','0');
INSERT IGNORE INTO tbllogs VALUES('312','8189','Submitted Manuscript','59','1','2021-02-11 09:22:13','0');
INSERT IGNORE INTO tbllogs VALUES('313','178','reviewed','25','5','2021-02-12 23:14:06','0');
INSERT IGNORE INTO tbllogs VALUES('314','178','logout','0','5','2021-02-12 23:14:25','0');
INSERT IGNORE INTO tbllogs VALUES('315','7','login','0','8','2021-02-13 20:00:04','0');
INSERT IGNORE INTO tbllogs VALUES('316','7','logout','0','8','2021-02-13 20:00:45','0');
INSERT IGNORE INTO tbllogs VALUES('317','SA994','login','0','3','2021-02-15 08:39:06','0');
INSERT IGNORE INTO tbllogs VALUES('318','SA994','login','0','3','2021-02-15 08:49:23','0');
INSERT IGNORE INTO tbllogs VALUES('319','SA994','login','0','3','2021-02-16 08:10:04','0');
INSERT IGNORE INTO tbllogs VALUES('320','SA37ecb9a66c7a60372c3616d28de73b13','login','0','6','2021-02-16 09:56:40','0');
INSERT IGNORE INTO tbllogs VALUES('321','7','login','0','8','2021-02-16 13:16:05','0');
INSERT IGNORE INTO tbllogs VALUES('322','7','logout','0','8','2021-02-16 13:18:58','0');
INSERT IGNORE INTO tbllogs VALUES('323','SAa942372b7357a3a87cfdb1e44337aa4d','login','0','6','2021-02-16 13:19:04','0');
INSERT IGNORE INTO tbllogs VALUES('324','SAa942372b7357a3a87cfdb1e44337aa4d','logout','0','6','2021-02-16 13:19:27','0');
INSERT IGNORE INTO tbllogs VALUES('325','7','login','0','8','2021-02-16 13:19:34','0');
INSERT IGNORE INTO tbllogs VALUES('326','7','updated an account','SAa942372b7357a3a87cfdb1e44337aa4d','8','2021-02-16 13:19:56','0');
INSERT IGNORE INTO tbllogs VALUES('327','7','logout','0','8','2021-02-16 13:19:59','0');
INSERT IGNORE INTO tbllogs VALUES('328','SAa942372b7357a3a87cfdb1e44337aa4d','login','0','3','2021-02-16 13:20:03','0');
INSERT IGNORE INTO tbllogs VALUES('329','7','login','0','8','2021-02-17 09:21:52','0');
INSERT IGNORE INTO tbllogs VALUES('330','7','logout','0','8','2021-02-17 09:22:16','0');
INSERT IGNORE INTO tbllogs VALUES('331','SAa942372b7357a3a87cfdb1e44337aa4d','login','0','3','2021-02-17 09:28:53','0');
INSERT IGNORE INTO tbllogs VALUES('332','SAa942372b7357a3a87cfdb1e44337aa4d','login','0','3','2021-02-17 09:31:03','0');
INSERT IGNORE INTO tbllogs VALUES('333','SAa942372b7357a3a87cfdb1e44337aa4d','logout','0','3','2021-02-17 09:34:14','0');
INSERT IGNORE INTO tbllogs VALUES('334','SAa942372b7357a3a87cfdb1e44337aa4d','login','0','3','2021-02-17 11:03:08','0');
INSERT IGNORE INTO tbllogs VALUES('335','SAa942372b7357a3a87cfdb1e44337aa4d','logout','0','3','2021-02-17 11:04:34','0');
INSERT IGNORE INTO tbllogs VALUES('336','SA37ecb9a66c7a60372c3616d28de73b13','login','0','6','2021-02-17 11:19:07','0');
INSERT IGNORE INTO tbllogs VALUES('337','7','login','0','8','2021-02-17 13:09:54','0');
INSERT IGNORE INTO tbllogs VALUES('338','7','logout','0','8','2021-02-17 13:19:37','0');
INSERT IGNORE INTO tbllogs VALUES('339','SA994','login','0','3','2021-02-17 14:09:02','0');
INSERT IGNORE INTO tbllogs VALUES('340','SAff000e0321d1b5d08691fce9ac4d1733','login','0','3','2021-02-18 09:05:52','0');
INSERT IGNORE INTO tbllogs VALUES('341','SAff000e0321d1b5d08691fce9ac4d1733','logout','0','3','2021-02-18 09:35:06','0');
INSERT IGNORE INTO tbllogs VALUES('342','7','login','0','8','2021-02-18 09:35:12','0');
INSERT IGNORE INTO tbllogs VALUES('343','7','logout','0','8','2021-02-18 13:31:07','0');
INSERT IGNORE INTO tbllogs VALUES('344','SAff000e0321d1b5d08691fce9ac4d1733','login','0','3','2021-03-02 13:27:34','0');
INSERT IGNORE INTO tbllogs VALUES('345','SAff000e0321d1b5d08691fce9ac4d1733','logout','0','3','2021-03-02 13:27:52','0');
INSERT IGNORE INTO tbllogs VALUES('346','SAff000e0321d1b5d08691fce9ac4d1733','login','0','3','2021-03-03 14:16:21','0');
INSERT IGNORE INTO tbllogs VALUES('347','SAa942372b7357a3a87cfdb1e44337aa4d','login','0','3','2021-04-07 13:19:43','0');
INSERT IGNORE INTO tbllogs VALUES('348','SAa942372b7357a3a87cfdb1e44337aa4d','logout','0','3','2021-04-07 13:20:08','0');
INSERT IGNORE INTO tbllogs VALUES('349','7','login','0','8','2021-04-07 13:20:14','0');
INSERT IGNORE INTO tbllogs VALUES('350','7','login','0','8','2021-06-25 09:44:56','0');
INSERT IGNORE INTO tbllogs VALUES('351','7','login','0','8','2021-06-28 07:24:53','0');
INSERT IGNORE INTO tbllogs VALUES('352','7','logout','0','8','2021-06-28 07:45:55','0');
INSERT IGNORE INTO tbllogs VALUES('353','7','login','0','8','2021-06-28 07:46:01','0');
INSERT IGNORE INTO tbllogs VALUES('354','7','logout','0','8','2021-06-28 08:25:52','0');
INSERT IGNORE INTO tbllogs VALUES('355','7','login','0','8','2021-06-28 08:25:58','0');
INSERT IGNORE INTO tbllogs VALUES('356','7','logout','0','8','2021-06-28 09:08:41','0');
INSERT IGNORE INTO tbllogs VALUES('357','7','login','0','8','2021-06-28 09:08:45','0');
INSERT IGNORE INTO tbllogs VALUES('358','7','login','0','8','2021-06-28 10:54:49','0');
INSERT IGNORE INTO tbllogs VALUES('359','7','logout','0','8','2021-06-28 11:13:42','0');
INSERT IGNORE INTO tbllogs VALUES('360','7','login','0','8','2021-06-30 09:00:49','0');
INSERT IGNORE INTO tbllogs VALUES('361','7','login','0','8','2021-06-30 09:28:34','0');
INSERT IGNORE INTO tbllogs VALUES('362','7','logout','0','8','2021-06-30 10:07:11','0');
INSERT IGNORE INTO tbllogs VALUES('363','7','login','0','8','2021-06-30 10:07:15','0');
INSERT IGNORE INTO tbllogs VALUES('364','7','logout','0','8','2021-06-30 11:15:56','0');
INSERT IGNORE INTO tbllogs VALUES('365','7','login','0','8','2021-06-30 11:16:00','0');



CREATE TABLE `tblmanuscripts` (
  `row_id` int(11) NOT NULL AUTO_INCREMENT,
  `man_title` text DEFAULT NULL,
  `man_author_title` varchar(64) NOT NULL,
  `man_author` char(128) DEFAULT NULL,
  `man_affiliation` varchar(255) DEFAULT NULL,
  `man_email` varchar(32) DEFAULT NULL,
  `man_coa_id` int(11) DEFAULT NULL,
  `man_division` char(128) DEFAULT NULL,
  `man_file` varchar(255) DEFAULT NULL,
  `man_abs` varchar(255) DEFAULT NULL,
  `man_word` varchar(255) DEFAULT NULL,
  `man_keywords` varchar(255) DEFAULT NULL,
  `man_date_available` char(32) DEFAULT NULL,
  `man_status` int(2) DEFAULT NULL,
  `man_user_id` varchar(64) DEFAULT NULL,
  `man_volume` char(16) DEFAULT NULL,
  `man_issue` char(16) DEFAULT NULL,
  `man_year` char(16) DEFAULT NULL,
  `date_created` varchar(64) DEFAULT NULL,
  `last_updated` varchar(64) DEFAULT NULL,
  `man_source` varchar(6) DEFAULT NULL,
  `man_remarks` text DEFAULT NULL,
  `man_page_position` varchar(11) NOT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

INSERT IGNORE INTO tblmanuscripts VALUES('1','Screening of Philippine Actinomycetes for Biosurfactant Production','','Alvin P. Jimenez','University of the Philippines Los Banos','apjimenez@up.edu.ph','','','20201223163438_Manuscript_article_of_Dr__Alcantara.pdf','20201223163438_Manuscript_article_of_Dr__Alcantara_Abstract.pdf','','','','1','167','','','','2020-12-23 16:34:38','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('6','The emergence of Filipino values among forgiveness studies','','DARWIN CRUZ RUNGDUIN','Colegio de San Juan de Letran','darwin.rungduin@letran.edu.ph','','','20210111115308_emergence_of_filipino_values_in_forgiveness_studies__2013_.pdf','20210111115308_emergence_of_filipino_values_in_forgiveness_studies__2013_.pdf','','','','1','3298','','','','2021-01-11 11:53:08','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('7','ROLE OF SHARED IDENTITY (KAPWA) IN FORGIVING OTHERS: A COLLECTIVISTIC APPROACH IN UNDERSTANDING FORGIVENESS','','DARWIN CRUZ RUNGDUIN','Colegio de San Juan de Letran','darwin.rungduin@letran.edu.ph','','','20210111121804_664-ArticleText-1402-1-10-20201231_NRCP_copy.pdf','20210111121804_ABSTRACT_NRCP_COPY.pdf','','','','1','3298','','','','2021-01-11 12:18:04','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('9','A SOCIOCULTURAL EXPLORATION OF THE CONCEPTS OF DEATH AND DYING AMONG FILIPINO CHILDREN','','Teresita Tabbada Rungduin','Philippine Normal University','rungduin.tt@pnu.edu.ph','','','20210112182714_A_SOCIOCULTURAL_EXPLORATION_OF_THE_CONCEPTS_OF_DEATH_AND_DYING_AMONG_FILIPINO_CHILDREN.pdf','20210112182714_A_SOCIOCULTURAL_EXPLORATION_OF_THE_CONCEPTS_OF_DEATH_AND_DYING_AMONG_FILIPINO_CHILDREN_Abstract.pdf','','','','1','7156','','','','2021-01-12 18:27:14','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('10','Community Health Information and Tracking System &#40;CHITS&#41;: Lessons from Eight Years Implementation of a Pioneer Electronic Medical Record System in the Philippines','','Arturo Ongkeko Jr.','University of the Philippines Manila','amongkeko@up.edu.ph','','','20210113075033_.','20210113075033_6852-community-health-information-and-tracking-system-chits-lessons-from-eight-years-implementation-of-a-pioneer-electronic-medical-record-system-in-the-philippines.pdf','','','','1','7918','','','','2021-01-13 07:50:33','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('24','Bacterial Populations in the Surface Sediments of Lake Lanao ','','Beverly Bermejo Amparado','Mindanao State University - Marawi','beverly.amparado@msumain.edu.ph','','','20210116193735_BacterialPopnsSurfaceSedimentsLakeLanao_FULL.pdf','20210116193735_BacterialPopnsSurfaceSedimentsLakeLanao_ABS.pdf','20210116193735_BacterialPopnsSurfaceSedimentsLakeLanao_FULL.doc','','','3','201','XVIII','8','2019','2021-01-16 19:37:35','2021-02-05 11:11:09','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('25','Microbiological Water Quality of Lake Lanao Waters','','Beverly Bermejo Amparado','Mindanao State University - Marawi','beverly.amparado@msumain.edu.ph','','','20210116194557_MicrobiologicalWaterQuality_FULL.pdf','20210116194557_MicrobiologicalWaterQuality_ABS.pdf','20210116194557_MicrobiologicalWaterQuality_FULL.doc','','','3','201','XVIII','8','2019','2021-01-16 19:45:57','2021-02-12 23:14:06','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('26','Lake Lanao Fishes: Relative Abundance Based on Fish Catch','','Sherwin Saguban Nacua','Mindanao State University Marawi','sherwinnacua@gmail.com','','','20210116204022_LakeLanaoFishes_FULL.pdf','20210116204022_LakeLanaoFishes_ABS.pdf','20210116204022_LakeLanaoFishes_FULL.doc','','','3','2575','XVIII','8','2019','2021-01-16 20:40:22','2021-02-06 10:16:03','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('27','Distribution and Relative Abundance of the Endemic Cyprinid, Barbodes tumba (Herre,1924) from Lake Lanao','','Sherwin Saguban Nacua','Mindanao State University Marawi','sherwinnacua@gmail.com','','','20210116205306_DistributionRelativeAbundance_FULL.pdf','20210116205306_DistributionRelativeAbundance_ABS.pdf','20210116205306_DistributionRelativeAbundance_FULL.doc','','','3','2575','XVIII','8','2019','2021-01-16 20:53:06','2021-02-09 22:06:31','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('28','Identification and Biodiversity of Mollusks (Gastropods and Bivalves) in Lake Lanao','','Monera Arumpac Salic Hairulla','Mindanao State University-Iligan Institute of Technology','monera.salic@g.msuiit.edu.ph','','','20210116210819_IdentificationBiodiversityMollusks_FULL.pdf','20210116210819_IdentificationBiodiversityMollusks_ABS.pdf','20210116210819_IdentificationBiodiversityMollusks_FULL.doc','','','3','3342','XVIII','8','2019','2021-01-16 21:08:19','2021-02-10 00:40:46','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('29','Physical and Chemical Characterization of Lake Lanao (Mindanao, Philippines)','','Carmelita Garcia Hansel','Mindanao State University Marawi','carmelita_hansel@yahoo.com','','','20210116211853_PhysicalChemicalCharacterization_FULL.pdf','20210116211853_PhysicalChemicalCharacterization_ABS.pdf','20210116211853_PhysicalChemicalCharacterization_FULL.doc','','','3','1800','XVIII','8','2019','2021-01-16 21:18:53','2021-02-05 09:39:34','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('30','Water Resource Utilization of Lake Lanao: Its Implications to Socioeconomic Development','','Sulpecia Larita Ponce','Mindanao State University-Iligan Institute of Technology (MSU-IIT)','april27_sol@yahoo.com','','','20210116213550_Water_Resourcce_Utilization_FULL.pdf','20210116213550_Water_Resourcce_Utilization_ABS.pdf','20210116213550_Water_Resourcce_Utilization_FULL.doc','','','3','2985','XVIII','8','2019','2021-01-16 21:35:50','2021-02-07 16:34:45','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('31','ASIAVR: Asian Studies Virtual Reality Game a Learning Tool','','Kenn Migan Vincent C. Gumonan','Northern Bukidnon State College','kenngumonan@gmail.com','','','20210203092445_ASIAVR_-_Full_Manuscript.pdf','20210203092445_ASIAVR_-_Abstract.pdf','20210203092445_ASIAVR_-_Full_Manuscript.doc','','','1','8117','','','','2021-02-03 09:24:45','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('38','Potential Antibiotic-Producing Fungi from the Surface Sediments of Lake Lanao','','Chua, Catherine Grace','1College of Medicine, Mindanao State University, Marawi City','catherinegmchua@gmail.com','','','20210203180850_AmparadoBeverly_PotentialAntibioticProducing_FULL.pdf','20210203180850_AmparadoBeverly_PotentialAntibioticProducing_ABS.pdf','20210203180850_AmparadoBeverly_PotentialAntibioticProducing.doc','','','3','201','XVIII','8','2019','2021-02-03 18:08:50','2021-02-08 11:20:52','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('39','Peace & Governance: Challenges for Sustainable Development of Lake Lanao, Southern Philippines','','Sukarno D. Tanggol','Mindanao State University-Iligan Institute of Technology','chancellor@g.msuiit.edu.ph','','','20210203182212_TanggolSukarno_PeaceGovernanceChallenges_FULL.pdf','20210203182212_TanggolSukarno_PeaceGovernanceChallenges_ABS.pdf','20210203182212_TanggolSukarno_PeaceGovernanceChallenges_FULL.doc','','','1','3687','','','','2021-02-03 18:22:12','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('40','The Social Carrying Capacity of Lake Lanao','','Nimfa L. Bracamonte','College of Arts and Social Sciences of the Mindanao State University – Iligan  Institute of Technology','nimfabutuan@yahoo.com','','','20210203183748_Social_Carrying_Capacity_FULL.pdf','20210203183748_Social_Carrying_Capacity_ABS.pdf','20210203183748_Social_Carrying_Capacity_FULL.doc','','','2','599','XVIII','8','2019','2021-02-03 18:37:48','2021-02-05 11:22:50','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('41','Implementation of Fuzzy Logic Algorithm in Identifying Gender and Development
Interventions','','Sonza, Rolaida L.','Nueva Ecija University of Science and Technology','rolaidasonza@yahoo.com','','','20210204201429_Paper_Sonza_Fuzzy_logic2.pdf','20210204201429_Abstract_Fuzzy_Logic.pdf','20210204201429_Paper_Sonza_Fuzzy_logic2.doc','','','1','8127','','','','2021-02-04 20:14:29','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('52','Decision Tree Algorithm in Identifying Specific
Interventions for Gender and Development
Issues','','Sonza, Rolaida L.','Nueva Ecija University of Science and Technology','rolaidasonza@yahoo.com','','','20210204202307_sonza-decision-jcc__1_.pdf','20210204202307_Abstract_Decision_Tree.pdf','20210204202307_sonza-decision-jcc__word.doc','','','1','8127','','','','2021-02-04 20:23:07','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('53','Ecotourism in the Time of COVID-19 Pandemic: Impact, Lessons Learned, and Ways to Go in Ten Ecotourism Sites in the Philippines','','Belinda Flores Espiritu','University of the Philippines Cebu','bfespiritu@up.edu.ph','','','20210206161612_Ecotourism_in_the_Time_of_COVID-19_Pandemic_full_paper_for_NRCP_Research_Journal.pdf','20210206161612_Abstract_of_Ecotourism_in_the_Time_of_COVID-19_Pandemic_.pdf','20210206161612_Ecotourism_in_the_Time_of_COVID-19_Pandemic_full_paper_for_NRCP_Research_Journal.doc','','','1','6800','','','','2021-02-06 16:16:12','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('55','Harana: The Fusion of Indigenous Filipino Tradition and Hispanic Influence','','Hope Sabanpan Yu',' University of San Carlos','imongpaglaum@gmail.com','','','20210208084339_Harana.pdf','20210208084339_Harana_abstract.pdf','20210208084339_Harana_paper.doc','','','1','4050','','','','2021-02-08 08:43:39','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('59','Collaborative Role of Nurses as Evaluated by Physicians, and Allied Health Partners: Input to the Formulation of a Role Enhancement Program','','Bradley Loo','Deped ','bradleygoldie.loo001@deped.gov.p','','','20210211092213_Loo_Collaborative_Role_of_Nurses_as_Evaluated_by_Physicians.pdf','20210211092213_Collaborative_Role_of_Nurses_as_Evaluated_by_Physicians.pdf','20210211092213_Loo_Collaborative_Role_of_Nurses_as_Evaluated_by_Physicians.doc','','','1','8189','','','','2021-02-11 09:22:13','','_sk','','');



CREATE TABLE `tblnonmembers` (
  `row_id` int(11) NOT NULL AUTO_INCREMENT,
  `non_first_name` char(32) DEFAULT NULL,
  `non_title` varchar(64) NOT NULL,
  `non_last_name` char(32) DEFAULT NULL,
  `non_middle_name` char(32) DEFAULT NULL,
  `non_email` varchar(64) DEFAULT NULL,
  `non_contact` char(32) DEFAULT NULL,
  `non_affiliation` varchar(255) DEFAULT NULL,
  `non_type` int(3) DEFAULT NULL,
  `non_usr_id` varchar(64) DEFAULT NULL,
  `non_specialization` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `tblprivileges` (
  `row_id` int(11) NOT NULL AUTO_INCREMENT,
  `prv_usr_id` varchar(64) NOT NULL,
  `prv_add` int(2) NOT NULL,
  `prv_edit` int(2) NOT NULL,
  `prv_delete` int(2) NOT NULL,
  `prv_view` int(2) NOT NULL,
  `prv_export` int(2) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT IGNORE INTO tblprivileges VALUES('1','SA530','1','1','1','1','1','2019-09-06 00:00:00','');
INSERT IGNORE INTO tblprivileges VALUES('2','SA994','1','1','1','1','1','2019-09-06 00:00:00','');
INSERT IGNORE INTO tblprivileges VALUES('5','7','1','1','1','1','1','2019-09-10 13:23:56','');
INSERT IGNORE INTO tblprivileges VALUES('6','SAff000e0321d1b5d08691fce9ac4d1733','1','1','1','1','1','2019-10-11 14:17:02','');
INSERT IGNORE INTO tblprivileges VALUES('7','SA5b0bdc47795ce62fe17cff527e5abe0d','1','1','1','1','1','2019-10-16 08:49:05','');
INSERT IGNORE INTO tblprivileges VALUES('8','SA37ecb9a66c7a60372c3616d28de73b13','1','1','1','1','1','2020-06-16 09:14:12','');
INSERT IGNORE INTO tblprivileges VALUES('9','SA6bb9f8987cb2a9f7594cf5c23ae54626','1','1','1','1','1','2020-09-01 10:45:17','');
INSERT IGNORE INTO tblprivileges VALUES('10','SAa942372b7357a3a87cfdb1e44337aa4d','1','1','1','1','1','2021-02-16 13:18:44','');



CREATE TABLE `tblreviewers` (
  `row_id` int(11) NOT NULL AUTO_INCREMENT,
  `rev_id` varchar(64) NOT NULL,
  `rev_title` varchar(64) NOT NULL,
  `rev_name` char(64) DEFAULT NULL,
  `rev_dear` varchar(64) NOT NULL,
  `rev_email` varchar(64) DEFAULT NULL,
  `rev_contact` char(32) DEFAULT NULL,
  `rev_specialization` varchar(255) NOT NULL,
  `rev_status` int(1) DEFAULT NULL,
  `rev_date_respond` varchar(64) DEFAULT NULL,
  `rev_request_timer` int(3) NOT NULL,
  `rev_timeframe` int(3) DEFAULT NULL,
  `rev_man_id` int(11) DEFAULT NULL,
  `rev_notif_status` int(1) NOT NULL,
  `rev_hide_auth` int(1) NOT NULL,
  `rev_hide_rev` int(1) NOT NULL,
  `date_created` varchar(64) NOT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

INSERT IGNORE INTO tblreviewers VALUES('1','2850','','Donna May Dela Cruz Papa','','ddpapa@ust.edu.ph','9175752156','Bacteriophages,  Bacterial Viruses','1','2021-01-23 19:54:20','3','14','24','1','1','1','2021-01-21 13:37:21');
INSERT IGNORE INTO tblreviewers VALUES('2','938','','Ma. Cecilia G. Conaco','','cecillegc@gmail.com','0920-234-2360','Molecular Biology,  Marine Science','1','2021-01-22 10:47:01','3','14','24','2','1','1','2021-01-21 13:37:21');
INSERT IGNORE INTO tblreviewers VALUES('3','4751','','Francis Albert Tabo Argente','','francisargente@psu.edu.ph','9431320386','Marine Biology,Fisheries','1','2021-01-21 14:31:41','3','14','24','2','1','1','2021-01-21 13:37:21');
INSERT IGNORE INTO tblreviewers VALUES('4','4609','','Eleanor San Pedro Austria','','eleanor.austria@adamson.edu.ph','09232891270','microbial ecology,limnology','1','2021-01-21 13:47:09','3','14','25','2','1','1','2021-01-21 13:41:47');
INSERT IGNORE INTO tblreviewers VALUES('5','286','','Eldrin De Los Reyes Arguelles','','edarguelles@up.edu.ph','0908 916 0065','  Microalgal Taxonomy,Algal Taxonomy, Biotechnology,Phycology, Microbiology, Seaweed Natural Products ','1','2021-01-21 14:13:40','3','14','25','2','1','1','2021-01-21 13:41:47');
INSERT IGNORE INTO tblreviewers VALUES('6','390','','Francis N Baleta','','fnbaleta19@yahoo.com','09082845710','Aquaculture,  Microbiology, Fish Health Management , Fish Nutrition and Feeding Management , Water Quality Management , Aquaculture Systems and Operations (Pond and Cage Management) ','1','2021-01-24 10:27:10','3','14','25','2','1','1','2021-01-21 13:41:47');
INSERT IGNORE INTO tblreviewers VALUES('7','6039','','Jerry Benida Superales','','superjerry27@gmail.com','9186444940','Water quallity analysis on lake water,Lake Management Planning,carbon sequestration by plants,Mangrove inventory,Mangrove and coral reef assessment,Organizational needs assessment ','1','2021-01-21 14:48:19','3','14','29','2','1','1','2021-01-21 13:44:21');
INSERT IGNORE INTO tblreviewers VALUES('8','3393','','Patricia Ann Asico Jaranilla-Sanchez','','pjsanchez@up.edu.ph','0917-538-8954','Water Resources,  Hydrology','3','','3','14','29','1','1','1','2021-01-21 13:44:21');
INSERT IGNORE INTO tblreviewers VALUES('9','2852','','Rey Donne Soriano Papa','','rspapa@ust.edu.ph','0917-621-1374','Fresh Water Ecology,  Zooplankton Systematics and Distribution','1','2021-01-21 14:06:09','3','14','29','2','1','1','2021-01-21 13:44:21');
INSERT IGNORE INTO tblreviewers VALUES('10','3393','','Patricia Ann Asico Jaranilla-Sanchez','','pjsanchez@up.edu.ph','0917-538-8954','Water Resources,  Hydrology','3','','3','14','30','1','1','1','2021-01-21 13:49:02');
INSERT IGNORE INTO tblreviewers VALUES('11','1391','','Victor Bacerdo Ella','','vbella@up.edu.ph','9957356298','Irrigation engineering,water resources planning,surface and groundwater hydrology,hydrologic modeling and simulation,soil erosion and sediment transport,contaminant transport in soils,water quality and wastewater engineering,soil physics,conservation agri','1','2021-01-21 14:13:21','3','14','30','2','1','1','2021-01-21 13:49:02');
INSERT IGNORE INTO tblreviewers VALUES('12','5082','','Paul Joseph Balberan Ramirez','','pjbramirez@yahoo.com','9777666192','Natural Resource Economics,Fisheries Economics and Management,Environmental Economics,Value Chains','1','2021-01-21 15:22:02','3','14','30','2','1','1','2021-01-21 13:49:02');
INSERT IGNORE INTO tblreviewers VALUES('13','3452','','Mudjekeewis D. Santos','','mudjiesantos@yahoo.com','9175278289','Aquatic Species Genetics,  Biotechnology,  Molecular Immunology,  Assesment and Conservation','3','','3','14','27','1','1','1','2021-01-21 13:51:25');
INSERT IGNORE INTO tblreviewers VALUES('14','253','','Ma Lourdes Aralar','','mcaralar@gmail.com','0917-861-5992','Aquatic Ecology,  Freshwater Aquaculture,  Aquatic Toxicology','1','2021-01-24 09:29:33','3','14','27','2','1','1','2021-01-21 13:51:25');
INSERT IGNORE INTO tblreviewers VALUES('15','1378','','Maria Rowena Romana Eguia','','mreguia@seafdec.org.ph','0917-502-6106','Aquaculture Genetics, Freshwater Aquaculture , Freshwater Fish breeding ','1','2021-01-22 11:54:38','3','14','27','2','1','1','2021-01-21 13:51:25');
INSERT IGNORE INTO tblreviewers VALUES('16','1097','','Emmanuel Ryan Celzo De Chavez','','radixquad@yahoo.com','0919-470-4248','Malacology,  Community Ecology','1','2021-01-23 15:42:11','3','14','28','2','1','1','2021-01-21 13:58:19');
INSERT IGNORE INTO tblreviewers VALUES('17','431','','Zenaida Gutay Baoanan','','zgbaoanan@up.edu.ph','0932-527-7856','Ecology,  Taxonomy, Malacology , Invertebrate Zoology , Environmental Studies ','1','2021-01-21 16:36:09','3','14','28','2','1','1','2021-01-21 13:58:19');
INSERT IGNORE INTO tblreviewers VALUES('18','1138','','Ayolani Villas De Lara','','avdelara@yahoo.com','0921-592-3115','Zoology (Malacology)','1','2021-01-23 19:10:09','3','14','28','2','1','1','2021-01-21 13:58:19');
INSERT IGNORE INTO tblreviewers VALUES('19','1929','','Ravindra Chandra Joshi','','rcjoshi4@gmail.com','0998-578-5570','Ecological Pest Management (Entomology),  Invasive Species of Molluscs, Rats, Insects, Fishes, and Earthworms, Food and Nutrition Security , Climate change impacts , Smallholders Farming ','1','2021-01-21 14:57:12','3','14','28','2','1','1','2021-01-21 13:58:19');
INSERT IGNORE INTO tblreviewers VALUES('20','6559','','Abner Aguilar Bucol','','abnerbucol2013@gmail.com','0926-720-6979','Marine Protected Areas,Terrestrial Biology,Herpetology,Estuarine Ecology','1','2021-01-21 18:58:37','3','14','26','2','1','1','2021-01-21 14:00:42');
INSERT IGNORE INTO tblreviewers VALUES('21','6186','','Asuncion Biña De Guzman','','sonydeguzman@gmail.com','9177044435','Marine ecology,Environmental science,Capture fisheries,Coastal Resources Management,Marine protected areas ,Economic and resource valuation','1','2021-01-22 03:25:32','3','14','26','2','1','1','2021-01-21 14:00:42');
INSERT IGNORE INTO tblreviewers VALUES('22','4729','','Angelo Mark Po Walag','','walag.angelo@gmail.com','9177000485','Marine Ecology,Biodiversity Monitoring,Natural Products Chemistry,Chemical Ecology,Ecotoxicology','1','2021-01-21 14:01:53','3','14','26','2','1','1','2021-01-21 14:00:42');
INSERT IGNORE INTO tblreviewers VALUES('23','4298','','Orlando Fernando Balderama','','orly_isu@yahoo.com','09175055706','Agricultural Engineering,Water Management','1','2021-02-05 09:30:31','3','14','30','1','1','1','2021-02-05 09:22:59');
INSERT IGNORE INTO tblreviewers VALUES('24','972','','Mark Nell  Castillo Corpuz','','marknellcorpuz@yahoo.com','0915-500-9646, 0916-277-2381','Aquaculture,  Freshwater Zoology,Environmental Science','1','2021-02-05 10:05:28','3','14','30','0','1','1','2021-02-05 09:22:59');
INSERT IGNORE INTO tblreviewers VALUES('25','6051','','RENATO CABILOGAN DIOCTON','','rdiocton2004@yahoo.com','9216034514','Marine Fisheries,Marine Fisheries + fisheries biology ,Aquaculture','0','2021-02-07 17:20:08','3','14','30','1','1','1','2021-02-05 09:22:59');
INSERT IGNORE INTO tblreviewers VALUES('26','1379','','Ruel V. Eguia','','rveguia@seafdec.org.ph','0917-832-5301','Aquaculture Nutrition,  Fresh Water Aquaculture','3','','3','14','30','1','1','1','2021-02-05 09:22:59');
INSERT IGNORE INTO tblreviewers VALUES('27','820','','Soledad Solomero Castañeda','','sscastaneda.sc@gmail.com','0917-855-2984','Water Quality,  Environmental Impact Assessment,  Environmental Analysis,  Environmental Pollution,  Water Analysis,  Analytical Chemistry,  Environmental Analytical Chemistry,  Hydrology','1','2021-02-05 16:54:37','3','14','29','0','1','1','2021-02-05 09:39:34');
INSERT IGNORE INTO tblreviewers VALUES('28','866','','Mylene Gonzaga Cayetano','','mcayetano@iesm.upd.edu.ph','0932 863 9628','Environmental Science,  Pollution Studies,  Air and Water Quality','1','2021-02-07 15:48:10','3','14','29','1','1','1','2021-02-05 09:39:34');
INSERT IGNORE INTO tblreviewers VALUES('29','1951','','Joycelyn Cagatin Jumawan','','joycejumawan@gmail.com','0915-354-4043','Fish Developmental Biology,  Freshwater Ecology','1','2021-02-07 11:28:40','3','14','29','1','1','1','2021-02-05 09:39:34');
INSERT IGNORE INTO tblreviewers VALUES('30','3629','','Guillermo Q Tabios','','gqtiii@yahoo.com','not available','Hydrology,  Water Resources Engineering','1','2021-02-05 12:02:05','3','14','29','0','1','1','2021-02-05 09:39:34');
INSERT IGNORE INTO tblreviewers VALUES('31','2061','','Ma. Junemie Hazel Leonida Lebata Ramos','','jlebata@seafdec.org.ph','0917-717-5450','mangroves,aquaculture (mollusk culture; IMTA in pens and ponds),stock enhancement','1','2021-02-08 09:10:23','3','14','28','1','1','1','2021-02-05 10:23:46');
INSERT IGNORE INTO tblreviewers VALUES('32','1515','','Amando C. Fermin','','omandy320@gmail.com','9175222320','Finfish and Mollusk Aquaculture','3','','3','14','28','1','1','1','2021-02-05 10:23:46');
INSERT IGNORE INTO tblreviewers VALUES('33','6802','','Marlon Varona Elvira','','marlonvelvira@gmail.com','9454623268','Ecological and human health risk assessment, malacology, and biodiversity conservation ','1','2021-02-07 10:27:14','3','14','28','1','1','1','2021-02-05 10:23:46');
INSERT IGNORE INTO tblreviewers VALUES('34','1319','','Roger Gasper Dolorosa','','rogerdolorosa@yahoo.com','0929-627-2574','Aquatic Resource Conservation,  Ecology,  Taxonomy,marine biology','3','','3','14','27','1','1','1','2021-02-05 10:36:58');
INSERT IGNORE INTO tblreviewers VALUES('35','4842','','Emmanuel Federico Cruz Capinpin','','manny_capinpin@yahoo.com','9182135281','Aquaculture,Fisheries Management','3','','3','14','27','1','1','1','2021-02-05 10:36:58');
INSERT IGNORE INTO tblreviewers VALUES('36','684','','Christopher Marlowe Arandela Caipang','','cmacaipang@yahoo.com','9177140983','Aquaculture,  Aquatic Biosciences,  Fish Molecular Immunology,  Molecular Virology','0','2021-02-07 15:22:08','3','14','27','1','1','1','2021-02-05 10:36:58');
INSERT IGNORE INTO tblreviewers VALUES('37','5287','','Maria Mojena  Gonzales-Plasus','','mojenagonzales@yahoo.com','9151698179','Fish Nutrition,Molecular analysis,Aquaculture,Sustainable aquaculture,Gene expression,Fish diseases','1','2021-02-07 11:25:27','3','14','27','1','1','1','2021-02-05 10:36:58');
INSERT IGNORE INTO tblreviewers VALUES('38','567','','Josette Talamera Biyo','','biyojosette@yahoo.com','0917-837-9003','Marine Toxicology,  Marine Ecology','3','','3','14','26','1','1','1','2021-02-05 10:47:55');
INSERT IGNORE INTO tblreviewers VALUES('39','736','','Wilfredo L. Campos','',' willbellcampos@gmail.com','-','Biological Oceanography,  Coastal Ecology,  Marine and Fisheries Biology','1','2021-02-07 12:49:13','3','14','26','1','1','1','2021-02-05 10:47:55');
INSERT IGNORE INTO tblreviewers VALUES('40','4599','','Janice Alano Ragaza','','jragaza@ateneo.edu','9373727506','Aquaculture Science,Fish Biology,Aquaculture Nutrition,Aquaculture Biotechnology,Aquaculture,Fish Physiology,Food Science,Food Technology,Fisheries Science','0','2021-02-07 17:17:06','3','14','26','1','1','1','2021-02-05 10:47:55');
INSERT IGNORE INTO tblreviewers VALUES('41','5167','','Harold Modoc Monteclaro','','hmonteclaro@gmail.com','9176207022','Fisheries Science,Marine Fisheries,Fisheries Biology,Fisheries Management,Fish Sensory Biology and Behavior','1','2021-02-07 18:02:55','3','14','26','1','1','1','2021-02-05 10:47:55');
INSERT IGNORE INTO tblreviewers VALUES('42','52','','Davin Edric Vistan Adao','','dev_adao@yahoo.com','09177909369','Molecular Protozoology,  Phylogenetics, Microbiology , Molecular Biology ','1','2021-02-07 11:12:06','3','14','25','1','1','1','2021-02-05 11:02:25');
INSERT IGNORE INTO tblreviewers VALUES('43','104','','Pia Marie San Pedro Albano','','psalbano@ust.edu.ph','0932-888-6739','Medical Microbiology,  Immunology','1','2021-02-07 11:27:55','3','14','25','1','1','1','2021-02-05 11:02:25');
INSERT IGNORE INTO tblreviewers VALUES('44','178','','Lourdes Valerio Alvarez','','loualvarez14@gmail.com','09171700214','Mycology, Phytopathology , Microbiology ','1','2021-02-07 19:31:46','3','14','25','1','1','1','2021-02-05 11:02:25');
INSERT IGNORE INTO tblreviewers VALUES('45','352','','Michael Octubre Baclig','','mobaclig@stlukes.com.ph','+63 9192189290 (Smart)','Human and Pathogen Genomics,Microbiology, Genomics, Molecular Medicine,Bioinformatics, Biosafety and Biosecurity ','1','2021-02-07 18:04:38','3','14','25','1','1','1','2021-02-05 11:02:25');
INSERT IGNORE INTO tblreviewers VALUES('46','460','','Supachai Amphay Basit','','supachai.basit@eac.edu.ph','(046) 416-4341to 42 loc.106','Biology Education, Bacteriophage, Multidrug Resistant Bacteria ','1','2021-02-08 07:08:31','3','14','24','1','1','1','2021-02-05 11:11:09');
INSERT IGNORE INTO tblreviewers VALUES('47','3123','','Asuncion Karganilla Raymundo','','akraymundo@gmail.com ','0906-4977882','Bacteriology,  Microbials,  Genetics','3','','3','14','24','1','1','1','2021-02-05 11:11:09');
INSERT IGNORE INTO tblreviewers VALUES('48','4384','','Norbel Adap Tabo','','natabo@dlsud.edu.ph','9175818981','Bacteriology,Public Health','3','','3','14','24','1','1','1','2021-02-05 11:11:09');
INSERT IGNORE INTO tblreviewers VALUES('49','706','','Rufo Sayao Calixtro','','calixtro_2005@yahoo.com','0920-924-5824','Pharmaceutical Chemistry,  Microbiology','3','','3','14','24','1','1','1','2021-02-05 11:11:09');
INSERT IGNORE INTO tblreviewers VALUES('50','1418','','Numer G. Escalante','','numer.escalante@yahoo.com','0922-856-8724, 0917-806-8717, 09','Sociology,  Demography,  Peace and Development','3','','3','14','40','1','1','1','2021-02-05 11:22:50');
INSERT IGNORE INTO tblreviewers VALUES('51','109','','Annie Melinda Paz Alberto','','melindapaz@gmail.com','0928-959-8038','Ecology,  Environmental Management','3','','3','14','40','1','1','1','2021-02-05 11:22:50');
INSERT IGNORE INTO tblreviewers VALUES('52','2617','','Allen L. Nazareno','','alnazareno@up.edu.ph','9175351029','Mathematical Biology,  Operations Research','0','2021-02-07 11:41:33','3','14','40','1','1','1','2021-02-05 11:22:50');
INSERT IGNORE INTO tblreviewers VALUES('53','3243','','Agnes Casiple Rola','','acrola@up.edu.ph','9164422789','Policy Analysis,  Natural Resource Economics,  Production Economics,  Statistics,  Econometrics','3','','3','14','40','1','1','1','2021-02-05 11:22:50');
INSERT IGNORE INTO tblreviewers VALUES('54','5272','','Jomar L. Aban','','jaban@dmmmsu.edu.ph','9270427750','FUNGI,AGRICULTURE,BIOLOGY,ENVIRONMENTAL SCIENCE','1','2021-02-08 10:16:11','3','14','38','1','1','1','2021-02-05 11:57:18');
INSERT IGNORE INTO tblreviewers VALUES('55','5737','','Rey Gomez Tantiado','','reygtantiado@yahoo.com','9158893829','microbiology and medical-related biology, biological education','1','2021-02-07 19:24:16','3','14','38','1','1','1','2021-02-05 11:57:18');
INSERT IGNORE INTO tblreviewers VALUES('56','3464','','Brian Gil  Secondes Sarinas','','bg_sarinas@yahoo.com','9158573416','Biology Education,  Fungal (hyphomycete) Isolation and Identification,  Biology and Chemistry-maritime Related Researches','3','','3','14','38','1','1','1','2021-02-05 11:57:18');
INSERT IGNORE INTO tblreviewers VALUES('57','1146','','Marian Pulido De Leon','','mpdeleon1@up.edu.ph','(63) 977 822 5949','Hyperthermophilic Archaeon and its Proteins,  Molecular Biology and Biotechnology,  Food Microbiology,Environmental Microbiology, Fermentation, Microbial Ecology, Metagenomics, Microbial Culture Collection Curation And Preservation, Protein Engineering, D','1','2021-02-07 12:41:40','3','14','38','1','1','1','2021-02-05 11:57:18');



CREATE TABLE `tblroles` (
  `row_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(16) NOT NULL,
  `role_id` int(2) NOT NULL,
  `role_access` int(1) NOT NULL,
  `date_created` varchar(16) DEFAULT NULL,
  `last_updated` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT IGNORE INTO tblroles VALUES('1','Superadmin','8','0','','');
INSERT IGNORE INTO tblroles VALUES('2','Admin','7','0','','');
INSERT IGNORE INTO tblroles VALUES('3','Manager','6','1','','');
INSERT IGNORE INTO tblroles VALUES('4','Managing Editor','3','0','','');
INSERT IGNORE INTO tblroles VALUES('5','Reviewer','5','2','','');
INSERT IGNORE INTO tblroles VALUES('6','Committee','9','2','','');
INSERT IGNORE INTO tblroles VALUES('7','Author','1','2','','');



CREATE TABLE `tblscores` (
  `row_id` int(11) NOT NULL AUTO_INCREMENT,
  `scr_man_id` int(5) DEFAULT NULL,
  `scr_man_rev_id` varchar(64) DEFAULT NULL,
  `scr_crt_1` int(3) DEFAULT NULL,
  `scr_crt_2` int(3) DEFAULT NULL,
  `scr_crt_3` int(3) DEFAULT NULL,
  `scr_crt_4` int(3) DEFAULT NULL,
  `scr_rem_1` text DEFAULT NULL,
  `scr_rem_2` text DEFAULT NULL,
  `scr_rem_3` text DEFAULT NULL,
  `scr_rem_4` text DEFAULT NULL,
  `scr_total` int(3) NOT NULL,
  `scr_status` int(3) DEFAULT NULL,
  `scr_remarks` text DEFAULT NULL,
  `scr_file` text DEFAULT NULL,
  `date_reviewed` datetime DEFAULT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB AUTO_INCREMENT=746 DEFAULT CHARSET=latin1;

INSERT IGNORE INTO tblscores VALUES('1','25','4609','25','25','15','15','','','','','80','6','The results can provide a preliminary information on the microbial pollution level in Lanao Lake. A more extensive study covering wider area, including the river tributaries are needed if we want to use the results in policy making and decisions.
Some sections and paragraphs need to be rewritten or rearranged for clarity of presentation and logical sequencing of the discussion.
','20210126112212_2_Microbiological_Water_Quality_of_Lake_Lanao_Waters.pdf','2021-01-26 11:22:12');
INSERT IGNORE INTO tblscores VALUES('2','26','4729','30','30','15','20','The research is relevant to the aims and scope of the journal.','Data provided is sufficient to meet research objectives.','Some of the cited references do not appear in the reference list (eg. Taylor, Welcomme, Cooke, Sinclair, and other references. It is suggested that the in text citations and reference list be thoroughly reviewed.
2. In Table 2, it is suggested proper alignment of data in their proper column.
3. In terms of the identification of the fish species, it can also be suggested the protocol in identifying the species. Did you use morphology? Please indicate.
4. How were the fisherman surveyed chosen? Randomly? Conveniently? You may indicate this in the methodology.
5. How were the fishing areas identified by the fisherman? Did they point this in the map?
6. Provided GPS data? How do we ascertain its accuracy?','This research can be a benchmark data for the protection, rehabilitation, and management of Lake Lanao.','95','5','','20210121140808_.','2021-01-21 14:08:08');
INSERT IGNORE INTO tblscores VALUES('3','29','2852','','','','','','','','','0','3','','','');
INSERT IGNORE INTO tblscores VALUES('4','30','1391','','','','','','','','','0','3','','','');
INSERT IGNORE INTO tblscores VALUES('5','25','286','20','20','15','15','*Determination of microbiological water quality requires knowledge n biological, physical and chemical characteristics of the lake interrelate to influence of microbial indicators and densities of pathogens. However, this study focused only in one component (biological characteristics) with only few sampling sites which make it as a preliminary data that can be use for future extensive study on the ecological status of the lake. I suggest to revise the title to: “Preliminary Study on the Microbiological Water Quality of Lake Lanao Waters.”

*It is important to take note that total coliforms are widespread in nature. Thus, the use of coliforms as an indicator organism is generally discouraged, except in finished and treated drinking water. The occurrence of coliforms in drinking water will provide a more considerable meaning since it indicates inadequate water treatment.  I believe that this paper needs additional data such as hydrochemical properties of water to further improve the quality and significance of the study. 

*Introduction should be revised following the format below:

I. Fecal Contamination of surface water (organisms that causes fecal contamination as well as possible sources of contamination

II. Water Quality standards set by World Health Organization (WHO) and Department of Health (DOH), PNS

 III. Lanao Lake (short Introduction and importance of the lake)… Can you provide information on the ecological status of the lake (is it eutrophic or oligotrophic?) please include a short description of the water quality parameters taken in this lake from previous literature… what are the anthropogenic activities that are present in the vicinities of the lake that may affect the quality of water in the lake.

IV. Are there any previous studies on the microbiological quality of water for Lake Lanao…what makes this study unique from previous studies on ecological status of the lake…

V. State the objectives of the study

*Please strongly justify (in the introduction, discussion and conclusion) the NOVELTY of this study. How different is it from previous studies done on the ecological status and water quality of Lake Lanao?

*Other comments and suggestions for the improvement of the manuscript are already written in the attached manuscript.  Also, author(s) are suggested to have their manuscript edited by a professional English language editor. This editing of the manuscript before submission is needed to facilitate the review process.','*I think that the methodology is somewhat problematic. Please check the methods used for detection of coliforms and E. coli. It seems like the reference used in this study is NOT A STANDARD METHOD for analysis of water. 

*Please refer to these Standard Method references and compare your methodology: 

Department of Health. 2007. Philippine National Standards for Drinking Water

Rice, EW. 2012. Standard Methods for the Examination of Water and Wastewater. 22nd ed. APHA, AWAWEF.

Some strains of Escherichia coli do not produce greenish metallic sheen in EMBA. These strains are considered as atypical E. coli species. Thus, it is imperative to confirm via IMViC Test the isolated bacterial colonies (without greenish metallic sheen) to further confirm the presence or absence of E. coli. 

*Please revise the methodology into different subsection

I. Sampling site

II. Water Sample Collection

III. Detection of Coliforms and E.coli
     A. Presumptive Test
     B. Confirmatory Test

IV. Statistical Analysis','* Author(s) are suggested to have their manuscript edited by a professional English language editor. This editing of the manuscript before submission is needed to facilitate the review and publication process.

*I believe that the discussion can be further improved by adding data on hydrochemical water parameters of the sampled surface water and relating it from previous published papers on the ecological status of Lake lanao and other lakes in the Philippines (such as Taal lake and Laguna de Bay). 

* Please include error bars (for graphs) and standard deviation (for Tables) in the manuscript. 

* Please improve the title of the tables and figures since some of them are somewhat misleading.

*Please insert pictures of the sampling sites and include their GPS in the manuscript. 

*Some of the comments and suggestions regarding your paper are written at the attached file. Please consider these revisions for the improvement of your manuscript. ','This paper is only a preliminary data and would require further extensive microbiological studies of several water samples from different sampling areas (from different location all over the vicinity) in the lake to make it applicable as a tool in policy making to address the conservation and protection of this body of water. ','70','6','Determination of microbiological water quality requires knowledge n biological, physical and chemical characteristics of the lake interrelate to influence of microbial indicators and densities of pathogens. However, this study focused only in one component (biological characteristics) with only few sampling sites which make it as a preliminary data that can be use for future extensive study on the ecological status of the lake. However, several ecological studies were already conducted in this lake which includes the microbiological assessment of the lake water. Thus, the author(s) should strongly JUSTIFY the NOVELTY of this research study. 

*I think that the methodology is somewhat problematic. Please check the methods used for detection of coliforms and E. coli. It seems like the reference used in this study is NOT A STANDARD METHOD for analysis of water. 

Some strains of Escherichia coli do not produce greenish metallic sheen in EMBA. These strains are considered as atypical E. coli species. Thus, it is imperative to confirm via IMViC Test the isolated bacterial colonies (without greenish metallic sheen) to further confirm the presence or absence of E. coli. The author(s) didn\'t include this method in the confirmatory part of the detection. 

In general, this paper needs major revision before it can be consider for publication. ','20210123211404_Coments_-_Microbiological_Water_Quality_of_Lake_Lanao_Waters.pdf','2021-01-23 21:14:04');
INSERT IGNORE INTO tblscores VALUES('6','24','4751','20','17','13','17','The author(s) showed the presence and abundance of bacteria in selected portion of the lake. This information is important since no records, as claimed by the author(s), have existed. Such information may be used for further description of bacterial population in the lake. However, inventory and culture collection as objectives of the study should have at least reported species composition. ','The author(s) have attributed the results of the study to the environmental conditions of the lake without actual observations on the physico-chemical parameters in the study sites. Author(s) claimed statistical treatment of data but no such information was reported. The discussion of the results is weak and has to be enriched with more literature search.','The use of the English language is appropriate. Many figures are pixelated and not properly labelled. Please see my comments in the uploaded manuscript with comments','The results are good baseline information for further study of the microbial population of the lake. ','67','6','Please see the uploaded manuscript with my comments.','20210131191048_1_Bacterial_Populations_in_the_Surface_Sediments_of_Lake_Lanao_with_review_comments.pdf','2021-01-31 19:10:48');
INSERT IGNORE INTO tblscores VALUES('7','29','6039','25','20','10','18','','','','','73','6','','20210127162239_Lake_Lanao_1.pdf','2021-01-27 16:22:39');
INSERT IGNORE INTO tblscores VALUES('8','28','1929','25','20','10','15','The results need to be rewritten in a concise manner, and remove
unnecessary repetitive sentences. Several references in the text are missing in the reference
section and vice-versa.','Detailed discussions of the results are needed with the latest citations on various Diversity Indices (H’, D, J, etc.).','The whole manuscript requires language editing, as well as technical editing
to remove many repetitive sentences, and also to make the paper suitable to the NRCP Research
Journal Standards. Improvements in Figures is needed and Photos have to be replaced with high
resolution photos (Refer to my handwritten comments on the manuscripts).','The research’s results are applicable or
have great potential to be used as tools
(policy or technology) in addressing present
regional and national issues.','70','6','Impression: The paper presents useful information, but it is poorly written.  I suggest that the authors address all the comments and suggestions made by me.  Thank you for the opportunity to review the paper.

Reviewer Comments: Dr. Ravindra C. Joshi

1.      Title of the paper: Identification and Biodiversity of Mollusks (Gastropods and Bivalves) in Lake Lanao

1.1    Improve the title of the paper.  Add the \"Philippines\" in the title.

1.2    Suggested Titles: Biodiversity of Freshwater Mollusks in Lake Lanao, Philippines

                                  Biodiversity of Mollusks in Freshwater Lake Lanao, Philippines

 

2.      Abstract:

2.1   Italics all vernacular terms (siyur).

2.2   Other comments in the jpeg file.



3.      Keywords:

3.1   Provide alternative keywords aside from those on the title of the paper for better indexing.

3.2   Other comments in the jpeg file.

 

4.      Introduction:

4.1   Either references missing or not cited.

4.2   One sentence to introduce the objectives of the study/research at the end of the introduction.

4.3   Other comments in the jpeg file.



5.      Materials and Methods:

5.1  Write it in sentence format and they should be detailed, for other researcher to repeat your methods.

5.2   Figure 1.  Show in the map the N,S,E, W directions (compass).  Also show the municipalities in the same order as they are in the text.  Currently they are jumbled.  

5.3.  Is it Buadi puso or Buadipuso Buntong.  They are not the same in the text  and Figure 1.

      5.4   Other comments in the jpeg file.

 

6.      Findings:

6.1   Figure 2: Photos need to be replaced with higher resolution photos.  It should be part of the methods.    

6.2   Too many general statements about molluscs in two paragraphs;  and with missing references not cited in the reference section. You discuss the results directly. 

6.3   Table 1.  Indicate study sites in the Table Row with a symbol.

6.4   Other comments in the jpeg file.



7.      Summary & Conclusions:

7.1    Provide a concluding statement on how your findings can be useful for policy makers, etc.  





8.      References:

8.1   Please check carefully that all references cited in the paper are all in the reference section.  I found many of them missing, not correctly cited, and with missing information like Journal name, pages, place of publication, No. of pages, etc.

8.2   Other comments in the jpeg file already sent by email.','20210121153356_Score_Sheet_Dr__Ravindra_C__Joshi_15_Jan_2021.pdf','2021-01-21 15:33:56');
INSERT IGNORE INTO tblscores VALUES('9','30','5082','12','10','11','12','The current form of the results and conclusion were not supported by a clear presentation of data and data analysis. This may be due to the absence of a detailed methodological process for collection of data (sampling frame and sampling procedure for quantitative data) and data analysis (quanti, quali and mixed methods approaches) which is essential to be part of paper.  ','There is a great opportunity for deeper analysis by supporting the quantitative data collected with qualitative information and discussing the results in the context of the study site. This can be done through a more extensive literature review (using a more recent literature and in the context of the Philippines) and a more organized research framework that will allow a detailed site-specific analysis and comparative analysis of the results with other similar researches. While it was mentioned in the framework the important aspects for analysis, i.e. off/in-stream, consumptive use and socio-economic dev’t indicators, there was no unifying approach on how to analyze all these aspects making the presentation of the results individualized, rather than cohesive and integrative. The fisheries resource, which is an important component of lake resources, was only mentioned in the survey results but was not even part of the research framework.','There are some (minor) grammatical/typographical errors in the paper which requires proofreading. The presentation of the tables can be improved by completing the table titles, clearly indicating the number of respondents per column, n=_), and identifying multiple response questions to provide greater clarity in the data presented. Adding tables/figures to support the values (and percentages) reported in the main text (including the source) will be useful in providing evidence to the analysis and results.','The potential of this paper to contribute to addressing regional/local issues is great. But this would be possible if the research can provide generalizations based on the results rather than claiming/concluding based on a response of some respondents (i.e. non-representative). Presenting the data and analysis to support the claims of the paper is also important to be visible in most sections of the paper.','45','6','','20210205142346_.','2021-02-05 14:23:46');
INSERT IGNORE INTO tblscores VALUES('10','28','431','15','10','10','10','The manuscript did not clearly indicate how the objectives were met particularly the objectives 1 and 2.  The authors need to revisit relevant literature such as the Evolution of Molluscs by Wanninger and Wollesen published in 2019 at Biol. Rev.doi: 10.1111/brv.12439 and Stelbrink et al. 2019 for updates. Consider revising the titles because it does not capture the content of the paper.','How will this study contribute to previous molluscan diversity study in Lake Lanao by Stelbrink et al. 2019?  It was not clearly discussed if the species found in the market are all sampled in the field. I am wondering if the researchers did not find Sinanodonta woodiana because there are several reports claiming that this is becoming invasive in Lake Lanao.','The manuscript needs a more careful language and content editing.  There are statements that need to be supported by proper citation. Please provide high resolution photos to validate the identification. Include important features for identification.  You may also visit museums for validation or consult expert malacologists in the area. The figures on biodiversity indices can be collapsed into one Table.','Perhaps the author/s can highlight their findings on the volume of molluscs that are harvested for selling because this will have an implication on the natural population of these species.','45','6','Please see the attached manuscript for further  comments.','20210206112535_9_Identification_and_Biodiversity_of_Mollusks__Gastropods_and_Bivalves__in_Lake_Lanao_Reviewed.pdf','2021-02-06 11:25:35');
INSERT IGNORE INTO tblscores VALUES('11','26','6559','30','20','10','15','','Are these enumerators trained or capable of distinguishing salient features of all ~20 endemic cyprinids in Lake Lanao? The reason why the other cyrpinids were not detected was due to inability to distinguish between species. If they are not capable to distinguish all species, then they should acknowledge this in the Discussion as part of the limitations.

They mentioned gathering data on income but nowhere mentioned in the Results and Discussion sections. I suggest they also calculate CPUE and based on this, they can compute income per unit effort (IPUE). ','Presentation of results, including graphs and tables should be improved. The author(s) presented limited data and interpretation when they have gathered many parameters. To standardize catch, they can present these as CPUE per gear and even per site.   

A number of citations are not listed in the References. There are a lot of inconsistencies in citations (e.g., Mamkur 2019 but in the Reference list Mamku et al. 2019, Escudero 1983, and many more). They should check if those listed in the Reference are cited in the Main text). They should check also formatting style suggested by the journal, if any. If none, they should just observe consistency by choosing one format (APA, MLA, etc.). 

Mispellings also abound in the main text. ','','75','6','They should also cite the recent assessment by the IUCN that 15 out of the 18 known cyprinids (see list by Ismail et al. 2014; cite also this study) in Lake Lanao are considered EXTINCT.
Example:
Torres, A.G., Guerrero, R.D. III, Nacua, S.S., Gimena, R.V., Eza, N.D., Kesner-Reyes, K., Villanueva, T.R., Alcantara, A.J. & Rebancos, C.M. 2020. Barbodes tras. The IUCN Red List of Threatened Species 2020: e.T18901A90997500. https://dx.doi.org/10.2305/IUCN.UK.2020-3.RLTS.T18901A90997500.en. Downloaded on 03 February 2021.   

https://www.q-quatics.org/2020/12/14/new-iucn-red-list-of-threatened-species-released-almost-half-of-extinctions-endemic-to-lake-lanao-ph/#:~:text=Out of the 17 endemic,Lanao, affecting almost 20,000 fisherfolks.','20210205183834_10_Lake_Lanao_Fishes_Relative_Abundance_Based_on_Fish_Catch_with_comments.pdf','2021-02-05 18:38:35');
INSERT IGNORE INTO tblscores VALUES('12','26','6186','18','15','10','15','The paper could be relevant in terms of showing changes in the Lake\'s fisheries through time, however, the authors fail to highlight this as an objective; Biodiversity loss through the decades was mentioned but should be highlighted further in a more compact way, such as putting in a separate section in the Intro and Results, rather than mentioned \'here and there\' under a single Result section; its impact on catch composition should be highlighted. There is also no mention of  \"sustainability\" of the current lake fisheries and impact on the fishing community. Perhaps the authors need to improve organization to let the important concepts emerge clearly to emphasize the relevance of the work.    ','The paper\'s scope is very limited - focused only on one variable: fish catch/catch composition. Fisheries assessment always include information on fishing effort or input (i.e., number of fishers, boats, gear types), how much is output (catch) in terms of per unit effort, thus, CPUE (by gear type). Also there has to be estimate of Total Production - this is not only the monitored catch, but should extrapolate the total daily, monthly, annual catch by ALL fishermen and/or boats and all baragays - including those the researchers were unable to monitor. I am sure these data are available with the authors - the Fish Landing Monitoring form that they used was designed to gather these information. Total number of fishers can be obtained from the barangays, Writing a paper based only on \'Catch Composition\' would be no better than a BS Thesis. There has to be \'value adding\' on the information presented. ','There is need to improve organization and language is quite \'elementary\', for example, \"fry\" in biology as seed stock of fish is both a singular and plural/collective term. \"Fries\" refer to way of cooking fish and other food products. Grammar is acceptable, but the overall composition can be sufficiently improved when the authors have their work edited by a technical and/or language editor. There is no location map - not every reader knows where Lake Lanao is in the world. The pie charts should be improved - font type, size, etc. Data labels should not have borders nor text highlights and clear/readable - avoid using grayscale when they can use black. Table 1 is too long and the font too small - better convert to bar/column chart - but preferably, the values should be the recalculated/raised total monthly landed catch (based on Total Effort). Also, Tilapia spp and shrimp spp are erroneous as Scientific names as they are common names. The first column (Common Name) should be in fact \"local Names\'. When plotting CPUE values on the chart - use Mean Values with Std. Error bars.   The authors also need to describe the FL instrument they used - was this prepared by their team or they adopted this from some other source (e.g. NSAP or other previous projects?) Cite References!  ','When properly revised, the paper would have important applicability for fisheries management; presently though such is not clearly stated. The paper has to highlight the issue of BD loss and sustainability.  Based on CPUE values, is the artisanal fishery in Lake Lanao still sustainable? Also the authors have to discuss  more clearly about the \"targeted fishing on Giuris margaritacea - is this a sustainable approach? what other management initiatives should be adopted in the lake? ','58','6','Thus, unless the authors will incorporate other important information on lake fisheries, I cannot recommend this paper for publication. It is too wanting for a journal publication. I also recommend an improvement in the Title - once revised - to be more inclusive of the information therein.','20210206101603_.','2021-02-06 10:16:03');
INSERT IGNORE INTO tblscores VALUES('13','24','938','15','15','15','15','The rationale and objectives of the study were not clearly presented, and the choice of methods was not well-justified. Thus, any interpretations and conclusions drawn from the results are unsupported.','Complete and actual data on colony counts, statistical analyses, and morphological observations were not presented. Findings were not related to other published studies. Citations should include current primary literature (i.e. peer-reviewed scientific journals). ','Writing style is good. However, the authors need to clearly present their conclusions in light of methodological limitations. Figures need improvement.','The topic of the paper is fascinating, as there are very few baseline studies on sediment microbes in the Philippines.','60','7','The study assessed the abundance of bacteria in surface sediments of Lake Lanao using morphological and microscopic methods. Spatial and temporal patterns were observed in terms of colony counts. An attempt to characterize bacterial isolates was also done. 

The topic of the paper is fascinating, as there are very few baseline studies on sediment microbes in the Philippines. However, the paper reads more like a technical project report presenting very preliminary data and there are some major issues that need to be addressed.

Major comments

1. The rationale and objectives of the study is not clearly presented. What is the working hypothesis? 
2. The choice of methods is not well-justified. Why use a culture-based method when it is known that most bacteria are not culturable? Why sample at the selected sites and during the selected months? 
3. Complete and actual data on colony counts, statistical analyses, and morphological observations are not presented.
4. The study appears to have been conducted without replication. Thus, any conclusions drawn from the results are unfounded.
5. Attribution of observations to certain factors, such as mixing or temperature, are not supported by published data.


Specific comments

Introduction

The output of this project is certainly going to be an important contribution for Lake Lanao protection or conservation efforts. However, the objectives and significance of the study are not clearly presented. What did this study want to determine? What was their working hypothesis? The answers to these questions will determine whether the method used was appropriate.

There needs to be more background information on sediment microbes and why bacterial decomposers are important members of lake ecosystems, such as Lake Lanao. There are many publications in primary scientific literature that the authors can draw upon, even if these are studies that have been conducted on sediments from other lakes.

Methodology

What was the rationale for selecting the sampling sites and time points?

It is not clear from the methods or from Figure 1 where exactly the samples were collected. Was this a 25m transect from the shore? How far from the water line did you start? How deep was each sampling station?

Sample replication and/or subsampling was not stated clearly in the methods. Was there only one biological replicate per station? If yes, were they subsampled during spread plating to serve as technical replicates?

The authors note that they used ‘conventional standard methods’ for characterizing the colonies. This data should be presented clearly in a table or graph, including how may colonies were examined and how many present each morphological feature. Moreover, additional standard biochemical tests should be conducted to better characterize bacterial isolates.

Include information on environmental parameters at each collection site and sampling time point or refer to previous studies that have this data.

Conventional standard methods, formulas, and statistics used in the study should be attributed to appropriate references (i.e. published papers).

Results and Discussion

It is not clear how the statistical analysis was conducted as the output of MANOVA and post hoc analysis is not shown and is not referred to in the results section. 

Most bacterial groups are still unculturable. Thus, it is inaccurate to claim that abundance of bacteria is greater at one site compared to another solely based on culture counts without clear replicates. Authors should qualify their statement by saying that more culturable bacteria were observed in sediments from one site versus another.

Statements attributing differences in CFU to events that may occur at particular months should be supported by appropriate references. Has anyone actually determined that mixing in the lake occurs in January and not at some other time of the year? Is March the warmest month at the lake? Where is the data showing that it rained in June 2016? Was there no rain during the other months?

High bacterial count cannot be correlated to high coliform count and presence of fecal pollution and pathogens because there was no further analysis done to characterize if the bacterial populations observed were indeed coliforms. Further characterization may involve use of differential and selective media, and some biochemical tests (catalase, indole, MR-VP, etc.).

Authors should quantify the results of their morphological observations and present it in the paper.

Results should be discussed in comparison to similar published studies.

Conclusions

“This study shows that bacterial populations were greatly influenced by the changes in physico-chemical profile of an otherwise stable lake ecosystem.” – This is not supported as the authors did not show or cite any physicochemical data.

“The conventional culture method used in this study limits growth and inventory of not even half of the actual populations of bacteria in a lake ecosystem.” – Given that the authors are aware of the limitations of their chosen method, they should better justify the way that they conducted their study and to be explicit about these limitations when interpreting the data.

Figures
 
Figures 1 and 3 can be combined into one figure as they both show the sampling area and rivers around the lake. Show sampling stations in the map.

Figure 1: Wato is not shown

Figure 3: Needs a caption

Figure 2, 5, 6: add error bars, complete legend, and x and y-axis labels; be consistent with labels 

Figures 7, 8, 9, 10: add scale bars

Figures 9 and 10: improve resolution

References

Cited literature [3] seems like a published paper in a Japanese journal, please cite properly.

Refer to and cite current primary literature (i.e. peer-reviewed scientific journals). Encyclopedias, gray literature (project reports, etc), and internet sites are not reputable sources.','20210128164644_.','2021-01-28 16:46:44');
INSERT IGNORE INTO tblscores VALUES('14','27','1378','','','','','','','','','0','3','','','');
INSERT IGNORE INTO tblscores VALUES('15','28','1097','10','10','5','10','This paper needs significant re-writing and analysis of data. Some specimen identification is not correct. I advise the authors to consult with experts and pertinent published literatures for proper identification of the mollusks. This paper is written as a simple report not in a form suitable for a technical journal such as NRCP journal.  ','The writing is confusing, and very \"high schoolish\'\'. Some objectives were not addressed by the data presented.','This paper needs major re-writing. At its present form is not acceptable.','Although the general objective will be of great use to generate policies for the proper management and exploitation of the molluscan resources of Lake Lanao, the errors and confusing writing is not acceptable at its present form.','35','3','This paper is rejected.','20210204215605_.','2021-02-04 21:56:05');
INSERT IGNORE INTO tblscores VALUES('16','28','1138','15','12','8','10','','Lacks essential data on the number of  replicates done per sampling site; distribution and abundance of mollusks per site and  physical and chemical of characteristics of the lake. Wrong identification of some gastropods (Family Planorbidae and Lymnaeidae). ','','','45','3','The manuscript is not scientifically written.','20210126050843_.','2021-01-26 05:08:43');
INSERT IGNORE INTO tblscores VALUES('17','24','2850','','','','','','','','','0','2','','','');
INSERT IGNORE INTO tblscores VALUES('18','27','253','25','20','15','15','the updated information on the species and associated con-generics is an important contribution','researchers need to further elaborate on methodology: How many fishermen respondent per site (the paper mentions 24, is this the total for all sites or per site?); fishing gear used by respondent fishermen (as this impacts the type of catch); frequency of sampling during the survey period; associated information on length-weight relationship etc. The size caught may be a function of the fishing gear (as this was not mentioned, it is difficult to determine); the fact that the B. tumba was caught only in January should also be given explanation, using known facts on the species. What is the reproductive state of the fish caught during this time? Reproductive season may also affect fish behavior which may (or may not!) explain some of the findings.','Presenting the same data in both graph and table form in not needed. In this case, the tabular format will capture the necessary information','results can provide information on strategies reviving the dwindling species','75','3','','20210124100825_Comments_on_MS_on_B_tumba.pdf','2021-01-24 10:08:25');
INSERT IGNORE INTO tblscores VALUES('19','25','390','20','20','10','14','1. The Objectives of the study are not clearly presented in the Introduction section instead, a brief result is given. 
2. The methods used, result presented and the manner of presentation is not conclusive and hence cannot provide enough justification that the technical outputs are significant. 
','1. The sections of the manuscript are poorly written. The current form, style, and language of writing is not suited for publication as a research article. The author(s) may recast the entire paper (even the abstract and acknowledgement section) and format it following the appropriate structure, tone and language of a technical research manuscript. 
2. The Abstract may be written in a manner that it will highlight the objectives (1-2 sentences), Materials and Methods (2-3 sentences), and  Results (3-4 sentences) only. Be quantitative in presenting the Results in the Abstract and highlight the most significant finding (s). Avoid injecting opinionated statements, conclusions and recommendations. 
3. The general and specific objectives of the study are not even clearly stated in the Introduction. However, the Introduction contains the result of the study, which is not acceptable.
4.  The Materials and Methods section does not contain sufficient information on how the study was conducted. The author(s) may include the following information should they wish to revise and re-submit the manuscript: a) Description of the sampling site and the criteria used for site selection, b) time, place, and frequency of sampling, c) depth and manner by which the sampling of water was taken (how did the water samples were collected? What are the equipment/ apparatus used?) d) how did the water samples were preserved and transported from the site to the laboratory? Please provide a specific reference used (mention the author, and year of publication) and brief description of the methods used, citing any modification of the method if there is. 
5. The author(s) may consider re-conducting the study and include other water quality parameter (physical, chemical, biological) analyses to support the claim. 
6. Include more relevant literatures in revising the manuscript.','1. Research results are not presented in a more concise technical format.
2. The syntax, grammar, tone and language used in the manuscript may be enhanced to qualify it as a technical research paper. 
3. Research results may be supported with appropriate illustrations, figures, photo documentation and graphs with concise captions and statistical notations (if applicable).
4. Using direct quotations or verbal statements from a person is strongly discouraged. 
5. The results of the study may be further supported with substantial relevant literatures and providing a comparison or contradiction of the present study with those published literature. Provision of an in-depth discussion of the results is encouraged.
','1. Further studies may be conducted to provide substantial documentation and proof to support the crafting of policy on water use and waste management in the localities surrounding Lake Lanao.','64','3','The manuscript submitted needs to be revised to qualify it as an article suitable for publication.','20210124103239_.','2021-01-24 10:32:39');
INSERT IGNORE INTO tblscores VALUES('726','30','4298','10','5','5','10','','','','','30','7','While the research title looks relevant since Lake Lanao and its watershed are considered lifeblood for economic development and water security, the data and subsequent discussion are grossly insufficient to merit approval for scientific publication. Should the author pursue an interest on this direction, a good start would be the use of Lanao Lake Masterplan report as basic reference','20210207163445_.','2021-02-07 16:34:45');
INSERT IGNORE INTO tblscores VALUES('727','30','972','','','','','','','','','0','2','','','');
INSERT IGNORE INTO tblscores VALUES('730','29','820','','','','','','','','','0','2','','','');
INSERT IGNORE INTO tblscores VALUES('731','28','6802','17','15','8','10','','','','','50','6','The manuscript needs extensive revision as pertinent aspects in the methodology were not sufficiently described, which is important in determining the reproducibility of the study. Much of what is written in the results are a repeat of the information presented in the table/figures. The authors should present sections more concisely by emphasizing key findings. Furthermore, the manuscript needs polishing and would benefit from tight editing and proofreading. ','20210207134830_20210116210819_IdentificationBiodiversityMollusks_FULL.doc','2021-02-07 13:48:30');
INSERT IGNORE INTO tblscores VALUES('732','25','52','','','','','','','','','0','2','','','');
INSERT IGNORE INTO tblscores VALUES('733','27','5287','15','15','10','8','The results presented were not able to give sufficient information on the topic being studied. Although the researcher was able to identify the distribution of the fish being studied, the methods used on computing for the abundance of fish is questionable. ','The survey conducted by the researcher lacks statistical analysis. The researcher was also not able to present the result of DNA barcoding. Please see attached file for more comments. ','The paper needs a lot of improvements in data presentation. Some tables and graphs/ images were just copy-pasted. ','This could be a good research if the researcher will be able to present the DNA barcoding data, update references, and be more scientific on data presentation and analysis. ','48','6','Please see attached file. ','20210209220631_DistributionRelativeAbundance_FULL.pdf','2021-02-09 22:06:31');
INSERT IGNORE INTO tblscores VALUES('734','25','104','','','','','','','','','0','2','','','');
INSERT IGNORE INTO tblscores VALUES('735','29','1951','','','','','','','','','0','2','','','');
INSERT IGNORE INTO tblscores VALUES('736','38','1146','','','','','','','','','0','2','','','');
INSERT IGNORE INTO tblscores VALUES('737','26','736','','','','','','','','','0','2','','','');
INSERT IGNORE INTO tblscores VALUES('738','29','866','','','','','','','','','0','2','','','');
INSERT IGNORE INTO tblscores VALUES('739','26','5167','','','','','','','','','0','2','','','');
INSERT IGNORE INTO tblscores VALUES('740','25','352','26','25','17','17','','','','','85','5','','20210210164335_Comments.pdf','2021-02-10 16:43:35');
INSERT IGNORE INTO tblscores VALUES('741','38','5737','25','24','14','16','','','','','79','4','Consider the reverse and top view of the colony characteristics of the fungal isolates. The level of significance was not specified. Agar block method is used for the purification of fungal isolates. Streaking is used for the purification of bacteria. Waste disposal was not mentioned in the methodology. Add the micrometer image along with the images.  ','20210207193416_.','2021-02-07 19:34:16');
INSERT IGNORE INTO tblscores VALUES('742','25','178','13','14','8','12','The objectives of the study were not presented well/clearly in the introduction, hence there is no assurance whether results presented really answered the problem of this research. ','','The discussion of the results is not satisfactory since the researchers were not able to relate the results and discussion with that of the other research that studies the same topic. ','The results of this research could be very important to serve as baseline information for the implementation of the necessary measures/intervention in saving the bodies of water particularly the Lake Lanao. ','47','7','Please refer comments in the attached paper.','20210212231406_20210116194557_MicrobiologicalWaterQuality_FULL_Alvarez.doc','2021-02-12 23:14:06');
INSERT IGNORE INTO tblscores VALUES('743','24','460','','','','','','','','','0','2','','','');
INSERT IGNORE INTO tblscores VALUES('744','28','2061','12','10','10','8','','','','','40','6','Overall, the paper, as is, is not acceptable for publication. It needs major rewriting to follow the format of a manuscript, not tabulating the materials used, objectives, conclusions, and acknowledgements, unless this is what the journal required. I checked but can\'t find detailed guidelines for manuscript submission. The method was not clear. Mere observation in the market does not give any information. Interviews with catchers were done, but results were not discussed. Were there questionnaires? What are the profiles of the respondents? Indices were determined, but not a single formula/equation was presented. English must be corrected. Some sentences are incoherent. This paper needs to be corrected first by a technical writer prior to submission for reconsideration in a journal.','20210210004046_.','2021-02-10 00:40:46');
INSERT IGNORE INTO tblscores VALUES('745','38','5272','20','17','10','15','This study tried to investigate the potential antibiotic ability of fungi from Lake Lanao. The paper is relevant due to the need of science community to speed up the discovery of novel drugs in order to respond to the increasing threat of multidrug resistant bacteria.

The abstract should be improved in order to convey the novel breakthrough and the relevance of the study.

In your conclusion, what is your basis in saying that \"Acremonium sp showed superior activity\"? This may be a dangerous sweeping statement if not defended by substantial empirical data. 

This question helps you to defend your claim: \"What is the descriptive equivalence range to indicate high, intermediate, low susceptibility, or resistance of the bacteria to the fungal isolates under study. Does 15 mm or greater ZOI indicate high susceptibility?','The effectiveness of the potential antibiotic-producing fungi were only tested on two bacteria.','1. The zone of inhibition (ZOI) is better illustrated using figures (bar graphs). The positive/negative standard deviation must also be presented (as T-bars on top of the bar graphs).

2. Clearer pictures are highly need for scientific publications. Also, it appears that some of the fungal isolates have contaminations. Please see to it that pure cultures are used to represent the isolates in your study.

3. The figures are a bit confusing and difficult to understand. Categorize and label them properly.

4. The pictures showing zones of inhibitions must be clearly and separately presented. They should not be mixed with the presentation of the colony and microscopic features of the fungal isolates.
 ','This research is timely due to the rapid emergence of antibiotic resistance bacterial strains.','62','6','The technical soundness of the methodology must be complete and consistent, hence these observations must be addressed:

1. did you use any positive and negative control? without these controls, the experimental procedure must be reconsidered.

2. did the remaining 116 fungal isolates have zero ZOI for both bacteria? if NOT, what was your basis /criteria to say that only these 10 exhibited antibiosis? (please submit attachment for the ZOI of the other 116 fungal isolates for verification purposes).

3. how were the identification of the fungi cross-referenced? did you consult mycologists to affirm the morphological identification? was there any supporting molecular data?

4. Place a descriptive equivalence to the measured ZOI. What is the range of ZOI in order for you to say that the bacteria is (a) resistant, (b) intermediate, or (c) susceptible to the fungal isolate test organisms.','20210208112052_.','2021-02-08 11:20:52');



CREATE TABLE `tblsupports` (
  `row_id` int(11) NOT NULL AUTO_INCREMENT,
  `supp_id` varchar(64) NOT NULL,
  `supp_status` int(2) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `tbltitles` (
  `title_id` int(11) NOT NULL,
  `title_name` char(64) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT IGNORE INTO tbltitles VALUES('1','Mr.','2017-09-06 04:17:58','2017-10-05 11:22:31');
INSERT IGNORE INTO tbltitles VALUES('2','Mrs.','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('3','Ms.','2017-09-06 04:17:58','2017-10-16 11:41:35');
INSERT IGNORE INTO tbltitles VALUES('4','Dr.','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('5','NS','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('6','Prof.','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('7','Rev.','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('8','Engr.','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('10','Capt.','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('11','Major','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('12','Lt.-Col.','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('13','Col.','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('14','Lady','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('15','Lt.-Cmdr.','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('16','The Hon.','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('17','Cmdr.','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('18','Flt. Lt.','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('19','Brgdr.','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('20','Judge','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('22','The Hon. Mrs','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('23','Wng. Cmdr.','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('24','Group Capt.','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('25','Rt. Hon. Lord','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('26','Revd. Father','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('27','Revd Canon','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('28','Maj.-Gen.','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('29','Air Cdre.','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('30','Viscount','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('31','Dame','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('32','Rear Admrl.','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('33','Asc Prof','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('34','Fr.','2017-09-06 04:17:58','');
INSERT IGNORE INTO tbltitles VALUES('35','Sen','2017-09-06 04:18:32','');
INSERT IGNORE INTO tbltitles VALUES('36','Sec','2017-09-06 04:18:32','');
INSERT IGNORE INTO tbltitles VALUES('37','Asst Prof','2017-09-06 04:18:32','');
INSERT IGNORE INTO tbltitles VALUES('38','Sr','2017-09-06 04:18:32','');
INSERT IGNORE INTO tbltitles VALUES('43','Sir','2017-09-06 04:18:32','');
INSERT IGNORE INTO tbltitles VALUES('44','Capt.','2017-09-06 04:18:32','');
INSERT IGNORE INTO tbltitles VALUES('47','Col.','2017-09-06 04:18:32','');
INSERT IGNORE INTO tbltitles VALUES('50','The Hon.','2017-09-06 04:18:32','');
INSERT IGNORE INTO tbltitles VALUES('51','Cmdr.','2017-09-06 04:18:32','');
INSERT IGNORE INTO tbltitles VALUES('52','Flt. Lt.','2017-09-06 04:18:32','');
INSERT IGNORE INTO tbltitles VALUES('53','Brgdr.','2017-09-06 04:18:32','');
INSERT IGNORE INTO tbltitles VALUES('55','Lord','2017-09-06 04:18:32','');
INSERT IGNORE INTO tbltitles VALUES('56','The Hon. Mrs','2017-09-06 04:18:32','');
INSERT IGNORE INTO tbltitles VALUES('57','Wng. Cmdr.','2017-09-06 04:18:32','');
INSERT IGNORE INTO tbltitles VALUES('87','Arch.','2017-12-02 10:37:27','');



CREATE TABLE `tbltracking` (
  `row_id` int(11) NOT NULL AUTO_INCREMENT,
  `trk_man_id` int(11) DEFAULT NULL,
  `trk_description` char(128) NOT NULL,
  `trk_processor` varchar(64) DEFAULT NULL,
  `trk_remarks` text DEFAULT NULL,
  `trk_process_datetime` varchar(32) DEFAULT NULL,
  `trk_source` char(11) DEFAULT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;

INSERT IGNORE INTO tbltracking VALUES('1','1','','167','','2020-12-23 16:34:38','_sk');
INSERT IGNORE INTO tbltracking VALUES('14','6','','3298','','2021-01-11 11:53:08','_sk');
INSERT IGNORE INTO tbltracking VALUES('15','7','','3298','','2021-01-11 12:18:04','_sk');
INSERT IGNORE INTO tbltracking VALUES('19','9','','7156','','2021-01-12 18:27:14','_sk');
INSERT IGNORE INTO tbltracking VALUES('20','10','','7918','','2021-01-13 07:50:33','_sk');
INSERT IGNORE INTO tbltracking VALUES('22','12','','1','','2021-01-15 09:53:44','_sk');
INSERT IGNORE INTO tbltracking VALUES('23','13','','1','','2021-01-15 09:54:38','_sk');
INSERT IGNORE INTO tbltracking VALUES('24','14','','1','','2021-01-15 10:12:55','_sk');
INSERT IGNORE INTO tbltracking VALUES('25','15','','1','','2021-01-15 10:16:29','_sk');
INSERT IGNORE INTO tbltracking VALUES('26','16','','1','','2021-01-15 10:28:18','_sk');
INSERT IGNORE INTO tbltracking VALUES('27','17','','1','','2021-01-15 10:30:58','_sk');
INSERT IGNORE INTO tbltracking VALUES('28','18','','1','','2021-01-15 10:32:59','_sk');
INSERT IGNORE INTO tbltracking VALUES('29','19','','1','','2021-01-15 10:35:47','_sk');
INSERT IGNORE INTO tbltracking VALUES('30','20','','1','','2021-01-15 10:42:02','_sk');
INSERT IGNORE INTO tbltracking VALUES('31','21','','1','','2021-01-15 10:46:29','_sk');
INSERT IGNORE INTO tbltracking VALUES('32','22','','1','','2021-01-15 10:50:09','_sk');
INSERT IGNORE INTO tbltracking VALUES('33','23','','1','','2021-01-15 10:53:33','_sk');
INSERT IGNORE INTO tbltracking VALUES('34','24','','201','','2021-01-16 19:37:35','_sk');
INSERT IGNORE INTO tbltracking VALUES('35','25','','201','','2021-01-16 19:45:57','_sk');
INSERT IGNORE INTO tbltracking VALUES('36','26','','2575','','2021-01-16 20:40:22','_sk');
INSERT IGNORE INTO tbltracking VALUES('37','27','','2575','','2021-01-16 20:53:06','_sk');
INSERT IGNORE INTO tbltracking VALUES('38','28','','3342','','2021-01-16 21:08:19','_sk');
INSERT IGNORE INTO tbltracking VALUES('39','29','','1800','','2021-01-16 21:18:53','_sk');
INSERT IGNORE INTO tbltracking VALUES('40','30','','2985','','2021-01-16 21:35:50','_sk');
INSERT IGNORE INTO tbltracking VALUES('42','24','','SA994','We would like to inform you that simultaneously, we are also doing the eReview process.  You will receive an email from the NRCP eJournal.
','2021-01-21 13:37:21','');
INSERT IGNORE INTO tbltracking VALUES('43','25','','SA994','We would like to inform you that simultaneously, we are also doing the eReview process.  You will receive an email from the NRCP eJournal.','2021-01-21 13:41:47','');
INSERT IGNORE INTO tbltracking VALUES('44','29','','SA994','We would like to inform you that simultaneously, we are also doing the eReview process.  You will receive an email from the NRCP eJournal.','2021-01-21 13:44:21','');
INSERT IGNORE INTO tbltracking VALUES('45','30','','SA994','We would like to inform you that simultaneously, we are also doing the eReview process.  You will receive an email from the NRCP eJournal.','2021-01-21 13:49:02','');
INSERT IGNORE INTO tbltracking VALUES('46','27','','SA994','We would like to inform you that simultaneously, we are also doing the eReview process.  You will receive an email from the NRCP eJournal.','2021-01-21 13:51:25','');
INSERT IGNORE INTO tbltracking VALUES('47','28','','SA994','We would like to inform you that simultaneously, we are also doing the eReview process.  You will receive an email from the NRCP eJournal.','2021-01-21 13:58:19','');
INSERT IGNORE INTO tbltracking VALUES('48','26','','SA994','We would like to inform you that simultaneously, we are also doing the eReview process.  You will receive an email from the NRCP eJournal.','2021-01-21 14:00:42','');
INSERT IGNORE INTO tbltracking VALUES('49','26','','4729','','2021-01-21 14:08:08','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('50','28','','1929','Impression: The paper presents useful information, but it is poorly written.  I suggest that the authors address all the comments and suggestions made by me.  Thank you for the opportunity to review the paper.

Reviewer Comments: Dr. Ravindra C. Joshi

1.      Title of the paper: Identification and Biodiversity of Mollusks (Gastropods and Bivalves) in Lake Lanao

1.1    Improve the title of the paper.  Add the \"Philippines\" in the title.

1.2    Suggested Titles: Biodiversity of Freshwater Mollusks in Lake Lanao, Philippines

                                  Biodiversity of Mollusks in Freshwater Lake Lanao, Philippines

 

2.      Abstract:

2.1   Italics all vernacular terms (siyur).

2.2   Other comments in the jpeg file.



3.      Keywords:

3.1   Provide alternative keywords aside from those on the title of the paper for better indexing.

3.2   Other comments in the jpeg file.

 

4.      Introduction:

4.1   Either references missing or not cited.

4.2   One sentence to introduce the objectives of the study/research at the end of the introduction.

4.3   Other comments in the jpeg file.



5.      Materials and Methods:

5.1  Write it in sentence format and they should be detailed, for other researcher to repeat your methods.

5.2   Figure 1.  Show in the map the N,S,E, W directions (compass).  Also show the municipalities in the same order as they are in the text.  Currently they are jumbled.  

5.3.  Is it Buadi puso or Buadipuso Buntong.  They are not the same in the text  and Figure 1.

      5.4   Other comments in the jpeg file.

 

6.      Findings:

6.1   Figure 2: Photos need to be replaced with higher resolution photos.  It should be part of the methods.    

6.2   Too many general statements about molluscs in two paragraphs;  and with missing references not cited in the reference section. You discuss the results directly. 

6.3   Table 1.  Indicate study sites in the Table Row with a symbol.

6.4   Other comments in the jpeg file.



7.      Summary & Conclusions:

7.1    Provide a concluding statement on how your findings can be useful for policy makers, etc.  





8.      References:

8.1   Please check carefully that all references cited in the paper are all in the reference section.  I found many of them missing, not correctly cited, and with missing information like Journal name, pages, place of publication, No. of pages, etc.

8.2   Other comments in the jpeg file already sent by email.','2021-01-21 15:33:56','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('51','25','','286','Determination of microbiological water quality requires knowledge n biological, physical and chemical characteristics of the lake interrelate to influence of microbial indicators and densities of pathogens. However, this study focused only in one component (biological characteristics) with only few sampling sites which make it as a preliminary data that can be use for future extensive study on the ecological status of the lake. However, several ecological studies were already conducted in this lake which includes the microbiological assessment of the lake water. Thus, the author(s) should strongly JUSTIFY the NOVELTY of this research study. 

*I think that the methodology is somewhat problematic. Please check the methods used for detection of coliforms and E. coli. It seems like the reference used in this study is NOT A STANDARD METHOD for analysis of water. 

Some strains of Escherichia coli do not produce greenish metallic sheen in EMBA. These strains are considered as atypical E. coli species. Thus, it is imperative to confirm via IMViC Test the isolated bacterial colonies (without greenish metallic sheen) to further confirm the presence or absence of E. coli. The author(s) didn\'t include this method in the confirmatory part of the detection. 

In general, this paper needs major revision before it can be consider for publication. ','2021-01-23 21:14:04','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('52','27','','253','','2021-01-24 10:08:25','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('53','25','','390','The manuscript submitted needs to be revised to qualify it as an article suitable for publication.','2021-01-24 10:32:39','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('54','28','','1138','The manuscript is not scientifically written.','2021-01-26 05:08:43','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('55','25','','4609','The results can provide a preliminary information on the microbial pollution level in Lanao Lake. A more extensive study covering wider area, including the river tributaries are needed if we want to use the results in policy making and decisions.
Some sections and paragraphs need to be rewritten or rearranged for clarity of presentation and logical sequencing of the discussion.
','2021-01-26 11:22:12','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('56','29','','6039','','2021-01-27 16:22:39','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('57','24','','938','The study assessed the abundance of bacteria in surface sediments of Lake Lanao using morphological and microscopic methods. Spatial and temporal patterns were observed in terms of colony counts. An attempt to characterize bacterial isolates was also done. 

The topic of the paper is fascinating, as there are very few baseline studies on sediment microbes in the Philippines. However, the paper reads more like a technical project report presenting very preliminary data and there are some major issues that need to be addressed.

Major comments

1. The rationale and objectives of the study is not clearly presented. What is the working hypothesis? 
2. The choice of methods is not well-justified. Why use a culture-based method when it is known that most bacteria are not culturable? Why sample at the selected sites and during the selected months? 
3. Complete and actual data on colony counts, statistical analyses, and morphological observations are not presented.
4. The study appears to have been conducted without replication. Thus, any conclusions drawn from the results are unfounded.
5. Attribution of observations to certain factors, such as mixing or temperature, are not supported by published data.


Specific comments

Introduction

The output of this project is certainly going to be an important contribution for Lake Lanao protection or conservation efforts. However, the objectives and significance of the study are not clearly presented. What did this study want to determine? What was their working hypothesis? The answers to these questions will determine whether the method used was appropriate.

There needs to be more background information on sediment microbes and why bacterial decomposers are important members of lake ecosystems, such as Lake Lanao. There are many publications in primary scientific literature that the authors can draw upon, even if these are studies that have been conducted on sediments from other lakes.

Methodology

What was the rationale for selecting the sampling sites and time points?

It is not clear from the methods or from Figure 1 where exactly the samples were collected. Was this a 25m transect from the shore? How far from the water line did you start? How deep was each sampling station?

Sample replication and/or subsampling was not stated clearly in the methods. Was there only one biological replicate per station? If yes, were they subsampled during spread plating to serve as technical replicates?

The authors note that they used ‘conventional standard methods’ for characterizing the colonies. This data should be presented clearly in a table or graph, including how may colonies were examined and how many present each morphological feature. Moreover, additional standard biochemical tests should be conducted to better characterize bacterial isolates.

Include information on environmental parameters at each collection site and sampling time point or refer to previous studies that have this data.

Conventional standard methods, formulas, and statistics used in the study should be attributed to appropriate references (i.e. published papers).

Results and Discussion

It is not clear how the statistical analysis was conducted as the output of MANOVA and post hoc analysis is not shown and is not referred to in the results section. 

Most bacterial groups are still unculturable. Thus, it is inaccurate to claim that abundance of bacteria is greater at one site compared to another solely based on culture counts without clear replicates. Authors should qualify their statement by saying that more culturable bacteria were observed in sediments from one site versus another.

Statements attributing differences in CFU to events that may occur at particular months should be supported by appropriate references. Has anyone actually determined that mixing in the lake occurs in January and not at some other time of the year? Is March the warmest month at the lake? Where is the data showing that it rained in June 2016? Was there no rain during the other months?

High bacterial count cannot be correlated to high coliform count and presence of fecal pollution and pathogens because there was no further analysis done to characterize if the bacterial populations observed were indeed coliforms. Further characterization may involve use of differential and selective media, and some biochemical tests (catalase, indole, MR-VP, etc.).

Authors should quantify the results of their morphological observations and present it in the paper.

Results should be discussed in comparison to similar published studies.

Conclusions

“This study shows that bacterial populations were greatly influenced by the changes in physico-chemical profile of an otherwise stable lake ecosystem.” – This is not supported as the authors did not show or cite any physicochemical data.

“The conventional culture method used in this study limits growth and inventory of not even half of the actual populations of bacteria in a lake ecosystem.” – Given that the authors are aware of the limitations of their chosen method, they should better justify the way that they conducted their study and to be explicit about these limitations when interpreting the data.

Figures
 
Figures 1 and 3 can be combined into one figure as they both show the sampling area and rivers around the lake. Show sampling stations in the map.

Figure 1: Wato is not shown

Figure 3: Needs a caption

Figure 2, 5, 6: add error bars, complete legend, and x and y-axis labels; be consistent with labels 

Figures 7, 8, 9, 10: add scale bars

Figures 9 and 10: improve resolution

References

Cited literature [3] seems like a published paper in a Japanese journal, please cite properly.

Refer to and cite current primary literature (i.e. peer-reviewed scientific journals). Encyclopedias, gray literature (project reports, etc), and internet sites are not reputable sources.','2021-01-28 16:46:44','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('58','24','','4751','Please see the uploaded manuscript with my comments.','2021-01-31 19:10:48','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('59','31','','8117','','2021-02-03 09:24:45','_sk');
INSERT IGNORE INTO tbltracking VALUES('66','38','','201','','2021-02-03 18:08:50','_sk');
INSERT IGNORE INTO tbltracking VALUES('67','39','','3687','','2021-02-03 18:22:12','_sk');
INSERT IGNORE INTO tbltracking VALUES('68','40','','599','','2021-02-03 18:37:48','_sk');
INSERT IGNORE INTO tbltracking VALUES('69','41','','8127','','2021-02-04 20:14:29','_sk');
INSERT IGNORE INTO tbltracking VALUES('80','52','','8127','','2021-02-04 20:23:07','_sk');
INSERT IGNORE INTO tbltracking VALUES('81','28','','1097','This paper is rejected.','2021-02-04 21:56:05','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('82','30','','SA994','','2021-02-05 09:22:59','');
INSERT IGNORE INTO tbltracking VALUES('83','29','','SA994','','2021-02-05 09:39:34','');
INSERT IGNORE INTO tbltracking VALUES('84','28','','SA994','','2021-02-05 10:23:46','');
INSERT IGNORE INTO tbltracking VALUES('85','27','','SA994','','2021-02-05 10:36:58','');
INSERT IGNORE INTO tbltracking VALUES('86','26','','SA994','','2021-02-05 10:47:55','');
INSERT IGNORE INTO tbltracking VALUES('87','25','','SA994','','2021-02-05 11:02:25','');
INSERT IGNORE INTO tbltracking VALUES('88','24','','SA994','','2021-02-05 11:11:09','');
INSERT IGNORE INTO tbltracking VALUES('89','40','','SA994','','2021-02-05 11:22:50','');
INSERT IGNORE INTO tbltracking VALUES('90','38','','SA994','','2021-02-05 11:57:18','');
INSERT IGNORE INTO tbltracking VALUES('91','30','','5082','','2021-02-05 14:23:46','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('92','26','','6559','They should also cite the recent assessment by the IUCN that 15 out of the 18 known cyprinids (see list by Ismail et al. 2014; cite also this study) in Lake Lanao are considered EXTINCT.
Example:
Torres, A.G., Guerrero, R.D. III, Nacua, S.S., Gimena, R.V., Eza, N.D., Kesner-Reyes, K., Villanueva, T.R., Alcantara, A.J. & Rebancos, C.M. 2020. Barbodes tras. The IUCN Red List of Threatened Species 2020: e.T18901A90997500. https://dx.doi.org/10.2305/IUCN.UK.2020-3.RLTS.T18901A90997500.en. Downloaded on 03 February 2021.   

https://www.q-quatics.org/2020/12/14/new-iucn-red-list-of-threatened-species-released-almost-half-of-extinctions-endemic-to-lake-lanao-ph/#:~:text=Out of the 17 endemic,Lanao, affecting almost 20,000 fisherfolks.','2021-02-05 18:38:35','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('93','26','','6186','Thus, unless the authors will incorporate other important information on lake fisheries, I cannot recommend this paper for publication. It is too wanting for a journal publication. I also recommend an improvement in the Title - once revised - to be more inclusive of the information therein.','2021-02-06 10:16:03','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('94','28','','431','Please see the attached manuscript for further  comments.','2021-02-06 11:25:35','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('95','53','','6800','','2021-02-06 16:16:12','_sk');
INSERT IGNORE INTO tbltracking VALUES('96','28','','6802','The manuscript needs extensive revision as pertinent aspects in the methodology were not sufficiently described, which is important in determining the reproducibility of the study. Much of what is written in the results are a repeat of the information presented in the table/figures. The authors should present sections more concisely by emphasizing key findings. Furthermore, the manuscript needs polishing and would benefit from tight editing and proofreading. ','2021-02-07 13:48:30','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('97','30','','4298','While the research title looks relevant since Lake Lanao and its watershed are considered lifeblood for economic development and water security, the data and subsequent discussion are grossly insufficient to merit approval for scientific publication. Should the author pursue an interest on this direction, a good start would be the use of Lanao Lake Masterplan report as basic reference','2021-02-07 16:34:45','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('98','38','','5737','Consider the reverse and top view of the colony characteristics of the fungal isolates. The level of significance was not specified. Agar block method is used for the purification of fungal isolates. Streaking is used for the purification of bacteria. Waste disposal was not mentioned in the methodology. Add the micrometer image along with the images.  ','2021-02-07 19:34:16','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('100','55','','4050','','2021-02-08 08:43:39','_sk');
INSERT IGNORE INTO tbltracking VALUES('101','38','','5272','The technical soundness of the methodology must be complete and consistent, hence these observations must be addressed:

1. did you use any positive and negative control? without these controls, the experimental procedure must be reconsidered.

2. did the remaining 116 fungal isolates have zero ZOI for both bacteria? if NOT, what was your basis /criteria to say that only these 10 exhibited antibiosis? (please submit attachment for the ZOI of the other 116 fungal isolates for verification purposes).

3. how were the identification of the fungi cross-referenced? did you consult mycologists to affirm the morphological identification? was there any supporting molecular data?

4. Place a descriptive equivalence to the measured ZOI. What is the range of ZOI in order for you to say that the bacteria is (a) resistant, (b) intermediate, or (c) susceptible to the fungal isolate test organisms.','2021-02-08 11:20:52','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('102','27','','5287','Please see attached file. ','2021-02-09 22:06:31','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('103','28','','2061','Overall, the paper, as is, is not acceptable for publication. It needs major rewriting to follow the format of a manuscript, not tabulating the materials used, objectives, conclusions, and acknowledgements, unless this is what the journal required. I checked but can\'t find detailed guidelines for manuscript submission. The method was not clear. Mere observation in the market does not give any information. Interviews with catchers were done, but results were not discussed. Were there questionnaires? What are the profiles of the respondents? Indices were determined, but not a single formula/equation was presented. English must be corrected. Some sentences are incoherent. This paper needs to be corrected first by a technical writer prior to submission for reconsideration in a journal.','2021-02-10 00:40:46','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('107','25','','352','','2021-02-10 16:43:35','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('108','59','','8189','','2021-02-11 09:22:13','_sk');
INSERT IGNORE INTO tbltracking VALUES('109','25','','178','Please refer comments in the attached paper.','2021-02-12 23:14:06','_sk_r');



CREATE TABLE `tblusers` (
  `row_id` int(11) NOT NULL AUTO_INCREMENT,
  `usr_id` varchar(64) DEFAULT NULL,
  `usr_username` char(64) NOT NULL,
  `usr_password` char(128) NOT NULL,
  `usr_email` char(64) DEFAULT NULL,
  `usr_contact` char(64) DEFAULT NULL,
  `usr_desc` char(32) NOT NULL,
  `usr_role` int(11) DEFAULT NULL,
  `usr_status` int(2) NOT NULL,
  `usr_login_time` char(64) DEFAULT NULL,
  `usr_logout_time` char(64) DEFAULT NULL,
  `usr_dp` varchar(255) DEFAULT NULL,
  `usr_sys_acc` int(1) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` char(64) DEFAULT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

INSERT IGNORE INTO tblusers VALUES('7','7','superadmin','$2y$10$ZYeAWhc4ls4Ts0CDv9Gns.gA.1sw1hC/PKlvyxFUxN4y1L7YqM0DG','test@mail.com','999999','Super Admin','8','1','2021-06-30 11:16:00','2021-06-30 11:15:56','','3','2018-11-26 13:56:10','');
INSERT IGNORE INTO tblusers VALUES('77','SA530','mariaelena.talingdan@nrcp.dost.gov.ph','$2y$10$HDiNLieMDNKGmVaZhql41u5HL.1JbWAkEITGe/cvsqS6VIsCsQ0Lm','','00000000','Managing Editor','3','0','','','','3','2019-09-05 15:06:27','');
INSERT IGNORE INTO tblusers VALUES('78','SA994','lanie.manalo@nrcp.dost.gov.ph','$2y$10$gDVB9KFFmZcldYjQo4X0s.xyX0JN3rbK4m2mi4vILxWpbZLH2gYy2','','00000000','Managing Editor','3','0','','','','3','2019-09-05 15:07:20','');
INSERT IGNORE INTO tblusers VALUES('79','SAff000e0321d1b5d08691fce9ac4d1733','tester@test.com','$2y$10$pia4G.X3bMpej3WKj31SBO5zk1wO5umMcUJmxyHkQ8US/2psYDixm','','','Managing Editor','3','0','','','','3','2019-10-11 14:17:02','');
INSERT IGNORE INTO tblusers VALUES('80','SA5b0bdc47795ce62fe17cff527e5abe0d','dev@dev.com','$2y$10$mSrL6PLwcuoDjV97wPjvK.u0meqAkev00oxQv6czrHgbqeqQYUH2W','','','Managing Editor','3','0','','','','3','2019-10-16 08:49:05','');
INSERT IGNORE INTO tblusers VALUES('81','SA37ecb9a66c7a60372c3616d28de73b13','val.zabala@nrcp.dost.gov.ph','$2y$10$GdtHTNVi5kgvb4Opsy32Ce05jxqknKpfvO7pTK/fbSLKjMK8p0jDe','','','Manager','6','0','','','','1','2020-06-16 09:14:12','');
INSERT IGNORE INTO tblusers VALUES('85','SA6bb9f8987cb2a9f7594cf5c23ae54626','comm@test.com','$2y$10$2fT/HXngkKRxuBTLejJSQeYRW0fEz5.K3BeA6JRnOC.QdxEss8cki','','','Committee','9','0','','','','2','2020-09-01 10:45:17','');
INSERT IGNORE INTO tblusers VALUES('90','4609','eleanor.austria@adamson.edu.ph','$2y$10$6AX9usbqBJacmVjqV9E0ruTaMki3m5ZuQRFrHN0sPn1BN429mUVQC','','','Reviewer','5','0','','','','2','2021-01-21 13:47:09','');
INSERT IGNORE INTO tblusers VALUES('91','4729','walag.angelo@gmail.com','$2y$10$JhXpRXoRyxMm/.qlsAYoo.VVlugVj8O9bKdrz3NUn2EN4yheBeHIy','','','Reviewer','5','0','','','','2','2021-01-21 14:01:53','');
INSERT IGNORE INTO tblusers VALUES('92','2852','rspapa@ust.edu.ph','$2y$10$B7sVd2wQaRJXOrbJx1WYTuvp0mqzKIwQXNZDwFbkmaje2gBXZ8Vqi','','','Reviewer','5','0','','','','2','2021-01-21 14:06:09','');
INSERT IGNORE INTO tblusers VALUES('93','1391','vbella@up.edu.ph','$2y$10$0UNJz4uR1ZJ9c6tiNfQhFeZEnwFF9fCtwl4wxEyP/5hDm73w760u2','','','Reviewer','5','0','','','','2','2021-01-21 14:13:21','');
INSERT IGNORE INTO tblusers VALUES('94','286','edarguelles@up.edu.ph','$2y$10$kZ0uOpajdotrDq/Y8rfsfeVnv5rvniGQTSgMASv/qr/q.ICw8xpqu','','','Reviewer','5','0','','','','2','2021-01-21 14:13:40','');
INSERT IGNORE INTO tblusers VALUES('95','4751','francisargente@psu.edu.ph','$2y$10$ibKnJXzFxU6i8.3/NDKwGOyAKgALwNSSqPVs/XjJ7gJcG8s36Kcgu','','','Reviewer','5','0','','','','2','2021-01-21 14:31:41','2021-01-31 19:44:45');
INSERT IGNORE INTO tblusers VALUES('96','6039','superjerry27@gmail.com','$2y$10$L3xA4lbG1M4LKR2BwPaFue19i.i07wfClK7CwLWa2XwKfQaRJ0.kG','','','Reviewer','5','0','','','','2','2021-01-21 14:48:19','');
INSERT IGNORE INTO tblusers VALUES('97','1929','rcjoshi4@gmail.com','$2y$10$Yr4KUUvevl7gDI7BABnFMORHL.4zu1NK.Gz/7bKTatW6H/4kt7IUS','','','Reviewer','5','0','','','','2','2021-01-21 14:57:12','');
INSERT IGNORE INTO tblusers VALUES('98','5082','pjbramirez@yahoo.com','$2y$10$I/.Z.Rcz1pQ2wjoVxyzbg.rXcGsXMYmyzv20nATJmmyTmBEc7yq6e','','','Reviewer','5','0','','','','2','2021-01-21 15:22:02','');
INSERT IGNORE INTO tblusers VALUES('99','431','zgbaoanan@up.edu.ph','$2y$10$NEK8GvEbKTI1VN8CZ7xnJ.nTCc9QGcSk8EFhc5876kNoHUAkDYSJu','','','Reviewer','5','0','','','','2','2021-01-21 16:36:09','');
INSERT IGNORE INTO tblusers VALUES('100','6559','abnerbucol2013@gmail.com','$2y$10$QDJNiz2mmJVp0/vlIci9pOO3x5WYEjYPlvVLaJ8fhoQH7dEcBwI7G','','','Reviewer','5','0','','','','2','2021-01-21 18:58:37','');
INSERT IGNORE INTO tblusers VALUES('101','6186','sonydeguzman@gmail.com','$2y$10$HLWrNcM8C2tviBE0JpOdL.GzoWDhTNITYqLTuoGOg0TuIqye/SyxO','','','Reviewer','5','0','','','','2','2021-01-22 03:25:32','');
INSERT IGNORE INTO tblusers VALUES('102','938','cecillegc@gmail.com','$2y$10$wwqfiySEY/qiv1KssPKS6uy6gSeHzkAQZD0aWsjijL1YdL7aQ9VGK','','','Reviewer','5','0','','','','2','2021-01-22 10:47:01','');
INSERT IGNORE INTO tblusers VALUES('103','1378','mreguia@seafdec.org.ph','$2y$10$Ps8bo78QfbUe6xPbniEaTuvRM0FxgXLRexrXUdR4kA4Tj6nyrPnXm','','','Reviewer','5','0','','','','2','2021-01-22 11:54:38','');
INSERT IGNORE INTO tblusers VALUES('104','1097','radixquad@yahoo.com','$2y$10$5z/z3YHIy4GfjvVXPTM1.u5e4lnr6NPI6/3d8jpSh1NWv/Cl5xQaW','','','Reviewer','5','0','','','','2','2021-01-23 15:42:10','');
INSERT IGNORE INTO tblusers VALUES('105','1138','avdelara@yahoo.com','$2y$10$gSox37XOkZTs7A/.BY739up8lxIiAh7D9aMtQWGIn.5PPZzciqG6q','','','Reviewer','5','0','','','','2','2021-01-23 19:10:09','');
INSERT IGNORE INTO tblusers VALUES('106','2850','ddpapa@ust.edu.ph','$2y$10$FI7MOIlRjG/n1FFD6p2H/enuVuu6.magIF7ZEAcHfYNIj0ZLoJQMK','','','Reviewer','5','0','','','','2','2021-01-23 19:54:20','');
INSERT IGNORE INTO tblusers VALUES('107','253','mcaralar@gmail.com','$2y$10$LtG0FRpBX.aJEDjohRT6PeQK7eSXbtDBh0CGWJfGGkVBulIQZI.QS','','','Reviewer','5','0','','','','2','2021-01-24 09:29:33','');
INSERT IGNORE INTO tblusers VALUES('108','390','fnbaleta19@yahoo.com','$2y$10$jcP9fZvCFxRZBYke66UZ.OR./fx5p3c2eVVIuEgWZRhQyK3CMTU8a','','','Reviewer','5','0','','','','2','2021-01-24 10:27:10','');
INSERT IGNORE INTO tblusers VALUES('109','4298','orly_isu@yahoo.com','$2y$10$TPoFgALusHS9/Yrmj4QkZ.NPp4mnpPnByi0oeBnuZQjFZb/DMSu1e','','','Reviewer','5','0','','','','2','2021-02-05 09:30:31','');
INSERT IGNORE INTO tblusers VALUES('110','972','marknellcorpuz@yahoo.com','$2y$10$qQsg5cZlY6c9onDqwcrbG.RpygWvTkVMdUAgtkycykjAYabIozJWe','','','Reviewer','5','0','','','','2','2021-02-05 10:05:28','');
INSERT IGNORE INTO tblusers VALUES('111','3629','gqtiii@yahoo.com','$2y$10$TjoM7OecXjTOnNPNov1WvOCzQH8lWP1vq2JcWtuLRTc.FY.Rqc1FG','','','Reviewer','5','0','','','','2','2021-02-05 12:02:05','');
INSERT IGNORE INTO tblusers VALUES('112','820','sscastaneda.sc@gmail.com','$2y$10$azuBx.qQ6MVwuduFAjifxu.LyfKk5g5RF1FYFBnw854j4tMG1/ZeS','','','Reviewer','5','0','','','','2','2021-02-05 16:54:37','');
INSERT IGNORE INTO tblusers VALUES('113','6802','marlonvelvira@gmail.com','$2y$10$PVD3e20I7CV4534UhNhHkuKn3naMfqNVa4zhGEc9kR0DZcmlahjSa','','','Reviewer','5','0','','','','2','2021-02-07 10:27:14','');
INSERT IGNORE INTO tblusers VALUES('114','52','dev_adao@yahoo.com','$2y$10$LelyXNfJsQYoKxw9R1VuEeDI0dnILvKrW.dDnVeTbzhwl4Q2eyxKG','','','Reviewer','5','0','','','','2','2021-02-07 11:12:06','');
INSERT IGNORE INTO tblusers VALUES('115','5287','mojenagonzales@yahoo.com','$2y$10$/RdhdHDMly03q9IRmyKcK.BKQR7YVCQXSk0RbJEnjQOOXuuvDwGP6','','','Reviewer','5','0','','','','2','2021-02-07 11:25:27','');
INSERT IGNORE INTO tblusers VALUES('116','104','psalbano@ust.edu.ph','$2y$10$f0Urzxlr1AZIrsxNp41iGeVhL/yFolUWW30geI/G7hWgxuhs6d6Am','','','Reviewer','5','0','','','','2','2021-02-07 11:27:55','');
INSERT IGNORE INTO tblusers VALUES('117','1951','joycejumawan@gmail.com','$2y$10$0tCTi.KaAoTw09BR4zZnFOB0KjLTjsKDzAVbmsPjdMnXb9BpbEEWe','','','Reviewer','5','0','','','','2','2021-02-07 11:28:40','');
INSERT IGNORE INTO tblusers VALUES('118','1146','mpdeleon1@up.edu.ph','$2y$10$jzYAHU1ZnpBf5KicmuI5iOi.6L.fdrnjKE7CIESyS/G7DckIuVPxO','','','Reviewer','5','0','','','','2','2021-02-07 12:41:40','');
INSERT IGNORE INTO tblusers VALUES('119','736',' willbellcampos@gmail.com','$2y$10$6QTGuLMw9X80noxP6ZJrLuuRNiVItsePe2Q/cnRhPBO9AVDVTHRvq','','','Reviewer','5','0','','','','2','2021-02-07 12:49:13','');
INSERT IGNORE INTO tblusers VALUES('120','866','mcayetano@iesm.upd.edu.ph','$2y$10$PGCu6YsozYuYIkjMO4RoteHKF6MkUfEHTZ7T8.JBaHAjOgvti7jMC','','','Reviewer','5','0','','','','2','2021-02-07 15:48:10','');
INSERT IGNORE INTO tblusers VALUES('121','5167','hmonteclaro@gmail.com','$2y$10$467WvDlnW5uC8wbSZMPequuvrWKfTHo/XXTELd7.YnBLiiMmOLwji','','','Reviewer','5','0','','','','2','2021-02-07 18:02:55','2021-02-07 18:06:25');
INSERT IGNORE INTO tblusers VALUES('122','352','mobaclig@stlukes.com.ph','$2y$10$PXc9lKFrxq5qrQGpbtSRoeZ9KTuL3m2OM1K/BsXvOglIK1Aj8Ji8m','','','Reviewer','5','0','','','','2','2021-02-07 18:04:38','');
INSERT IGNORE INTO tblusers VALUES('123','5737','reygtantiado@yahoo.com','$2y$10$UU85Fhkmcb07.jXGnRLbIeh14P22MiylBY2/5WhBVA0GDbZWEIuvW','','','Reviewer','5','0','','','','2','2021-02-07 19:24:16','');
INSERT IGNORE INTO tblusers VALUES('124','178','loualvarez14@gmail.com','$2y$10$PI8Wc2LltIv1q4LoZY56fe0mihcB/YH9UGZLPkzy8Tz8BFsmOo9p6','','','Reviewer','5','0','','','','2','2021-02-07 19:31:46','');
INSERT IGNORE INTO tblusers VALUES('125','460','supachai.basit@eac.edu.ph','$2y$10$7Vsh3wf5/tEjRfkiSmiL1OellB8fmonZQEsZpZJDYKFD.Q2M8Ayb6','','','Reviewer','5','0','','','','2','2021-02-08 07:08:31','');
INSERT IGNORE INTO tblusers VALUES('126','2061','jlebata@seafdec.org.ph','$2y$10$yiro2xFexzieRR.AMsVnMe6QvDU4Oi2AsxIhF7YWh4lrJLMJQjvqi','','','Reviewer','5','0','','','','2','2021-02-08 09:10:23','');
INSERT IGNORE INTO tblusers VALUES('127','5272','jaban@dmmmsu.edu.ph','$2y$10$rOS4cKsFfkYSwfqpWSrSIuusd9mMyhsn23UfODrA/to0qXZ3NXqeK','','','Reviewer','5','0','','','','2','2021-02-08 10:16:10','');
INSERT IGNORE INTO tblusers VALUES('128','SAa942372b7357a3a87cfdb1e44337aa4d','gerard_balde@yahoo.com','$2y$10$tltmCjGfuVJ../Sp4eDK9uEBSM4CqE8AY5orCJDsgBNwmOS1qnXC6','','','Managing Editor','3','0','','','','2','2021-02-16 13:18:44','');

