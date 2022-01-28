

CREATE TABLE `tblcoauthors` (
  `coa_id` int(11) NOT NULL AUTO_INCREMENT,
  `coa_name` char(64) DEFAULT NULL,
  `coa_affiliation` text DEFAULT NULL,
  `coa_email` char(64) DEFAULT NULL,
  `coa_man_id` varchar(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `last_updated` char(64) DEFAULT NULL,
  PRIMARY KEY (`coa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

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
INSERT IGNORE INTO tblcoauthors VALUES('40','DANNY E. CARABIO','Cebu Technological University','danny.carabio@ctu.edu.ph','68','2021-02-19 09:27:25','');
INSERT IGNORE INTO tblcoauthors VALUES('41','Mae Angelie C. Paradela','University of the Philippines Los Banos','mcparadela@up.edu.ph','72','2021-03-05 10:40:11','');
INSERT IGNORE INTO tblcoauthors VALUES('42','Angelique C. Songco','Tubbataha Management Office','tmo@tubbatahareefs.org','72','2021-03-05 10:40:11','');
INSERT IGNORE INTO tblcoauthors VALUES('43','Maria Retchie C. Pagliawan','Tubbataha Management Office','tmo@tubbatahareefs.org','72','2021-03-05 10:40:11','');
INSERT IGNORE INTO tblcoauthors VALUES('44','Rowell C. Alarcon','Tubbataha Management Office','tmo@tubbatahareefs.org','72','2021-03-05 10:40:11','');
INSERT IGNORE INTO tblcoauthors VALUES('45','Mudjekeewis D. Santos','Department of Agriculture','mudjiesantos@yahoo.com','72','2021-03-05 10:40:11','');
INSERT IGNORE INTO tblcoauthors VALUES('46','DANNY E. CARABIO','Cebu Technological University','danny.carabio@ctu.edu.ph','73','2021-03-08 11:10:28','');
INSERT IGNORE INTO tblcoauthors VALUES('47','VALERIE U. PASCUAL','Cebu Technological University','valerie.pascual@ctu.edu.ph','73','2021-03-08 11:10:28','');
INSERT IGNORE INTO tblcoauthors VALUES('48','NONNA FATIMA H. ABELLO','Cebu Technological University','nonnafatima.abello@ctu.edu.ph','73','2021-03-08 11:10:28','');
INSERT IGNORE INTO tblcoauthors VALUES('49','EDIVINE A. REMEDIOS','Cebu Technological University','edivine.remedios@ctu.edu.ph','73','2021-03-08 11:10:28','');
INSERT IGNORE INTO tblcoauthors VALUES('50','Jose Arsenio J. Salandanan','University of Santo Tomas','jjsalandanan@ust.edu.ph','76','2021-03-08 23:50:22','');
INSERT IGNORE INTO tblcoauthors VALUES('51','Frederick C. Aniga','Southern Leyte State University','frederickcaniga@yahoo.com','79','2021-03-25 04:22:36','');
INSERT IGNORE INTO tblcoauthors VALUES('52','Mark Daniel G. De Luna','University of the Philippines Diliman','mgdeluna@gmail.com','83','2021-05-07 18:03:33','');
INSERT IGNORE INTO tblcoauthors VALUES('53','LEO P. LARDERA','Cotabato State University','','85','2021-06-11 16:58:43','');
INSERT IGNORE INTO tblcoauthors VALUES('54','NAIMA L. TOMAS','Cotabato State University','','86','2021-06-11 17:06:40','');
INSERT IGNORE INTO tblcoauthors VALUES('55','Pearl B. Sanchez','UPLB','pbsanchez@uplb.edu.ph','88','2021-06-22 12:17:08','');
INSERT IGNORE INTO tblcoauthors VALUES('56','Jane C. Tejero','Surigao Del Sur State University-Lianga Campus College of Teachers Education','','90','2021-06-26 11:00:46','');
INSERT IGNORE INTO tblcoauthors VALUES('57','Dinah Palmera Nadera, M.D.','Ateneo School of Medicine and Public Health Center for Research and Innovation','dnadera@ateneo.edu','92','2021-06-27 18:31:40','');
INSERT IGNORE INTO tblcoauthors VALUES('58','Miguel Silan','Psychosocial Support and Children\'s Rights Resource Center','miguelsilan@gmail.com','92','2021-06-27 18:31:40','');
INSERT IGNORE INTO tblcoauthors VALUES('59','Maria Clarissa Coronel','Ateneo School of Medicine and Public Health Center for Research and Innovation','clarissacoronel@gmail.com','92','2021-06-27 18:31:40','');
INSERT IGNORE INTO tblcoauthors VALUES('60','Dhan Lawrenz G. De Leon','Psychosocial Support and Children\'s Rights Resource Center','dhanlawrenzdeleon@gmail.com','92','2021-06-27 18:31:40','');
INSERT IGNORE INTO tblcoauthors VALUES('61','Jacqueline Padilla','San Pedro College ','','93','2021-07-12 18:31:57','');
INSERT IGNORE INTO tblcoauthors VALUES('62','Erwin Martinez Faller','San Pedro College','erwinfaller1007@gmail.com','94','2021-07-12 18:39:11','');
INSERT IGNORE INTO tblcoauthors VALUES('63','Jonathan C. Prado','Rizal Technological University','iamprado07@gmail.com','98','2021-08-01 11:31:06','');
INSERT IGNORE INTO tblcoauthors VALUES('64','Henry A. Davalos, EdD','San Felipe Neri Catholic School','','98','2021-08-01 11:31:06','');
INSERT IGNORE INTO tblcoauthors VALUES('65','Cherry Amor Dizon, EdD','New Era University','','99','2021-08-01 11:41:17','');
INSERT IGNORE INTO tblcoauthors VALUES('66','Fitzgerald Liclican Fabelico','Nueva Vizcaya State University Bambang Campus','fitzgeraldfabelico@yahoo.com','101','2021-08-02 20:02:22','');
INSERT IGNORE INTO tblcoauthors VALUES('67','Fitzgerald Liclican Fabelico','Nueva Vizcaya State University Bambang Campus','fitzgeraldfabelico@yahoo.com','102','2021-08-02 20:06:14','');
INSERT IGNORE INTO tblcoauthors VALUES('68','Joseph S. Butawan/ Curriculum and Instructions/Non Member','Bulihan Integrated National High School - Department of Education','josephsybutawan@gmail.com','103','2021-08-02 20:38:04','');
INSERT IGNORE INTO tblcoauthors VALUES('69','Odezza Pangilinan','Nueva Ecija University of Science and Technology','odezzapangilinan@gmail.com','104','2021-08-04 17:09:21','');
INSERT IGNORE INTO tblcoauthors VALUES('70','Remuel Isaac Malapitan Vitto','De La Salle University Manila','remuelvitto@gmail.com','110','2021-08-18 10:51:11','');
INSERT IGNORE INTO tblcoauthors VALUES('71','Michelle Tiamzon Natividad','De La Salle University','michelle.natividad@dlsu.edu.ph','110','2021-08-18 10:51:12','');
INSERT IGNORE INTO tblcoauthors VALUES('72','Remuel Isaac Malapitan Vitto','De La Salle University Manila','remuelvitto@gmail.com','111','2021-08-18 10:56:09','');
INSERT IGNORE INTO tblcoauthors VALUES('73','Marissa G. Noel','De La Salle University Manila','','111','2021-08-18 10:56:09','');
INSERT IGNORE INTO tblcoauthors VALUES('74','Katja T. Palisoc','De La Salle University Manila','','111','2021-08-18 10:56:09','');
INSERT IGNORE INTO tblcoauthors VALUES('75','Michelle Tiamzon Natividad','De La Salle University','michelle.natividad@dlsu.edu.ph','111','2021-08-18 10:56:09','');
INSERT IGNORE INTO tblcoauthors VALUES('76','Alvin Dumas, MAED','Department of Education, Marcelo Green Elementary School','alvin.dumas@deped.govl.ph','117','2021-08-26 12:50:41','');
INSERT IGNORE INTO tblcoauthors VALUES('77','Manuel B Garcia','FEU Institute of Technology','mbgarcia@feutech.edu.ph','118','2021-08-29 08:40:22','');
INSERT IGNORE INTO tblcoauthors VALUES('78','Geliza Marie I Alcober','FEU Institute of Technology','gialcober@feutech.edu.ph','118','2021-08-29 08:40:22','');
INSERT IGNORE INTO tblcoauthors VALUES('79','Marie Paz Escaño Morales','Philippine Normal University','morales.mpe@pnu.edu.ph','126','2021-09-03 06:30:04','');
INSERT IGNORE INTO tblcoauthors VALUES('80','Rodney Tabalbag Cajimat','Nueva Vizcaya State University','rodney_cajimat@dlsu.edu.ph','126','2021-09-03 06:30:04','');
INSERT IGNORE INTO tblcoauthors VALUES('81','Minie Rose Caramoan Lapinid','De La Salle University','minie.lapinid@dlsu.edu.ph','126','2021-09-03 06:30:04','');
INSERT IGNORE INTO tblcoauthors VALUES('82','Maricar Sison Prudente','De La Salle University','maricar.prudente@dlsu.edu.ph','126','2021-09-03 06:30:04','');
INSERT IGNORE INTO tblcoauthors VALUES('83','Rochelle Irene Garcia Lucas','De La Salle University','rochelle.lucas@dlsu.edu.ph','126','2021-09-03 06:30:04','');
INSERT IGNORE INTO tblcoauthors VALUES('84','Jayson A. Peñafiel','Department of Education','jayson.penafiel@deped.gov.ph','126','2021-09-03 06:30:04','');
INSERT IGNORE INTO tblcoauthors VALUES('85','Ruel Atendido Avilla','Philippine Normal University','avilla.ra@pnu.edu.ph','126','2021-09-03 06:30:04','');
INSERT IGNORE INTO tblcoauthors VALUES('86','Josephine Luz Sampang De Leon - Pineda','Don Honorio Ventura Technological State University','joshadeleon@gmail.com','126','2021-09-03 06:30:04','');
INSERT IGNORE INTO tblcoauthors VALUES('87','Voltaire Mallari Mistades','De La Salle University','voltaire.mistades@dlsu.edu.ph','126','2021-09-03 06:30:04','');
INSERT IGNORE INTO tblcoauthors VALUES('88','Socorro Echevarria Aguja','De La Salle Araneta University','socorro.aguja@dlsau.edu.ph','126','2021-09-03 06:30:04','');
INSERT IGNORE INTO tblcoauthors VALUES('89','Honelly Mae Segui Cascolan','Pangasinan State University','honellymae@gmail.com','126','2021-09-03 06:30:04','');
INSERT IGNORE INTO tblcoauthors VALUES('90','Richard DLC. Gonzales','Inno-Change International Consultants, Inc.','r-gonzales@consultant.com','126','2021-09-03 06:30:04','');
INSERT IGNORE INTO tblcoauthors VALUES('91','Celia M. Ilanan','Philippine Normal University','ilanan.cm@pnu.edu.ph','126','2021-09-03 06:30:04','');
INSERT IGNORE INTO tblcoauthors VALUES('92','Lovely Airein D. Albania','Philippine Normal University','deguzman.lam@pnu.edu.ph','126','2021-09-03 06:30:04','');
INSERT IGNORE INTO tblcoauthors VALUES('93','Maria Ruth M. Regalado','Philippine Normal University','regalado.mrm@pnu.edu.ph','126','2021-09-03 06:30:04','');
INSERT IGNORE INTO tblcoauthors VALUES('94','Tinio, Crusty Estoque','Department of Forest Biological Sciences, College of Forestry and Natural Resources, University of the Philippines Los Baños','cetinio@up.edu.ph','132','2021-10-07 11:31:37','');
INSERT IGNORE INTO tblcoauthors VALUES('95','Combalicer, Marilyn Sabalvaro','Department of Forest Biological Sciences, College of Forestry and Natural Resources, University of the Philippines Los Baños','mscombalicer@up.edu.ph','132','2021-10-07 11:31:37','');
INSERT IGNORE INTO tblcoauthors VALUES('96','Lerma San Jose Maldia','Department of Forest Biological Sciences, College of Forestry and Natural Resources, University of the Philippines Los Baños','lsmaldia@up.edu.ph','132','2021-10-07 11:31:37','');
INSERT IGNORE INTO tblcoauthors VALUES('97','Zypher Jude G. Regencia','Department of Clinical Epidemiology, College of Medicine, University of the Philippines-Manila, City of Manila, Philippines','zgregencia@up.edu.ph','133','2021-10-15 09:30:48','');
INSERT IGNORE INTO tblcoauthors VALUES('98','Godofreda V. Dalmacion','Department of Clinical Epidemiology, College of Medicine, University of the Philippines-Manila, City of Manila, Philippines','gvdalmacion1@up.edu.ph','133','2021-10-15 09:30:48','');
INSERT IGNORE INTO tblcoauthors VALUES('99','Antonio D. Ligsay','The Graduate School & College of Science, University of Santo Tomas, España Blvd., Manila 1008 Philippines','adligsay@ust.edu.ph','133','2021-10-15 09:30:48','');
INSERT IGNORE INTO tblcoauthors VALUES('100','Crystal Amiel M. Estrada','University of the Philippines Manila','cmestrada@up.edu.ph','136','2021-11-05 15:42:58','');
INSERT IGNORE INTO tblcoauthors VALUES('101','Marian Fe Theresa C. Lomboy','University of the Philippines Manila','mclomboy@up.edu.ph','136','2021-11-05 15:42:58','');
INSERT IGNORE INTO tblcoauthors VALUES('102','Evalyn A. Roxas','University of the Philippines Manila','earoxas1@up.edu.ph','136','2021-11-05 15:42:58','');
INSERT IGNORE INTO tblcoauthors VALUES('103','Buenalyn Teresita M. Ramos-Mortel','University of the Philippines Manila','bmramosmortel@up.edu.ph','136','2021-11-05 15:42:58','');
INSERT IGNORE INTO tblcoauthors VALUES('104','Maylin C. Palatino','University of the Philippines Manila','maylin_palatino@alumni.brown.edu','136','2021-11-05 15:42:58','');
INSERT IGNORE INTO tblcoauthors VALUES('105','SPINA, FRANCESCO','Department of Space Engineering, Luleå University of Technology, Rymdcampus E10, 98128 Kiruna, Sweden,','aerospina@gmail.com','137','2021-11-11 00:16:48','');
INSERT IGNORE INTO tblcoauthors VALUES('106','WADA, KENSUKE','Department of Physics, Tokyo Institute of Technology, 152-8550 Tokyo, Japan','dkbnw@gmail.com','137','2021-11-11 00:16:48','');
INSERT IGNORE INTO tblcoauthors VALUES('107','AGUILAR, ROBERTO','Department of Space and Engineering Systems, Skolkovo Institute of Science and Technology, 143026 Moscow, Russian Federation','roberto.aguilar@ditspacecr.com','137','2021-11-11 00:16:48','');
INSERT IGNORE INTO tblcoauthors VALUES('108','YOKOYA, RYUNOSUKE','Sony Corporation, Minato-ku, 108-0075 Tokyo, Japan','ryunosuke.yokoya@sony.com','137','2021-11-11 00:16:48','');
INSERT IGNORE INTO tblcoauthors VALUES('109','SUGAYA, MAMI','Remote Sensing Technology Center of Japan, Minato-ku, 105-0001 Tokyo, Japan','sugaya_mami@restec.or.jp','137','2021-11-11 00:16:48','');
INSERT IGNORE INTO tblcoauthors VALUES('110','KIMURA, KOSHI','Seibu Holdings Inc., 1-11-1 Kusunokidai, Tokorozama, Saitama 359-8510, Japan','koshi0220@gmail.com','137','2021-11-11 00:16:48','');
INSERT IGNORE INTO tblcoauthors VALUES('111','GUO, CHUANZELONG','Auckland University of Technology, 55 Wellesley St. E, 1010 Auckland, New Zealand','longee_guo@hotmail.com','137','2021-11-11 00:16:48','');



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
INSERT IGNORE INTO tblcriterias VALUES('4','','a. Syntax, grammar, and language.','0','','');
INSERT IGNORE INTO tblcriterias VALUES('5','','b. Illustrations, photos, graphs, etc.','0','','');
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT IGNORE INTO tblfeedbacks VALUES('1','3','','3','','158','1','3','2020-11-13 15:18:52','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('2','3','','3','','160','1','3','2020-11-21 06:44:25','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('3','3','very nice
','3','very good service
','161','1','3','2020-11-21 11:01:49','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('4','3','','3','','167','1','3','2020-12-19 12:22:53','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('5','3','','3','','7','1','1','2020-12-19 12:53:48','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('8','3','','3','','171','1','3','2021-01-08 13:08:54','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('11','2','','2','','SA994','1','2','2021-01-16 19:22:55','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('12','3','','3','','SA37ecb9a66c7a60372c3616d28de73b13','1','1','2021-01-21 13:14:13','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('13','3','','3','','SAff000e0321d1b5d08691fce9ac4d1733','1','2','2021-01-26 13:37:54','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('14','3','','3','','175','1','3','2021-01-27 13:50:59','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('15','3','','3','','4751','1','2','2021-01-31 19:35:07','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('16','3','Convenient.','3','Fast.
','178','1','3','2021-02-05 18:12:04','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('17','3','','3','','179','1','3','2021-02-11 01:33:50','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('18','3','','3','','182','1','3','2021-02-15 06:06:05','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('19','3','','3','','183','1','3','2021-02-15 06:09:51','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('20','2','','2','','SAa942372b7357a3a87cfdb1e44337aa4d','1','2','2021-02-16 13:19:26','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('21','2','The same abstract comes up even opening different abstracts, until I refreshed the website. ','3','Overall, I am satisfied. I received the requested paper in my email seconds after submitting my request.  However, the request form has one option of country.  Does that mean that the published researches are exclusive in the Philippines?','185','1','3','2021-02-24 19:59:52','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('22','3','','3','','187','1','3','2021-03-04 10:53:26','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('23','3','','3','','189','1','3','2021-03-05 09:17:00','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('24','3','','3','','6466','1','2','2021-03-09 14:32:25','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('25','3','','3','','52','1','2','2021-03-16 10:09:13','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('26','3','','3','','3657','1','2','2021-03-22 15:34:47','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('27','3','Nice. Thank you','3','Great!





','192','1','3','2021-04-02 15:00:16','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('28','3','No suggestions','3','No suggestions','3339','1','2','2021-04-27 08:57:53','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('29','3','','3','','201','1','3','2021-05-05 13:19:04','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('30','3','','3','','208','1','3','2021-05-07 19:27:06','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('31','3','','3','','214','1','3','2021-05-28 11:05:07','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('32','3','','3','','224','1','3','2021-06-11 13:30:35','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('33','2','','2','','229','1','3','2021-06-14 06:03:07','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('34','3','Sustain','3','','236','1','3','2021-06-22 11:10:37','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('35','3','','3','','237','1','3','2021-06-22 11:13:24','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('36','3','','3','','240','1','3','2021-06-30 15:53:45','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('37','2','','2','','241','1','3','2021-07-01 10:56:49','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('38','2','','2','','242','1','3','2021-07-01 11:07:26','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('39','2','','2','','243','1','3','2021-07-01 11:22:43','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('40','2','','2','','244','1','3','2021-07-01 13:13:52','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('42','3','','3','','246','1','3','2021-07-05 21:02:50','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('43','3','','3','','249','1','3','2021-07-10 07:52:44','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('44','3','','3','','250','1','3','2021-07-10 07:55:41','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('45','3','','3','','251','1','3','2021-07-12 20:19:47','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('46','3','Nice','3','Nice','255','1','3','2021-08-04 11:29:18','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('47','3','','2','Can\'t view abstract ','259','1','3','2021-08-27 10:18:48','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('48','3','','2','Can\'t view abstract ','259','1','3','2021-08-27 10:18:56','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('49','3','','2','Can\'t view abstract ','259','1','3','2021-08-27 10:19:01','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('50','3','','3','','','1','3','2021-10-17 11:55:44','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('51','3','','3','','','1','3','2021-10-17 11:55:49','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('52','2','','2','','268','1','3','2021-10-19 17:59:23','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('53','2','','2','','268','1','3','2021-10-19 17:59:25','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('54','2','','2','','268','1','3','2021-10-19 17:59:26','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('55','2','','2','','268','1','3','2021-10-19 17:59:26','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('56','2','','2','','268','1','3','2021-10-19 17:59:27','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('57','2','','2','','268','1','3','2021-10-19 17:59:27','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('58','2','','2','','268','1','3','2021-10-19 17:59:27','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('59','2','','2','','269','1','3','2021-10-19 18:01:29','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('60','3','Thank you','3','Thank you
','','1','3','2021-10-20 09:16:13','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('61','3','Thank you','3','Thank you
','','1','3','2021-10-20 09:16:18','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('62','3','Thank you','3','Thank you
','','1','3','2021-10-20 09:16:20','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('63','3','Thank you','3','Thank you
','','1','3','2021-10-20 09:16:20','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('64','3','Thank you','3','Thank you
','','1','3','2021-10-20 09:16:28','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('65','3','Thank you','3','Thank you
','','1','3','2021-10-20 09:16:29','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('66','3','Thank you','3','Thank you
','','1','3','2021-10-20 09:16:29','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('67','3','Thank you','3','Thank you
','','1','3','2021-10-20 09:16:29','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('68','3','Thank you','3','Thank you
','','1','3','2021-10-20 09:16:40','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('69','3','Thank you','3','Thank you
','','1','3','2021-10-20 09:16:41','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('70','3','Thank you','3','Thank you
My experience using the platform is good.','','1','3','2021-10-20 09:17:04','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('71','3','Thank you','3','Thank you
My experience using the platform is good.','','1','3','2021-10-20 09:19:41','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('72','3','Thank you','3','Thank you
My experience using the platform is good.','','1','3','2021-10-20 09:19:42','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('73','3','','3','','','1','3','2021-11-02 15:20:55','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('74','3','','3','','274','1','3','2021-11-02 15:26:51','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('75','2','','2','','','1','3','2021-11-04 15:53:48','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('76','2','','2','','','1','3','2021-11-04 15:53:52','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('77','2','','2','','','1','3','2021-11-04 15:54:22','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('78','2','it did not sent to my email','2','not sent to my email','','1','3','2021-11-04 15:54:45','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('79','2','it did not sent to my email','2','not sent to my email','','1','3','2021-11-04 15:54:53','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('80','3','','3','','','1','3','2021-11-06 22:01:39','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('81','3','','3','','','1','3','2021-11-06 22:06:14','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('82','3','','3','','','1','3','2021-11-22 11:02:37','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('83','3','','3','','','1','3','2021-12-11 00:00:09','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('84','3','','3','','','1','3','2021-12-11 00:00:11','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('85','3','','3','','','1','3','2021-12-11 00:00:12','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('86','3','','3','','','1','3','2021-12-11 00:00:14','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('87','3','','3','','','1','3','2021-12-11 00:00:15','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('88','3','','3','','','1','3','2021-12-11 00:00:15','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('89','3','','3','','','1','3','2021-12-11 00:00:15','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('90','3','It\'s good','3','good, but it can be better
','','1','3','2021-12-11 00:00:37','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('91','3','It\'s good','3','good, but it can be better
','','1','3','2021-12-11 00:01:02','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('92','3','It\'s good','3','good, but it can be better
','','1','3','2021-12-11 00:01:06','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('93','3','It\'s good','3','good, but it can be better
','','1','3','2021-12-11 00:01:06','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('94','3','','3','','285','1','3','2021-12-11 00:02:28','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('95','0','','0','','','1','3','2021-12-17 01:49:34','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('96','0','','0','','','1','3','2021-12-17 01:50:00','0000-00-00 00:00:00');
INSERT IGNORE INTO tblfeedbacks VALUES('97','3','','3','','SA6bb9f8987cb2a9f7594cf5c23ae54626','1','2','2022-01-10 14:50:35','');



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
  `log_action` char(128) NOT NULL,
  `log_insert_id` char(64) DEFAULT NULL,
  `log_user_role` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `notif_open` int(1) DEFAULT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB AUTO_INCREMENT=988 DEFAULT CHARSET=utf8;

INSERT IGNORE INTO tbllogs VALUES('1','7','logout','0','8','2021-01-15 12:00:14','1');
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
INSERT IGNORE INTO tbllogs VALUES('38','SA994','added reviewers for','29','3','2021-01-21 13:44:21','1');
INSERT IGNORE INTO tbllogs VALUES('39','SA994','added reviewers for','29','3','2021-01-21 13:44:21','1');
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
INSERT IGNORE INTO tbllogs VALUES('55','SA994','added reviewers for','26','3','2021-01-21 14:00:43','1');
INSERT IGNORE INTO tbllogs VALUES('56','4729','accepted review request for','26','5','2021-01-21 14:01:53','0');
INSERT IGNORE INTO tbllogs VALUES('57','4729','login','0','5','2021-01-21 14:03:51','0');
INSERT IGNORE INTO tbllogs VALUES('58','2852','accepted review request for','29','5','2021-01-21 14:06:09','0');
INSERT IGNORE INTO tbllogs VALUES('59','4729','reviewed','26','5','2021-01-21 14:08:08','1');
INSERT IGNORE INTO tbllogs VALUES('60','1391','accepted review request for','30','5','2021-01-21 14:13:21','0');
INSERT IGNORE INTO tbllogs VALUES('61','286','accepted review request for','25','5','2021-01-21 14:13:40','0');
INSERT IGNORE INTO tbllogs VALUES('62','4751','accepted review request for','24','5','2021-01-21 14:31:41','1');
INSERT IGNORE INTO tbllogs VALUES('63','4751','login','0','5','2021-01-21 14:33:23','1');
INSERT IGNORE INTO tbllogs VALUES('64','4751','logout','0','5','2021-01-21 14:34:35','0');
INSERT IGNORE INTO tbllogs VALUES('65','SAff000e0321d1b5d08691fce9ac4d1733','login','0','3','2021-01-21 14:44:11','0');
INSERT IGNORE INTO tbllogs VALUES('66','SAff000e0321d1b5d08691fce9ac4d1733','logout','0','3','2021-01-21 14:44:26','0');
INSERT IGNORE INTO tbllogs VALUES('67','SAff000e0321d1b5d08691fce9ac4d1733','login','0','3','2021-01-21 14:44:35','1');
INSERT IGNORE INTO tbllogs VALUES('68','6039','accepted review request for','29','5','2021-01-21 14:48:19','1');
INSERT IGNORE INTO tbllogs VALUES('69','SAff000e0321d1b5d08691fce9ac4d1733','logout','0','3','2021-01-21 14:48:30','1');
INSERT IGNORE INTO tbllogs VALUES('70','1929','accepted review request for','28','5','2021-01-21 14:57:12','0');
INSERT IGNORE INTO tbllogs VALUES('71','SA994','logout','0','3','2021-01-21 15:13:34','0');
INSERT IGNORE INTO tbllogs VALUES('72','SA37ecb9a66c7a60372c3616d28de73b13','login','0','6','2021-01-21 15:13:36','0');
INSERT IGNORE INTO tbllogs VALUES('73','1929','login','0','5','2021-01-21 15:13:37','0');
INSERT IGNORE INTO tbllogs VALUES('74','5082','accepted review request for','30','5','2021-01-21 15:22:02','0');
INSERT IGNORE INTO tbllogs VALUES('75','6039','login','0','5','2021-01-21 15:22:55','1');
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
INSERT IGNORE INTO tbllogs VALUES('113','1138','login','0','5','2021-01-26 02:51:32','1');
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
INSERT IGNORE INTO tbllogs VALUES('129','SA37ecb9a66c7a60372c3616d28de73b13','login','0','6','2021-01-28 11:24:17','1');
INSERT IGNORE INTO tbllogs VALUES('130','SA994','logout','0','3','2021-01-28 12:46:25','0');
INSERT IGNORE INTO tbllogs VALUES('131','SA994','login','0','3','2021-01-28 12:46:35','0');
INSERT IGNORE INTO tbllogs VALUES('132','938','login','0','5','2021-01-28 16:44:34','0');
INSERT IGNORE INTO tbllogs VALUES('133','938','reviewed','24','5','2021-01-28 16:46:44','1');
INSERT IGNORE INTO tbllogs VALUES('134','938','logout','0','5','2021-01-28 16:46:54','0');
INSERT IGNORE INTO tbllogs VALUES('135','7','login','0','8','2021-01-29 09:29:10','1');
INSERT IGNORE INTO tbllogs VALUES('136','4751','login','0','5','2021-01-31 11:04:49','0');
INSERT IGNORE INTO tbllogs VALUES('137','4751','login','0','5','2021-01-31 13:26:53','0');
INSERT IGNORE INTO tbllogs VALUES('138','4751','reviewed','24','5','2021-01-31 19:10:48','0');
INSERT IGNORE INTO tbllogs VALUES('139','4751','logout','0','5','2021-01-31 19:35:11','0');
INSERT IGNORE INTO tbllogs VALUES('140','4751','login','0','5','2021-01-31 19:40:49','0');
INSERT IGNORE INTO tbllogs VALUES('141','4751','logout','0','5','2021-01-31 19:45:07','0');
INSERT IGNORE INTO tbllogs VALUES('142','SA994','login','0','3','2021-02-01 09:37:48','1');
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
INSERT IGNORE INTO tbllogs VALUES('340','SA994','login','0','3','2021-02-18 09:16:44','0');
INSERT IGNORE INTO tbllogs VALUES('341','7','login','0','8','2021-02-18 09:35:30','0');
INSERT IGNORE INTO tbllogs VALUES('342','7','logout','0','8','2021-02-18 09:35:39','0');
INSERT IGNORE INTO tbllogs VALUES('343','SAff000e0321d1b5d08691fce9ac4d1733','login','0','3','2021-02-18 10:01:00','0');
INSERT IGNORE INTO tbllogs VALUES('346','SAff000e0321d1b5d08691fce9ac4d1733','logout','0','3','2021-02-18 10:17:22','0');
INSERT IGNORE INTO tbllogs VALUES('347','7','login','0','8','2021-02-18 10:17:25','0');
INSERT IGNORE INTO tbllogs VALUES('348','7','logout','0','8','2021-02-18 10:18:39','0');
INSERT IGNORE INTO tbllogs VALUES('349','SAff000e0321d1b5d08691fce9ac4d1733','login','0','3','2021-02-18 10:19:01','0');
INSERT IGNORE INTO tbllogs VALUES('350','SAff000e0321d1b5d08691fce9ac4d1733','logout','0','3','2021-02-18 10:29:10','0');
INSERT IGNORE INTO tbllogs VALUES('351','SA994','login','0','3','2021-02-18 11:19:16','0');
INSERT IGNORE INTO tbllogs VALUES('352','7','login','0','8','2021-02-18 13:14:14','0');
INSERT IGNORE INTO tbllogs VALUES('353','7','logout','0','8','2021-02-18 13:16:57','0');
INSERT IGNORE INTO tbllogs VALUES('354','SA994','uploaded','62','3','2021-02-18 13:52:32','0');
INSERT IGNORE INTO tbllogs VALUES('355','SA994','uploaded','63','3','2021-02-18 13:57:58','0');
INSERT IGNORE INTO tbllogs VALUES('356','SA994','uploaded','64','3','2021-02-18 14:01:49','0');
INSERT IGNORE INTO tbllogs VALUES('357','SA994','uploaded','65','3','2021-02-18 14:03:46','0');
INSERT IGNORE INTO tbllogs VALUES('358','SA994','uploaded','66','3','2021-02-18 14:06:02','0');
INSERT IGNORE INTO tbllogs VALUES('359','7408','Submitted Manuscript','67','1','2021-02-19 09:24:09','0');
INSERT IGNORE INTO tbllogs VALUES('360','7408','Submitted Manuscript','68','1','2021-02-19 09:27:25','0');
INSERT IGNORE INTO tbllogs VALUES('361','SA994','login','0','3','2021-02-21 21:34:06','0');
INSERT IGNORE INTO tbllogs VALUES('362','SA994','login','0','3','2021-02-21 21:34:13','0');
INSERT IGNORE INTO tbllogs VALUES('363','SA994','added reviewers for','66','3','2021-02-21 21:50:16','0');
INSERT IGNORE INTO tbllogs VALUES('364','SA994','added reviewers for','66','3','2021-02-21 21:50:16','0');
INSERT IGNORE INTO tbllogs VALUES('365','SA994','added reviewers for','62','3','2021-02-21 21:54:28','0');
INSERT IGNORE INTO tbllogs VALUES('366','SA994','added reviewers for','62','3','2021-02-21 21:54:28','0');
INSERT IGNORE INTO tbllogs VALUES('367','SA994','added reviewers for','65','3','2021-02-21 22:00:53','0');
INSERT IGNORE INTO tbllogs VALUES('368','SA994','added reviewers for','65','3','2021-02-21 22:00:53','0');
INSERT IGNORE INTO tbllogs VALUES('369','SA994','added reviewers for','65','3','2021-02-21 22:00:53','0');
INSERT IGNORE INTO tbllogs VALUES('370','SA994','added reviewers for','63','3','2021-02-21 22:05:51','0');
INSERT IGNORE INTO tbllogs VALUES('371','SA994','added reviewers for','63','3','2021-02-21 22:05:51','0');
INSERT IGNORE INTO tbllogs VALUES('372','SA994','added reviewers for','63','3','2021-02-21 22:05:51','0');
INSERT IGNORE INTO tbllogs VALUES('373','SA994','added reviewers for','64','3','2021-02-21 22:11:44','0');
INSERT IGNORE INTO tbllogs VALUES('374','SA994','added reviewers for','64','3','2021-02-21 22:11:44','0');
INSERT IGNORE INTO tbllogs VALUES('375','SA994','added reviewers for','64','3','2021-02-21 22:11:44','0');
INSERT IGNORE INTO tbllogs VALUES('376','SA994','added reviewers for','1','3','2021-02-21 22:24:52','0');
INSERT IGNORE INTO tbllogs VALUES('377','SA994','added reviewers for','1','3','2021-02-21 22:24:52','0');
INSERT IGNORE INTO tbllogs VALUES('378','SA994','added reviewers for','1','3','2021-02-21 22:24:52','0');
INSERT IGNORE INTO tbllogs VALUES('379','652','accepted review request for','63','5','2021-02-21 22:28:18','0');
INSERT IGNORE INTO tbllogs VALUES('380','846','accepted review request for','64','5','2021-02-22 09:05:59','0');
INSERT IGNORE INTO tbllogs VALUES('381','846','login','0','5','2021-02-22 09:07:06','0');
INSERT IGNORE INTO tbllogs VALUES('382','652','login','0','5','2021-02-22 09:07:38','0');
INSERT IGNORE INTO tbllogs VALUES('383','652','login','0','5','2021-02-22 09:48:41','0');
INSERT IGNORE INTO tbllogs VALUES('384','652','reviewed','63','5','2021-02-22 09:59:16','0');
INSERT IGNORE INTO tbllogs VALUES('385','SA994','login','0','3','2021-02-22 11:22:10','0');
INSERT IGNORE INTO tbllogs VALUES('386','639','accepted review request for','64','5','2021-02-22 17:23:49','0');
INSERT IGNORE INTO tbllogs VALUES('387','149','accepted review request for','65','5','2021-02-22 19:28:09','0');
INSERT IGNORE INTO tbllogs VALUES('388','SA994','login','0','3','2021-02-23 07:45:39','0');
INSERT IGNORE INTO tbllogs VALUES('389','972','login','0','5','2021-02-23 09:47:05','0');
INSERT IGNORE INTO tbllogs VALUES('390','639','login','0','5','2021-02-23 13:01:04','0');
INSERT IGNORE INTO tbllogs VALUES('391','7305','Submitted Manuscript','69','1','2021-02-23 14:24:49','0');
INSERT IGNORE INTO tbllogs VALUES('392','SA994','login','0','3','2021-02-24 09:12:47','0');
INSERT IGNORE INTO tbllogs VALUES('393','1044','accepted review request for','64','5','2021-02-24 09:46:11','0');
INSERT IGNORE INTO tbllogs VALUES('394','1146','login','0','5','2021-02-24 10:12:10','0');
INSERT IGNORE INTO tbllogs VALUES('395','1146','login','0','5','2021-02-24 10:14:42','0');
INSERT IGNORE INTO tbllogs VALUES('396','SA994','logout','0','3','2021-02-24 13:29:58','0');
INSERT IGNORE INTO tbllogs VALUES('397','SA994','login','0','3','2021-02-24 13:30:23','0');
INSERT IGNORE INTO tbllogs VALUES('398','597','accepted review request for','65','5','2021-02-24 14:55:16','0');
INSERT IGNORE INTO tbllogs VALUES('399','639','login','0','5','2021-02-24 17:21:55','0');
INSERT IGNORE INTO tbllogs VALUES('400','1146','reviewed','38','5','2021-02-24 23:16:58','0');
INSERT IGNORE INTO tbllogs VALUES('401','1146','reviewed','38','5','2021-02-24 23:33:35','0');
INSERT IGNORE INTO tbllogs VALUES('402','7','login','0','8','2021-02-26 08:39:14','0');
INSERT IGNORE INTO tbllogs VALUES('403','7','logout','0','8','2021-02-26 08:43:59','0');
INSERT IGNORE INTO tbllogs VALUES('404','149','login','0','5','2021-03-01 09:25:35','0');
INSERT IGNORE INTO tbllogs VALUES('405','7','login','0','8','2021-03-02 08:38:04','0');
INSERT IGNORE INTO tbllogs VALUES('406','SA994','login','0','3','2021-03-02 13:14:13','0');
INSERT IGNORE INTO tbllogs VALUES('407','SA994','logout','0','3','2021-03-02 13:32:54','0');
INSERT IGNORE INTO tbllogs VALUES('408','SA994','login','0','3','2021-03-02 13:32:56','0');
INSERT IGNORE INTO tbllogs VALUES('409','SA994','logout','0','3','2021-03-02 15:26:59','0');
INSERT IGNORE INTO tbllogs VALUES('410','SA994','login','0','3','2021-03-02 15:27:08','0');
INSERT IGNORE INTO tbllogs VALUES('411','SA994','added reviewers for','39','3','2021-03-02 15:42:57','0');
INSERT IGNORE INTO tbllogs VALUES('412','SA994','added reviewers for','39','3','2021-03-02 15:42:57','0');
INSERT IGNORE INTO tbllogs VALUES('413','SA994','added reviewers for','39','3','2021-03-02 15:42:57','0');
INSERT IGNORE INTO tbllogs VALUES('414','SA994','login','0','3','2021-03-03 09:50:53','0');
INSERT IGNORE INTO tbllogs VALUES('415','SAff000e0321d1b5d08691fce9ac4d1733','login','0','3','2021-03-03 14:10:24','0');
INSERT IGNORE INTO tbllogs VALUES('416','SA994','logout','0','3','2021-03-03 14:26:23','0');
INSERT IGNORE INTO tbllogs VALUES('417','SA994','login','0','3','2021-03-03 14:26:25','0');
INSERT IGNORE INTO tbllogs VALUES('418','SAff000e0321d1b5d08691fce9ac4d1733','logout','0','3','2021-03-03 14:40:35','0');
INSERT IGNORE INTO tbllogs VALUES('419','1044','login','0','5','2021-03-03 23:02:08','0');
INSERT IGNORE INTO tbllogs VALUES('420','1044','reviewed','64','5','2021-03-03 23:31:39','0');
INSERT IGNORE INTO tbllogs VALUES('421','SA994','login','0','3','2021-03-04 08:00:00','0');
INSERT IGNORE INTO tbllogs VALUES('422','7','login','0','8','2021-03-04 08:05:32','0');
INSERT IGNORE INTO tbllogs VALUES('423','7','logout','0','8','2021-03-04 08:06:13','0');
INSERT IGNORE INTO tbllogs VALUES('424','SA994','login','0','3','2021-03-04 08:22:01','0');
INSERT IGNORE INTO tbllogs VALUES('425','SA994','logout','0','3','2021-03-04 10:41:47','0');
INSERT IGNORE INTO tbllogs VALUES('426','SA994','uploaded','70','3','2021-03-04 13:11:24','0');
INSERT IGNORE INTO tbllogs VALUES('427','SA994','uploaded','71','3','2021-03-04 13:14:08','0');
INSERT IGNORE INTO tbllogs VALUES('428','SA994','logout','0','3','2021-03-04 16:03:09','0');
INSERT IGNORE INTO tbllogs VALUES('429','149','login','0','5','2021-03-04 20:31:13','0');
INSERT IGNORE INTO tbllogs VALUES('430','149','reviewed','65','5','2021-03-04 20:49:15','0');
INSERT IGNORE INTO tbllogs VALUES('431','7825','Submitted Manuscript','72','1','2021-03-05 10:40:11','0');
INSERT IGNORE INTO tbllogs VALUES('432','652','login','0','5','2021-03-06 09:50:59','0');
INSERT IGNORE INTO tbllogs VALUES('433','149','login','0','5','2021-03-07 11:39:35','0');
INSERT IGNORE INTO tbllogs VALUES('434','149','login','0','5','2021-03-07 11:50:32','0');
INSERT IGNORE INTO tbllogs VALUES('435','639','login','0','5','2021-03-07 18:56:15','0');
INSERT IGNORE INTO tbllogs VALUES('436','639','reviewed','64','5','2021-03-07 19:01:50','0');
INSERT IGNORE INTO tbllogs VALUES('437','597','login','0','5','2021-03-07 21:16:19','0');
INSERT IGNORE INTO tbllogs VALUES('438','SA994','login','0','3','2021-03-07 21:32:58','0');
INSERT IGNORE INTO tbllogs VALUES('439','SA994','added reviewers for','70','3','2021-03-07 21:41:07','0');
INSERT IGNORE INTO tbllogs VALUES('440','SA994','added reviewers for','70','3','2021-03-07 21:41:07','0');
INSERT IGNORE INTO tbllogs VALUES('441','SA994','added reviewers for','70','3','2021-03-07 21:41:07','0');
INSERT IGNORE INTO tbllogs VALUES('442','SA994','added reviewers for','70','3','2021-03-07 21:41:07','0');
INSERT IGNORE INTO tbllogs VALUES('443','SA994','added reviewers for','71','3','2021-03-07 21:49:26','0');
INSERT IGNORE INTO tbllogs VALUES('444','SA994','added reviewers for','71','3','2021-03-07 21:49:26','0');
INSERT IGNORE INTO tbllogs VALUES('445','SA994','added reviewers for','71','3','2021-03-07 21:49:26','0');
INSERT IGNORE INTO tbllogs VALUES('446','SA994','added reviewers for','71','3','2021-03-07 21:49:26','0');
INSERT IGNORE INTO tbllogs VALUES('447','SA994','added reviewers for','53','3','2021-03-07 22:01:19','0');
INSERT IGNORE INTO tbllogs VALUES('448','SA994','added reviewers for','53','3','2021-03-07 22:01:19','0');
INSERT IGNORE INTO tbllogs VALUES('449','SA994','added reviewers for','53','3','2021-03-07 22:01:19','0');
INSERT IGNORE INTO tbllogs VALUES('450','SA994','added reviewers for','53','3','2021-03-07 22:01:19','0');
INSERT IGNORE INTO tbllogs VALUES('451','5246','accepted review request for','70','5','2021-03-07 23:08:04','0');
INSERT IGNORE INTO tbllogs VALUES('452','5246','login','0','5','2021-03-07 23:12:15','0');
INSERT IGNORE INTO tbllogs VALUES('453','1297','accepted review request for','53','5','2021-03-08 05:25:15','0');
INSERT IGNORE INTO tbllogs VALUES('454','461','login','0','1','2021-03-08 07:29:07','0');
INSERT IGNORE INTO tbllogs VALUES('455','SA994','login','0','3','2021-03-08 08:08:31','0');
INSERT IGNORE INTO tbllogs VALUES('456','SA994','logout','0','3','2021-03-08 08:35:52','0');
INSERT IGNORE INTO tbllogs VALUES('457','SA994','login','0','3','2021-03-08 08:36:04','0');
INSERT IGNORE INTO tbllogs VALUES('458','7','login','0','8','2021-03-08 09:40:23','0');
INSERT IGNORE INTO tbllogs VALUES('459','6148','accepted review request for','71','5','2021-03-08 09:41:34','0');
INSERT IGNORE INTO tbllogs VALUES('460','7','logout','0','8','2021-03-08 09:44:38','0');
INSERT IGNORE INTO tbllogs VALUES('461','6148','login','0','5','2021-03-08 09:45:33','0');
INSERT IGNORE INTO tbllogs VALUES('462','SA994','logout','0','3','2021-03-08 09:47:13','0');
INSERT IGNORE INTO tbllogs VALUES('463','SA994','login','0','3','2021-03-08 09:47:15','0');
INSERT IGNORE INTO tbllogs VALUES('464','6148','login','0','5','2021-03-08 09:58:49','0');
INSERT IGNORE INTO tbllogs VALUES('465','6148','reviewed','71','5','2021-03-08 10:32:24','0');
INSERT IGNORE INTO tbllogs VALUES('466','7408','Submitted Manuscript','73','1','2021-03-08 11:10:28','0');
INSERT IGNORE INTO tbllogs VALUES('467','1297','login','0','5','2021-03-08 12:44:59','0');
INSERT IGNORE INTO tbllogs VALUES('468','1297','logout','0','5','2021-03-08 12:46:39','0');
INSERT IGNORE INTO tbllogs VALUES('469','SA994','added reviewers for','55','3','2021-03-08 13:30:06','0');
INSERT IGNORE INTO tbllogs VALUES('470','SA994','added reviewers for','55','3','2021-03-08 13:30:06','0');
INSERT IGNORE INTO tbllogs VALUES('471','SA994','added reviewers for','55','3','2021-03-08 13:30:06','0');
INSERT IGNORE INTO tbllogs VALUES('472','SA994','added reviewers for','55','3','2021-03-08 13:30:06','0');
INSERT IGNORE INTO tbllogs VALUES('473','5667','accepted review request for','55','5','2021-03-08 13:35:36','0');
INSERT IGNORE INTO tbllogs VALUES('474','SA994','uploaded','74','3','2021-03-08 14:58:52','0');
INSERT IGNORE INTO tbllogs VALUES('475','SA994','uploaded','75','3','2021-03-08 15:01:10','0');
INSERT IGNORE INTO tbllogs VALUES('476','SA994','added reviewers for','75','3','2021-03-08 15:26:20','0');
INSERT IGNORE INTO tbllogs VALUES('477','SA994','added reviewers for','75','3','2021-03-08 15:26:20','0');
INSERT IGNORE INTO tbllogs VALUES('478','SA994','added reviewers for','75','3','2021-03-08 15:26:20','0');
INSERT IGNORE INTO tbllogs VALUES('479','SA994','added reviewers for','75','3','2021-03-08 15:26:20','0');
INSERT IGNORE INTO tbllogs VALUES('480','6072','accepted review request for','75','5','2021-03-08 15:34:42','0');
INSERT IGNORE INTO tbllogs VALUES('481','4393','accepted review request for','55','5','2021-03-08 16:32:19','0');
INSERT IGNORE INTO tbllogs VALUES('482','6072','login','0','5','2021-03-08 16:32:46','0');
INSERT IGNORE INTO tbllogs VALUES('483','4393','login','0','5','2021-03-08 16:33:30','0');
INSERT IGNORE INTO tbllogs VALUES('484','3767','accepted review request for','75','5','2021-03-08 16:33:52','0');
INSERT IGNORE INTO tbllogs VALUES('485','3767','login','0','5','2021-03-08 16:34:38','0');
INSERT IGNORE INTO tbllogs VALUES('486','6072','login','0','5','2021-03-08 17:00:16','0');
INSERT IGNORE INTO tbllogs VALUES('487','270','accepted review request for','75','5','2021-03-08 17:46:09','0');
INSERT IGNORE INTO tbllogs VALUES('488','270','login','0','5','2021-03-08 17:50:30','0');
INSERT IGNORE INTO tbllogs VALUES('489','3654','accepted review request for','55','5','2021-03-08 18:18:51','0');
INSERT IGNORE INTO tbllogs VALUES('490','3654','login','0','5','2021-03-08 18:20:03','0');
INSERT IGNORE INTO tbllogs VALUES('491','907','accepted review request for','55','5','2021-03-08 18:24:54','0');
INSERT IGNORE INTO tbllogs VALUES('492','6148','login','0','5','2021-03-08 20:09:55','0');
INSERT IGNORE INTO tbllogs VALUES('493','5763','accepted review request for','75','5','2021-03-08 20:39:04','0');
INSERT IGNORE INTO tbllogs VALUES('494','5763','login','0','5','2021-03-08 20:39:53','0');
INSERT IGNORE INTO tbllogs VALUES('495','7830','Submitted Manuscript','76','1','2021-03-08 23:50:22','0');
INSERT IGNORE INTO tbllogs VALUES('496','SA994','login','0','3','2021-03-09 08:46:32','0');
INSERT IGNORE INTO tbllogs VALUES('497','SA994','logout','0','3','2021-03-09 11:53:06','0');
INSERT IGNORE INTO tbllogs VALUES('498','SA994','login','0','3','2021-03-09 11:53:08','0');
INSERT IGNORE INTO tbllogs VALUES('499','SA994','logout','0','3','2021-03-09 13:03:52','0');
INSERT IGNORE INTO tbllogs VALUES('500','SA994','login','0','3','2021-03-09 13:03:54','0');
INSERT IGNORE INTO tbllogs VALUES('501','846','login','0','5','2021-03-09 13:32:38','0');
INSERT IGNORE INTO tbllogs VALUES('502','4393','login','0','5','2021-03-09 13:44:10','0');
INSERT IGNORE INTO tbllogs VALUES('503','SA994','uploaded','77','3','2021-03-09 13:45:40','0');
INSERT IGNORE INTO tbllogs VALUES('504','SA994','added reviewers for','77','3','2021-03-09 13:56:16','0');
INSERT IGNORE INTO tbllogs VALUES('505','SA994','added reviewers for','77','3','2021-03-09 13:56:16','0');
INSERT IGNORE INTO tbllogs VALUES('506','SA994','added reviewers for','77','3','2021-03-09 13:56:16','0');
INSERT IGNORE INTO tbllogs VALUES('507','SA994','added reviewers for','77','3','2021-03-09 13:56:16','0');
INSERT IGNORE INTO tbllogs VALUES('508','4393','reviewed','55','5','2021-03-09 13:59:18','0');
INSERT IGNORE INTO tbllogs VALUES('509','6466','accepted review request for','77','5','2021-03-09 14:11:41','0');
INSERT IGNORE INTO tbllogs VALUES('510','6466','login','0','5','2021-03-09 14:12:15','0');
INSERT IGNORE INTO tbllogs VALUES('511','SA994','added reviewers for','74','3','2021-03-09 14:12:56','0');
INSERT IGNORE INTO tbllogs VALUES('512','SA994','added reviewers for','74','3','2021-03-09 14:12:57','0');
INSERT IGNORE INTO tbllogs VALUES('513','SA994','added reviewers for','74','3','2021-03-09 14:12:57','0');
INSERT IGNORE INTO tbllogs VALUES('514','SA994','added reviewers for','74','3','2021-03-09 14:12:57','0');
INSERT IGNORE INTO tbllogs VALUES('515','SA994','logout','0','3','2021-03-09 14:22:16','0');
INSERT IGNORE INTO tbllogs VALUES('516','SA994','login','0','3','2021-03-09 14:23:21','0');
INSERT IGNORE INTO tbllogs VALUES('517','6466','logout','0','5','2021-03-09 14:32:27','0');
INSERT IGNORE INTO tbllogs VALUES('518','SA994','logout','0','3','2021-03-09 15:22:25','0');
INSERT IGNORE INTO tbllogs VALUES('519','SA994','login','0','3','2021-03-09 15:22:28','0');
INSERT IGNORE INTO tbllogs VALUES('520','SA994','logout','0','3','2021-03-09 15:43:43','0');
INSERT IGNORE INTO tbllogs VALUES('521','SA994','login','0','3','2021-03-09 15:43:45','0');
INSERT IGNORE INTO tbllogs VALUES('522','1603','accepted review request for','70','5','2021-03-09 16:47:40','0');
INSERT IGNORE INTO tbllogs VALUES('523','1603','login','0','5','2021-03-09 16:48:26','0');
INSERT IGNORE INTO tbllogs VALUES('524','787','accepted review request for','71','5','2021-03-09 17:48:26','0');
INSERT IGNORE INTO tbllogs VALUES('525','787','login','0','5','2021-03-09 17:49:26','0');
INSERT IGNORE INTO tbllogs VALUES('526','7089','accepted review request for','74','5','2021-03-09 19:41:47','0');
INSERT IGNORE INTO tbllogs VALUES('527','7089','login','0','5','2021-03-09 19:49:40','0');
INSERT IGNORE INTO tbllogs VALUES('528','1432','accepted review request for','70','5','2021-03-09 22:51:46','0');
INSERT IGNORE INTO tbllogs VALUES('529','5246','login','0','5','2021-03-10 08:09:44','0');
INSERT IGNORE INTO tbllogs VALUES('530','SA994','login','0','3','2021-03-10 08:19:48','0');
INSERT IGNORE INTO tbllogs VALUES('531','3657','accepted review request for','71','5','2021-03-10 08:46:39','0');
INSERT IGNORE INTO tbllogs VALUES('532','6072','login','0','5','2021-03-10 08:56:29','0');
INSERT IGNORE INTO tbllogs VALUES('533','SA994','login','0','3','2021-03-11 08:03:29','0');
INSERT IGNORE INTO tbllogs VALUES('534','1297','login','0','5','2021-03-11 10:06:58','0');
INSERT IGNORE INTO tbllogs VALUES('535','5285','accepted review request for','74','5','2021-03-11 14:00:09','0');
INSERT IGNORE INTO tbllogs VALUES('536','5285','login','0','5','2021-03-11 14:01:03','0');
INSERT IGNORE INTO tbllogs VALUES('537','3339','accepted review request for','77','5','2021-03-11 14:36:16','0');
INSERT IGNORE INTO tbllogs VALUES('538','3339','login','0','5','2021-03-11 14:37:23','0');
INSERT IGNORE INTO tbllogs VALUES('539','7036','login','0','1','2021-03-11 15:50:50','0');
INSERT IGNORE INTO tbllogs VALUES('540','7','login','0','8','2021-03-11 16:03:51','0');
INSERT IGNORE INTO tbllogs VALUES('541','7089','login','0','5','2021-03-11 16:08:17','0');
INSERT IGNORE INTO tbllogs VALUES('542','7','logout','0','8','2021-03-11 16:10:40','0');
INSERT IGNORE INTO tbllogs VALUES('543','1337','accepted review request for','77','5','2021-03-11 18:39:07','0');
INSERT IGNORE INTO tbllogs VALUES('544','1337','login','0','5','2021-03-11 18:39:53','0');
INSERT IGNORE INTO tbllogs VALUES('545','6148','login','0','5','2021-03-12 13:04:44','0');
INSERT IGNORE INTO tbllogs VALUES('546','597','login','0','5','2021-03-12 16:50:57','0');
INSERT IGNORE INTO tbllogs VALUES('547','597','reviewed','65','5','2021-03-12 16:57:38','0');
INSERT IGNORE INTO tbllogs VALUES('548','6466','login','0','5','2021-03-13 10:02:09','0');
INSERT IGNORE INTO tbllogs VALUES('549','6466','logout','0','5','2021-03-13 10:04:08','0');
INSERT IGNORE INTO tbllogs VALUES('550','5285','login','0','5','2021-03-14 10:29:27','0');
INSERT IGNORE INTO tbllogs VALUES('551','866','login','0','5','2021-03-14 19:31:55','0');
INSERT IGNORE INTO tbllogs VALUES('552','SA994','login','0','3','2021-03-15 09:18:42','0');
INSERT IGNORE INTO tbllogs VALUES('553','52','login','0','5','2021-03-16 09:46:06','0');
INSERT IGNORE INTO tbllogs VALUES('554','52','reviewed','25','5','2021-03-16 10:02:58','0');
INSERT IGNORE INTO tbllogs VALUES('555','52','logout','0','5','2021-03-16 10:09:16','0');
INSERT IGNORE INTO tbllogs VALUES('556','SA994','login','0','3','2021-03-16 11:10:10','0');
INSERT IGNORE INTO tbllogs VALUES('557','787','login','0','5','2021-03-16 13:44:22','0');
INSERT IGNORE INTO tbllogs VALUES('558','1432','login','0','5','2021-03-16 21:41:39','0');
INSERT IGNORE INTO tbllogs VALUES('559','787','reviewed','71','5','2021-03-17 08:38:09','0');
INSERT IGNORE INTO tbllogs VALUES('560','52','login','0','5','2021-03-17 17:11:08','0');
INSERT IGNORE INTO tbllogs VALUES('561','1337','login','0','5','2021-03-17 17:32:55','0');
INSERT IGNORE INTO tbllogs VALUES('562','1337','reviewed','77','5','2021-03-17 17:51:59','0');
INSERT IGNORE INTO tbllogs VALUES('563','1297','login','0','5','2021-03-19 12:21:00','0');
INSERT IGNORE INTO tbllogs VALUES('564','1297','reviewed','53','5','2021-03-19 13:53:22','0');
INSERT IGNORE INTO tbllogs VALUES('565','3767','reviewed','75','5','2021-03-20 09:44:30','0');
INSERT IGNORE INTO tbllogs VALUES('566','7089','login','0','5','2021-03-21 16:03:34','0');
INSERT IGNORE INTO tbllogs VALUES('567','7089','reviewed','74','5','2021-03-21 20:05:45','0');
INSERT IGNORE INTO tbllogs VALUES('568','SA994','login','0','3','2021-03-22 09:08:24','0');
INSERT IGNORE INTO tbllogs VALUES('569','SA994','login','0','3','2021-03-22 13:19:26','0');
INSERT IGNORE INTO tbllogs VALUES('570','6466','login','0','5','2021-03-22 14:11:04','0');
INSERT IGNORE INTO tbllogs VALUES('571','6466','reviewed','77','5','2021-03-22 14:53:55','0');
INSERT IGNORE INTO tbllogs VALUES('572','3657','login','0','5','2021-03-22 15:13:47','0');
INSERT IGNORE INTO tbllogs VALUES('573','3657','reviewed','71','5','2021-03-22 15:34:19','0');
INSERT IGNORE INTO tbllogs VALUES('574','3657','logout','0','5','2021-03-22 15:34:50','0');
INSERT IGNORE INTO tbllogs VALUES('575','3767','reviewed','75','5','2021-03-22 16:48:27','0');
INSERT IGNORE INTO tbllogs VALUES('576','907','login','0','5','2021-03-23 01:51:26','0');
INSERT IGNORE INTO tbllogs VALUES('577','907','reviewed','55','5','2021-03-23 03:28:09','0');
INSERT IGNORE INTO tbllogs VALUES('578','SA994','login','0','3','2021-03-23 13:24:40','0');
INSERT IGNORE INTO tbllogs VALUES('579','SA994','uploaded','78','3','2021-03-23 13:49:18','0');
INSERT IGNORE INTO tbllogs VALUES('580','3339','login','0','5','2021-03-23 23:50:12','0');
INSERT IGNORE INTO tbllogs VALUES('581','1097','login','0','5','2021-03-24 12:11:51','0');
INSERT IGNORE INTO tbllogs VALUES('582','5763','login','0','5','2021-03-24 21:42:34','0');
INSERT IGNORE INTO tbllogs VALUES('583','5763','reviewed','75','5','2021-03-24 21:58:32','0');
INSERT IGNORE INTO tbllogs VALUES('584','4619','Submitted Manuscript','79','1','2021-03-25 04:22:36','0');
INSERT IGNORE INTO tbllogs VALUES('585','5285','reviewed','74','5','2021-03-25 22:06:52','0');
INSERT IGNORE INTO tbllogs VALUES('586','5285','reviewed','74','5','2021-03-25 22:10:38','0');
INSERT IGNORE INTO tbllogs VALUES('587','7089','login','0','5','2021-03-27 08:51:03','0');
INSERT IGNORE INTO tbllogs VALUES('588','SA994','login','0','3','2021-03-29 07:43:17','0');
INSERT IGNORE INTO tbllogs VALUES('589','SA994','logout','0','3','2021-03-29 12:23:21','0');
INSERT IGNORE INTO tbllogs VALUES('590','SA994','login','0','3','2021-03-29 12:23:23','0');
INSERT IGNORE INTO tbllogs VALUES('591','SA994','logout','0','3','2021-03-29 12:49:07','0');
INSERT IGNORE INTO tbllogs VALUES('592','SA994','login','0','3','2021-03-29 12:49:10','0');
INSERT IGNORE INTO tbllogs VALUES('593','SA994','logout','0','3','2021-03-29 13:11:38','0');
INSERT IGNORE INTO tbllogs VALUES('594','SA994','login','0','3','2021-03-29 13:11:40','0');
INSERT IGNORE INTO tbllogs VALUES('595','270','login','0','5','2021-03-29 13:36:39','0');
INSERT IGNORE INTO tbllogs VALUES('596','270','login','0','5','2021-03-29 18:19:58','0');
INSERT IGNORE INTO tbllogs VALUES('597','270','reviewed','75','5','2021-03-29 18:27:49','0');
INSERT IGNORE INTO tbllogs VALUES('598','SA994','login','0','3','2021-03-30 07:41:29','0');
INSERT IGNORE INTO tbllogs VALUES('599','SA994','login','0','3','2021-03-30 11:13:52','0');
INSERT IGNORE INTO tbllogs VALUES('600','6559','login','0','5','2021-03-31 10:34:03','0');
INSERT IGNORE INTO tbllogs VALUES('601','SA994','login','0','3','2021-03-31 10:38:43','0');
INSERT IGNORE INTO tbllogs VALUES('602','SA994','logout','0','3','2021-03-31 11:02:34','0');
INSERT IGNORE INTO tbllogs VALUES('603','SA994','login','0','3','2021-03-31 11:02:39','0');
INSERT IGNORE INTO tbllogs VALUES('604','SA37ecb9a66c7a60372c3616d28de73b13','login','0','6','2021-04-05 10:15:51','0');
INSERT IGNORE INTO tbllogs VALUES('605','SA37ecb9a66c7a60372c3616d28de73b13','login','0','6','2021-04-06 09:08:21','0');
INSERT IGNORE INTO tbllogs VALUES('606','7','login','0','8','2021-04-08 08:57:05','0');
INSERT IGNORE INTO tbllogs VALUES('607','7','logout','0','8','2021-04-08 08:59:49','0');
INSERT IGNORE INTO tbllogs VALUES('608','7','login','0','8','2021-04-08 11:15:05','0');
INSERT IGNORE INTO tbllogs VALUES('609','7','logout','0','8','2021-04-08 13:23:10','0');
INSERT IGNORE INTO tbllogs VALUES('610','7','login','0','8','2021-04-08 13:46:58','0');
INSERT IGNORE INTO tbllogs VALUES('611','7','logout','0','8','2021-04-08 14:48:51','0');
INSERT IGNORE INTO tbllogs VALUES('612','SA37ecb9a66c7a60372c3616d28de73b13','login','0','6','2021-04-12 15:54:56','0');
INSERT IGNORE INTO tbllogs VALUES('613','SA37ecb9a66c7a60372c3616d28de73b13','login','0','6','2021-04-12 15:54:59','0');
INSERT IGNORE INTO tbllogs VALUES('614','SA994','login','0','3','2021-04-20 11:03:41','0');
INSERT IGNORE INTO tbllogs VALUES('615','4758','Submitted Manuscript','80','1','2021-04-22 18:26:30','0');
INSERT IGNORE INTO tbllogs VALUES('616','3339','login','0','5','2021-04-26 12:13:28','0');
INSERT IGNORE INTO tbllogs VALUES('619','3339','reviewed','77','5','2021-04-27 08:14:36','0');
INSERT IGNORE INTO tbllogs VALUES('620','3339','login','0','5','2021-04-27 08:23:50','0');
INSERT IGNORE INTO tbllogs VALUES('621','3339','reviewed','77','5','2021-04-27 08:56:02','0');
INSERT IGNORE INTO tbllogs VALUES('622','3339','logout','0','5','2021-04-27 08:57:57','0');
INSERT IGNORE INTO tbllogs VALUES('623','3339','login','0','5','2021-04-27 08:58:23','0');
INSERT IGNORE INTO tbllogs VALUES('624','3339','logout','0','5','2021-04-27 08:58:37','0');
INSERT IGNORE INTO tbllogs VALUES('625','SA994','login','0','3','2021-04-27 14:32:29','0');
INSERT IGNORE INTO tbllogs VALUES('626','SA994','login','0','3','2021-04-29 09:19:40','0');
INSERT IGNORE INTO tbllogs VALUES('627','SA994','logout','0','3','2021-04-29 10:29:16','0');
INSERT IGNORE INTO tbllogs VALUES('628','SA994','login','0','3','2021-04-29 10:29:19','0');
INSERT IGNORE INTO tbllogs VALUES('629','SA994','login','0','3','2021-04-29 12:57:02','0');
INSERT IGNORE INTO tbllogs VALUES('630','SA994','login','0','3','2021-04-30 09:23:29','0');
INSERT IGNORE INTO tbllogs VALUES('631','SA994','login','0','3','2021-05-03 15:19:18','0');
INSERT IGNORE INTO tbllogs VALUES('632','8965','Submitted Manuscript','83','1','2021-05-07 18:03:33','0');
INSERT IGNORE INTO tbllogs VALUES('633','SA994','login','0','3','2021-05-12 15:49:50','0');
INSERT IGNORE INTO tbllogs VALUES('634','SA994','login','0','3','2021-05-14 08:11:03','0');
INSERT IGNORE INTO tbllogs VALUES('635','SA994','added reviewers for','53','3','2021-05-14 08:33:47','0');
INSERT IGNORE INTO tbllogs VALUES('636','SA994','added reviewers for','53','3','2021-05-14 08:33:47','0');
INSERT IGNORE INTO tbllogs VALUES('637','SA994','added reviewers for','53','3','2021-05-14 08:33:47','0');
INSERT IGNORE INTO tbllogs VALUES('638','SAa942372b7357a3a87cfdb1e44337aa4d','login','0','3','2021-05-14 08:53:40','0');
INSERT IGNORE INTO tbllogs VALUES('639','SAa942372b7357a3a87cfdb1e44337aa4d','logout','0','3','2021-05-14 09:32:31','0');
INSERT IGNORE INTO tbllogs VALUES('640','SAa942372b7357a3a87cfdb1e44337aa4d','login','0','3','2021-05-14 09:32:38','0');
INSERT IGNORE INTO tbllogs VALUES('641','SAa942372b7357a3a87cfdb1e44337aa4d','logout','0','3','2021-05-14 09:54:23','0');
INSERT IGNORE INTO tbllogs VALUES('642','SA994','added reviewers for','70','3','2021-05-14 11:23:24','0');
INSERT IGNORE INTO tbllogs VALUES('643','SA994','added reviewers for','70','3','2021-05-14 11:23:24','0');
INSERT IGNORE INTO tbllogs VALUES('644','SA994','added reviewers for','70','3','2021-05-14 11:23:24','0');
INSERT IGNORE INTO tbllogs VALUES('645','SA994','logout','0','3','2021-05-14 12:07:48','0');
INSERT IGNORE INTO tbllogs VALUES('646','5133','Submitted Manuscript','84','1','2021-05-14 15:05:45','0');
INSERT IGNORE INTO tbllogs VALUES('647','3780','accepted review request for','70','5','2021-05-14 15:42:17','0');
INSERT IGNORE INTO tbllogs VALUES('648','3780','login','0','5','2021-05-14 15:42:51','0');
INSERT IGNORE INTO tbllogs VALUES('649','5410','accepted review request for','53','5','2021-05-15 08:34:16','0');
INSERT IGNORE INTO tbllogs VALUES('650','5410','login','0','5','2021-05-15 08:36:22','0');
INSERT IGNORE INTO tbllogs VALUES('651','5410','login','0','5','2021-05-23 14:17:53','0');
INSERT IGNORE INTO tbllogs VALUES('652','5410','login','0','5','2021-05-23 20:35:03','0');
INSERT IGNORE INTO tbllogs VALUES('653','5410','reviewed','53','5','2021-05-23 21:05:48','0');
INSERT IGNORE INTO tbllogs VALUES('654','SA994','login','0','3','2021-05-26 09:59:26','0');
INSERT IGNORE INTO tbllogs VALUES('655','SA994','login','0','3','2021-05-31 15:07:45','0');
INSERT IGNORE INTO tbllogs VALUES('656','SA994','login','0','3','2021-06-01 10:49:14','0');
INSERT IGNORE INTO tbllogs VALUES('657','SA37ecb9a66c7a60372c3616d28de73b13','login','0','6','2021-06-02 13:36:56','0');
INSERT IGNORE INTO tbllogs VALUES('658','SA994','login','0','3','2021-06-03 10:33:52','0');
INSERT IGNORE INTO tbllogs VALUES('659','5410','login','0','5','2021-06-03 18:36:48','0');
INSERT IGNORE INTO tbllogs VALUES('660','SAa942372b7357a3a87cfdb1e44337aa4d','login','0','3','2021-06-09 13:13:19','0');
INSERT IGNORE INTO tbllogs VALUES('661','SAa942372b7357a3a87cfdb1e44337aa4d','logout','0','3','2021-06-09 13:13:27','0');
INSERT IGNORE INTO tbllogs VALUES('662','7','login','0','8','2021-06-09 13:13:31','0');
INSERT IGNORE INTO tbllogs VALUES('663','7','logout','0','8','2021-06-09 13:27:31','0');
INSERT IGNORE INTO tbllogs VALUES('664','SA994','login','0','3','2021-06-10 13:29:04','0');
INSERT IGNORE INTO tbllogs VALUES('665','6744','Submitted Manuscript','85','1','2021-06-11 16:58:43','0');
INSERT IGNORE INTO tbllogs VALUES('666','6744','Submitted Manuscript','86','1','2021-06-11 17:06:40','0');
INSERT IGNORE INTO tbllogs VALUES('667','SA994','login','0','3','2021-06-14 15:18:14','0');
INSERT IGNORE INTO tbllogs VALUES('668','7','login','0','8','2021-06-16 10:07:10','0');
INSERT IGNORE INTO tbllogs VALUES('669','7','logout','0','8','2021-06-16 10:07:51','0');
INSERT IGNORE INTO tbllogs VALUES('670','7','login','0','8','2021-06-16 10:08:26','0');
INSERT IGNORE INTO tbllogs VALUES('671','7','logout','0','8','2021-06-16 10:08:44','0');
INSERT IGNORE INTO tbllogs VALUES('672','7','login','0','8','2021-06-16 10:10:01','0');
INSERT IGNORE INTO tbllogs VALUES('673','7','logout','0','8','2021-06-16 10:13:02','0');
INSERT IGNORE INTO tbllogs VALUES('674','SA994','login','0','3','2021-06-17 10:00:30','0');
INSERT IGNORE INTO tbllogs VALUES('675','SA994','login','0','3','2021-06-17 15:11:45','0');
INSERT IGNORE INTO tbllogs VALUES('676','SA994','logout','0','3','2021-06-17 15:53:35','0');
INSERT IGNORE INTO tbllogs VALUES('677','SA994','login','0','3','2021-06-17 15:53:39','0');
INSERT IGNORE INTO tbllogs VALUES('678','8844','Submitted Manuscript','87','1','2021-06-21 10:13:35','0');
INSERT IGNORE INTO tbllogs VALUES('679','8352','Submitted Manuscript','88','1','2021-06-22 12:17:08','0');
INSERT IGNORE INTO tbllogs VALUES('680','SA37ecb9a66c7a60372c3616d28de73b13','login','0','6','2021-06-24 10:30:43','0');
INSERT IGNORE INTO tbllogs VALUES('681','7','login','0','8','2021-06-25 10:06:37','0');
INSERT IGNORE INTO tbllogs VALUES('682','7','logout','0','8','2021-06-25 10:07:39','0');
INSERT IGNORE INTO tbllogs VALUES('683','2404','Submitted Manuscript','89','1','2021-06-25 15:11:31','0');
INSERT IGNORE INTO tbllogs VALUES('684','9218','Submitted Manuscript','90','1','2021-06-26 11:00:45','0');
INSERT IGNORE INTO tbllogs VALUES('685','8008','Submitted Manuscript','91','1','2021-06-27 18:23:55','0');
INSERT IGNORE INTO tbllogs VALUES('686','9219','Submitted Manuscript','92','1','2021-06-27 18:31:40','0');
INSERT IGNORE INTO tbllogs VALUES('687','7','login','0','8','2021-06-28 07:48:37','0');
INSERT IGNORE INTO tbllogs VALUES('688','7','logout','0','8','2021-06-28 08:24:44','0');
INSERT IGNORE INTO tbllogs VALUES('689','SA994','login','0','3','2021-06-29 07:19:57','0');
INSERT IGNORE INTO tbllogs VALUES('690','SA994','logout','0','3','2021-06-29 10:11:24','0');
INSERT IGNORE INTO tbllogs VALUES('691','SA994','login','0','3','2021-06-29 10:11:26','0');
INSERT IGNORE INTO tbllogs VALUES('692','SA994','login','0','3','2021-06-29 15:44:51','0');
INSERT IGNORE INTO tbllogs VALUES('693','SA994','login','0','3','2021-06-30 09:19:44','0');
INSERT IGNORE INTO tbllogs VALUES('694','SA994','login','0','3','2021-07-01 13:51:04','0');
INSERT IGNORE INTO tbllogs VALUES('695','SA994','added reviewers for','92','3','2021-07-01 14:30:33','0');
INSERT IGNORE INTO tbllogs VALUES('696','SA994','added reviewers for','92','3','2021-07-01 14:30:33','0');
INSERT IGNORE INTO tbllogs VALUES('697','SA994','added reviewers for','92','3','2021-07-01 14:30:33','0');
INSERT IGNORE INTO tbllogs VALUES('698','SA994','added reviewers for','92','3','2021-07-01 14:30:33','0');
INSERT IGNORE INTO tbllogs VALUES('699','SA994','added reviewers for','70','3','2021-07-01 16:46:42','0');
INSERT IGNORE INTO tbllogs VALUES('700','SA994','added reviewers for','70','3','2021-07-01 16:46:42','0');
INSERT IGNORE INTO tbllogs VALUES('701','SA994','added reviewers for','70','3','2021-07-01 16:46:42','0');
INSERT IGNORE INTO tbllogs VALUES('702','SA994','added reviewers for','70','3','2021-07-01 16:46:42','0');
INSERT IGNORE INTO tbllogs VALUES('703','3558','accepted review request for','70','5','2021-07-02 08:08:27','0');
INSERT IGNORE INTO tbllogs VALUES('704','3558','login','0','5','2021-07-02 08:09:07','0');
INSERT IGNORE INTO tbllogs VALUES('705','3558','reviewed','70','5','2021-07-05 22:23:41','0');
INSERT IGNORE INTO tbllogs VALUES('706','SA994','login','0','3','2021-07-08 15:42:28','0');
INSERT IGNORE INTO tbllogs VALUES('707','SA994','login','0','3','2021-07-12 10:36:40','0');
INSERT IGNORE INTO tbllogs VALUES('708','SA994','logout','0','3','2021-07-12 14:27:40','0');
INSERT IGNORE INTO tbllogs VALUES('709','SA994','login','0','3','2021-07-12 14:27:50','0');
INSERT IGNORE INTO tbllogs VALUES('710','5760','Submitted Manuscript','93','1','2021-07-12 18:31:57','0');
INSERT IGNORE INTO tbllogs VALUES('711','5760','Submitted Manuscript','94','1','2021-07-12 18:39:11','0');
INSERT IGNORE INTO tbllogs VALUES('712','7','login','0','8','2021-07-13 10:26:36','0');
INSERT IGNORE INTO tbllogs VALUES('713','7','logout','0','8','2021-07-13 10:26:45','0');
INSERT IGNORE INTO tbllogs VALUES('714','7','login','0','8','2021-07-14 09:27:50','0');
INSERT IGNORE INTO tbllogs VALUES('715','7','logout','0','8','2021-07-14 09:35:14','0');
INSERT IGNORE INTO tbllogs VALUES('716','4671','Submitted Manuscript','95','1','2021-07-25 15:23:15','0');
INSERT IGNORE INTO tbllogs VALUES('717','4671','Submitted Manuscript','96','1','2021-07-25 15:33:38','0');
INSERT IGNORE INTO tbllogs VALUES('718','SA994','login','0','3','2021-07-28 09:36:34','0');
INSERT IGNORE INTO tbllogs VALUES('719','7','login','0','8','2021-07-30 10:51:39','0');
INSERT IGNORE INTO tbllogs VALUES('720','7','logout','0','8','2021-07-30 10:51:59','0');
INSERT IGNORE INTO tbllogs VALUES('721','8652','Submitted Manuscript','97','1','2021-07-31 23:37:31','0');
INSERT IGNORE INTO tbllogs VALUES('722','9256','Submitted Manuscript','98','1','2021-08-01 11:31:06','0');
INSERT IGNORE INTO tbllogs VALUES('723','9256','Submitted Manuscript','99','1','2021-08-01 11:41:17','0');
INSERT IGNORE INTO tbllogs VALUES('724','3767','Submitted Manuscript','100','1','2021-08-02 19:57:40','0');
INSERT IGNORE INTO tbllogs VALUES('725','3767','Submitted Manuscript','101','1','2021-08-02 20:02:22','0');
INSERT IGNORE INTO tbllogs VALUES('726','3767','Submitted Manuscript','102','1','2021-08-02 20:06:14','0');
INSERT IGNORE INTO tbllogs VALUES('727','9191','Submitted Manuscript','103','1','2021-08-02 20:38:04','0');
INSERT IGNORE INTO tbllogs VALUES('728','SA37ecb9a66c7a60372c3616d28de73b13','login','0','6','2021-08-04 15:13:33','0');
INSERT IGNORE INTO tbllogs VALUES('729','8127','Submitted Manuscript','104','1','2021-08-04 17:09:21','0');
INSERT IGNORE INTO tbllogs VALUES('730','7','login','0','8','2021-08-05 15:29:54','0');
INSERT IGNORE INTO tbllogs VALUES('731','7','created backup of OPRS database. (dboprs_backup_1628148620.sql)','','8','2021-08-05 15:30:20','0');
INSERT IGNORE INTO tbllogs VALUES('732','7','logout','0','8','2021-08-05 15:30:33','0');
INSERT IGNORE INTO tbllogs VALUES('733','6471','Submitted Manuscript','105','1','2021-08-06 08:54:14','0');
INSERT IGNORE INTO tbllogs VALUES('734','6471','Submitted Manuscript','106','1','2021-08-06 09:16:46','0');
INSERT IGNORE INTO tbllogs VALUES('735','6471','Submitted Manuscript','107','1','2021-08-06 13:18:43','0');
INSERT IGNORE INTO tbllogs VALUES('736','6471','Submitted Manuscript','108','1','2021-08-06 14:01:08','0');
INSERT IGNORE INTO tbllogs VALUES('737','SA37ecb9a66c7a60372c3616d28de73b13','login','0','6','2021-08-10 09:24:09','0');
INSERT IGNORE INTO tbllogs VALUES('738','SA37ecb9a66c7a60372c3616d28de73b13','logout','0','6','2021-08-10 09:24:32','0');
INSERT IGNORE INTO tbllogs VALUES('739','SA37ecb9a66c7a60372c3616d28de73b13','login','0','6','2021-08-10 09:27:33','0');
INSERT IGNORE INTO tbllogs VALUES('740','SA37ecb9a66c7a60372c3616d28de73b13','logout','0','6','2021-08-10 09:34:40','0');
INSERT IGNORE INTO tbllogs VALUES('741','7','login','0','8','2021-08-10 09:44:06','0');
INSERT IGNORE INTO tbllogs VALUES('742','SA37ecb9a66c7a60372c3616d28de73b13','login','0','6','2021-08-10 09:44:30','0');
INSERT IGNORE INTO tbllogs VALUES('743','SA37ecb9a66c7a60372c3616d28de73b13','logout','0','6','2021-08-10 09:44:33','0');
INSERT IGNORE INTO tbllogs VALUES('744','SA994','login','0','3','2021-08-10 09:45:39','0');
INSERT IGNORE INTO tbllogs VALUES('745','SA994','logout','0','3','2021-08-10 09:45:45','0');
INSERT IGNORE INTO tbllogs VALUES('746','SA994','login','0','3','2021-08-10 09:46:26','0');
INSERT IGNORE INTO tbllogs VALUES('747','SA37ecb9a66c7a60372c3616d28de73b13','login','0','6','2021-08-10 09:49:52','0');
INSERT IGNORE INTO tbllogs VALUES('748','7','logout','0','8','2021-08-10 09:54:02','0');
INSERT IGNORE INTO tbllogs VALUES('749','SA994','login','0','3','2021-08-10 13:17:19','0');
INSERT IGNORE INTO tbllogs VALUES('750','SA994','login','0','3','2021-08-11 07:48:32','0');
INSERT IGNORE INTO tbllogs VALUES('751','7','login','0','8','2021-08-11 08:32:20','0');
INSERT IGNORE INTO tbllogs VALUES('752','7','login','0','8','2021-08-11 08:42:07','0');
INSERT IGNORE INTO tbllogs VALUES('753','7','created backup of OPRS database. (dboprs_backup_1628642627.sql)','','8','2021-08-11 08:43:47','0');
INSERT IGNORE INTO tbllogs VALUES('754','7','login','0','8','2021-08-11 08:51:53','0');
INSERT IGNORE INTO tbllogs VALUES('755','7','Export as PDF - List of Manuscripts','','8','2021-08-11 09:33:56','0');
INSERT IGNORE INTO tbllogs VALUES('756','7','logout','0','8','2021-08-11 09:34:53','0');
INSERT IGNORE INTO tbllogs VALUES('757','7','Export as PDF - List of Reviewers','','8','2021-08-11 09:39:48','0');
INSERT IGNORE INTO tbllogs VALUES('758','9013','Submitted Manuscript','109','1','2021-08-11 09:44:39','0');
INSERT IGNORE INTO tbllogs VALUES('759','7','logout','0','8','2021-08-11 10:26:45','0');
INSERT IGNORE INTO tbllogs VALUES('760','7','logout','0','8','2021-08-11 10:43:45','0');
INSERT IGNORE INTO tbllogs VALUES('761','7','login','0','8','2021-08-11 10:43:51','0');
INSERT IGNORE INTO tbllogs VALUES('762','7','logout','0','8','2021-08-11 10:44:04','0');
INSERT IGNORE INTO tbllogs VALUES('763','7','login','0','8','2021-08-11 10:55:27','0');
INSERT IGNORE INTO tbllogs VALUES('764','7','logout','0','8','2021-08-11 13:12:42','0');
INSERT IGNORE INTO tbllogs VALUES('765','7','login','0','8','2021-08-11 13:32:14','0');
INSERT IGNORE INTO tbllogs VALUES('766','7','Export as PDF - List of Reviewers','','8','2021-08-11 13:44:26','0');
INSERT IGNORE INTO tbllogs VALUES('767','7','logout','0','8','2021-08-11 14:15:55','0');
INSERT IGNORE INTO tbllogs VALUES('768','7','login','0','8','2021-08-11 16:00:44','0');
INSERT IGNORE INTO tbllogs VALUES('769','7','logout','0','8','2021-08-11 16:08:34','0');
INSERT IGNORE INTO tbllogs VALUES('770','7','login','0','8','2021-08-11 16:10:21','0');
INSERT IGNORE INTO tbllogs VALUES('771','7','logout','0','8','2021-08-11 18:16:47','0');
INSERT IGNORE INTO tbllogs VALUES('772','7','login','0','8','2021-08-12 07:15:09','0');
INSERT IGNORE INTO tbllogs VALUES('773','7','login','0','8','2021-08-12 07:20:46','0');
INSERT IGNORE INTO tbllogs VALUES('774','7','logout','0','8','2021-08-12 08:19:49','0');
INSERT IGNORE INTO tbllogs VALUES('775','7','login','0','8','2021-08-12 08:19:53','0');
INSERT IGNORE INTO tbllogs VALUES('776','7','logout','0','8','2021-08-12 08:22:09','0');
INSERT IGNORE INTO tbllogs VALUES('777','7','login','0','8','2021-08-12 08:22:19','0');
INSERT IGNORE INTO tbllogs VALUES('778','7','logout','0','8','2021-08-12 08:39:05','0');
INSERT IGNORE INTO tbllogs VALUES('779','7','login','0','8','2021-08-12 08:39:15','0');
INSERT IGNORE INTO tbllogs VALUES('780','7','logout','0','8','2021-08-12 09:11:49','0');
INSERT IGNORE INTO tbllogs VALUES('781','7','login','0','8','2021-08-12 13:51:03','0');
INSERT IGNORE INTO tbllogs VALUES('782','7','logout','0','8','2021-08-12 13:51:25','0');
INSERT IGNORE INTO tbllogs VALUES('783','7','login','0','8','2021-08-12 14:00:45','0');
INSERT IGNORE INTO tbllogs VALUES('784','7','Export as PDF - List of UI','','8','2021-08-12 14:02:11','0');
INSERT IGNORE INTO tbllogs VALUES('785','7','logout','0','8','2021-08-12 14:03:56','0');
INSERT IGNORE INTO tbllogs VALUES('786','7','login','0','8','2021-08-12 15:35:27','0');
INSERT IGNORE INTO tbllogs VALUES('787','7','logout','0','8','2021-08-12 15:36:17','0');
INSERT IGNORE INTO tbllogs VALUES('788','7','login','0','8','2021-08-12 15:36:27','0');
INSERT IGNORE INTO tbllogs VALUES('789','7','logout','0','8','2021-08-12 15:36:47','0');
INSERT IGNORE INTO tbllogs VALUES('790','7','Export as PDF - List of Manuscripts','','8','2021-08-12 16:43:50','0');
INSERT IGNORE INTO tbllogs VALUES('791','7','login','0','8','2021-08-12 17:17:33','0');
INSERT IGNORE INTO tbllogs VALUES('792','7','logout','0','8','2021-08-12 17:42:25','0');
INSERT IGNORE INTO tbllogs VALUES('793','7','logout','0','8','2021-08-12 18:47:37','0');
INSERT IGNORE INTO tbllogs VALUES('794','SA994','login','0','3','2021-08-12 20:04:26','0');
INSERT IGNORE INTO tbllogs VALUES('795','SA994','logout','0','3','2021-08-12 20:26:41','0');
INSERT IGNORE INTO tbllogs VALUES('796','SA994','login','0','3','2021-08-12 20:26:59','0');
INSERT IGNORE INTO tbllogs VALUES('797','SA994','login','0','3','2021-08-13 08:21:12','0');
INSERT IGNORE INTO tbllogs VALUES('798','SA994','added reviewers for','40','3','2021-08-13 09:08:24','0');
INSERT IGNORE INTO tbllogs VALUES('799','SA994','added reviewers for','40','3','2021-08-13 09:08:24','0');
INSERT IGNORE INTO tbllogs VALUES('800','SA994','added reviewers for','40','3','2021-08-13 09:08:24','0');
INSERT IGNORE INTO tbllogs VALUES('801','SA994','added reviewers for','40','3','2021-08-13 09:08:24','0');
INSERT IGNORE INTO tbllogs VALUES('802','SA994','added reviewers for','40','3','2021-08-13 09:08:24','0');
INSERT IGNORE INTO tbllogs VALUES('803','7','login','0','8','2021-08-13 10:43:51','0');
INSERT IGNORE INTO tbllogs VALUES('804','206','accepted review request for','40','5','2021-08-13 20:34:53','0');
INSERT IGNORE INTO tbllogs VALUES('805','206','login','0','5','2021-08-13 20:36:00','0');
INSERT IGNORE INTO tbllogs VALUES('806','7','login','0','8','2021-08-16 10:47:19','0');
INSERT IGNORE INTO tbllogs VALUES('807','7','logout','0','8','2021-08-16 10:59:32','0');
INSERT IGNORE INTO tbllogs VALUES('808','SA994','login','0','3','2021-08-17 08:26:17','0');
INSERT IGNORE INTO tbllogs VALUES('809','7','login','0','8','2021-08-17 16:05:19','0');
INSERT IGNORE INTO tbllogs VALUES('810','7','logout','0','8','2021-08-17 16:21:37','0');
INSERT IGNORE INTO tbllogs VALUES('811','7','login','0','8','2021-08-18 10:30:44','0');
INSERT IGNORE INTO tbllogs VALUES('812','7','logout','0','8','2021-08-18 10:32:54','0');
INSERT IGNORE INTO tbllogs VALUES('813','5887','Submitted Manuscript','110','1','2021-08-18 10:51:11','0');
INSERT IGNORE INTO tbllogs VALUES('814','SA994','login','0','3','2021-08-18 10:55:16','0');
INSERT IGNORE INTO tbllogs VALUES('815','5887','Submitted Manuscript','111','1','2021-08-18 10:56:09','0');
INSERT IGNORE INTO tbllogs VALUES('816','SA994','login','0','3','2021-08-23 08:36:12','0');
INSERT IGNORE INTO tbllogs VALUES('817','SA994','login','0','3','2021-08-24 08:29:48','0');
INSERT IGNORE INTO tbllogs VALUES('818','SA994','logout','0','3','2021-08-24 09:37:46','0');
INSERT IGNORE INTO tbllogs VALUES('819','SA994','login','0','3','2021-08-24 09:38:03','0');
INSERT IGNORE INTO tbllogs VALUES('820','206','login','0','5','2021-08-24 09:55:26','0');
INSERT IGNORE INTO tbllogs VALUES('821','SA37ecb9a66c7a60372c3616d28de73b13','login','0','6','2021-08-24 10:17:49','0');
INSERT IGNORE INTO tbllogs VALUES('822','206','reviewed','40','5','2021-08-24 11:40:52','0');
INSERT IGNORE INTO tbllogs VALUES('823','9161','Submitted Manuscript','112','1','2021-08-24 11:43:57','0');
INSERT IGNORE INTO tbllogs VALUES('824','9161','Submitted Manuscript','113','1','2021-08-24 11:46:10','0');
INSERT IGNORE INTO tbllogs VALUES('825','9161','Submitted Manuscript','114','1','2021-08-24 11:48:23','0');
INSERT IGNORE INTO tbllogs VALUES('826','9161','Submitted Manuscript','115','1','2021-08-24 11:50:36','0');
INSERT IGNORE INTO tbllogs VALUES('827','9161','Submitted Manuscript','116','1','2021-08-24 11:52:32','0');
INSERT IGNORE INTO tbllogs VALUES('828','7','login','0','8','2021-08-24 13:01:57','0');
INSERT IGNORE INTO tbllogs VALUES('829','7','Export as Excel - List of UI','','8','2021-08-24 13:02:30','0');
INSERT IGNORE INTO tbllogs VALUES('830','7','logout','0','8','2021-08-24 15:07:55','0');
INSERT IGNORE INTO tbllogs VALUES('831','SA994','login','0','3','2021-08-25 08:04:28','0');
INSERT IGNORE INTO tbllogs VALUES('832','SA994','login','0','3','2021-08-25 13:59:02','0');
INSERT IGNORE INTO tbllogs VALUES('833','SA994','logout','0','3','2021-08-25 15:13:00','0');
INSERT IGNORE INTO tbllogs VALUES('834','SA994','login','0','3','2021-08-25 15:13:20','0');
INSERT IGNORE INTO tbllogs VALUES('835','SA37ecb9a66c7a60372c3616d28de73b13','login','0','6','2021-08-25 15:21:02','0');
INSERT IGNORE INTO tbllogs VALUES('836','SA37ecb9a66c7a60372c3616d28de73b13','login','0','6','2021-08-26 09:55:52','0');
INSERT IGNORE INTO tbllogs VALUES('837','9442','Submitted Manuscript','117','1','2021-08-26 12:50:41','0');
INSERT IGNORE INTO tbllogs VALUES('838','7','login','0','8','2021-08-27 11:55:08','0');
INSERT IGNORE INTO tbllogs VALUES('839','7','logout','0','8','2021-08-27 12:00:02','0');
INSERT IGNORE INTO tbllogs VALUES('840','SA2764954f06e1e25b38c46c1caba6ce7c','login','0','3','2021-08-28 11:09:14','0');
INSERT IGNORE INTO tbllogs VALUES('841','9493','Submitted Manuscript','118','1','2021-08-29 08:40:22','0');
INSERT IGNORE INTO tbllogs VALUES('842','9340','Submitted Manuscript','119','1','2021-08-30 15:45:17','0');
INSERT IGNORE INTO tbllogs VALUES('843','6552','Submitted Manuscript','120','1','2021-08-30 20:25:45','0');
INSERT IGNORE INTO tbllogs VALUES('844','6552','Submitted Manuscript','121','1','2021-08-30 20:27:23','0');
INSERT IGNORE INTO tbllogs VALUES('845','6552','Submitted Manuscript','122','1','2021-08-30 20:28:29','0');
INSERT IGNORE INTO tbllogs VALUES('846','6552','Submitted Manuscript','123','1','2021-08-30 20:29:34','0');
INSERT IGNORE INTO tbllogs VALUES('847','6552','Submitted Manuscript','124','1','2021-08-30 20:30:27','0');
INSERT IGNORE INTO tbllogs VALUES('848','6552','Submitted Manuscript','125','1','2021-08-30 20:31:08','0');
INSERT IGNORE INTO tbllogs VALUES('849','SA994','login','0','3','2021-08-31 11:08:31','0');
INSERT IGNORE INTO tbllogs VALUES('850','5938','Submitted Manuscript','126','1','2021-09-03 06:30:04','0');
INSERT IGNORE INTO tbllogs VALUES('851','260','submitted Client Satisfaction Feedback (CSF)','','0','2021-09-03 15:21:02','0');
INSERT IGNORE INTO tbllogs VALUES('852','7','login','0','8','2021-09-03 15:21:29','0');
INSERT IGNORE INTO tbllogs VALUES('853','7','logout','0','8','2021-09-03 15:21:52','0');
INSERT IGNORE INTO tbllogs VALUES('854','9578','Submitted Manuscript','127','1','2021-09-04 10:28:55','0');
INSERT IGNORE INTO tbllogs VALUES('855','SA994','login','0','3','2021-09-06 14:39:12','0');
INSERT IGNORE INTO tbllogs VALUES('856','SA994','logout','0','3','2021-09-06 14:59:33','0');
INSERT IGNORE INTO tbllogs VALUES('857','SA994','login','0','3','2021-09-06 14:59:50','0');
INSERT IGNORE INTO tbllogs VALUES('858','7','login','0','8','2021-09-06 16:23:48','0');
INSERT IGNORE INTO tbllogs VALUES('859','7','logout','0','8','2021-09-06 16:24:16','0');
INSERT IGNORE INTO tbllogs VALUES('860','9122','Submitted Manuscript','128','1','2021-09-12 16:05:03','0');
INSERT IGNORE INTO tbllogs VALUES('861','SA2764954f06e1e25b38c46c1caba6ce7c','login','0','3','2021-09-13 13:13:01','0');
INSERT IGNORE INTO tbllogs VALUES('862','8846','Submitted Manuscript','129','1','2021-09-17 18:09:07','0');
INSERT IGNORE INTO tbllogs VALUES('863','7','login','0','8','2021-09-20 07:04:46','0');
INSERT IGNORE INTO tbllogs VALUES('864','7','login','0','8','2021-09-20 11:44:42','0');
INSERT IGNORE INTO tbllogs VALUES('865','7','logout','0','8','2021-09-20 12:59:39','0');
INSERT IGNORE INTO tbllogs VALUES('866','7','login','0','8','2021-09-20 12:59:44','0');
INSERT IGNORE INTO tbllogs VALUES('867','7','logout','0','8','2021-09-20 13:37:59','0');
INSERT IGNORE INTO tbllogs VALUES('868','7','login','0','8','2021-09-20 14:36:03','0');
INSERT IGNORE INTO tbllogs VALUES('869','7','logout','0','8','2021-09-20 14:49:08','0');
INSERT IGNORE INTO tbllogs VALUES('870','9340','Submitted Manuscript','130','1','2021-09-20 15:04:28','0');
INSERT IGNORE INTO tbllogs VALUES('871','9340','Submitted Manuscript','131','1','2021-09-20 15:19:40','0');
INSERT IGNORE INTO tbllogs VALUES('872','7','login','0','8','2021-09-22 09:10:14','0');
INSERT IGNORE INTO tbllogs VALUES('873','7','logout','0','8','2021-09-22 09:10:41','0');
INSERT IGNORE INTO tbllogs VALUES('874','SA994','login','0','3','2021-09-22 20:40:50','0');
INSERT IGNORE INTO tbllogs VALUES('875','SA994','login','0','3','2021-09-23 09:31:12','0');
INSERT IGNORE INTO tbllogs VALUES('876','SA994','login','0','3','2021-09-28 11:54:16','0');
INSERT IGNORE INTO tbllogs VALUES('877','SA994','added reviewers for','126','3','2021-09-28 14:42:46','0');
INSERT IGNORE INTO tbllogs VALUES('878','SA994','added reviewers for','126','3','2021-09-28 14:42:46','0');
INSERT IGNORE INTO tbllogs VALUES('879','SA994','added reviewers for','126','3','2021-09-28 14:42:46','0');
INSERT IGNORE INTO tbllogs VALUES('880','SA994','added reviewers for','126','3','2021-09-28 14:42:46','0');
INSERT IGNORE INTO tbllogs VALUES('881','SA994','added reviewers for','126','3','2021-09-28 14:42:46','0');
INSERT IGNORE INTO tbllogs VALUES('882','SA994','logout','0','3','2021-09-28 14:45:15','0');
INSERT IGNORE INTO tbllogs VALUES('883','SA994','login','0','3','2021-09-28 14:45:48','0');
INSERT IGNORE INTO tbllogs VALUES('884','1102','accepted review request for','126','5','2021-09-28 19:51:14','0');
INSERT IGNORE INTO tbllogs VALUES('885','1102','login','0','5','2021-09-28 19:52:10','0');
INSERT IGNORE INTO tbllogs VALUES('886','SA37ecb9a66c7a60372c3616d28de73b13','login','0','6','2021-09-29 14:45:00','0');
INSERT IGNORE INTO tbllogs VALUES('887','SA994','login','0','3','2021-09-30 09:41:52','0');
INSERT IGNORE INTO tbllogs VALUES('888','SA994','login','0','3','2021-10-06 09:18:06','0');
INSERT IGNORE INTO tbllogs VALUES('889','SA994','login','0','3','2021-10-06 13:14:16','0');
INSERT IGNORE INTO tbllogs VALUES('890','SA994','added reviewers for','126','3','2021-10-06 14:21:08','0');
INSERT IGNORE INTO tbllogs VALUES('891','SA994','added reviewers for','126','3','2021-10-06 14:21:08','0');
INSERT IGNORE INTO tbllogs VALUES('892','SA994','added reviewers for','126','3','2021-10-06 14:21:08','0');
INSERT IGNORE INTO tbllogs VALUES('893','SA994','added reviewers for','126','3','2021-10-06 14:21:08','0');
INSERT IGNORE INTO tbllogs VALUES('894','SA994','added reviewers for','126','3','2021-10-06 14:21:08','0');
INSERT IGNORE INTO tbllogs VALUES('895','4020','accepted review request for','126','5','2021-10-06 14:56:15','0');
INSERT IGNORE INTO tbllogs VALUES('896','4020','login','0','5','2021-10-06 14:58:20','0');
INSERT IGNORE INTO tbllogs VALUES('897','SA994','added reviewers for','92','3','2021-10-06 15:04:47','0');
INSERT IGNORE INTO tbllogs VALUES('898','SA994','added reviewers for','92','3','2021-10-06 15:04:47','0');
INSERT IGNORE INTO tbllogs VALUES('899','SA994','added reviewers for','92','3','2021-10-06 15:04:47','0');
INSERT IGNORE INTO tbllogs VALUES('900','SA994','added reviewers for','92','3','2021-10-06 15:04:47','0');
INSERT IGNORE INTO tbllogs VALUES('901','SA994','added reviewers for','92','3','2021-10-06 15:04:47','0');
INSERT IGNORE INTO tbllogs VALUES('902','SA994','login','0','3','2021-10-07 09:11:02','0');
INSERT IGNORE INTO tbllogs VALUES('903','SA994','added reviewers for','78','3','2021-10-07 10:07:33','0');
INSERT IGNORE INTO tbllogs VALUES('904','SA994','added reviewers for','78','3','2021-10-07 10:07:33','0');
INSERT IGNORE INTO tbllogs VALUES('905','SA994','added reviewers for','78','3','2021-10-07 10:07:33','0');
INSERT IGNORE INTO tbllogs VALUES('906','SA994','added reviewers for','78','3','2021-10-07 10:07:33','0');
INSERT IGNORE INTO tbllogs VALUES('907','SA994','added reviewers for','78','3','2021-10-07 10:07:33','0');
INSERT IGNORE INTO tbllogs VALUES('908','495','accepted review request for','78','5','2021-10-07 10:56:16','0');
INSERT IGNORE INTO tbllogs VALUES('909','495','login','0','5','2021-10-07 10:56:55','0');
INSERT IGNORE INTO tbllogs VALUES('910','4532','Submitted Manuscript','132','1','2021-10-07 11:31:37','0');
INSERT IGNORE INTO tbllogs VALUES('911','SA994','logout','0','3','2021-10-07 11:34:41','0');
INSERT IGNORE INTO tbllogs VALUES('912','SA994','login','0','3','2021-10-07 11:35:02','0');
INSERT IGNORE INTO tbllogs VALUES('913','495','login','0','5','2021-10-08 07:59:20','0');
INSERT IGNORE INTO tbllogs VALUES('914','495','reviewed','78','5','2021-10-08 08:51:09','0');
INSERT IGNORE INTO tbllogs VALUES('915','495','logout','0','5','2021-10-08 08:51:53','0');
INSERT IGNORE INTO tbllogs VALUES('916','R7b09e9ee67d1f86333da082d011d70f0','accepted review request for','126','5','2021-10-11 18:54:49','0');
INSERT IGNORE INTO tbllogs VALUES('917','1102','login','0','5','2021-10-12 17:27:05','0');
INSERT IGNORE INTO tbllogs VALUES('918','1102','reviewed','126','5','2021-10-12 18:20:44','0');
INSERT IGNORE INTO tbllogs VALUES('919','SA37ecb9a66c7a60372c3616d28de73b13','login','0','6','2021-10-14 10:27:26','0');
INSERT IGNORE INTO tbllogs VALUES('920','4020','login','0','5','2021-10-14 17:13:29','0');
INSERT IGNORE INTO tbllogs VALUES('921','4020','reviewed','126','5','2021-10-14 18:40:34','0');
INSERT IGNORE INTO tbllogs VALUES('922','6214','Submitted Manuscript','133','1','2021-10-15 09:30:48','0');
INSERT IGNORE INTO tbllogs VALUES('923','5719','Submitted Manuscript','134','1','2021-10-15 20:52:25','0');
INSERT IGNORE INTO tbllogs VALUES('924','SA2764954f06e1e25b38c46c1caba6ce7c','login','0','3','2021-10-18 11:58:36','0');
INSERT IGNORE INTO tbllogs VALUES('925','7','login','0','8','2021-10-26 11:29:07','0');
INSERT IGNORE INTO tbllogs VALUES('926','7','logout','0','8','2021-10-26 12:08:52','0');
INSERT IGNORE INTO tbllogs VALUES('927','7','login','0','8','2021-10-26 15:44:32','0');
INSERT IGNORE INTO tbllogs VALUES('928','7','logout','0','8','2021-10-26 15:56:11','0');
INSERT IGNORE INTO tbllogs VALUES('929','SA994','login','0','3','2021-10-28 11:00:18','0');
INSERT IGNORE INTO tbllogs VALUES('930','SA994','logout','0','3','2021-10-28 15:31:13','0');
INSERT IGNORE INTO tbllogs VALUES('931','SA994','login','0','3','2021-10-28 15:31:29','0');
INSERT IGNORE INTO tbllogs VALUES('932','4619','Submitted Manuscript','135','1','2021-10-29 11:53:43','0');
INSERT IGNORE INTO tbllogs VALUES('933','SA994','login','0','3','2021-11-03 09:58:01','0');
INSERT IGNORE INTO tbllogs VALUES('934','7','login','0','8','2021-11-04 15:08:00','0');
INSERT IGNORE INTO tbllogs VALUES('935','7','logout','0','8','2021-11-04 15:15:52','0');
INSERT IGNORE INTO tbllogs VALUES('936','SA994','login','0','3','2021-11-05 10:52:25','0');
INSERT IGNORE INTO tbllogs VALUES('937','9904','Submitted Manuscript','136','1','2021-11-05 15:42:58','0');
INSERT IGNORE INTO tbllogs VALUES('938','9926','Submitted Manuscript','137','1','2021-11-11 00:16:48','0');
INSERT IGNORE INTO tbllogs VALUES('939','9571','Submitted Manuscript','138','1','2021-11-16 12:39:07','0');
INSERT IGNORE INTO tbllogs VALUES('940','9932','Submitted Manuscript','139','1','2021-11-17 13:19:02','0');
INSERT IGNORE INTO tbllogs VALUES('941','SA994','login','0','3','2021-11-21 20:47:04','0');
INSERT IGNORE INTO tbllogs VALUES('942','7','login','0','8','2021-11-22 09:38:27','0');
INSERT IGNORE INTO tbllogs VALUES('943','SA994','login','0','3','2021-11-22 10:41:33','0');
INSERT IGNORE INTO tbllogs VALUES('944','SA994','login','0','3','2021-11-24 08:15:48','0');
INSERT IGNORE INTO tbllogs VALUES('945','SA994','logout','0','3','2021-11-24 08:45:29','0');
INSERT IGNORE INTO tbllogs VALUES('946','SA994','login','0','3','2021-11-24 08:46:13','0');
INSERT IGNORE INTO tbllogs VALUES('947','6552','Submitted Manuscript','140','1','2021-11-27 12:46:00','0');
INSERT IGNORE INTO tbllogs VALUES('948','SA994','login','0','3','2021-12-02 13:56:36','0');
INSERT IGNORE INTO tbllogs VALUES('949','SA994','login','0','3','2021-12-02 14:45:00','0');
INSERT IGNORE INTO tbllogs VALUES('950','8618','Submitted Manuscript','141','1','2021-12-17 19:53:04','0');
INSERT IGNORE INTO tbllogs VALUES('951','10026','Submitted Manuscript','142','1','2022-01-01 21:46:40','0');
INSERT IGNORE INTO tbllogs VALUES('952','7','login','0','8','2022-01-04 07:46:46','0');
INSERT IGNORE INTO tbllogs VALUES('953','7','logout','0','8','2022-01-04 07:52:32','0');
INSERT IGNORE INTO tbllogs VALUES('954','SA37ecb9a66c7a60372c3616d28de73b13','login','0','6','2022-01-04 09:49:44','0');
INSERT IGNORE INTO tbllogs VALUES('955','SAa942372b7357a3a87cfdb1e44337aa4d','login','0','3','2022-01-04 10:06:59','0');
INSERT IGNORE INTO tbllogs VALUES('956','SAa942372b7357a3a87cfdb1e44337aa4d','logout','0','3','2022-01-04 10:26:52','0');
INSERT IGNORE INTO tbllogs VALUES('957','7','login','0','8','2022-01-07 10:33:18','0');
INSERT IGNORE INTO tbllogs VALUES('958','7','login','0','8','2022-01-07 11:42:37','0');
INSERT IGNORE INTO tbllogs VALUES('959','7','logout','0','8','2022-01-07 14:23:23','0');
INSERT IGNORE INTO tbllogs VALUES('960','7','login','0','8','2022-01-07 14:23:28','0');
INSERT IGNORE INTO tbllogs VALUES('961','7','logout','0','8','2022-01-07 16:30:56','0');
INSERT IGNORE INTO tbllogs VALUES('962','SA6bb9f8987cb2a9f7594cf5c23ae54626','login','0','9','2022-01-10 13:59:49','0');
INSERT IGNORE INTO tbllogs VALUES('963','SA6bb9f8987cb2a9f7594cf5c23ae54626','logout','0','9','2022-01-10 14:50:36','0');
INSERT IGNORE INTO tbllogs VALUES('964','7','login','0','8','2022-01-13 12:46:36','0');
INSERT IGNORE INTO tbllogs VALUES('965','SA6bb9f8987cb2a9f7594cf5c23ae54626','login','0','9','2022-01-13 12:47:00','0');
INSERT IGNORE INTO tbllogs VALUES('966','SA6bb9f8987cb2a9f7594cf5c23ae54626','logout','0','9','2022-01-13 14:30:43','0');
INSERT IGNORE INTO tbllogs VALUES('967','7','logout','0','8','2022-01-13 16:01:40','0');
INSERT IGNORE INTO tbllogs VALUES('968','7','login','0','8','2022-01-17 09:38:57','0');
INSERT IGNORE INTO tbllogs VALUES('969','7','logout','0','8','2022-01-17 10:49:19','0');
INSERT IGNORE INTO tbllogs VALUES('970','7','login','0','8','2022-01-17 10:50:44','0');
INSERT IGNORE INTO tbllogs VALUES('971','7','logout','0','8','2022-01-17 10:52:18','0');
INSERT IGNORE INTO tbllogs VALUES('972','7','login','0','8','2022-01-17 10:53:34','0');
INSERT IGNORE INTO tbllogs VALUES('973','7','logout','0','8','2022-01-17 10:55:25','0');
INSERT IGNORE INTO tbllogs VALUES('974','7','login','0','8','2022-01-17 10:55:31','0');
INSERT IGNORE INTO tbllogs VALUES('975','7','logout','0','8','2022-01-17 13:21:09','0');
INSERT IGNORE INTO tbllogs VALUES('976','7','login','0','8','2022-01-17 14:15:52','0');
INSERT IGNORE INTO tbllogs VALUES('977','7','logout','0','8','2022-01-17 15:36:22','0');
INSERT IGNORE INTO tbllogs VALUES('978','7','login','0','8','2022-01-17 15:36:28','0');
INSERT IGNORE INTO tbllogs VALUES('979','7','logout','0','8','2022-01-17 16:04:51','0');
INSERT IGNORE INTO tbllogs VALUES('980','7','login','0','8','2022-01-17 16:04:58','0');
INSERT IGNORE INTO tbllogs VALUES('981','7','logout','0','8','2022-01-17 16:40:06','0');
INSERT IGNORE INTO tbllogs VALUES('982','7','login','0','8','2022-01-17 16:40:14','0');
INSERT IGNORE INTO tbllogs VALUES('983','7','login','0','8','2022-01-18 08:08:13','0');
INSERT IGNORE INTO tbllogs VALUES('984','SAff000e0321d1b5d08691fce9ac4d1733','login','0','3','2022-01-18 09:26:32','0');
INSERT IGNORE INTO tbllogs VALUES('985','7','Export as Excel - List of Lapsed Reviews','','8','2022-01-18 10:37:19','');
INSERT IGNORE INTO tbllogs VALUES('986','7','logout','0','8','2022-01-18 15:36:14','0');
INSERT IGNORE INTO tbllogs VALUES('987','7','login','0','8','2022-01-18 15:36:19','0');



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
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=latin1;

INSERT IGNORE INTO tblmanuscripts VALUES('1','Screening of Philippine Actinomycetes for Biosurfactant Production','','Alvin P. Jimenez','University of the Philippines Los Banos','apjimenez@up.edu.ph','0','','20201223163438_Manuscript_article_of_Dr__Alcantara.pdf','20201223163438_Manuscript_article_of_Dr__Alcantara_Abstract.pdf','','','','2','167','XVII','4','2018','2020-12-23 16:34:38','2021-02-21 22:24:52','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('6','The emergence of Filipino values among forgiveness studies','','DARWIN CRUZ RUNGDUIN','Colegio de San Juan de Letran','darwin.rungduin@letran.edu.ph','0','','20210111115308_emergence_of_filipino_values_in_forgiveness_studies__2013_.pdf','20210111115308_emergence_of_filipino_values_in_forgiveness_studies__2013_.pdf','','','','1','3298','','','','2021-01-11 11:53:08','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('7','ROLE OF SHARED IDENTITY (KAPWA) IN FORGIVING OTHERS: A COLLECTIVISTIC APPROACH IN UNDERSTANDING FORGIVENESS','','DARWIN CRUZ RUNGDUIN','Colegio de San Juan de Letran','darwin.rungduin@letran.edu.ph','0','','20210111121804_664-ArticleText-1402-1-10-20201231_NRCP_copy.pdf','20210111121804_ABSTRACT_NRCP_COPY.pdf','','','','1','3298','','','','2021-01-11 12:18:04','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('9','A SOCIOCULTURAL EXPLORATION OF THE CONCEPTS OF DEATH AND DYING AMONG FILIPINO CHILDREN','','Teresita Tabbada Rungduin','Philippine Normal University','rungduin.tt@pnu.edu.ph','0','','20210112182714_A_SOCIOCULTURAL_EXPLORATION_OF_THE_CONCEPTS_OF_DEATH_AND_DYING_AMONG_FILIPINO_CHILDREN.pdf','20210112182714_A_SOCIOCULTURAL_EXPLORATION_OF_THE_CONCEPTS_OF_DEATH_AND_DYING_AMONG_FILIPINO_CHILDREN_Abstract.pdf','','','','1','7156','','','','2021-01-12 18:27:14','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('10','Community Health Information and Tracking System &#40;CHITS&#41;: Lessons from Eight Years Implementation of a Pioneer Electronic Medical Record System in the Philippines','','Arturo Ongkeko Jr.','University of the Philippines Manila','amongkeko@up.edu.ph','0','','20210113075033_.','20210113075033_6852-community-health-information-and-tracking-system-chits-lessons-from-eight-years-implementation-of-a-pioneer-electronic-medical-record-system-in-the-philippines.pdf','','','','1','7918','','','','2021-01-13 07:50:33','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('24','Bacterial Populations in the Surface Sediments of Lake Lanao ','','Beverly Bermejo Amparado','Mindanao State University - Marawi','beverly.amparado@msumain.edu.ph','0','','20210116193735_BacterialPopnsSurfaceSedimentsLakeLanao_FULL.pdf','20210116193735_BacterialPopnsSurfaceSedimentsLakeLanao_ABS.pdf','20210116193735_BacterialPopnsSurfaceSedimentsLakeLanao_FULL.doc','','','3','201','XVIII','8','2019','2021-01-16 19:37:35','2021-02-05 11:11:09','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('25','Microbiological Water Quality of Lake Lanao Waters','','Beverly Bermejo Amparado','Mindanao State University - Marawi','beverly.amparado@msumain.edu.ph','0','','20210116194557_MicrobiologicalWaterQuality_FULL.pdf','20210116194557_MicrobiologicalWaterQuality_ABS.pdf','20210116194557_MicrobiologicalWaterQuality_FULL.doc','','','3','201','XVIII','8','2019','2021-01-16 19:45:57','2021-03-16 10:02:58','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('26','Lake Lanao Fishes: Relative Abundance Based on Fish Catch','','Sherwin Saguban Nacua','Mindanao State University Marawi','sherwinnacua@gmail.com','0','','20210116204022_LakeLanaoFishes_FULL.pdf','20210116204022_LakeLanaoFishes_ABS.pdf','20210116204022_LakeLanaoFishes_FULL.doc','','','3','2575','XVIII','8','2019','2021-01-16 20:40:22','2021-02-06 10:16:03','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('27','Distribution and Relative Abundance of the Endemic Cyprinid, Barbodes tumba (Herre,1924) from Lake Lanao','','Sherwin Saguban Nacua','Mindanao State University Marawi','sherwinnacua@gmail.com','0','','20210116205306_DistributionRelativeAbundance_FULL.pdf','20210116205306_DistributionRelativeAbundance_ABS.pdf','20210116205306_DistributionRelativeAbundance_FULL.doc','','','3','2575','XVIII','8','2019','2021-01-16 20:53:06','2021-02-09 22:06:31','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('28','Identification and Biodiversity of Mollusks (Gastropods and Bivalves) in Lake Lanao','','Monera Arumpac Salic Hairulla','Mindanao State University-Iligan Institute of Technology','monera.salic@g.msuiit.edu.ph','0','','20210116210819_IdentificationBiodiversityMollusks_FULL.pdf','20210116210819_IdentificationBiodiversityMollusks_ABS.pdf','20210116210819_IdentificationBiodiversityMollusks_FULL.doc','','','3','3342','XVIII','8','2019','2021-01-16 21:08:19','2021-02-10 00:40:46','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('29','Physical and Chemical Characterization of Lake Lanao (Mindanao, Philippines)','','Carmelita Garcia Hansel','Mindanao State University Marawi','carmelita_hansel@yahoo.com','0','','20210116211853_PhysicalChemicalCharacterization_FULL.pdf','20210116211853_PhysicalChemicalCharacterization_ABS.pdf','20210116211853_PhysicalChemicalCharacterization_FULL.doc','','','3','1800','XVIII','8','2019','2021-01-16 21:18:53','2021-02-05 09:39:34','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('30','Water Resource Utilization of Lake Lanao: Its Implications to Socioeconomic Development','','Sulpecia Larita Ponce','Mindanao State University-Iligan Institute of Technology (MSU-IIT)','april27_sol@yahoo.com','0','','20210116213550_Water_Resourcce_Utilization_FULL.pdf','20210116213550_Water_Resourcce_Utilization_ABS.pdf','20210116213550_Water_Resourcce_Utilization_FULL.doc','','','3','2985','XVIII','8','2019','2021-01-16 21:35:50','2021-02-07 16:34:45','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('31','ASIAVR: Asian Studies Virtual Reality Game a Learning Tool','','Kenn Migan Vincent C. Gumonan','Northern Bukidnon State College','kenngumonan@gmail.com','0','','20210203092445_ASIAVR_-_Full_Manuscript.pdf','20210203092445_ASIAVR_-_Abstract.pdf','20210203092445_ASIAVR_-_Full_Manuscript.doc','','','1','8117','','','','2021-02-03 09:24:45','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('38','Potential Antibiotic-Producing Fungi from the Surface Sediments of Lake Lanao','','Chua, Catherine Grace','1College of Medicine, Mindanao State University, Marawi City','catherinegmchua@gmail.com','0','','20210203180850_AmparadoBeverly_PotentialAntibioticProducing_FULL.pdf','20210203180850_AmparadoBeverly_PotentialAntibioticProducing_ABS.pdf','20210203180850_AmparadoBeverly_PotentialAntibioticProducing.doc','','','3','201','XVIII','8','2019','2021-02-03 18:08:50','2021-02-24 23:33:35','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('39','Peace & Governance: Challenges for Sustainable Development of Lake Lanao, Southern Philippines','','Sukarno D. Tanggol','Mindanao State University-Iligan Institute of Technology','chancellor@g.msuiit.edu.ph','0','','20210203182212_TanggolSukarno_PeaceGovernanceChallenges_FULL.pdf','20210203182212_TanggolSukarno_PeaceGovernanceChallenges_ABS.pdf','20210203182212_TanggolSukarno_PeaceGovernanceChallenges_FULL.doc','','','2','3687','XVIII','8','2019','2021-02-03 18:22:12','2021-03-02 15:42:57','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('40','The Social Carrying Capacity of Lake Lanao','','Nimfa L. Bracamonte','College of Arts and Social Sciences of the Mindanao State University – Iligan  Institute of Technology','nimfabutuan@yahoo.com','0','','20210203183748_Social_Carrying_Capacity_FULL.pdf','20210203183748_Social_Carrying_Capacity_ABS.pdf','20210203183748_Social_Carrying_Capacity_FULL.doc','','','3','599','XVIII','8','2019','2021-02-03 18:37:48','2021-08-24 11:40:52','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('41','Implementation of Fuzzy Logic Algorithm in Identifying Gender and Development
Interventions','','Sonza, Rolaida L.','Nueva Ecija University of Science and Technology','rolaidasonza@yahoo.com','0','','20210204201429_Paper_Sonza_Fuzzy_logic2.pdf','20210204201429_Abstract_Fuzzy_Logic.pdf','20210204201429_Paper_Sonza_Fuzzy_logic2.doc','','','1','8127','','','','2021-02-04 20:14:29','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('52','Decision Tree Algorithm in Identifying Specific
Interventions for Gender and Development
Issues','','Sonza, Rolaida L.','Nueva Ecija University of Science and Technology','rolaidasonza@yahoo.com','0','','20210204202307_sonza-decision-jcc__1_.pdf','20210204202307_Abstract_Decision_Tree.pdf','20210204202307_sonza-decision-jcc__word.doc','','','1','8127','','','','2021-02-04 20:23:07','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('53','Ecotourism in the Time of COVID-19 Pandemic: Impact, Lessons Learned, and Ways to Go in Ten Ecotourism Sites in the Philippines','','Belinda Flores Espiritu','University of the Philippines Cebu','bfespiritu@up.edu.ph','0','','20210206161612_Ecotourism_in_the_Time_of_COVID-19_Pandemic_full_paper_for_NRCP_Research_Journal.pdf','20210206161612_Abstract_of_Ecotourism_in_the_Time_of_COVID-19_Pandemic_.pdf','20210206161612_Ecotourism_in_the_Time_of_COVID-19_Pandemic_full_paper_for_NRCP_Research_Journal.doc','','','3','6800','XIX','10','2020','2021-02-06 16:16:12','2021-05-23 21:05:48','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('55','Harana: The Fusion of Indigenous Filipino Tradition and Hispanic Influence','','Hope Sabanpan Yu',' University of San Carlos','imongpaglaum@gmail.com','0','','20210208084339_Harana.pdf','20210208084339_Harana_abstract.pdf','20210208084339_Harana_paper.doc','','','3','4050','XIX','1','2020','2021-02-08 08:43:39','2021-03-23 03:28:09','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('59','Collaborative Role of Nurses as Evaluated by Physicians, and Allied Health Partners: Input to the Formulation of a Role Enhancement Program','','Bradley Loo','Deped ','bradleygoldie.loo001@deped.gov.p','0','','20210211092213_Loo_Collaborative_Role_of_Nurses_as_Evaluated_by_Physicians.pdf','20210211092213_Collaborative_Role_of_Nurses_as_Evaluated_by_Physicians.pdf','20210211092213_Loo_Collaborative_Role_of_Nurses_as_Evaluated_by_Physicians.doc','','','1','8189','','','','2021-02-11 09:22:13','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('62','Comparison of Skin Wound Healing Closed with Intradermal Suture Pattern using Monofilament Poliglecaprone and Multifilament Polyglactin Sutures in Domestic Cats','','Marco F. Reyes','University of the Philippines Los Baños','mfreyes1@up.edu.ph','0','','20210218135232_4_Comparison_of_Skin_Wound_Healing_Closed_-_No_Authors_Name.pdf','20210218135232_4_Comparison_of_Skin_Wound_Healing_Closed_-_Abstract_-_No_Authors_Name.pdf','20210218135232_4_Comparison_of_Skin_Wound_Healing_Closed_-_No_Authors_Name.doc','','','2','SA994','XVII','4','2018','2021-02-18 13:52:32','2021-02-21 21:54:28','_me','','');
INSERT IGNORE INTO tblmanuscripts VALUES('63','A Spatial Econometric Model for Household Electricity Consumption in the Philippines','','Marie Therese S. Sario','University of the Philippines Diliman','sariotherese@gmail.com','0','','20210218135758_3_A_Spatial_Econometric_Model_-_No_Authors_Name.pdf','20210218135758_3_A_Spatial_Econometric_Model_-_Abstract_-_No_Authors_Name.pdf','20210218135758_3_A_Spatial_Econometric_Model_-_No_Authors_Name.doc','','','3','SA994','XVII','4','2018','2021-02-18 13:57:58','2021-02-22 09:59:16','_me','','');
INSERT IGNORE INTO tblmanuscripts VALUES('64','Acute Oral Toxicity and Hypoglycemic Activity of Artocarpus odoratissimus Blanco (Moraceae) fruit extract','','Joseph Mari Baguilod Querequincia','San Pedro College','jmbq_ustgs@yahoo.com','0','','20210218140149_2_Acute_Oral_Toxicity_-_No_Authors_Name.pdf','20210218140149_2_Acute_Oral_Toxicity_-_Abstract_-_No_Authors_Name.pdf','20210218140149_2_Acute_Oral_Toxicity_-_No_Authors_Name.doc','','','3','SA994','XVII','4','2018','2021-02-18 14:01:49','2021-03-07 19:01:50','_me','','');
INSERT IGNORE INTO tblmanuscripts VALUES('65','NARATIBO NG LUBI SA ATING GUNITA: ANG INDUSTRIYA NG NIYOG SA PANITIKAN AT KASAYSAYANG PILIPINO, 1940-2018','','Romeo P. Peña','University of the Philippines Diliman','rppenal@up.edu.ph','0','','20210218140346_1_NARATIBO_NG_LUBI_SA_ATING_GUNITA_-_No_Authors_Name.pdf','20210218140346_1_NARATIBO_NG_LUBI_SA_ATING_GUNITA_-_Abstract_-_No_Authors_Name.pdf','20210218140346_1_NARATIBO_NG_LUBI_SA_ATING_GUNITA_-_No_Authors_Name.doc','','','3','SA994','XVII','4','2018','2021-02-18 14:03:46','2021-03-12 16:57:38','_me','','');
INSERT IGNORE INTO tblmanuscripts VALUES('66','Population density and abundance of long-tailed macaques (Macaca fascicularis) in Puerto Princesa Subterranean River National Park, Palawan, Philippines','','Geneva Carla S. Chavez','University of the Philippines Los Baños','gschavez@up.edu.ph','0','','20210218140602_5_Population_density_-_No_Authors_Name.pdf','20210218140602_5_Population_density_-_Abstract_-_No_Authors_Name.pdf','20210218140602_5_Population_density_-_No_Authors_Name.doc','','','2','SA994','xvii','4','2018','2021-02-18 14:06:02','2021-02-21 21:50:16','_me','','');
INSERT IGNORE INTO tblmanuscripts VALUES('67','COMBINED APPLICATION OF FERMENTED BAMBOO (Bambusa spinosa) AND MOLLUSK (Achatina fulica) LIQUID FERTILIZER CAN IMPROVED LETTUCE (Lactuca sativa var. CURLY GREEN) PRODUCTION','','Danny Carabio','Cebu Technological University','danny.carabio@ctu.edu.ph','0','','20210219092409_COMBINED_APPLICATION_OF_FERMENTED_BAMBOO.pdf','20210219092409_Abstract_COMBINED_APPLICATION_OF_FERMENTED_BAMBOO-converted.pdf','20210219092409_COMBINED_APPLICATION_OF_FERMENTED_BAMBOO.dot','','','1','7408','','','','2021-02-19 09:24:09','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('68','FERMENTED SEAWEED (Kappaphycus alverezii) BY-PRODUCT PROMOTES GROWTH AND DEVELOPMENT OF LETTUCE (Lactuca sativa VAR. CURLY GREEN)','','Pet Roey L. Pascual','Cebu Technological University','petroey.pascual@ctu.edu.ph','0','','20210219092725_FERMENTED_SEAWEED__Kappaphycus_alverezii__BYPRODUCT_PROMOTES_GROWTH_AND_DEVELOPMENT.pdf','20210219092725_Abtract_FERMENTED_SEAWEED__Kappaphycus_alverezii__BYPRODUCT_PROMOTES_GROWTH_AND_DEVELOPMENT-converted.pdf','20210219092725_FERMENTED_SEAWEED__Kappaphycus_alverezii__BYPRODUCT_PROMOTES_GROWTH_AND_DEVELOPMENT.dot','','','1','7408','','','','2021-02-19 09:27:25','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('69','Optimization of Straight-bladed Darrieus type vertical axis wind blade for low wind speed','','Christian Malacapo Mortel/Mechanical Engineering','Romblon State University','xtian_mortelrme@yahoo.com','0','','20210223142449_MortelChristian_Optimization_of_Straight-bladed_Darrieus_type_vertical_axis_wind_blade_for_low_wind_speed.pdf','20210223142449_Abstract.pdf','20210223142449_.','','','1','7305','','','','2021-02-23 14:24:49','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('70','Feelings, Cognitions, Behaviors of Filipinos during the COVID-19 Pandemic','','Ma. Cecilia G. Conaco','University of the Philippines Diliman','cecillegc@gmail.com','0','','20210304131124_1_Feelings__Cognitions__Behaviors_of_Filipinos_during_the_COVID-19_Pandemic_-_No_Authors_Name.pdf','20210304131124_1_Feelings__Cognitions__Behaviors_of_Filipinos_during_the_COVID-19_Pandemic_-_Abstract_No_Authors_Name.pdf','20210304131124_1_Feelings__Cognitions__Behaviors_of_Filipinos_during_the_COVID-19_Pandemic_-_No_Authors_Name.doc','','','3','SA994','XIX','10','2020','2021-03-04 13:11:24','2021-07-05 22:23:41','_me','','');
INSERT IGNORE INTO tblmanuscripts VALUES('71','Content Analysis of Philippine government policies and issuances regarding 2020 pandemic (COVID-19) ','','Laufred Ilagan Hernandez','University of the Philippines Manila','lihernandez@up.edu.ph','0','','20210304131408_3_Content_Analysis_of_Philippine_Government_Policies_and_Issuances_regarding_2020_Pandemic_-_No_Authors_Name.pdf','20210304131408_3_Content_Analysis_of_Philippine_Government_Policies_and_Issuances_regarding_2020_Pandemic_-_Abstract_No_Authors_Name.pdf','20210304131408_3_Content_Analysis_of_Philippine_Government_Policies_and_Issuances_regarding_2020_Pandemic_-_No_Authors_Name.doc','','','3','SA994','XIX','10','2020','2021-03-04 13:14:08','2021-03-22 15:34:19','_me','','');
INSERT IGNORE INTO tblmanuscripts VALUES('72','First Report on the Density and Size
Frequency Distribution of the Napoleon Wrasse, Cheilinus undulatus in the Tubbataha Reefs Natural Park, Philippines','','Cleto L. Nanola Jr.','University of the Philippines Mindanao','clnanola@up.edu.ph','0','','20210305104011_Nanola_etal_2021_first_report_on_the_density_and_size_of_napoleon_wrasse_.pdf','20210305104011_Nanola_etal_2021_Cheilinus_undulatus_abstract.pdf','20210305104011__PRO__20-066_-_Na__ola_et_al__-_Manuscript__Edited___23_Sep_2020_1.doc','','','1','7825','','','','2021-03-05 10:40:11','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('73','Enhanced Assimilation Rate due to Seaweed Biostimulant Improves Growth of Indigenous Ricebean (Vigna umbellata)','','Pet Roey L. Pascual','Cebu Technological University','danny.carabio@ctu.edu.ph','0','','20210308111028_Enhanced_Assimilation_Rate_due_to_Seaweed_Biostimulant_Improves_Growth_of_Indigenous_Rice_bean__Vigna_umbellata_.pdf','20210308111028_Abstract_Enhanced_Assimilation_Rate_due_to_Seaweed_Biostimulant_Improves_Growth_of_Indigenous_Rice_bean__Vigna_umbellata_.pdf','20210308111028_Enhanced_Assimilation_Rate_due_to_Seaweed_Biostimulant_Improves_Growth_of_Indigenous_Rice_bean__Vigna_umbellata_.doc','','','1','7408','','','','2021-03-08 11:10:28','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('74','Ciliate abundance in Lake Lanao and its bioindication on water quality ','','Fema Mag-aso Abamo','Mindanao State University Marawi','yadfem@yahoo.com','0','','20210308145852_ciliate_abundance_research_article_-_without_authors_name.pdf','20210308145852_ciliate_abundance_research_article_-_Abstract.pdf','20210308145852_ciliate_abundance_research_article_-_without_authors_name.doc','','','3','SA994','XVIII','8','2019','2021-03-08 14:58:52','2021-03-25 22:10:38','_me','','');
INSERT IGNORE INTO tblmanuscripts VALUES('75','An Ethnolinguistic Vitality Study of the Hanunoo Mangyan Language','','Rochelle Irene Garcia Lucas','De La Salle University','rochelle.lucas@dlsu.edu.ph','0','','20210308150110_Hanunoo_Mangyan_manuscript.pdf','20210308150110_Hanunoo_Mangyan_manuscript_-_Abstract.pdf','20210308150110_Hanunoo_Mangyan_manuscript.doc','','','3','SA994','XIX','1','2020','2021-03-08 15:01:10','2021-03-29 18:27:49','_me','','');
INSERT IGNORE INTO tblmanuscripts VALUES('76','A Research Policy Study on Innovation, Technology & Research in Designing A Communication Style Guide','','Pusta, Maria Gwenetha','University of Santo Tomas','gypusta@ust.edu.ph','0','','20210308235022_IJSIR_-_pdf.pdf','20210308235022_A_Research_Policy_Study_on_the_Innovation.pdf','20210308235022_A_Research_Policy_Study_on_Innovation.doc','','','1','7830','','','','2021-03-08 23:50:22','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('77','GENDER-SPECIFIC INSIGHTS BASED ON COVID-19 EPIDEMIOLOGICAL AND SOCIO-ECONOMIC DATA','','Jomar Fajardo Rabajante','University of the Philippines Los Baños','jfrabajante@up.edu.ph','0','','20210309134540_4_Gender-specific_insights_-No_Authors_Name.pdf','20210309134540_4_Gender-specific_insights_-_Abstract_-_No_Authors_Name.pdf','20210309134540_4_Gender-specific_insights_-No_Authors_Name.doc','','','3','SA994','XIX','10','2020','2021-03-09 13:45:40','2021-04-27 08:56:02','_me','','');
INSERT IGNORE INTO tblmanuscripts VALUES('78','The Stories of Filipino Pregnant Teenagers and Teenage Mothers During the COVID-19 Pandemic Crisis','','Gloria Luz Martinez Nelson','University of the Philippines Los Baños','gmnelson@up.edu.ph','0','','20210323134918_5_The_Stories_of_Filipino_Pregnant_Teenagers_and_Teenage_Mothers_During_the_COVID-19_Pandemic_Crisis.pdf','20210323134918_5_The_Stories_of_Filipino_Pregnant_Teenagers_and_Teenage_Mothers_During_the_COVID-19_Pandemic_Crisis_-_Abstract.pdf','20210323134918_5_The_Stories_of_Filipino_Pregnant_Teenagers_and_Teenage_Mothers_During_the_COVID-19_Pandemic_Crisis.doc','','','3','2621','XIX','1','2021','2021-03-23 13:49:18','2021-10-08 08:51:09','_sk_r','','');
INSERT IGNORE INTO tblmanuscripts VALUES('79','University Quality Measures Based on Global Ranking System','','Constantino Gazo Medilo','Southern Leyte State University','constantinogmedilojr@gmail.com','0','','20210325042236_University_Quality_Measures_Based_on_Global_Ranking_System_Abstract.pdf','20210325042236_University_Quality_Measures_Based_on_Global_Ranking_System_Abstract.pdf','20210325042236_University-Quality-Measures_Blinded_Manuscript.doc','','','1','4619','','','','2021-03-25 04:22:36','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('80','Farmer researchers, researching farmers: Enhancing researcher-farmer collaboration through Mobile Application','','Eugenia Ramirez Zhuo','UNIVERSITY OF SANTO TOMAS','erzhuo@ust.edu.ph','0','','20210422182630_Farmer_researchers__researching_farmers-_Enhancing_researcher-farmer_collaboration_through_Mobile_Application.pdf','20210422182630_Farmer_researchers-Abstract.pdf','20210422182630_Farmer_researchers__researching_farmers-_Enhancing_researcher-farmer_collaboration_through_Mobile_Application.doc','','','1','4758','','','','2021-04-22 18:26:30','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('83','Removal of sodium diclofenac from aqueous solutions by rice hull
biochar','','Judilyn Q. Filipinas','Department of Chemical Engineering, Mindanao State University Main Campus, Marawi City, Lanao del Sur, Philippines','filipinas.judy@msumain.edu.ph','0','','20210507180333_Filipinas2021_Article_RemovalOfSodiumDiclofenacFromA.pdf','20210507180333_Filipinas2021_Article_RemovalOfSodiumDiclofenacFromA-1.pdf','20210507180333_Filipinas2021_Article_RemovalOfSodiumDiclofenac.doc','','','1','8965','','','','2021-05-07 18:03:33','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('84','Effectiveness of Spiral Approach in Physics Education','','JHOANNE CATINDIG ORILLO','De La Salle University','jdcatindig@gmail.com','0','','20210514150545_Effectiveness_of_Spiral_Approach_in_Physics_Education.pdf','20210514150545_Effectiveness_of_Spiral_Approach_in_Physics_Education__Abstract_.pdf','20210514150545__Effectiveness_of_Spiral_Approach_in_Physics_Education.doc','','','1','5133','','','','2021-05-14 15:05:45','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('85','Literature Review on Barangay Governance Performance during COVID-19 Pandemic in South Central Mindanao, Philippines ','','SAIDAMIN PULAYAGAN BAGOLONG','Cotabato State University','saidamin_bagolong@ccspc.edu.ph','0','','20210611165843_Literature_Review_on_Barangay_Governance_Performance_during_COVID-19_Pandemic_in_South_Central_Mindanao__Philippines__Full_Paper_.pdf','20210611165843_Abstract.pdf','20210611165843_Literature_Review_on_Barangay_Governance_Performance_during_COVID-19_Pandemic_in_South_Central_Mindanao__Philippines__Full_Paper_.doc','','','1','6744','','','','2021-06-11 16:58:43','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('86','Regulated Elementary Madrasah in the Philippines as Basis for Policy Integration in the Bangsamoro Region ','','SAIDAMIN PULAYAGAN BAGOLONG','Cotabato State University','saidamin_bagolong@ccspc.edu.ph','0','','20210611170640_Regulated_Elementary_Madrasah_in_the_Philippines_as_Basis_for_Policy_Integration_in_the_Bangsamoro_Region_edited__Full_Paper_.pdf','20210611170640_Regulated_Elementary_Madrasah_in_the_Philippines_as_Basis_for_Policy_Integration_in_the_Bangsamoro_Region.pdf','20210611170640_Regulated_Elementary_Madrasah_in_the_Philippines_as_Basis_for_Policy_Integration_in_the_Bangsamoro_Region_edited__Full_Paper_.doc','','','1','6744','','','','2021-06-11 17:06:40','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('87','Correlates of Perception of COVID-19 health
risk among Filipino youth in a
private university in Manila, Philippines','','Myla Arcinas','De La Salle University','myla.arcinas@dlsu.edu.ph','0','','20210621101335_Correlates_of_Perception_of_COVID-19_health_risk_among_Filipino_Youth_in_a_Private_University_in_Manila.pdf','20210621101335_Abstract-_Correlates_of_Perception.pdf','20210621101335_Correlates_of_Perception_of_COVID-19_health_risk_among_Filipino_Youth_in_a_Private_University_in_Manila.doc','','','1','8844','','','','2021-06-21 10:13:35','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('88','Vetiver (Vetiveria zizanioides) as Phytoremediator on Chromium and Nickel Uptake in Lowland Rice Soils Affected by Mining Activities','','Venus O. Saz','Cavite State University','vosaz@cvsu.edu.ph','0','','20210622121708_NRCP___Manus.pdf','20210622121708_abstract_NRCP.pdf','20210622121708_NRCP__manus.doc','','','1','8352','','','','2021-06-22 12:17:08','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('89','Kierkegaard in Quiapo!: An Existential Look at the Quiapo Black Nazarene Popular Religious Experience ','','Rhochie Avelino Ebora Matienzo','University of Santo Tomas','rematienzo@ust.edu.ph','0','','20210625151131_Matienzo_2014_Kierkegaard_in_Quiapo_An_Existential_Look_SCIENTIA.pdf','20210625151131_Abstract_Kierkegaard_in_Quiapo_An_Existential_Look_at_the__Quiapo_Black_Nazarene_Popular_Religious_Experience_2014.pdf','20210625151131_Kierkegaard_in_Quiapo.doc','','','1','2404','','','','2021-06-25 15:11:31','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('90','MACROINVERTEBRATES SPECIES AS WATER QUALITY INDICATOR','','Marloun Gasoc, Rebeca Alagasi, Melanie Rivas','Surigao Del Sur State University- Lianga Campus','marloungasoc@gmail.com','0','','20210626110045_FULL_MANUSCRIPT.pdf','20210626110045_Abstract.pdf','20210626110045_FULL-MANUSCRIPT.doc','','','1','9218','','','','2021-06-26 11:00:45','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('91','Online Learning Inter alia: Fostering Metacognitive Skills Awareness in Curriculum Design Process and its Perceived Mediating Influences to Student Achievement in Online Distance Learning','','Daniel Day V. Aguillon','Adamson University','daniel.day.aguillon@adamson.edu.','0','','20210627182355_Full_Manuscript.pdf','20210627182355_Abstract.pdf','20210627182355_Full_Manuscript.doc','','','1','8008','','','','2021-06-27 18:23:55','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('92','MAPPING OF MENTAL HEALTH & PSYCHOSOCIAL SUPPORT SERVICES IN THE PHILIPPINES IN THE TIME OF COVID-19','','Elizabeth P. De Castro, PhD','Psychosocial Support and Children\'s Rights Resource Center','beth_pst@yahoo.com','0','','20210627183140_Mapping_of_Mental_Health___Psychosocial_Support_Services_in_the_Philippines_in_the_Time_of_COVID-19.pdf','20210627183140_Abstract_Mapping_of_Mental_Health___Psychosocial_Support_Services_in_the_Philippines_in_the_Time_of_COVID-19.pdf','20210627183140_Mapping_of_Mental_Health___Psychosocial_Support_Services_in_the_Philippines_in_the_Time_of_COVID-19.doc','','','2','9219','XIX','1','2021','2021-06-27 18:31:40','2021-10-06 15:04:47','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('93','APPROACHES TO NANO-BASED VACCINES TOWARDS SARS-COV-2 MANAGEMENT','','Erwin Faller','San Pedro College','erwinfaller1007@gmail.com','0','','20210712183157_Padilla_IJAR-36173.pdf','20210712183157_Padilla_IJAR-36173.pdf','20210712183157_Padilla_IJAR-36173-converted.doc','','','1','5760','','','','2021-07-12 18:31:57','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('94','A Perspective Review On Diabetes Mellitus And The Potential Antidiabetic Activity Of Medicinal Plants','','Maryglen Ferriol Gargantiel','Fellowship Baptist College','mary_gargantiel@yahoo.com','0','','20210712183911_Diabetes_Glen_Erwin_Journal.pdf','20210712183911_Diabetes_Glen_Erwin_Journal.pdf','20210712183911_Diabetes_Glen_Erwin_Journal-converted.doc','','','1','5760','','','','2021-07-12 18:39:11','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('95','GISWaterMap: Drinking Wtaer Mapping with Decision Support System','','JULIETA  BAYSA BABAS','Cagayan State University','julsbabas@csu.edu.ph','0','','20210725152315_GISWaterMap.pdf','20210725152315_Abstract_GISWaterMap_Drinking_water_mapping_with_DSS.pdf','20210725152315_NRCP_GISWaterMap.doc','','','1','4671','','','','2021-07-25 15:23:15','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('96','Programming Competencies of Filipino Information Technology Students: Inputs to Improving Instructional Processes','','JULIETA  BAYSA BABAS','Cagayan State University','julsbabas@csu.edu.ph','0','','20210725153338_Programming_competency.pdf','20210725153338_Abstract_Programming_Competency.pdf','20210725153338_NRCP_Proramming_Competency.doc','','','1','4671','','','','2021-07-25 15:33:38','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('97','Physical Learning Environment on the Academic Achievement in Entrepreneurship of Grade 10 Students','','Paul Emmanuel P. Dela Rosa','Southern Luzon State University','delarosapaulemmanuelpayabyab@gma','0','','20210731233731_Manuscript_without_author_details.pdf','20210731233731_Abstract_New.pdf','20210731233731_Manuscript_without_author_details.doc','','','1','8652','','','','2021-07-31 23:37:31','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('98','Tracking Directions and Associations among Key Influencers of Nerian Happiness: Introducing PowerBI in Educational Research','','Zarren Aleta Gaddi, MAEd','San Felipe Neri Catholic School, Jose Rizal University','zarrengaddi@gmail.com','0','','20210801113106_Tracking_Directions_of_Nerian_Happiness.pdf','20210801113106_Tracking_Directions_and_Associations_among_Key_Influencers_of_Nerian_Happiness_Abstract.pdf','20210801113106_Tracking_Directions_of_Nerian_Happiness.doc','','','1','9256','','','','2021-08-01 11:31:06','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('99','The Influence of Research Skills to the Research Attitude of Senior High School Students and Faculty of RCAM Educational System Cluster 3: Basis for a Research Protocol for Private Schools','','Zarren Aleta Gaddi, MAEd','Dr. Carlos S. Lanting College','zarrengaddi@gmail.com','0','','20210801114117_NRCP_Submission.pdf','20210801114117_ABSTRACT.pdf','20210801114117_NRCP_submission.doc','','','1','9256','','','','2021-08-01 11:41:17','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('100','Blending Extracurricular Activities with Academic Performance: Pain or Gain?','','Bonimar T. Afalla','Nueva Vizcaya State University','bonimartominez@yahoo.com','0','','20210802195740_Blending_Extracurricular_Activities_BTAfalla.pdf','20210802195740_Blending_Extracurricular_Activitties_Abstract.pdf','20210802195740_Blending_Extracurricular_Activitties.doc','','','1','3767','','','','2021-08-02 19:57:40','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('101','Sustaining Academic Success through Effective Classroom Management','','Bonimar T. Afalla','Nueva Vizcaya State University','bonimartominez@yahoo.com','0','','20210802200222_Sustaining_Academic_Success.pdf','20210802200222_Sustaining_Academic_Success_Abstract.pdf','20210802200222_Sustaining_Academic_Success.doc','','','1','3767','','','','2021-08-02 20:02:22','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('102','Sustaining Academic Success Through Effective Classroom Management','','Bonimar T. Afalla','Nueva Vizcaya State University','bonimartominez@yahoo.com','0','','20210802200614_Sustaining_Academic_Success_BTAfalla_FLFabelico.pdf','20210802200614_Sustaining_Academic_Success_Abstract.pdf','20210802200614_Sustaining_Academic_Success.doc','','','1','3767','','','','2021-08-02 20:06:14','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('103','STUDENT’S PERCEPTIONS TOWARDS ACADEMIC HONESTY IN THE NEW NORMAL: A BASIS FOR THE ADOPTION OF ACADEMIC INTEGRITY 
POLICY IN MODULAR DISTANCE LEARNING','','Catherine s. Oliquino/Sports Management/Non Member','Bulihan Integrated National High School - Department of Education','catherine.oliquino@deped.gov.ph','0','','20210802203804_CATHY_AND_JOSEPH-BASIC_RESEARCH.pdf','20210802203804_CATHY_AND_JOSEPH-_ABSTRACT.pdf','20210802203804_CATHY_AND_JOSEPH-BASIC_RESEARCH.doc','','','1','9191','','','','2021-08-02 20:38:04','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('104','Real State Web Application With Android Augmented Reality House Catalogue','','Rolaida Sonza','Nueva Ecuja University of Science and Technology','rolaidasonza@yahoo.com','0','','20210804170921_Real-State-Web-Application-With-Android-Augmented-Reality-House-Catalogue.pdf','20210804170921_Abstract_Real_State_Web_Application_With_Android_Augmented_Reality_House_Catalogue.pdf','20210804170921_Real_State_Web_Application_With_Android_Augmented_Reality_House_Catalogue_final.doc','','','1','8127','','','','2021-08-04 17:09:21','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('105','Augmented Reality for Education: A Review','','Carlo H. Godoy Jr','Philippine Navy','jhayar11090408@gmail.com','0','','20210806085413_IJISRT20JUN256.pdf','20210806085413_IJISRT20JUN256_Abstract.pdf','20210806085413_IJISRT20JUN256.doc','','','1','6471','','','','2021-08-06 08:54:13','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('106','A Review of Game-based Mobile E-Learning Applications','','Carlo H. Godoy Jr','Philippine Navy','jhayar11090408@gmail.com','0','','20210806091646_2101_03683.pdf','20210806091646_2101_03683_abstract.pdf','20210806091646_2101_03683.doc','','','1','6471','','','','2021-08-06 09:16:46','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('107','Augmented Reality and Gamification: A Framework for Developing Supplementary Learning Tool','','Carlo H. Godoy Jr','Philippine Navy','jhayar11090408@gmail.com','0','','20210806131843_218-1-270-1-10-20210112.pdf','20210806131843_218-1-270-1-10-20210112_abstract.pdf','20210806131843_218-1-270-1-10-20210112.doc','','','1','6471','','','','2021-08-06 13:18:43','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('108','Motorcycle System for Optimum Road Safety with Anti-theft Capability','','Carlo H. Godoy Jr','Philippine Navy','jhayar11090408@gmail.com','0','','20210806140107_IJISRT20JUN314.pdf','20210806140107_IJISRT20JUN314_abstract.pdf','20210806140107_IJISRT20JUN314.doc','','','1','6471','','','','2021-08-06 14:01:07','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('109','LEARNING ELECTROCHEMISTRY USING FLIPPED CLASSROOM MODEL LEARNING MODULE ','','Dexter C. Necor','Sultan Kudarat State University','dexternecor@sksu.edu.ph','0','','20210811094439_NECOR-NRCP.pdf','20210811094439_abstract.pdf','20210811094439_LEARNING_ELECTROCHEMISTRY_USING_FLIPPED_CLASSROOM_MODEL_LEARNING_MODULE.doc','','','1','9013','','','','2021-08-11 09:44:39','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('110','Determination of Heavy Metals in Herbal Food Supplements using Bismuth/Multi-walled Carbon Nanotubes/Nafion modified Graphite Electrodes sourced from Waste batteries','','Shirley Delos Reyes Tiong-Palisoc','De La Salle University','shirley.palisoc@dlsu.edu.ph','0','','20210818105111_Full_Manuscript_-_Determination_of_Heavy_Metals_in_Herbal_Food_Supplements_using_Bismuth__Multi-walled_Carbon_Nanotubes__Nafion_modified_Graphite_Electrodes_sourced_from_Waste_batteries.pdf','20210818105111_Abstract_-_Determination_of_Heavy_Metals_in_Herbal_Food_Supplements_using_Bismuth__Multi-walled_Carbon_Nanotubes__Nafion_modified_Graphite_Electrodes_sourced_from_Waste_batteries-converted.pdf','20210818105111_Full_Manuscript_-_Determination_of_Heavy_Metals_in_Herbal_Food_Supplements_using_Bismuth__Multi-walled_Carbon_Nanotubes__Nafion_modified_Graphite_Electrodes_sourced_from_Waste_batteries.doc','','','1','5887','','','','2021-08-18 10:51:11','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('111','Highly sensitive determination of heavy metals in water prior to and after remediation using Citrofortunella Microcarpa','','Shirley Delos Reyes Tiong-Palisoc','De La Salle University','shirley.palisoc@dlsu.edu.ph','0','','20210818105609_Full_Manuscript_-_Highly_sensitive_determination_of_heavy_metals_in_water_prior_to_and_after_remediation_using_Citrofortunella_Microcarpa.pdf','20210818105609_Abstract_-_Highly_sensitive_determination_of_heavy_metals_in_water_prior_to_and_after_remediation_using_Citrofortunella_Microcarpa.pdf','20210818105609_Full_Manuscript_-_Highly_sensitive_determination_of_heavy_metals_in_water_prior_to_and_after_remediation_using_Citrofortunella_Microcarpa.doc','','','1','5887','','','','2021-08-18 10:56:09','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('112','Agro-Waste Research and Augmentation (AWRA): Carbonization of Coconut (Cocos nucifera) Husks as Raw Materials for Charcoal Briquettes','','Teody Lester V. Panela','Northwest Samar State University','teodyp@gmail.com','0','','20210824114357_Full_Paper_06.pdf','20210824114357_Abstract_Paper_06.pdf','20210824114357_Full_Paper_06.doc','','','1','9161','','','','2021-08-24 11:43:57','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('113','Agro-Waste Research and Augmentation (AWRA): Development of Animal-Based Gelatin Edible Bioplastic','','Teody Lester V. Panela','Northwest Samar State University','teodyp@gmail.com','0','','20210824114610_Full_Paper_07.pdf','20210824114610_Abstract_Paper_07.pdf','20210824114610_Full_Paper_07.doc','','','1','9161','','','','2021-08-24 11:46:10','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('114','Concentrating on Overt and Very Intense Disruption (COVID) of Livelihood: A Phenomenological Study of Career Changers During the Pandemic','','Teody Lester V. Panela','Northwest Samar State University','teodyp@gmail.com','0','','20210824114823_Full_Paper_08.pdf','20210824114823_Abstract_Paper_08.pdf','20210824114823_Full_Paper_08.doc','','','1','9161','','','','2021-08-24 11:48:23','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('115','Agro-Waste Research and Augmentation (AWRA) Phase 1:
A Phenomenological Study of Experiences of Farmer on
Agro-Waste Management','','Teody Lester V. Panela','Northwest Samar State University','teodyp@gmail.com','0','','20210824115036_Full_Paper_09.pdf','20210824115036_Abstract_Paper_09.pdf','20210824115036_Full_Paper_09.doc','','','1','9161','','','','2021-08-24 11:50:36','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('116','Agro-Waste Research and Augmentation (AWRA) Phase 2: Carbonization of Rice Husk, Corn Stem and Husk and Giant Taro Peel as Raw Materials for 
Charcoal Briquettes','','Teody Lester V. Panela','Northwest Samar State University','teodyp@gmail.com','0','','20210824115232_Full_Paper_10.pdf','20210824115232_Abstract_Paper_10.pdf','20210824115232_Full_Paper_10.doc','','','1','9161','','','','2021-08-24 11:52:32','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('117','CYCLICITY OF MOVES IN THE INTRODUCTION SECTION OF RESEARCH ARTICLES 
WRITTEN BY FILIPINO ACADEMIC WRITERS IN APPLIED LINGUISTICS
','','Rodrigo C, Morales, PhD','Department of Education Schools Division of Paranaque City','rodrigo.morales001@deped.gov.ph','0','','20210826125041_NCRP_RESEARCH_SUBMISSION_AUG_26_2021.pdf','20210826125041_NCRP_SUBMISSION_ABSTRACT.pdf','20210826125041_AUGSUT_26_2021_NCRP_SUBMISSION.doc','','','1','9442','','','','2021-08-26 12:50:41','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('118','
E-safety in the use of social networking application','','Teodoro F Revano JR','FEU Institute of Technology','tfrevanojr@feutech.edu.ph','0','','20210829084022_IJATCSE_1V1.pdf','20210829084022_E-Safety_Abstract.pdf','20210829084022_IJATCSE_1V1.doc','','','1','9493','','','','2021-08-29 08:40:22','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('119','FABRICATION OF FUZZY LOGIC 
CONTROLLER ON SPEECH LABORATORY 
SYSTEM USING AT89C2051 
MICROCONTROLLER','','Jerry I. Teleron','Surigao State College of Technology','jteleron@ssct.edu.ph','0','','20210830154517_journal_ijasc_2-2_1883838651_1_.pdf','20210830154517_journal_ijasc_2-2_1883838651_1_.pdf','20210830154517_Fabrication_on_fuzzy_logic_controller_on_speech_laboratory_system_11-11-19.doc','','','1','9340','','','','2021-08-30 15:45:17','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('120','Threshold Determination Using Bi-hazard Fragility Curves for the Evaluation of Structural Health Monitoring of USHER Technology','','MICHAEL BAUTISTA BAYLON','USHER Technologies Inc.','ikingbalon@gmail.com','0','','20210830202545_Baylon_2020_IOP_Conf__Ser___Mater__Sci__Eng__739_012002.pdf','20210830202545_ABSTRACT_Baylon_2020_IOP_Conf__Ser___Mater__Sci__Eng__739_012002.pdf','20210830202545_Baylon_2020_IOP_Conf__Ser___Mater__Sci__Eng__739_012002.doc','','','1','6552','','','','2021-08-30 20:25:45','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('121','Cost Impact Analysis on the DPWH Guideline and Implementing Rules on Earthquake Recording Instrumentation for Private Buildings using Multi-Criteria Decision Analysis-Analytical Hierarchy Process (MCDAAHP) in the City of Manila','','MICHAEL BAUTISTA BAYLON','USHER Technologies Inc.','ikingbalon@gmail.com','0','','20210830202723_Alfonso_2020_IOP_Conf__Ser___Mater__Sci__Eng__739_012005.pdf','20210830202723_Alfonso_2020_IOP_Conf__Ser___Mater__Sci__Eng__739_012005.pdf','20210830202723_Alfonso_2020_IOP_Conf__Ser___Mater__Sci__Eng__739_012005.doc','','','1','6552','','','','2021-08-30 20:27:23','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('122','SEISMIC ASSESSMENT OF LRT LINE 1 MONUMENTO TO 5TH AVENUE CARRIAGEWAY PIER USING FRAGILITY CURVE','','MICHAEL BAUTISTA BAYLON','USHER Technologies Inc.','ikingbalon@gmail.com','0','','20210830202829_07-SEISMIC-ASSESSMENT-OF-LRT-LINE-1-MONUMENTO-TO-5TH-AVENUE-CARRIAGEWAY-PIER-USING-FRAGILITY-CURVE.pdf','20210830202829_ABSTRACT_07-SEISMIC-ASSESSMENT-OF-LRT-LINE-1-MONUMENTO-TO-5TH-AVENUE-CARRIAGEWAY-PIER-USING-FRAGILITY-CURVE.pdf','20210830202829_07-SEISMIC-ASSESSMENT-OF-LRT-LINE-1-MONUMENTO-TO-5TH-AVENUE-CARRIAGEWAY-PIER-USING-FRAGILITY-CURVE.doc','','','1','6552','','','','2021-08-30 20:28:29','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('123','Assessing the Performance of a Transportation Lifeline in the Philippines, the Light Rail Transit (LRT) System, Under a Large Magnitude Earthquake','','MICHAEL BAUTISTA BAYLON','USHER Technologies Inc.','ikingbalon@gmail.com','0','','20210830202934_2747_001IABSESeoul2012.pdf','20210830202934_ABSTRACT_2747_001IABSESeoul2012.pdf','20210830202934_2747_001IABSESeoul2012.doc','','','1','6552','','','','2021-08-30 20:29:34','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('124','Seismic assessment of CAMANAVA transportation lifelines using fragility analysis','','MICHAEL BAUTISTA BAYLON','USHER Technologies Inc.','ikingbalon@gmail.com','0','','20210830203027_Paper_19.pdf','20210830203027_ABSTRACT_Paper_19.pdf','20210830203027_Paper_19.doc','','','1','6552','','','','2021-08-30 20:30:27','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('125','Seismic Vulnerability Assessment of Adamson University
Buildings\' As-Built using Fragility Curves','','MICHAEL BAUTISTA BAYLON','USHER Technologies Inc.','ikingbalon@gmail.com','0','','20210830203108_Seismic_Vulnerability_Assessment_of_Adamson_Univer.pdf','20210830203108_ABSTRACT_Seismic_Vulnerability_Assessment_of_Adamson_Univer.pdf','20210830203108_Seismic_Vulnerability_Assessment_of_Adamson_Univer.doc','','','1','6552','','','','2021-08-30 20:31:08','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('126','Emergency Remote Teaching Experiences of Basic Education Teachers in the Philippines','','Celina Punzalan Sarmiento','Philippine Normal University','sarmiento.cp@pnu.edu.ph','0','','20210903063004_Sarmient_et_al.pdf','20210903063004_Abstract.pdf','20210903063004_Sarmient_et_al.doc','','','3','5938','XIX','1','2021','2021-09-03 06:30:04','2021-10-14 18:40:34','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('127','Students\' Reflective Journal Analysis in the Time of Pandemic','','Frances Grace Japson Jetomo','Sorsogon State University','francesgracejetomo0802@gmail.com','0','','20210904102855_Manuscript.pdf','20210904102855_Abstract.pdf','20210904102855_Manuscript.doc','','','1','9578','','','','2021-09-04 10:28:55','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('128','Derived Formulas for the nth Derivative of Select Functions','','Jojiemar M. Obligar, Ph.D','Tanauan City Integrated High School','jojiemar01.obligar@deped.gov.ph','0','','20210912160502_Full_Paper_Submission_-_JMObligar.pdf','20210912160502_Abstract_Submission_-_JMObligar.pdf','20210912160502_Full_Paper_Submission_-_JMObligar.doc','','','1','9122','','','','2021-09-12 16:05:02','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('129','Improving learners’ productive disposition through realistic mathematics education, a teacher’s critical reflection of personal pedagogy','','Von Christopher Chua','De La Salle University','von_christopher_chua@dlsu.edu.ph','0','','20210917180907_Improving_learners_productive_disposition_through_realistic_mathematics_education_a_teacher_s_critical_reflection_of_personal_pedagogy.pdf','20210917180907__Abs__Improving_Learners____Productive_Disposition_through_Realistic_Mathematics_Education__A_Teacher___s_Critical_Reflection_of_Personal_Pedagogy.pdf','20210917180907_Main_Document_Learner__Final_.doc','','','1','8846','','','','2021-09-17 18:09:07','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('130','FABRICATION OF FUZZY LOGIC CONTROLLER ON SPEECH LABORATORY SYSTEM USING AT89C2051 MICROCONTROLLER ','','Jerry I. Teleron','University of Southern Philippines Foundation','jiteleron@uspf.edu.ph','0','','20210920150428_Fabtication_of_fuzzy_logic_controller_on_Speech_Laboratory_System.pdf','20210920150428_Abstract.pdf','20210920150428_Fabtication_of_fuzzy_logic_controller_on_Speech_Laboratory_System.doc','','','1','9340','','','','2021-09-20 15:04:28','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('131','ONLINE QR CODE DIGITAL CONTACT TRACING USING ORACLE – CLOUD COMPUTING','','Teleron, Jerry I.','Surigao State College of Technology','jteleron@ssct.edu.ph','0','','20210920151940_31_ijeecs_QRcode_NCRP.pdf','20210920151940_Abstract_QR.pdf','20210920151940_draft_ijeecs_QRcode.doc','','','1','9340','','','','2021-09-20 15:19:40','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('132','Leaf traits of Calophyllum inophyllum L. (Calophyllaceae) in different locations suggest suitability for planting outside of natural habitat','','Calibo, Ma. Kristina T.','Department of Forest Biological Sciences, College of Forestry and Natural Resources, University of the Philippines Los Banos','mtcalibo1@up.edu.ph','0','','20211007113137_leaf_traits_of_calophyllum_inophyllum_.pdf','20211007113137_leaf_traits_of_calophyllum_inophyllum__abstract.pdf','20211007113137__PRO__20-291_-_Calibo_et_al__-_Manuscript__Edited___26_Mar_2021_.dot','','','1','4532','','','','2021-10-07 11:31:37','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('133','Short-term Cumulative Exposure to Ambient Traffic-Related Black Carbon and Blood Pressure: MMDA Traffic Enforcers’ Health Study','','Emmanuel Saporna Baja','National Institutes of Health - UP Manila','esbaja@up.edu.ph','0','','20211015093048_IJERPH_BC_BP_No_Names.pdf','20211015093048_IJERPH_Abstract_BC_BP.pdf','20211015093048_IJERPH_BC_BP_No_Names.doc','','','1','6214','','','','2021-10-15 09:30:48','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('134','PAPERLESS CHECKING OF RESEARCH PAPER (PCRP):
ADDRESSING STUDENTS’ DIFFICULTY IN MAKING
A RESEARCH OUTPUT
','','Norman Raotraot Galabo','Department of Education','nhormz07@gmail.com','0','','20211015205225_PAPERLESS_CHECKING_OF_RESEARCH_PAPER__PCRP_.pdf','20211015205225_Abstract.pdf','20211015205225_PAPERLESS_CHECKING_OF_RESEARCH_PAPER__PCRP_.doc','','','1','5719','','','','2021-10-15 20:52:25','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('135','University Quality Measures Based on Global Ranking System','','Constantino Gazo Medilo','Southern Leyte State University','constantinogmedilojr@gmail.com','0','','20211029115342_.','20211029115342_University_Quality_Measures_Based_on_Global_Ranking_System_Abstract.pdf','20211029115342_.','','','1','4619','','','','2021-10-29 11:53:42','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('136','Knowledge, Attitudes, Risk Perceptions, and
Intention towards COVID-19 and COVID-19
Vaccination Among Adults in the City of Manila,
Philippines','','Ernesto R. Gregorio, Jr.','University of the Philippines Manila','ergregorio@up.edu.ph','0','','20211105154258_KARP_towards_COVID_19_Vaccination_Among_the_General_Population_in_Manila_Philippines_Aug_31_2021_docx.pdf','20211105154258_Abstract_KAP_towards_COVID_19_Vaccination_Among_the_General_Population_in_Manila_Philippines_v1_July_21.pdf','20211105154258_KARP_towards_COVID_19_Vaccination_Among_the_General_Population_in_Manila_Philippines_Aug_31_2021.doc','','','1','9904','','','','2021-11-05 15:42:58','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('137','TOWARDS A SUSTAINABLE PRODUCTION OF PROTEINS IN SPACE: A PROPOSED SOLUTION
AND ROADMAP 
','','Catherine Raisa Kimberly Mandigma','SPACE GENERATION ADVISORY COUNCIL','cpmandigma1@up.edu.ph','0','','20211111001648_IAC-18_D4_2_13_x48287.pdf','20211111001648_IAC-18_D4_2_13_x48287-converted2.pdf','20211111001648_IAC-18_D4_2_13_x48287-converted.doc','','','1','9926','','','','2021-11-11 00:16:48','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('138','Ambient nitro-aromatic compounds – biomass burning versus secondary formation in rural China
','','Christian Mark Salvador','UNIVERSITY OF GOTENBURG','Cmgsalvador@gmail.com','0','','20211116123907_Ambient_nitro-aromatic_compounds_____biomass_burning_versus_secondary_formation_in_rural_China.pdf','20211116123907_Ambient_nitro-aromatic_compounds_____biomass_burning_versus_secondary_formation_in_rural_China__Abstract_.pdf','20211116123907_Dezhou.doc','','','1','9571','','','','2021-11-16 12:39:07','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('139','ASSESSMENT OF METRO CEBU’S GROUNDWATER VULNERABILITY TO SEAWATER INTRUSION USING THE GALDIT INDEX','','Billriz Condor','UP Cebu - GRNDH2O.ph','billrizecondor@gmail.com','0','','20211117131902_GRNDH2O_Manuscript.pdf','20211117131902_GRNDH2O_Abstract.pdf','20211117131902_GRNDH2O_DRAFT.doc','','','1','9932','','','','2021-11-17 13:19:02','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('140','Seismic vulnerability assessment of Sta. Lucia high school in Pasig City Philippines using rapid visual assessment and fragility curves','','MICHAEL BAUTISTA BAYLON','USHER Technologies Inc.','ikingbalon@gmail.com','0','','20211127124600_IRJSTEM-Volume1_No2_Paper10.pdf','20211127124600_IRJSTEM-Volume1_No2_Paper10_ABSTRACT.pdf','20211127124600_IRJSTEM-Volume1_No2_Paper10.doc','','','1','6552','','','','2021-11-27 12:46:00','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('141','OPERATION GALUGAD: ELT-INFUSED GLOCALIZED MODULE ON EXPERIENTIAL LEARNING','','Raphael Kevin Inguin Nagal','Kalibo Integrated Special Education Center','kevzcruize007@gmail.com','0','','20211217195304_operation_galugad_for_publication.pdf','20211217195304_Operation____Galugad____ELT-Infused_Glocalized_Module_LCC.pdf','20211217195304_operation_galugad_for_publication.doc','','','1','8618','','','','2021-12-17 19:53:04','','_sk','','');
INSERT IGNORE INTO tblmanuscripts VALUES('142','Effects of 3-Dimension (Virtual) Exhibit in the academic performance of Selected Grade 7 Arts students','','stephen f. carlos','Deped- Vicenta Madrigal Integrated School','stephen.carlos@deped.gov.ph','0','','20220101214640_Abstract.pdf','20220101214640_paper-11.pdf','20220101214640_Paper-11.doc','','','1','10026','','','','2022-01-01 21:46:40','','_sk','','');



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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT IGNORE INTO tblprivileges VALUES('1','SA530','1','1','1','1','1','2019-09-06 00:00:00','');
INSERT IGNORE INTO tblprivileges VALUES('2','SA994','1','1','1','1','1','2019-09-06 00:00:00','');
INSERT IGNORE INTO tblprivileges VALUES('5','7','1','1','1','1','1','2019-09-10 13:23:56','');
INSERT IGNORE INTO tblprivileges VALUES('6','SAff000e0321d1b5d08691fce9ac4d1733','1','1','1','1','1','2019-10-11 14:17:02','');
INSERT IGNORE INTO tblprivileges VALUES('7','SA5b0bdc47795ce62fe17cff527e5abe0d','1','1','1','1','1','2019-10-16 08:49:05','');
INSERT IGNORE INTO tblprivileges VALUES('8','SA37ecb9a66c7a60372c3616d28de73b13','1','1','1','1','1','2020-06-16 09:14:12','');
INSERT IGNORE INTO tblprivileges VALUES('9','SA6bb9f8987cb2a9f7594cf5c23ae54626','1','1','1','1','1','2020-09-01 10:45:17','');
INSERT IGNORE INTO tblprivileges VALUES('10','SAa942372b7357a3a87cfdb1e44337aa4d','1','1','1','1','1','2021-02-16 13:18:44','');
INSERT IGNORE INTO tblprivileges VALUES('11','SA2764954f06e1e25b38c46c1caba6ce7c','1','1','1','1','1','2021-08-18 10:32:11','');



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
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=latin1;

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
INSERT IGNORE INTO tblreviewers VALUES('23','4298','','Orlando Fernando Balderama','','orly_isu@yahoo.com','09175055706','Agricultural Engineering,Water Management','1','2021-02-05 09:30:31','3','14','30','2','1','1','2021-02-05 09:22:59');
INSERT IGNORE INTO tblreviewers VALUES('24','972','','Mark Nell  Castillo Corpuz','','marknellcorpuz@yahoo.com','0915-500-9646, 0916-277-2381','Aquaculture,  Freshwater Zoology,Environmental Science','1','2021-02-05 10:05:28','3','14','30','0','1','1','2021-02-05 09:22:59');
INSERT IGNORE INTO tblreviewers VALUES('25','6051','','RENATO CABILOGAN DIOCTON','','rdiocton2004@yahoo.com','9216034514','Marine Fisheries,Marine Fisheries + fisheries biology ,Aquaculture','0','2021-02-07 17:20:08','3','14','30','1','1','1','2021-02-05 09:22:59');
INSERT IGNORE INTO tblreviewers VALUES('26','1379','','Ruel V. Eguia','','rveguia@seafdec.org.ph','0917-832-5301','Aquaculture Nutrition,  Fresh Water Aquaculture','3','','3','14','30','1','1','1','2021-02-05 09:22:59');
INSERT IGNORE INTO tblreviewers VALUES('27','820','','Soledad Solomero Castañeda','','sscastaneda.sc@gmail.com','0917-855-2984','Water Quality,  Environmental Impact Assessment,  Environmental Analysis,  Environmental Pollution,  Water Analysis,  Analytical Chemistry,  Environmental Analytical Chemistry,  Hydrology','1','2021-02-05 16:54:37','3','14','29','0','1','1','2021-02-05 09:39:34');
INSERT IGNORE INTO tblreviewers VALUES('28','866','','Mylene Gonzaga Cayetano','','mcayetano@iesm.upd.edu.ph','0932 863 9628','Environmental Science,  Pollution Studies,  Air and Water Quality','1','2021-02-07 15:48:10','3','14','29','1','1','1','2021-02-05 09:39:34');
INSERT IGNORE INTO tblreviewers VALUES('29','1951','','Joycelyn Cagatin Jumawan','','joycejumawan@gmail.com','0915-354-4043','Fish Developmental Biology,  Freshwater Ecology','1','2021-02-07 11:28:40','3','14','29','1','1','1','2021-02-05 09:39:34');
INSERT IGNORE INTO tblreviewers VALUES('30','3629','','Guillermo Q Tabios','','gqtiii@yahoo.com','not available','Hydrology,  Water Resources Engineering','1','2021-02-05 12:02:05','3','14','29','0','1','1','2021-02-05 09:39:34');
INSERT IGNORE INTO tblreviewers VALUES('31','2061','','Ma. Junemie Hazel Leonida Lebata Ramos','','jlebata@seafdec.org.ph','0917-717-5450','mangroves,aquaculture (mollusk culture; IMTA in pens and ponds),stock enhancement','1','2021-02-08 09:10:23','3','14','28','2','1','1','2021-02-05 10:23:46');
INSERT IGNORE INTO tblreviewers VALUES('32','1515','','Amando C. Fermin','','omandy320@gmail.com','9175222320','Finfish and Mollusk Aquaculture','3','','3','14','28','1','1','1','2021-02-05 10:23:46');
INSERT IGNORE INTO tblreviewers VALUES('33','6802','','Marlon Varona Elvira','','marlonvelvira@gmail.com','9454623268','Ecological and human health risk assessment, malacology, and biodiversity conservation ','1','2021-02-07 10:27:14','3','14','28','2','1','1','2021-02-05 10:23:46');
INSERT IGNORE INTO tblreviewers VALUES('34','1319','','Roger Gasper Dolorosa','','rogerdolorosa@yahoo.com','0929-627-2574','Aquatic Resource Conservation,  Ecology,  Taxonomy,marine biology','3','','3','14','27','1','1','1','2021-02-05 10:36:58');
INSERT IGNORE INTO tblreviewers VALUES('35','4842','','Emmanuel Federico Cruz Capinpin','','manny_capinpin@yahoo.com','9182135281','Aquaculture,Fisheries Management','3','','3','14','27','1','1','1','2021-02-05 10:36:58');
INSERT IGNORE INTO tblreviewers VALUES('36','684','','Christopher Marlowe Arandela Caipang','','cmacaipang@yahoo.com','9177140983','Aquaculture,  Aquatic Biosciences,  Fish Molecular Immunology,  Molecular Virology','0','2021-02-07 15:22:08','3','14','27','1','1','1','2021-02-05 10:36:58');
INSERT IGNORE INTO tblreviewers VALUES('37','5287','','Maria Mojena  Gonzales-Plasus','','mojenagonzales@yahoo.com','9151698179','Fish Nutrition,Molecular analysis,Aquaculture,Sustainable aquaculture,Gene expression,Fish diseases','1','2021-02-07 11:25:27','3','14','27','2','1','1','2021-02-05 10:36:58');
INSERT IGNORE INTO tblreviewers VALUES('38','567','','Josette Talamera Biyo','','biyojosette@yahoo.com','0917-837-9003','Marine Toxicology,  Marine Ecology','3','','3','14','26','1','1','1','2021-02-05 10:47:55');
INSERT IGNORE INTO tblreviewers VALUES('39','736','','Wilfredo L. Campos','',' willbellcampos@gmail.com','-','Biological Oceanography,  Coastal Ecology,  Marine and Fisheries Biology','1','2021-02-07 12:49:13','3','14','26','1','1','1','2021-02-05 10:47:55');
INSERT IGNORE INTO tblreviewers VALUES('40','4599','','Janice Alano Ragaza','','jragaza@ateneo.edu','9373727506','Aquaculture Science,Fish Biology,Aquaculture Nutrition,Aquaculture Biotechnology,Aquaculture,Fish Physiology,Food Science,Food Technology,Fisheries Science','0','2021-02-07 17:17:06','3','14','26','1','1','1','2021-02-05 10:47:55');
INSERT IGNORE INTO tblreviewers VALUES('41','5167','','Harold Modoc Monteclaro','','hmonteclaro@gmail.com','9176207022','Fisheries Science,Marine Fisheries,Fisheries Biology,Fisheries Management,Fish Sensory Biology and Behavior','1','2021-02-07 18:02:55','3','14','26','1','1','1','2021-02-05 10:47:55');
INSERT IGNORE INTO tblreviewers VALUES('42','52','','Davin Edric Vistan Adao','','dev_adao@yahoo.com','09177909369','Molecular Protozoology,  Phylogenetics, Microbiology , Molecular Biology ','1','2021-02-07 11:12:06','3','14','25','2','1','1','2021-02-05 11:02:25');
INSERT IGNORE INTO tblreviewers VALUES('43','104','','Pia Marie San Pedro Albano','','psalbano@ust.edu.ph','0932-888-6739','Medical Microbiology,  Immunology','1','2021-02-07 11:27:55','3','14','25','1','1','1','2021-02-05 11:02:25');
INSERT IGNORE INTO tblreviewers VALUES('44','178','','Lourdes Valerio Alvarez','','loualvarez14@gmail.com','09171700214','Mycology, Phytopathology , Microbiology ','1','2021-02-07 19:31:46','3','14','25','2','1','1','2021-02-05 11:02:25');
INSERT IGNORE INTO tblreviewers VALUES('45','352','','Michael Octubre Baclig','','mobaclig@stlukes.com.ph','+63 9192189290 (Smart)','Human and Pathogen Genomics,Microbiology, Genomics, Molecular Medicine,Bioinformatics, Biosafety and Biosecurity ','1','2021-02-07 18:04:38','3','14','25','2','1','1','2021-02-05 11:02:25');
INSERT IGNORE INTO tblreviewers VALUES('46','460','','Supachai Amphay Basit','','supachai.basit@eac.edu.ph','(046) 416-4341to 42 loc.106','Biology Education, Bacteriophage, Multidrug Resistant Bacteria ','1','2021-02-08 07:08:31','3','14','24','1','1','1','2021-02-05 11:11:09');
INSERT IGNORE INTO tblreviewers VALUES('47','3123','','Asuncion Karganilla Raymundo','','akraymundo@gmail.com ','0906-4977882','Bacteriology,  Microbials,  Genetics','3','','3','14','24','1','1','1','2021-02-05 11:11:09');
INSERT IGNORE INTO tblreviewers VALUES('48','4384','','Norbel Adap Tabo','','natabo@dlsud.edu.ph','9175818981','Bacteriology,Public Health','3','','3','14','24','1','1','1','2021-02-05 11:11:09');
INSERT IGNORE INTO tblreviewers VALUES('49','706','','Rufo Sayao Calixtro','','calixtro_2005@yahoo.com','0920-924-5824','Pharmaceutical Chemistry,  Microbiology','3','','3','14','24','1','1','1','2021-02-05 11:11:09');
INSERT IGNORE INTO tblreviewers VALUES('50','1418','','Numer G. Escalante','','numer.escalante@yahoo.com','0922-856-8724, 0917-806-8717, 09','Sociology,  Demography,  Peace and Development','3','','3','14','40','1','1','1','2021-02-05 11:22:50');
INSERT IGNORE INTO tblreviewers VALUES('51','109','','Annie Melinda Paz Alberto','','melindapaz@gmail.com','0928-959-8038','Ecology,  Environmental Management','3','','3','14','40','1','1','1','2021-02-05 11:22:50');
INSERT IGNORE INTO tblreviewers VALUES('52','2617','','Allen L. Nazareno','','alnazareno@up.edu.ph','9175351029','Mathematical Biology,  Operations Research','0','2021-02-07 11:41:33','3','14','40','1','1','1','2021-02-05 11:22:50');
INSERT IGNORE INTO tblreviewers VALUES('53','3243','','Agnes Casiple Rola','','acrola@up.edu.ph','9164422789','Policy Analysis,  Natural Resource Economics,  Production Economics,  Statistics,  Econometrics','3','','3','14','40','1','1','1','2021-02-05 11:22:50');
INSERT IGNORE INTO tblreviewers VALUES('54','5272','','Jomar L. Aban','','jaban@dmmmsu.edu.ph','9270427750','FUNGI,AGRICULTURE,BIOLOGY,ENVIRONMENTAL SCIENCE','1','2021-02-08 10:16:11','3','14','38','2','1','1','2021-02-05 11:57:18');
INSERT IGNORE INTO tblreviewers VALUES('55','5737','','Rey Gomez Tantiado','','reygtantiado@yahoo.com','9158893829','microbiology and medical-related biology, biological education','1','2021-02-07 19:24:16','3','14','38','2','1','1','2021-02-05 11:57:18');
INSERT IGNORE INTO tblreviewers VALUES('56','3464','','Brian Gil  Secondes Sarinas','','bg_sarinas@yahoo.com','9158573416','Biology Education,  Fungal (hyphomycete) Isolation and Identification,  Biology and Chemistry-maritime Related Researches','3','','3','14','38','1','1','1','2021-02-05 11:57:18');
INSERT IGNORE INTO tblreviewers VALUES('57','1146','','Marian Pulido De Leon','','mpdeleon1@up.edu.ph','(63) 977 822 5949','Hyperthermophilic Archaeon and its Proteins,  Molecular Biology and Biotechnology,  Food Microbiology,Environmental Microbiology, Fermentation, Microbial Ecology, Metagenomics, Microbial Culture Collection Curation And Preservation, Protein Engineering, D','1','2021-02-07 12:41:40','3','14','38','2','1','1','2021-02-05 11:57:18');
INSERT IGNORE INTO tblreviewers VALUES('58','1565','','Mary Jane C. Flores','','mejaneflores@yahoo.com','-','Parasitology','3','','3','14','66','1','1','1','2021-02-21 21:50:16');
INSERT IGNORE INTO tblreviewers VALUES('59','R325fc37affcb3b0bc53b013389ca0cb0','','Helen A. Molina','','helen_molina@yahoo.com','','Veterinary Pathology and Diagnostics/pasteurella multocida Vaccine Production','3','','3','14','66','1','1','1','2021-02-21 21:50:16');
INSERT IGNORE INTO tblreviewers VALUES('60','5','','Jovencio Hubert A. Abalos','','jaabalos@up.edu.ph','9191234123','Veterinary Medicine, Equine Medicine , Large Animal Surgery , Anesthesiology ','0','2021-02-21 22:28:21','3','14','62','0','1','1','2021-02-21 21:54:28');
INSERT IGNORE INTO tblreviewers VALUES('61','21','','Jose Alexander C. Abella','','josealexanderabella@yahoo.com','9173266572','Veterinary Medicine','3','','3','14','62','1','1','1','2021-02-21 21:54:28');
INSERT IGNORE INTO tblreviewers VALUES('62','149','','Julito Contado Aligaen','','juli_aligaen@yahoo.com','9774127130','Agriculture and Education','1','2021-02-22 19:28:09','3','14','65','2','1','1','2021-02-21 22:00:53');
INSERT IGNORE INTO tblreviewers VALUES('63','597','','Teresita Harina Borromeo','','thborromeo@yahoo.com','0917-407-1945','Plant Breeding,  Agronomy','1','2021-02-24 14:55:16','3','14','65','2','1','1','2021-02-21 22:00:53');
INSERT IGNORE INTO tblreviewers VALUES('64','1998','','Antonio G. Lalusin','','a_lalusin@yahoo.com','0905-261-6286','Plant Breeding','3','','3','14','65','1','1','1','2021-02-21 22:00:53');
INSERT IGNORE INTO tblreviewers VALUES('65','652','','Ruel de los Reyes Cabahug','','ruel_cabahug2@yahoo.com','0915-805-7358','Construction Engineering Management,  Engineering Education,  Civil Engineering','1','2021-02-21 22:28:18','3','14','63','2','1','1','2021-02-21 22:05:51');
INSERT IGNORE INTO tblreviewers VALUES('66','887','','Rinlee Butch Mangrobang Cervera','','rbcervera@yahoo.com','0915-139-4266','Materials Engineering,  Energy Storage and Conversion,Nanomaterials,Advanced ceramics,Electrochemical Devices','0','2021-02-24 01:07:36','3','14','63','1','1','1','2021-02-21 22:05:51');
INSERT IGNORE INTO tblreviewers VALUES('67','1162','','Mark Daniel G. De Luna','','mgdeluna@gmail.com','0922-880-4616','Energy and Environmental Research','3','','3','14','63','1','1','1','2021-02-21 22:05:51');
INSERT IGNORE INTO tblreviewers VALUES('68','639','','Bryan Paul Ibañez Bulatao','','bibulatao@up.edu.ph','-','Pharmaceutical Sciences','1','2021-02-22 17:23:49','3','14','64','2','1','1','2021-02-21 22:11:44');
INSERT IGNORE INTO tblreviewers VALUES('69','846','','Alicia Padilla Catabay','','apcatabay@dlshsi.edu.ph','0921-782-6068','Materials Science (Separation Sciences, Analytical Chemistry),  Pharmaceutical Sciences (Drug Analysis and Quality Control)','1','2021-02-22 09:05:59','3','14','64','0','1','1','2021-02-21 22:11:44');
INSERT IGNORE INTO tblreviewers VALUES('70','1044','','Vina Rose Alejandrino Dahilig','','vinarosedahilig@yahoo.com','0917-565-3167','Product Formulation','1','2021-02-24 09:46:11','3','14','64','2','1','1','2021-02-21 22:11:44');
INSERT IGNORE INTO tblreviewers VALUES('71','314','','Claribel De Vera Asunsion','','claribelasuncion@gmail.com','0926-771-8736','Natural Products,  Water and Soil Quality,  Product Development,  Ethnopharmacology,  Chemical Analysis','0','2021-02-24 08:26:36','3','14','1','1','1','1','2021-02-21 22:24:52');
INSERT IGNORE INTO tblreviewers VALUES('72','714','','Jhoanna Battung Calubaquib','','jhoannacalubaquib@gmail.com','9068921129','Chemistry','3','','3','14','1','1','1','1','2021-02-21 22:24:52');
INSERT IGNORE INTO tblreviewers VALUES('73','715','','Susan May F.  Calumpang','','sue_calumpang@yahoo.com','0917-810-5546','Chemical Ecology,  Pesticide Management','3','','3','14','1','1','1','1','2021-02-21 22:24:52');
INSERT IGNORE INTO tblreviewers VALUES('74','2543','','Cristina J. Montiel','','cmontiel@ateneo.edu','8426-6001 loc.5260-62','Political Psychology,  Peace Psychology','0','2021-03-02 15:43:47','3','14','39','0','1','1','2021-03-02 15:42:57');
INSERT IGNORE INTO tblreviewers VALUES('75','1418','','Numer G. Escalante','','numer.escalante@yahoo.com','0922-856-8724, 0917-806-8717, 09','Sociology,  Demography,  Peace and Development','3','','3','14','39','1','1','1','2021-03-02 15:42:57');
INSERT IGNORE INTO tblreviewers VALUES('76','1662','','Mervin G. Gascon','','nexxus_mgg@yahoo.com','not available','Public Administration,  Community Development,  Peace Education','3','','3','14','39','1','1','1','2021-03-02 15:42:57');
INSERT IGNORE INTO tblreviewers VALUES('77','1603','','Adrianne John Real Galang','','galangaj@gmail.com','874-8988','Personality-Social Psycology,  Experimental Psychology','1','2021-03-09 16:47:40','3','14','70','0','1','1','2021-03-07 21:41:07');
INSERT IGNORE INTO tblreviewers VALUES('78','1432','','Aileen Burgos Esmeralda','','esmeraldaaileenburgos@gmail.com','0930-884-5586','Environmental Technology,  Educational Policies','1','2021-03-09 22:51:46','3','14','70','1','1','1','2021-03-07 21:41:07');
INSERT IGNORE INTO tblreviewers VALUES('79','5246','','Albert Catot Albina','','albertalbina@norsu.edu.ph','9177011626','moral philosophy,positive psychology, ethics  ','1','2021-03-07 23:08:04','3','14','70','0','1','1','2021-03-07 21:41:07');
INSERT IGNORE INTO tblreviewers VALUES('80','2214','','Anselmo D. Lupdag','','adlupdag@yahoo.com','Not Available','Psychology','3','','3','14','70','1','1','1','2021-03-07 21:41:07');
INSERT IGNORE INTO tblreviewers VALUES('81','787','','Clarita De Leon Carillo','','claritadlcarillo@gmail.com','0917-527-7094, 0917-849-5799','Educational Management, Teacher Education, Administration and Leadership ','1','2021-03-09 17:48:26','3','14','71','2','1','1','2021-03-07 21:49:26');
INSERT IGNORE INTO tblreviewers VALUES('82','4470','','Dea Meir Ledesma Tacbas','','deatacbas@gmail.com','NA','Sociology of Disasters,Sociology of the Environment','3','','3','14','71','1','1','1','2021-03-07 21:49:26');
INSERT IGNORE INTO tblreviewers VALUES('83','3657','','Denis A. Tan','','denistan@cmu.edu.ph','09175018095','Education, Pedagogy  , Assessment of/for Learning ','1','2021-03-10 08:46:39','3','14','71','2','1','1','2021-03-07 21:49:26');
INSERT IGNORE INTO tblreviewers VALUES('84','6148','','Dan Jefferson Burgos Lopez','','dan.lopez@lpu.edu.ph','9177922901','Political Science, International Relations,Public Administration,Diplomacy,Education','1','2021-03-08 09:41:34','3','14','71','2','1','1','2021-03-07 21:49:26');
INSERT IGNORE INTO tblreviewers VALUES('85','4317','','Chime Mora Garcia','','cmgarcia@carsu.edu.ph','9198660430','Ecology,Environmental Science','3','','3','14','53','1','0','0','2021-03-07 22:01:19');
INSERT IGNORE INTO tblreviewers VALUES('86','461','','Clarence M. Batan','','cmbatan@ust.edu.ph','0943-548-9745','Sociology of Work,Sociology of Education','0','2021-03-08 07:28:42','3','14','53','0','0','0','2021-03-07 22:01:19');
INSERT IGNORE INTO tblreviewers VALUES('87','1097','','Emmanuel Ryan Celzo De Chavez','','radixquad@yahoo.com','0919-470-4248','Malacology,  Community Ecology','1','2021-03-09 22:02:44','3','14','53','2','0','0','2021-03-07 22:01:19');
INSERT IGNORE INTO tblreviewers VALUES('88','1297','','Josephine C. Dionisio','','jcdionisio@up.edu.ph','0917-588-5163','Social Justice,Environment and Society,Technology Studies,Social Psychology, Sociology of Development ','1','2021-03-08 05:25:15','3','14','53','2','0','0','2021-03-07 22:01:19');
INSERT IGNORE INTO tblreviewers VALUES('89','3654','','Arwin Quiñones Tan','','arwintan@gmail.com','0917-5356218','Historical Musicology','1','2021-03-08 18:18:51','3','14','55','0','1','1','2021-03-08 13:30:06');
INSERT IGNORE INTO tblreviewers VALUES('90','5667','','GERALDINE DELOS CIENTOS VILLALUZ, RSCJ','','gvillaluz2009@gmail.com','9237014745','Qualitative Research Design specifically Ethnographic and Grounded Theory Approaches,Indigenous Studies,Music Education,Arts and Culture Education,Community Engagement','1','2021-03-08 13:35:36','3','14','55','0','1','1','2021-03-08 13:30:06');
INSERT IGNORE INTO tblreviewers VALUES('91','4393','','Renato Billote Lucas','','rblucas@ust.edu.ph','9165567734','Cultural History,Filipino Musicians,Performing Arts','1','2021-03-08 16:32:19','3','14','55','2','1','1','2021-03-08 13:30:06');
INSERT IGNORE INTO tblreviewers VALUES('92','907','','Maria Alexandra Iñigo Chua','','sandyichua@yahoo.com','0917-621-5367','Musicology,  Fil-Hispanic Music of the 19th Century,  Transculturation,  Hybridity,Colonial Music','1','2021-03-08 18:24:54','3','14','55','2','1','1','2021-03-08 13:30:06');
INSERT IGNORE INTO tblreviewers VALUES('93','270','','Alona Jumaquio Ardales','','alona.ardales@dlsu.edu.ph','n/a','Philippine Studies,  Filipino Language, Culture, and Media','1','2021-03-08 17:46:09','3','14','75','2','1','1','2021-03-08 15:26:20');
INSERT IGNORE INTO tblreviewers VALUES('94','3767','','Bonimar Afalla Tominez','','bonimartominez@yahoo.com','(078) 321-2112','Educational Management,  Language,Language, Reading and Numeracy','1','2021-03-08 16:33:52','3','14','75','2','1','1','2021-03-08 15:26:20');
INSERT IGNORE INTO tblreviewers VALUES('95','5763','','Leo Hucamis Aberion','','aberleo2014@gmail.com','9567586073','Linguistics,Language and Culture,Sociolinguistics,Psycholinguistics,Language in Literature,Discourse Analysis,Pragmatics','1','2021-03-08 20:39:04','3','14','75','2','1','1','2021-03-08 15:26:20');
INSERT IGNORE INTO tblreviewers VALUES('96','6072','','Rowanne Marie Ramos Maxilom','','rmmaxilom@gmail.com','9175184867',' Applied Linguistics, English Language Teaching, Second Language Acquisition, Bilingualism, Pragmatics ','1','2021-03-08 15:34:42','3','14','75','0','1','1','2021-03-08 15:26:20');
INSERT IGNORE INTO tblreviewers VALUES('97','1337','','Charmaine Alicante Duante','','caduante@yahoo.com','0918-908-9817','Epidemiology,  Statistics','1','2021-03-11 18:39:07','3','14','77','2','1','1','2021-03-09 13:56:16');
INSERT IGNORE INTO tblreviewers VALUES('98','818','','Carmen P. Castañeda','','not available','-','Pharmacology,  Clinical Epidemiology','3','','3','14','77','1','1','1','2021-03-09 13:56:16');
INSERT IGNORE INTO tblreviewers VALUES('99','6466','','Xerxes Tesoro Seposo','','xtseposo@up.edu.ph','8.17031E+11','Environmental epidemiology,Health econometrics,Biostatistics,Epidemiology,Public Health,Environmental health','1','2021-03-09 14:11:41','3','14','77','2','1','1','2021-03-09 13:56:16');
INSERT IGNORE INTO tblreviewers VALUES('100','3339','','Roderick L. Salenga','','ericsalenga@gmail.com','0917-855-2707','Pharmacy,  Public Health,  Epidemiology','1','2021-03-11 14:36:16','3','14','77','2','1','1','2021-03-09 13:56:16');
INSERT IGNORE INTO tblreviewers VALUES('101','5600','','Frederick Ramirez Masangkay','','frederick_masangkay2002@yahoo.co','0905 513 92 04','Water Quality,Cryptosporidium,Cyclospora,Giardia,Waterborne protozoan pathogens,biofilms','3','','3','14','74','1','1','1','2021-03-09 14:12:56');
INSERT IGNORE INTO tblreviewers VALUES('102','7036','','CAMAR PAUTI AMERIL','','ameril.cp@msumain.edu.ph','9164450676','Microbial Biotechnology,Biological Treatment of Wastewater,Water Quality,Phage Display Library, Environmental Sanitation ','0','2021-03-11 15:40:10','3','14','74','1','1','1','2021-03-09 14:12:56');
INSERT IGNORE INTO tblreviewers VALUES('103','5285','','Jey-R Sabado Ventura','','jsventura@up.edu.ph','9063535210','Biofuels,  Fermentation Engineering,  Wastewater Treatment and Water Quality Monitoring,  Microalgae Propagation and Biofuel Production,  Anaerobic Digestion,  Feasibility Studies on Biofuel','1','2021-03-11 14:00:09','3','14','74','2','1','1','2021-03-09 14:12:57');
INSERT IGNORE INTO tblreviewers VALUES('104','7089','','Michelle Sialana Ebasan','','ebasanmichelle@gmail.com','9262907045','Carbon Stock Assessment,Environmental Impact Assessment,Water quality assessment,Flora and Fauna Assessment ,Coastal Resource Management,Marine Resource Assessment','1','2021-03-09 19:41:47','3','14','74','2','1','1','2021-03-09 14:12:57');
INSERT IGNORE INTO tblreviewers VALUES('105','5251','','Sharon Mendoza Dreisbach','','drshaimah_101609@hotmail.com','+971 6 544 11 55','Human resource management,Ecotourism','3','','3','14','53','1','1','1','2021-05-14 08:33:47');
INSERT IGNORE INTO tblreviewers VALUES('106','5410','','Cherie Balasta Orpia','','cherie.orpia@gmail.com','9175118344',' Statistics , Tourism and Hospitality , Renewable Energy , Business and Economics , Demography , Environment ','1','2021-05-15 08:34:16','3','14','53','2','1','1','2021-05-14 08:33:47');
INSERT IGNORE INTO tblreviewers VALUES('107','1374','','Wenceslao Beterbo Ecoben','','ecoben711@yahoo.com','9613651136','Sociology, Anthropology, Philosophy, Politics,Women and Family,Sociology,Anthropology','3','','3','14','53','1','1','1','2021-05-14 08:33:47');
INSERT IGNORE INTO tblreviewers VALUES('108','1395','','Amabelle Arquisal Embornas','','amabelle.arquisal@g.msuiit.edu.p','0917-716-2370','Social Impact Assessment,  Social Sciences','3','','3','14','70','1','1','1','2021-05-14 11:23:24');
INSERT IGNORE INTO tblreviewers VALUES('109','3780','','Amaryllis Tiglao Torres','','amar.torres@gmail.com','0917-526-5861','Philippine Social Psychology,  Woman Studies,  Participatory Methods,  Community Development','1','2021-05-14 15:42:17','3','14','70','0','1','1','2021-05-14 11:23:24');
INSERT IGNORE INTO tblreviewers VALUES('110','3359','','Analyn Salvador Amores','','salvadoramores2012@gmail.com','0916-4424161','Social Anthropology','0','2021-05-15 04:38:05','3','14','70','0','1','1','2021-05-14 11:23:24');
INSERT IGNORE INTO tblreviewers VALUES('111','2184','','Carmencita Salvosa Loyola','','carmencita_loyola@yahoo.com','0917-846-1932','','3','','3','14','92','0','1','1','2021-07-01 14:30:33');
INSERT IGNORE INTO tblreviewers VALUES('112','6140','','Celso Paragas Pagatpatan','','celso.pagatpatan@yahoo.com','6.39954E+11','','3','','3','14','92','0','1','1','2021-07-01 14:30:33');
INSERT IGNORE INTO tblreviewers VALUES('113','1364','','Angel Belle Cheng Dy','','adby@ateneo.edu','-','','3','','3','14','92','0','1','1','2021-07-01 14:30:33');
INSERT IGNORE INTO tblreviewers VALUES('114','Reff4f54f6ef2ef27a0ef9eb9413af624','','Teodora V. TIGLAO','','teodoricag@yahoo.com','','public health','3','','3','14','92','0','1','1','2021-07-01 14:30:33');
INSERT IGNORE INTO tblreviewers VALUES('115','3558','','Gilmore Gelito Solidum','','graloheus@gmail.com','0922-811-7041, 0917-7035283, 094','','1','2021-07-02 08:08:27','3','2','70','0','1','1','2021-07-01 16:46:42');
INSERT IGNORE INTO tblreviewers VALUES('116','48','','Jasmin E. Acuña','','jasmin.acuna@yahoo.com','6558535','','3','','3','2','70','0','1','1','2021-07-01 16:46:42');
INSERT IGNORE INTO tblreviewers VALUES('117','R8d515d98a25399800013c0df76d1815f','','Jayeel S. Cornelio','','jcornelio@ateneo.edu.ph','','','3','','3','2','70','0','1','1','2021-07-01 16:46:42');
INSERT IGNORE INTO tblreviewers VALUES('118','Rac2e76a4e5c5a7c07cd31d3254768cb5','','Marie Joy B. Arguillas','','jargguillas@gmail.com','not available','Sociology, Migration, Family Demography and Health Inequality','3','','3','2','70','0','1','1','2021-07-01 16:46:42');
INSERT IGNORE INTO tblreviewers VALUES('119','2417','','Belen T. Medina','','belentgm@yahoo.com','0917-733-6164','Sociology','3','','3','14','40','0','1','1','2021-08-13 09:08:24');
INSERT IGNORE INTO tblreviewers VALUES('120','206','','Arlen Angelada Ancheta','','arlen_ancheta@yahoo.co.uk','0908-865-3793','','1','2021-08-13 20:34:53','3','14','40','0','1','1','2021-08-13 09:08:24');
INSERT IGNORE INTO tblreviewers VALUES('121','535','','Clarinda Lusterio Berja','','claire.berja@gmail.com','0917-301-9302','','3','','3','14','40','0','1','1','2021-08-13 09:08:24');
INSERT IGNORE INTO tblreviewers VALUES('122','461','','Clarence M. Batan','','cmbatan@ust.edu.ph','0943-548-9745','','3','','3','14','40','0','1','1','2021-08-13 09:08:24');
INSERT IGNORE INTO tblreviewers VALUES('123','R8b3b64e277395ae6d865289c045ffdd9','','Catherine Roween Chico Almaden','','calmaden@xu.edu.ph','9088999753','Environmental Economics, Public Policy and Development Studies','3','','3','14','40','0','1','1','2021-08-13 09:08:24');
INSERT IGNORE INTO tblreviewers VALUES('124','R8b90da3e9e0597d7bd10934bb1f1e379','','Adora S. Pili','','adoraspili2003@yahoo.com','','','3','','3','14','126','1','1','1','2021-09-28 14:42:46');
INSERT IGNORE INTO tblreviewers VALUES('125','2937','','Agnes Romero Pesimo','','agnespesimo@yahoo.com','9256677815','','3','','3','14','126','0','1','1','2021-09-28 14:42:46');
INSERT IGNORE INTO tblreviewers VALUES('126','1102','','Allan de Belen De Guzman','','doc_allan@yahoo.com','0920-950-6765','','1','2021-09-28 19:51:14','3','14','126','0','1','1','2021-09-28 14:42:46');
INSERT IGNORE INTO tblreviewers VALUES('127','5914','','Voltaire Mallari Mistades','','voltaire.mistades@dlsu.edu.ph','9175873850','','3','','3','14','126','0','1','1','2021-09-28 14:42:46');
INSERT IGNORE INTO tblreviewers VALUES('128','3619','','Lilibeth F. Taa','','bethftaa@yahoo.com','Not Available','Educational Psychology','3','','3','14','126','0','1','1','2021-09-28 14:42:46');
INSERT IGNORE INTO tblreviewers VALUES('129','3633','','Agustina Ruelos Tactay','','Not Available','0917-568-1691','','3','','3','14','126','0','1','1','2021-10-06 14:21:08');
INSERT IGNORE INTO tblreviewers VALUES('130','2978','','Angeline Mag-aso Pogoy','','gelinempogoy@gmail.com','0919-315-9067','','3','','3','14','126','0','1','1','2021-10-06 14:21:08');
INSERT IGNORE INTO tblreviewers VALUES('131','211','','Apolinaria Daquioag Andres','','apoldaqui@yahoo.com','-','','3','','3','14','126','0','1','1','2021-10-06 14:21:08');
INSERT IGNORE INTO tblreviewers VALUES('132','4020','','Camilla de Jesus Vizconde','','camille.vizconde@yahoo.com.ph','0917-8495799','','1','2021-10-06 14:56:15','3','14','126','0','1','1','2021-10-06 14:21:08');
INSERT IGNORE INTO tblreviewers VALUES('133','R7b09e9ee67d1f86333da082d011d70f0','','Filomena Tongco Dayagbil','','ftdayagbil@yahoo.com','0917-628-1068','Educational Management, English Language Teaching','1','2021-10-11 18:54:49','3','14','126','0','1','1','2021-10-06 14:21:08');
INSERT IGNORE INTO tblreviewers VALUES('134','R014dfe954c1d7700db45051d615825ae','','Arnulfo C. Rosario','','arosariojrmdmph@gmail.com','','','3','','3','14','92','0','1','1','2021-10-06 15:04:47');
INSERT IGNORE INTO tblreviewers VALUES('135','Rd7abe2e5e727cb4b741cb3e8a186d493','','Ava Kristy D. Sy','','avakristysy@gmail.com','','','3','','3','14','92','0','1','1','2021-10-06 15:04:47');
INSERT IGNORE INTO tblreviewers VALUES('136','R6602bd4a884e4697c0bac89a081a8e66','','Bella P. Magnaye','','bpmagnaye@lpubatangas.edu.ph','','','3','','3','14','92','0','1','1','2021-10-06 15:04:47');
INSERT IGNORE INTO tblreviewers VALUES('137','R507af2c0758fb8947946751266ab3ed0','','Ernesto R. Gregorio','','junr.gregorio@yahoo.com','','','3','','3','14','92','0','1','1','2021-10-06 15:04:47');
INSERT IGNORE INTO tblreviewers VALUES('138','Rccb5e579bff3320d8e55c36a8ff90163','','Gina S. Itchon','','gitchon@xu.edu.ph','','Public Health and Epidemiology','3','','3','14','92','0','1','1','2021-10-06 15:04:47');
INSERT IGNORE INTO tblreviewers VALUES('139','495','','Aleli Battad Bawagan','','abb02ph@yahoo.com','0918-9178757','','1','2021-10-07 10:56:16','3','14','78','0','1','1','2021-10-07 10:07:33');
INSERT IGNORE INTO tblreviewers VALUES('140','32','','Alexa P. Abrenica','','alexapabrenica@yahoo.com ','Not Available','','3','','3','14','78','0','1','1','2021-10-07 10:07:33');
INSERT IGNORE INTO tblreviewers VALUES('141','1949','','Angelina Morales Julom','','angelinajulom49@gmail.com','0916-475-8274','','3','','3','14','78','0','1','1','2021-10-07 10:07:33');
INSERT IGNORE INTO tblreviewers VALUES('142','1743','','Bonna Mae Sia Gorospe','','bonnagorospe@gmail.com','0917-534-8449','','3','','3','14','78','0','1','1','2021-10-07 10:07:33');
INSERT IGNORE INTO tblreviewers VALUES('143','4425','','Dakila Kim P. Yee','','dpyee@up.edu.ph','9092583497','Sociology and Disasters, Sociology of the Environment','3','','3','14','78','0','1','1','2021-10-07 10:07:33');



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
) ENGINE=InnoDB AUTO_INCREMENT=781 DEFAULT CHARSET=latin1;

INSERT IGNORE INTO tblscores VALUES('1','25','4609','25','25','15','15','','','','','80','6','The results can provide a preliminary information on the microbial pollution level in Lanao Lake. A more extensive study covering wider area, including the river tributaries are needed if we want to use the results in policy making and decisions.
Some sections and paragraphs need to be rewritten or rearranged for clarity of presentation and logical sequencing of the discussion.
','20210126112212_2_Microbiological_Water_Quality_of_Lake_Lanao_Waters.pdf','2021-01-26 11:22:12');
INSERT IGNORE INTO tblscores VALUES('2','26','4729','30','30','15','20','The research is relevant to the aims and scope of the journal.','Data provided is sufficient to meet research objectives.','Some of the cited references do not appear in the reference list (eg. Taylor, Welcomme, Cooke, Sinclair, and other references. It is suggested that the in text citations and reference list be thoroughly reviewed.
2. In Table 2, it is suggested proper alignment of data in their proper column.
3. In terms of the identification of the fish species, it can also be suggested the protocol in identifying the species. Did you use morphology? Please indicate.
4. How were the fisherman surveyed chosen? Randomly? Conveniently? You may indicate this in the methodology.
5. How were the fishing areas identified by the fisherman? Did they point this in the map?
6. Provided GPS data? How do we ascertain its accuracy?','This research can be a benchmark data for the protection, rehabilitation, and management of Lake Lanao.','95','5','','20210121140808_.','2021-01-21 14:08:08');
INSERT IGNORE INTO tblscores VALUES('3','29','2852','0','0','0','0','','','','','0','3','','','0000-00-00 00:00:00');
INSERT IGNORE INTO tblscores VALUES('4','30','1391','0','0','0','0','','','','','0','3','','','0000-00-00 00:00:00');
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
INSERT IGNORE INTO tblscores VALUES('14','27','1378','0','0','0','0','','','','','0','3','','','0000-00-00 00:00:00');
INSERT IGNORE INTO tblscores VALUES('15','28','1097','10','10','5','10','This paper needs significant re-writing and analysis of data. Some specimen identification is not correct. I advise the authors to consult with experts and pertinent published literatures for proper identification of the mollusks. This paper is written as a simple report not in a form suitable for a technical journal such as NRCP journal.  ','The writing is confusing, and very \"high schoolish\'\'. Some objectives were not addressed by the data presented.','This paper needs major re-writing. At its present form is not acceptable.','Although the general objective will be of great use to generate policies for the proper management and exploitation of the molluscan resources of Lake Lanao, the errors and confusing writing is not acceptable at its present form.','35','3','This paper is rejected.','20210204215605_.','2021-02-04 21:56:05');
INSERT IGNORE INTO tblscores VALUES('16','28','1138','15','12','8','10','','Lacks essential data on the number of  replicates done per sampling site; distribution and abundance of mollusks per site and  physical and chemical of characteristics of the lake. Wrong identification of some gastropods (Family Planorbidae and Lymnaeidae). ','','','45','3','The manuscript is not scientifically written.','20210126050843_.','2021-01-26 05:08:43');
INSERT IGNORE INTO tblscores VALUES('17','24','2850','0','0','0','0','','','','','0','2','','','0000-00-00 00:00:00');
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
INSERT IGNORE INTO tblscores VALUES('726','30','4298','10','5','5','10','','','','','30','3','While the research title looks relevant since Lake Lanao and its watershed are considered lifeblood for economic development and water security, the data and subsequent discussion are grossly insufficient to merit approval for scientific publication. Should the author pursue an interest on this direction, a good start would be the use of Lanao Lake Masterplan report as basic reference','20210207163445_.','2021-02-07 16:34:45');
INSERT IGNORE INTO tblscores VALUES('727','30','972','0','0','0','0','','','','','0','3','','','0000-00-00 00:00:00');
INSERT IGNORE INTO tblscores VALUES('730','29','820','0','0','0','0','','','','','0','2','','','0000-00-00 00:00:00');
INSERT IGNORE INTO tblscores VALUES('731','28','6802','17','15','8','10','','','','','50','3','The manuscript needs extensive revision as pertinent aspects in the methodology were not sufficiently described, which is important in determining the reproducibility of the study. Much of what is written in the results are a repeat of the information presented in the table/figures. The authors should present sections more concisely by emphasizing key findings. Furthermore, the manuscript needs polishing and would benefit from tight editing and proofreading. ','20210207134830_20210116210819_IdentificationBiodiversityMollusks_FULL.doc','2021-02-07 13:48:30');
INSERT IGNORE INTO tblscores VALUES('732','25','52','24','15','8','18','There is sufficient MPN data but the authors mention physico-chemical, population, and income data that was not indicated in the study.','There was enough MPN data but it is not properly analyzed.','Revise the tables to make them more standardized. They have different fonts and colors. They are image screenshots and not actual tables. Please also revise so that the paper would resemble the format and writing style of a scientific journal.','Relevant data but not properly analyzed.','65','3','The paper has relevant data but should be properly analyzed. The paper also tends to cite too many unpublished data. It was mentioned in the paper that the Lanao Lake water is already classified to be class A or requires proper treatment before consumption. This negates the significance and objective of the study because it ended up stating the obvious. Maybe revise the significance and objectives. The authors also did not mention which statistical analyses were used and which data. Particularly, the MPN per station was not clear if it was just for one site or not. Did the authors take the average per station across sites? That would be incorrect. Moreover, a proper association or correlation analysis would be helpful in associating population size and municipality income with MPN per site. It is recommended that the data be re-analyzed and re-written as a new submission. Again, the data is very relevant but it is not properly analyzed.','20210316100258_20210116194557_MicrobiologicalWaterQuality_FULL_with_reviewer_comments.doc','2021-03-16 10:02:58');
INSERT IGNORE INTO tblscores VALUES('733','27','5287','15','15','10','8','The results presented were not able to give sufficient information on the topic being studied. Although the researcher was able to identify the distribution of the fish being studied, the methods used on computing for the abundance of fish is questionable. ','The survey conducted by the researcher lacks statistical analysis. The researcher was also not able to present the result of DNA barcoding. Please see attached file for more comments. ','The paper needs a lot of improvements in data presentation. Some tables and graphs/ images were just copy-pasted. ','This could be a good research if the researcher will be able to present the DNA barcoding data, update references, and be more scientific on data presentation and analysis. ','48','3','Please see attached file. ','20210209220631_DistributionRelativeAbundance_FULL.pdf','2021-02-09 22:06:31');
INSERT IGNORE INTO tblscores VALUES('734','25','104','0','0','0','0','','','','','0','2','','','0000-00-00 00:00:00');
INSERT IGNORE INTO tblscores VALUES('735','29','1951','0','0','0','0','','','','','0','2','','','0000-00-00 00:00:00');
INSERT IGNORE INTO tblscores VALUES('736','38','1146','20','20','15','18','Please see attached general and specific comments.','Please see attached general and specific comments.','Please see attached general and specific comments.','Please see attached general and specific comments.','73','6','General and specific comments are attached in pdf. Manuscript with track changes will be sent thru email. Word file cannot be uploaded through this page.','20210224233335_NRCP_2021_POTENTIAL_ANTIBIOTIC-PRODUCING_FUNGI_FROM_THE_SURFACE_SEDIMENTS_OF_LAKE_LANAO__PHILIPPINES.pdf','2021-02-24 23:33:35');
INSERT IGNORE INTO tblscores VALUES('737','26','736','0','0','0','0','','','','','0','2','','','0000-00-00 00:00:00');
INSERT IGNORE INTO tblscores VALUES('738','29','866','0','0','0','0','','','','','0','2','','','0000-00-00 00:00:00');
INSERT IGNORE INTO tblscores VALUES('739','26','5167','0','0','0','0','','','','','0','2','','','0000-00-00 00:00:00');
INSERT IGNORE INTO tblscores VALUES('740','25','352','26','25','17','17','','','','','85','3','','20210210164335_Comments.pdf','2021-02-10 16:43:35');
INSERT IGNORE INTO tblscores VALUES('741','38','5737','25','24','14','16','','','','','79','3','Consider the reverse and top view of the colony characteristics of the fungal isolates. The level of significance was not specified. Agar block method is used for the purification of fungal isolates. Streaking is used for the purification of bacteria. Waste disposal was not mentioned in the methodology. Add the micrometer image along with the images.  ','20210207193416_.','2021-02-07 19:34:16');
INSERT IGNORE INTO tblscores VALUES('742','25','178','13','14','8','12','The objectives of the study were not presented well/clearly in the introduction, hence there is no assurance whether results presented really answered the problem of this research. ','','The discussion of the results is not satisfactory since the researchers were not able to relate the results and discussion with that of the other research that studies the same topic. ','The results of this research could be very important to serve as baseline information for the implementation of the necessary measures/intervention in saving the bodies of water particularly the Lake Lanao. ','47','3','Please refer comments in the attached paper.','20210212231406_20210116194557_MicrobiologicalWaterQuality_FULL_Alvarez.doc','2021-02-12 23:14:06');
INSERT IGNORE INTO tblscores VALUES('743','24','460','0','0','0','0','','','','','0','2','','','0000-00-00 00:00:00');
INSERT IGNORE INTO tblscores VALUES('744','28','2061','12','10','10','8','','','','','40','3','Overall, the paper, as is, is not acceptable for publication. It needs major rewriting to follow the format of a manuscript, not tabulating the materials used, objectives, conclusions, and acknowledgements, unless this is what the journal required. I checked but can\'t find detailed guidelines for manuscript submission. The method was not clear. Mere observation in the market does not give any information. Interviews with catchers were done, but results were not discussed. Were there questionnaires? What are the profiles of the respondents? Indices were determined, but not a single formula/equation was presented. English must be corrected. Some sentences are incoherent. This paper needs to be corrected first by a technical writer prior to submission for reconsideration in a journal.','20210210004046_.','2021-02-10 00:40:46');
INSERT IGNORE INTO tblscores VALUES('745','38','5272','20','17','10','15','This study tried to investigate the potential antibiotic ability of fungi from Lake Lanao. The paper is relevant due to the need of science community to speed up the discovery of novel drugs in order to respond to the increasing threat of multidrug resistant bacteria.

The abstract should be improved in order to convey the novel breakthrough and the relevance of the study.

In your conclusion, what is your basis in saying that \"Acremonium sp showed superior activity\"? This may be a dangerous sweeping statement if not defended by substantial empirical data. 

This question helps you to defend your claim: \"What is the descriptive equivalence range to indicate high, intermediate, low susceptibility, or resistance of the bacteria to the fungal isolates under study. Does 15 mm or greater ZOI indicate high susceptibility?','The effectiveness of the potential antibiotic-producing fungi were only tested on two bacteria.','1. The zone of inhibition (ZOI) is better illustrated using figures (bar graphs). The positive/negative standard deviation must also be presented (as T-bars on top of the bar graphs).

2. Clearer pictures are highly need for scientific publications. Also, it appears that some of the fungal isolates have contaminations. Please see to it that pure cultures are used to represent the isolates in your study.

3. The figures are a bit confusing and difficult to understand. Categorize and label them properly.

4. The pictures showing zones of inhibitions must be clearly and separately presented. They should not be mixed with the presentation of the colony and microscopic features of the fungal isolates.
 ','This research is timely due to the rapid emergence of antibiotic resistance bacterial strains.','62','3','The technical soundness of the methodology must be complete and consistent, hence these observations must be addressed:

1. did you use any positive and negative control? without these controls, the experimental procedure must be reconsidered.

2. did the remaining 116 fungal isolates have zero ZOI for both bacteria? if NOT, what was your basis /criteria to say that only these 10 exhibited antibiosis? (please submit attachment for the ZOI of the other 116 fungal isolates for verification purposes).

3. how were the identification of the fungi cross-referenced? did you consult mycologists to affirm the morphological identification? was there any supporting molecular data?

4. Place a descriptive equivalence to the measured ZOI. What is the range of ZOI in order for you to say that the bacteria is (a) resistant, (b) intermediate, or (c) susceptible to the fungal isolate test organisms.','20210208112052_.','2021-02-08 11:20:52');
INSERT IGNORE INTO tblscores VALUES('746','63','652','0','0','0','0','see General Remarks below...','see General Remarks below...','see General Remarks below...','see General Remarks below...','0','3','While the paper is well organized and well prepared for publication in the NRCP journal, the reviewer was able to run a plagiarism test. It detected 85% plagiarism for the reason that this has been published in another source - PSA. You can search using the title of this paper and a full paper will appear. Therefore, this paper is NOT RECOMMENDED for publication for this is not an original paper.','20210222095916_.','2021-02-22 09:59:16');
INSERT IGNORE INTO tblscores VALUES('747','64','846','0','0','0','0','','','','','0','2','','','0000-00-00 00:00:00');
INSERT IGNORE INTO tblscores VALUES('748','64','639','25','25','15','15','','','','','80','3','','20210307190150_Comments.pdf','2021-03-07 19:01:50');
INSERT IGNORE INTO tblscores VALUES('749','65','149','27','28','17','18','','','','','90','3','','20210304204915_.','2021-03-04 20:49:15');
INSERT IGNORE INTO tblscores VALUES('750','64','1044','29','28','17','18','','','The graphical representation of the changes in the mean blood glucose levels of the experimental groups until the day 21 measurements were highly appreciated. However, a short supplemental table showing the actual mean blood glucose levels may also be presented most especially since these are data that are highly relevant to the primary objectives of the study.','','92','3','Congratulations to the researcher/s for this undertaking. 
There are some minor recommendations this reviewer would like to propose:
Results and Discussion
1. On the discussion on polyphenols and flavonoids: 
1.1 there may be a discussion linking the literature cited on polyphenols and flavonoids to the results of the study;
1.2 there may be a brief explanation as to why the dichloromethane semi-crude extract was selected for the acute oral toxicity and hypoglycemic activity screening;
1.3 If the study assumes that the phytochemical constituents in Artocarpus odoratissimus responsible for the hypoglycemic activity are the polyphenols and flavonoids, were there general identity tests conducted on the dichloromethane semi-crude extract to test such assumptions? Such tests may greatly help in linking and substantiating the discussion even if the study delimits itself from isolating and purifying the extract.','20210303233139_.','2021-03-03 23:31:39');
INSERT IGNORE INTO tblscores VALUES('751','65','597','25','25','18','18','','','','Great research work written in Filipino. Salute!','86','3','','20210312165738_Evaluation_of_the_paper_titled_Naratibo___.pdf','2021-03-12 16:57:38');
INSERT IGNORE INTO tblscores VALUES('752','70','5246','0','0','0','0','','','','','0','2','','','0000-00-00 00:00:00');
INSERT IGNORE INTO tblscores VALUES('753','53','1297','22','20','10','18','The research results may gain more significance if additional evidence is provided and presented more systematically by the author. For example, quantifying the impact on local benefits and on income and livelihood (in terms of lost benefits and income) for each of the 16 sites included in the \"sampling\" would provide a better assessment of the magnitude of the impact of the pandemic. The qualitative data on the loss of income and opportunities are better replaced by quantitative data. It is the rich qualitative data on coping coping mechanisms (per site and per affected sector) and on the ecological benefits of the lockdown that should be retained as qualitative data and presented more systematically to highlight key insights and major themes. This would enable a more analytical discussion of these rich narratives, which in turn could make a stronger connection to the policy recommendations. 
Some items in the impact checklist does not contain impact data, such as the impact on culture. This could have been probe further by looking into indigenous forms of coping and resilience during the lockdown. ','The research output is described as a case study of 16 sites. Thus the research results are presented as generalizations. An alternative description would be: comparative study of 16 ecotourism sites. Framing the study in this manner would enable an analytical approach that seeks both similarities and differences in these 16 sites. It would also enable a clustering of the sites on the basis of thematic comparisons that may be identified based on the observed similarities and differences. This, in turn, would enable a more theoretically informed discussion of the differential impacts, which would give the policy recommendations more traction. ','Given the comments on relevance and scope/content, the presentation of the research results could be improved by including tables and charts that show quantified impact, and by including tables and charts that show differential impact and coping mechanisms per site. 
The more important point regarding quality is the need for clarification on the methodology of the study. A discussion on methodology should be more elaborate on the research tools and on the conduct of the data gathering activities, especially because this research was done during a national lockdown and could illuminate creative ways of doing research under a restrictive environment. There are also crucial details which are missing in the discussion of the research methodology, such as the background of the researchers, details on the research tools which were used, how were data gathering activities conducted (face-to-face? online interviews? email correspondence?), how many questionnaires were sent out and how many responses were received, and what was the total number of respondents and how many for each of the 16 sites included in the study. It is also important to note the erroneous use of the term FGD. FGDs have a minimum number of participants to be acceptable as an FGD. Two participants cannot be considered as an FGD. This could have been more appropriately transformed into an In-depth Key Informant Interview.  
Another important point in ensuring research quality that is at par with international standards is the adherence to the requirements of ethical research. A brief discussion on this matter should be included in the discussion of the methodology, especially because several informants were named in this report. ','Yes, the research results are highly applicable, especially the policy recommendation. The policy recommendations may be further improved by being more specific, for example on the need to give eco-tourism sites with breathing periods. ','70','3','','20210319135322_.','2021-03-19 13:53:22');
INSERT IGNORE INTO tblscores VALUES('754','71','6148','28','28','15','19','There should be a clear explanation how the content analysis was used in the study. There should be no confusion between the policy analysis approach and the main methodology which is content analysis as reflected in the title. ','','I recommend that the presentation of results be supported with coding/ themes that will clearly show the meaning of phrases/ words used in each policy so to establish the strength of a content analysis. ','A tabular presentation to present the codes/ meanings of the policy contents should be considered. This will help the reader to understand the categories  used in the analysis. ','90','3','It is suggested to include the explanation of the set of rules on how the content analysis was conducted. Also, the paper should define the units and categories of analysis. ','20210308103224_.','2021-03-08 10:32:24');
INSERT IGNORE INTO tblscores VALUES('755','55','5667','0','0','0','0','','','','','0','2','','','0000-00-00 00:00:00');
INSERT IGNORE INTO tblscores VALUES('756','75','6072','0','0','0','0','','','','','0','2','','','0000-00-00 00:00:00');
INSERT IGNORE INTO tblscores VALUES('757','55','4393','28','28','20','20','The title could be expanded to encapsulate the narrative  of sampling of various \'harana\' (regional, different time frames).','The terms Indigenous and Hispanic are big terms in musicology as well as anthropology which might need some operational definition.','All of the examples pertain to the text/lyrics of the harana. Some simple notated music or even excerpted would balance the lyrics heavy content of the paper. The phraseologies are mostly appreciated as the presentation is simple, palatable and comprehensible. ','','96','3','Recommended with very minor revisions.','20210309135918_.','2021-03-09 13:59:18');
INSERT IGNORE INTO tblscores VALUES('758','75','3767','27','27','16','18','','','','','88','5','The study offers a new and timely topic because of the increased attention that is being rendered over intercultural communication. This interest is fueled by the continuous rise of globalization/glocalization and increased opportunities for multicultural settings. With this, the purpose of the study is commendable. Congratulations!
However, as mixed-method research, this study requires a well-planned and thorough interpretation of results in order to arrive at a conclusion worthy enough to serve as a reference for language preservation. Hence, comprehensive literature support/corroboration is deemed necessary.','20210322164827_.','2021-03-22 16:48:27');
INSERT IGNORE INTO tblscores VALUES('759','75','270','26','25','14','17','','','','','82','3','','20210329182749_NRCP_EVALN_HANUNUO_LANGUAGE.pdf','2021-03-29 18:27:49');
INSERT IGNORE INTO tblscores VALUES('760','55','3654','0','0','0','0','','','','','0','2','','','0000-00-00 00:00:00');
INSERT IGNORE INTO tblscores VALUES('761','55','907','26','25','17','18','Very little has been written about the harana, even the CCP Encyclopedia of the Philippine Art does not have an entry on this important Filipino tradition of music. The article is a very welcome addition to the limited source on this Filipino music tradition.

','p.1 \"the harana exhibits the orality of indigenous poetry in its choice of words and the rhythm of the danza, Spanish music\"
This is a problematic statement as not all songs sung in the harana utilize danza rhtyhm. \" In the \"Giliw ko\" movie the harana scene is not in habanera rhythm. Even, songs of Florante Aguilar, entitle  which the author cites

p. 2 \"Harana is a Spanish traditional form of music\"
\"Harana,\" I firmly believe, is not a form of music in the sense that it shares a distinct musical structure and identifiable stylistic music features. Harana, rather, is a musical practice, a performative act of wooing a lady through singing. Mpreso, it is not a Spanish form like the zarzuela, although, it can be argued that it developed during the Spanish colonial period in the country. 

It might be difficult to discuss the concept of musical form, style and genre of the harana songs, especially for non-musicians. Hence, I suggest that the paper takes on solely textual analysis of the harana songs to find emergent themes (which the article does very well.) But this limitation has to be clearly stated in the introduction of the paper.  

','Concise and well-written article.If the researcher can include illustrations and photos of the tradition.','','86','3','','20210323032809_20210208084339_Harana_paper.doc','2021-03-23 03:28:09');
INSERT IGNORE INTO tblscores VALUES('762','75','5763','28','26','18','18','The results are consistently based on the objectives of the study. All details are clearly emphasized.','The overall scope/content is consistent to the objectives initially indicated. However, a few illustrations need further discussion.','The presentation is very clear and would easily guide the readers in understanding the study. Although, there are some lines which are too wordy. The tables are well-presented.','The study is very timely and relevant as most of the younger generations tend to stay away from the use of languages spoken by the local community. This study provides a venue for future researchers to continue on studying other languages which are not yet known by the majority. ','90','3','','20210324215832_.','2021-03-24 21:58:32');
INSERT IGNORE INTO tblscores VALUES('763','77','6466','25','10','8','15','The outputs of this project is highly relevant to the related objectives. ','Most of the introduction and several discussion points are not charted against current evidence from existing literature. The results, though provided insights and have achieved the objectives, the discussion flow seems very confusing. I would suggest to rewrite most of the report, anchored to existing literature.','The presentation of results is very confusing. Figures should be stand alone. Please provide the relevant figure number, names, as well as panel numbers/letters to the relevant figures. It\'s really hard to follow through. ','In terms of timeliness, this study is highly relevant and should be optimized for better readability. ','58','3','The project is highly relevant, however, I feel that this could have been better. Please re-write the report. Anchor the report in existing literature and not just anecdotal. Please choose only the relevant figures. Avoid flooding the report with too many figures, so that it can be readable. Please restructure the flow of the discussion. If the authors can add some simple non-parametric tests showing the whether the difference in the sex are statistically significant or not, at least this would add some level of (statistical) confidence aside from the written descriptives. Please be careful as well with the use of sex and gender. Lastly, it would be good if the authors can lay out the pipeline on where these results can be utilized, either in local or national policy. ','20210322145355_.','2021-03-22 14:53:55');
INSERT IGNORE INTO tblscores VALUES('764','70','1603','0','0','0','0','','','','','0','2','','','0000-00-00 00:00:00');
INSERT IGNORE INTO tblscores VALUES('765','71','787','10','10','5','10','The subject of the study is relevant, particularly as the country continues to grope for an effective framework for planned action to deal with the existing pandemic. Content analysis of government policies and issuances can actually serve to identify what could have been the recurring policy foci, and in turn, recurring gaps, in what the government, both at national and local levels, has done.

The study, however, has yet to deliver the expected outputs that its title undertook to deliver, i.e. the codification and thematization of information that can be extracted from the policies and issuances of government agencies and its instruments, i.e. through written documents or through transcripts of public pronouncements like press briefings and televised meetings. The content analysis, which it was supposed to utilize as a means to present its policy analysis, has not been clearly demonstrated due to the absence of methodical identification, presentation, and analysis of possibly repeated key ideas, phrases, and statements that these documents are supposed to contain; hence, the intent to describe objectively, systematically, and quantitatively the manifest content of policies communicated by the Philippine government has yet to be demonstrated in the discussions. 

Ideas posited instead appeared more like a repetition of the information made available by printed, broadcast, and social media. Discussions appeared in many cases as a report of the public sentiment already expressed in countless narratives;  hence, the article missed the opportunity to provide a more scientific and evidence-based elucidation of where lies the problem in the government’s policy initiatives. The author could have considered (a) achieving a content analysis of Philippine government policies and issuances vis-à-vis other countries’ policies, showing parallelism and/or contradictions; (b) supporting its statements with more citations and relevant references; (c) pursuing the identification of codified knowledge resulting from the analysis of the content of a significantly increased number of relevant documents covered; (d) determining distinctly from what perspective the thematization of information resulting from the content analysis will be treated, e.g. legal, medical, cultural, political, among others.
','The breadth and depth of information resulting from the study can be significantly improved by (a) referring to more primary and secondary sources, which are now in fact accessible online through national and local government websites, online videos, and online articles; (b) achieving a more extensive review of related literature; (c) offering original input resulting from a combined quantitative and qualitative approach in the content analysis of available materials.


','Presentation of discussions, in general, need (a) more organization, coherence, and cohesion; (b) proofreading and editing for grammatical correctness; (c) more graphs and/or tables for clarity of information and easier reference to highlighted points; (d) a more objective tone as an academic discourse.','The topic by itself remains timely as the country continues to deal with the multi-faceted challenges brought about by the pandemic.','35','3','','20210317083809_.','2021-03-17 08:38:09');
INSERT IGNORE INTO tblscores VALUES('766','74','7089','30','10','10','20','','','','','70','3','The independent variables (seasons) were not properly defined in the paper. It is confusing if which specific property does the study focuses on: whether on flow dynamics (mixing & non-mixing) or on precipitation difference (dry & wet). The author, however, can still consider the four seasons as independent variables but the presentation and discussion of results should be separated. Moreover, since we are dealing with seasons as our independent variables, we might also consider a review and presentation of relevant meteorological data (i.e. precipitation rate). ','20210321200545_Ciliate_Research__With_Comments_.pdf','2021-03-21 20:05:45');
INSERT IGNORE INTO tblscores VALUES('767','53','1097','0','0','0','0','','','','','0','3','','','0000-00-00 00:00:00');
INSERT IGNORE INTO tblscores VALUES('768','70','1432','0','0','0','0','','','','','0','2','','','0000-00-00 00:00:00');
INSERT IGNORE INTO tblscores VALUES('769','71','3657','25','22','16','17','Append (if possible) sample audit trail to enhance validity of the findings. ','Emphasize in the conclusion the themes that emerged from data (after triangulation has made) as product of content analysis. ','There is a need to show an example of how a \"theme\" was coded as it emerged from data during the content analysis. ','','80','3','In qualitative research methodologies, analysis is critical, hence audit trail is needed. A few summary tables to be appended on how codes were made and how themes emerged in the data need to be presented. ','20210322153419_.','2021-03-22 15:34:19');
INSERT IGNORE INTO tblscores VALUES('770','74','5285','25','21','18','18','The manuscript was able to use ciliate as a bioindicator on the monitoring of the water quality of Lake Lanao for different seasons. It is important to note that the amount of ciliate is below the threshold level as claimed by the authors.','The results should have been better if correlated with other water quality parameters (BOD, COD, TSS, turbidity, etc.) and other set standards. Although, as presented the ciliate abundance in Lake Danao is low in comparison to the literature.','The representation is clear and simple but lacking the comparison with other water quality parameters and standards.','It could be a baseline study and it will be more interesting if correlations were made with existing water quality measurements and standards. ','82','5','','20210325221038_20210308145852_ciliate_abundance_research_article_-_without_authors_name_with_comments.pdf','2021-03-25 22:10:38');
INSERT IGNORE INTO tblscores VALUES('771','77','3339','20','15','15','15','Based on the objectives set by the paper, the report is very relevant. However, it appears lacking in the discussion especially of the graphs featured on the paper. I am not certain that there were adequate gender-specific insights tackled in the paper. ','The paper could improve the discussion of the gender-specific insights. There are entries in the paper which were not supported by study findings, so they appear as personal opinions especially that they are not cross-referenced/supported by other literature. Citations can be improved.  ','There were a lot of graphs presented. Some of which were not self-explanatory and will require discussion from the authors.  ','The paper has great potential, especially if the paper is able to present the findings more extensively. ','65','6','The material reviewed is a Project Report, so it does not follow the usual format of a journal article. Given this, the flow of the paper, depth of discussion and citations can be improved further. ','20210427085602_.','2021-04-27 08:56:02');
INSERT IGNORE INTO tblscores VALUES('772','77','1337','26','25','19','18','You might want to check on other datasets available re COVID 19. When we say mine, you have to exhaust every information or datasets on possible sources.','Pls check on the surveys conducted by DOST-FNRI at the eNutrition website. Results are usually disaggregated by sex. Also the latest survey  called RNAS or the Rapid Nutritional Assessment Survey is related to the pandemic. Information can be an added input to your study.','','You may check on other surveys done by non govt agencies like the OCTA Research. ','88','3','','20210317175159_.','2021-03-17 17:51:59');
INSERT IGNORE INTO tblscores VALUES('773','70','3780','0','0','0','0','','','','','0','2','','','0000-00-00 00:00:00');
INSERT IGNORE INTO tblscores VALUES('774','53','5410','19','20','15','5','Discuss the methods of analysis employed for the data gathered using the questionnaire and FGD

Analysis of the results of the inverview were not properly estasblished','Though it has given interview outputs, cross analysis with appropriate literatures or similar events was not established.','Introduction section should be redesigned. A good theoretical international and Philippine background on ecotourism  and COVID 19 is needed to support the main research argument. 

- The discussion section should be redesigned in order to explore and discuss the main findings with other international and national similar works.
- Please ensure that all relevant statements within the paper contain supporting references to build on the existing literature.
-Please make sure your conclusions\' sections underscore the scientific value added of your paper, addressing your problems/objectives.','Paper was written during the time of the pandemic. ','59','3','','20210523210548_20210206161612_Ecotourism_in_the_Time_of_COVID-19_Pandemic_full_paper_for_NRCP_Research_Journal-CBO-review20210523b.PDF','2021-05-23 21:05:48');
INSERT IGNORE INTO tblscores VALUES('775','70','3558','20','20','10','10','The basis of the results were not explicitly shown in the paper. The research objectives are unmeasureable.','The supporting literature are insufficient considering that of late there is an extensive literature on mental health in the pandemic. The research design was not identified. Likewise, the rigors of both qualitative and quantitative researches are not reflected in the paper. The procedure undertaken were unclear so there is an issue of replicability. Interview questions and tools were not mentioned.','Themes and subthemes were not substantially presented and supported. Also, the results were not discussed well. Analysis is lacking.','I am not confident that the results will really be useful as it seem not to offer new information. ','60','6','The write up on methodology should be improved. Also more literature is needed to fortify the background of the study and strengthen the results.','20210705222341_.','2021-07-05 22:23:41');
INSERT IGNORE INTO tblscores VALUES('776','40','206','30','25','15','20','','','The research needs to be organise in the presentation of the results','','90','2','','20210824114052_.','2021-08-24 11:40:52');
INSERT IGNORE INTO tblscores VALUES('777','126','1102','25','20','12','18','I want to commend the research team for taking the initiative to capture the state of remote teaching experiences of a select group of teachers in the country empirically.  The involvement of 28, 859 teachers from the basic education level is indeed commendable.  Evidently, the paper is only confined to the descriptive aspects (simple percentage) of the RTE. I believe that the team can further improve the overall merit of this paper. By capitalizing on the huge number of participants and the nature of the scales used to gather the needed data and information, I suggest that the objectives be expanded to be able to entertain more analytical tools that would generate more interesting results and better sense-making.','Being cross-sectional in approach, I would say that the paper is commendable. However, I believe that the results of the paper, expressed in percentage and lumped together per level (elementary, junior high, and senior high school) might not provide a more robust portrait of the RTE.  Using the collective percentage approach per level of education gives an impression to any reader that the paper assumes that teachers experience the same thing across regions.  Undeniably, the nature, dynamics, and complexities of teaching in elementary are different from junior and senior high school levels. One must acknowledge that teachers from across regions vary a lot in terms of other entry points (size of school, SES, availability of resources, access to development programs, etc).  Hence, I would like to invite the team to perform cluster and proportion analyses of the data sets to yield a more interesting set of results for analysis and interpretation.
On the one hand, cluster analysis is used to classify objects into groups where objects in one group are more similar to each other and different from objects in other groups. Proportion Analysis, on the other hand, s used to compare a proportion of responses or values in a sample of data to a (hypothesized) proportion in the population from which sample data are drawn.  These two analyses will give the readers a more distinct portrait of the state of RTE in a particular region. Then the research team can subject the two analyses to a multivariate analysis like ANOVA. Such tests, once carried out, will facilitate a grade-level and regional level-specific recommendation instead of lumping the three levels together.','I believe that the paper results expressed in percentage and lumped together per level (elementary, junior high, and senior high school) might not provide a more robust portrait of the RTE.  Using the collective percentage approach per level of education gives an impression to any reader that the paper assumes that teachers experience the same thing across regions.  Undeniably, the nature, dynamics, and complexities of teaching in elementary are different from junior and senior high school levels. One has to acknowledge that teachers from across regions vary a lot in terms of other entry points (size of school, SES, availability of resources, access to development programs, etc).  Hence, I would like to invite the team to perform cluster and proportion analyses of the data sets to yield a more interesting set of results for analysis and interpretation.
On the one hand, cluster analysis is used to classify objects into groups where objects in one group are more similar and different from objects in other groups. On the other hand, Proportion Analysis is used to compare a proportion of responses or values in a sample of data to a (hypothesized) proportion in the population from which sample data are drawn.  These two analyses will give the readers a more distinct and solid portrait of the state of RTE in a particular region. Then the research team can subject the two analyses to a multivariate analysis like ANOVA. Such tests once carried out, will facilitate a grade-level and regional level-specific recommendation instead of lumping the three levels together.  
I wish to invite the research team to provide a more detailed description of the scales used in the paper. Is it also possible to include in the Appendix section of the revised version of the paper the scales used in the paper.? Such description and inclusion will facilitate any reviewer\'s suggestions and recommendations of possible expansion of the paper\'s objectives, treatment, and analyses.  Kindly indicate in the Methods section the protocol number given by a local Ethics Review Committee.  This is crucial when human subjects are involved in the conduct of an empirical investigation.
I suggest that the team devotes a separate section for the discussion of the results of the paper.  As the current version of the paper stands, a certain degree of \'thinness\' of the discussion of the results may be observed.  Scholars think that the discussion section is the most crucial section of any scientific investigation, for it sheds light on the observed phenomena.
','There is no doubt that the results of this exploratory investigation may assist the formulation of policies that would address the problem of teachers in regard to RT.  However, such promise may be realized if the methodological and sense-making aspects of the paper under review are adequately addressed.  
Looking forward to receiving the revised version of this promising and policy-driven investigation.
','75','6','','20211012182044_.','2021-10-12 18:20:44');
INSERT IGNORE INTO tblscores VALUES('778','126','4020','20','23','10','10','The topic is timely as it provides insights in the pandemic experiences of teachers, providing concrete data. The review of related literature, methodology and results can still be improved as stated in the succeeding comments.','The data provided a large number of respondents and the survey is supported by an FGD. It was not clear, however, if the survey considered all forms of experiences. It is not clear how experiences is defined in the study, thus, the results were based on teaching tools, student-teacher interaction and teacher applications. It could look into 8 Ms of teaching or define what the study meant by experiences. It also mentions the use of FDG but results of the FDG were not mentioned in the discussion.
In terms of related literature, only Cyprus, Indonesia (Mailizar on Mathematics Education), Sandars ((Singapore on Medical Education), Trust and Whalen (USA) and Egypt were identified to have coped with educational concerns during the pandemic. Are there no other literatures available, especially in Asia, on how teachers coped with pandemic remote teaching especially in elementary and high school? It is suggested that additional review of literature especially in basic education be provided.','Results were presented in graphical format with document commentary, however, some labels were too small to be read clearly. The FDG results should also be stated clearly as part of the results. Besides being DepEd teachers, were their categories considered? Are the issues comparable for the elementary and high school teachers? Was there a consideration for the regional contexts of the respondents?','Well-written except that the use of HOWEVER was heavily observed. It could utilize other transitional devices. Some words in the graph could not be read clearly.','63','6','This is a pioneering work with good data but is should consider providing the scope and limitations, more review of related literature, provide results of FGD and given the large scope and number of respondents, detail why only 1 FGD was conducted in triangulating data. It is possible that experiences may vary depending on grade levels and contexts (regions).
It would also be helpful to note if the respondents were categorized as elementary or high school teachers. Experiences may be different or the same for both categories; isuues and challnges may also be more defined.
There were instances where remote teaching were conducted before the pandemic, the research can include some data or literature about this to illustrate differences in terms of experiences. ','20211014184034_.','2021-10-14 18:40:34');
INSERT IGNORE INTO tblscores VALUES('779','78','495','15','15','10','10','The objectives are to identify the characteristics of the young pregnant women and mothers and to learn from their stories. The article may have done that; however, they were not able to relate to previous studies on teenage pregnancy, and contribute additional and new knowledge on this situation. ','The generation of themes relevant to the topic of teenage pregnancy would have been helpful in analysis of the data; however, the author was only able to generate categories of the respondents. ','','There are a lot of errors in syntax, grammar and language. ','50','7','It was quite difficult to review the article because of the language errors right from the abstract. Would it have been possible that the journal editor be guided when articles are passed on to reviewers and when it be given back to authors for further revisions? ','20211008085109_.','2021-10-08 08:51:09');
INSERT IGNORE INTO tblscores VALUES('780','126','R7b09e9ee67d1f86333da082d011d70f0','0','0','0','0','','','','','0','2','','','0000-00-00 00:00:00');



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
INSERT IGNORE INTO tbltitles VALUES('2','Mrs.','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('3','Ms.','2017-09-06 04:17:58','2017-10-16 11:41:35');
INSERT IGNORE INTO tbltitles VALUES('4','Dr.','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('5','NS','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('6','Prof.','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('7','Rev.','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('8','Engr.','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('10','Capt.','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('11','Major','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('12','Lt.-Col.','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('13','Col.','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('14','Lady','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('15','Lt.-Cmdr.','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('16','The Hon.','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('17','Cmdr.','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('18','Flt. Lt.','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('19','Brgdr.','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('20','Judge','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('22','The Hon. Mrs','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('23','Wng. Cmdr.','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('24','Group Capt.','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('25','Rt. Hon. Lord','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('26','Revd. Father','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('27','Revd Canon','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('28','Maj.-Gen.','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('29','Air Cdre.','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('30','Viscount','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('31','Dame','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('32','Rear Admrl.','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('33','Asc Prof','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('34','Fr.','2017-09-06 04:17:58','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('35','Sen','2017-09-06 04:18:32','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('36','Sec','2017-09-06 04:18:32','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('37','Asst Prof','2017-09-06 04:18:32','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('38','Sr','2017-09-06 04:18:32','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('43','Sir','2017-09-06 04:18:32','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('44','Capt.','2017-09-06 04:18:32','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('47','Col.','2017-09-06 04:18:32','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('50','The Hon.','2017-09-06 04:18:32','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('51','Cmdr.','2017-09-06 04:18:32','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('52','Flt. Lt.','2017-09-06 04:18:32','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('53','Brgdr.','2017-09-06 04:18:32','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('55','Lord','2017-09-06 04:18:32','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('56','The Hon. Mrs','2017-09-06 04:18:32','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('57','Wng. Cmdr.','2017-09-06 04:18:32','0000-00-00 00:00:00');
INSERT IGNORE INTO tbltitles VALUES('87','Arch.','2017-12-02 10:37:27','0000-00-00 00:00:00');



CREATE TABLE `tbltracking` (
  `row_id` int(11) NOT NULL AUTO_INCREMENT,
  `trk_man_id` int(11) DEFAULT NULL,
  `trk_description` char(128) NOT NULL,
  `trk_processor` varchar(64) DEFAULT NULL,
  `trk_remarks` text DEFAULT NULL,
  `trk_process_datetime` varchar(32) DEFAULT NULL,
  `trk_source` char(11) DEFAULT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=latin1;

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
INSERT IGNORE INTO tbltracking VALUES('112','62','','SA994','','2021-02-18 13:52:32','_sk');
INSERT IGNORE INTO tbltracking VALUES('113','63','','SA994','','2021-02-18 13:57:58','_sk');
INSERT IGNORE INTO tbltracking VALUES('114','64','','SA994','','2021-02-18 14:01:49','_sk');
INSERT IGNORE INTO tbltracking VALUES('115','65','','SA994','','2021-02-18 14:03:46','_sk');
INSERT IGNORE INTO tbltracking VALUES('116','66','','SA994','','2021-02-18 14:06:02','_sk');
INSERT IGNORE INTO tbltracking VALUES('117','67','','7408','','2021-02-19 09:24:09','_sk');
INSERT IGNORE INTO tbltracking VALUES('118','68','','7408','','2021-02-19 09:27:25','_sk');
INSERT IGNORE INTO tbltracking VALUES('119','66','','SA994','','2021-02-21 21:50:16','');
INSERT IGNORE INTO tbltracking VALUES('120','62','','SA994','','2021-02-21 21:54:28','');
INSERT IGNORE INTO tbltracking VALUES('121','65','','SA994','','2021-02-21 22:00:53','');
INSERT IGNORE INTO tbltracking VALUES('122','63','','SA994','','2021-02-21 22:05:51','');
INSERT IGNORE INTO tbltracking VALUES('123','64','','SA994','','2021-02-21 22:11:44','');
INSERT IGNORE INTO tbltracking VALUES('124','1','','SA994','','2021-02-21 22:24:52','');
INSERT IGNORE INTO tbltracking VALUES('125','63','','652','While the paper is well organized and well prepared for publication in the NRCP journal, the reviewer was able to run a plagiarism test. It detected 85% plagiarism for the reason that this has been published in another source - PSA. You can search using the title of this paper and a full paper will appear. Therefore, this paper is NOT RECOMMENDED for publication for this is not an original paper.','2021-02-22 09:59:16','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('126','69','','7305','','2021-02-23 14:24:49','_sk');
INSERT IGNORE INTO tbltracking VALUES('127','38','','1146','Please see attached comments and manuscript with track changes (sent thru email). The  word file of the manuscript with track changes cannot be uploaded in this page.','2021-02-24 23:16:58','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('128','38','','1146','General and specific comments are attached in pdf. Manuscript with track changes will be sent thru email. Word file cannot be uploaded through this page.','2021-02-24 23:33:35','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('129','39','','SA994','','2021-03-02 15:42:57','');
INSERT IGNORE INTO tbltracking VALUES('130','64','','1044','Congratulations to the researcher/s for this undertaking. 
There are some minor recommendations this reviewer would like to propose:
Results and Discussion
1. On the discussion on polyphenols and flavonoids: 
1.1 there may be a discussion linking the literature cited on polyphenols and flavonoids to the results of the study;
1.2 there may be a brief explanation as to why the dichloromethane semi-crude extract was selected for the acute oral toxicity and hypoglycemic activity screening;
1.3 If the study assumes that the phytochemical constituents in Artocarpus odoratissimus responsible for the hypoglycemic activity are the polyphenols and flavonoids, were there general identity tests conducted on the dichloromethane semi-crude extract to test such assumptions? Such tests may greatly help in linking and substantiating the discussion even if the study delimits itself from isolating and purifying the extract.','2021-03-03 23:31:39','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('131','70','','SA994','','2021-03-04 13:11:24','_sk');
INSERT IGNORE INTO tbltracking VALUES('132','71','','SA994','','2021-03-04 13:14:08','_sk');
INSERT IGNORE INTO tbltracking VALUES('133','65','','149','','2021-03-04 20:49:15','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('134','72','','7825','','2021-03-05 10:40:11','_sk');
INSERT IGNORE INTO tbltracking VALUES('135','64','','639','','2021-03-07 19:01:50','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('136','70','','SA994','','2021-03-07 21:41:07','');
INSERT IGNORE INTO tbltracking VALUES('137','71','','SA994','','2021-03-07 21:49:26','');
INSERT IGNORE INTO tbltracking VALUES('138','53','','SA994','','2021-03-07 22:01:19','');
INSERT IGNORE INTO tbltracking VALUES('139','71','','6148','It is suggested to include the explanation of the set of rules on how the content analysis was conducted. Also, the paper should define the units and categories of analysis. ','2021-03-08 10:32:24','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('140','73','','7408','','2021-03-08 11:10:28','_sk');
INSERT IGNORE INTO tbltracking VALUES('141','55','','SA994','','2021-03-08 13:30:05','');
INSERT IGNORE INTO tbltracking VALUES('142','74','','SA994','','2021-03-08 14:58:52','_sk');
INSERT IGNORE INTO tbltracking VALUES('143','75','','SA994','','2021-03-08 15:01:10','_sk');
INSERT IGNORE INTO tbltracking VALUES('144','75','','SA994','','2021-03-08 15:26:20','');
INSERT IGNORE INTO tbltracking VALUES('145','76','','7830','','2021-03-08 23:50:22','_sk');
INSERT IGNORE INTO tbltracking VALUES('146','77','','SA994','','2021-03-09 13:45:40','_sk');
INSERT IGNORE INTO tbltracking VALUES('147','77','','SA994','','2021-03-09 13:56:16','');
INSERT IGNORE INTO tbltracking VALUES('148','55','','4393','Recommended with very minor revisions.','2021-03-09 13:59:18','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('149','74','','SA994','','2021-03-09 14:12:56','');
INSERT IGNORE INTO tbltracking VALUES('150','65','','597','','2021-03-12 16:57:38','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('151','25','','52','The paper has relevant data but should be properly analyzed. The paper also tends to cite too many unpublished data. It was mentioned in the paper that the Lanao Lake water is already classified to be class A or requires proper treatment before consumption. This negates the significance and objective of the study because it ended up stating the obvious. Maybe revise the significance and objectives. The authors also did not mention which statistical analyses were used and which data. Particularly, the MPN per station was not clear if it was just for one site or not. Did the authors take the average per station across sites? That would be incorrect. Moreover, a proper association or correlation analysis would be helpful in associating population size and municipality income with MPN per site. It is recommended that the data be re-analyzed and re-written as a new submission. Again, the data is very relevant but it is not properly analyzed.','2021-03-16 10:02:58','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('152','71','','787','','2021-03-17 08:38:09','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('153','77','','1337','','2021-03-17 17:51:59','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('154','53','','1297','','2021-03-19 13:53:22','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('155','75','','3767','The study offers a new and timely topic because of the increasing attention that is being rendered over intercultural communication. This interest is fueled by the continuous rise of globalization/glocalization and increased opportunities for multicultural settings. With this, the main goal of this study is commendable. Congratulations!
However, a mixed-method study like this requires a well-planned and thorough interpretation of results in order to arrive at a conclusion worthy enough to serve as the basis for language preservation. Hence, a comprehensive literature corroboration of the findings is needed.','2021-03-20 09:44:30','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('156','74','','7089','The independent variables (seasons) were not properly defined in the paper. It is confusing if which specific property does the study focuses on: whether on flow dynamics (mixing & non-mixing) or on precipitation difference (dry & wet). The author, however, can still consider the four seasons as independent variables but the presentation and discussion of results should be separated. Moreover, since we are dealing with seasons as our independent variables, we might also consider a review and presentation of relevant meteorological data (i.e. precipitation rate). ','2021-03-21 20:05:45','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('157','77','','6466','The project is highly relevant, however, I feel that this could have been better. Please re-write the report. Anchor the report in existing literature and not just anecdotal. Please choose only the relevant figures. Avoid flooding the report with too many figures, so that it can be readable. Please restructure the flow of the discussion. If the authors can add some simple non-parametric tests showing the whether the difference in the sex are statistically significant or not, at least this would add some level of (statistical) confidence aside from the written descriptives. Please be careful as well with the use of sex and gender. Lastly, it would be good if the authors can lay out the pipeline on where these results can be utilized, either in local or national policy. ','2021-03-22 14:53:55','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('158','71','','3657','In qualitative research methodologies, analysis is critical, hence audit trail is needed. A few summary tables to be appended on how codes were made and how themes emerged in the data need to be presented. ','2021-03-22 15:34:19','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('159','75','','3767','The study offers a new and timely topic because of the increased attention that is being rendered over intercultural communication. This interest is fueled by the continuous rise of globalization/glocalization and increased opportunities for multicultural settings. With this, the purpose of the study is commendable. Congratulations!
However, as mixed-method research, this study requires a well-planned and thorough interpretation of results in order to arrive at a conclusion worthy enough to serve as a reference for language preservation. Hence, comprehensive literature support/corroboration is deemed necessary.','2021-03-22 16:48:27','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('160','55','','907','','2021-03-23 03:28:09','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('161','78','','2621','','2021-03-23 13:49:18','_sk');
INSERT IGNORE INTO tbltracking VALUES('162','75','','5763','','2021-03-24 21:58:32','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('163','79','','4619','','2021-03-25 04:22:36','_sk');
INSERT IGNORE INTO tbltracking VALUES('164','74','','5285','','2021-03-25 22:06:52','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('165','74','','5285','','2021-03-25 22:10:38','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('166','75','','270','','2021-03-29 18:27:49','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('167','80','','4758','','2021-04-22 18:26:30','_sk');
INSERT IGNORE INTO tbltracking VALUES('170','77','','3339','The paper is promising with lots of important information. However, for it to be presented as a journal publication, it has to substantially improve its format, depth of discussion, citation and flow.  ','2021-04-27 08:14:36','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('171','77','','3339','The material reviewed is a Project Report, so it does not follow the usual format of a journal article. Given this, the flow of the paper, depth of discussion and citations can be improved further. ','2021-04-27 08:56:02','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('172','83','','8965','','2021-05-07 18:03:33','_sk');
INSERT IGNORE INTO tbltracking VALUES('173','53','','SA994','','2021-05-14 08:33:47','');
INSERT IGNORE INTO tbltracking VALUES('174','70','','SA994','','2021-05-14 11:23:24','');
INSERT IGNORE INTO tbltracking VALUES('175','84','','5133','','2021-05-14 15:05:45','_sk');
INSERT IGNORE INTO tbltracking VALUES('176','53','','5410','','2021-05-23 21:05:48','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('177','85','','6744','','2021-06-11 16:58:43','_sk');
INSERT IGNORE INTO tbltracking VALUES('178','86','','6744','','2021-06-11 17:06:40','_sk');
INSERT IGNORE INTO tbltracking VALUES('179','87','','8844','','2021-06-21 10:13:35','_sk');
INSERT IGNORE INTO tbltracking VALUES('180','88','','8352','','2021-06-22 12:17:08','_sk');
INSERT IGNORE INTO tbltracking VALUES('181','89','','2404','','2021-06-25 15:11:31','_sk');
INSERT IGNORE INTO tbltracking VALUES('182','90','','9218','','2021-06-26 11:00:45','_sk');
INSERT IGNORE INTO tbltracking VALUES('183','91','','8008','','2021-06-27 18:23:55','_sk');
INSERT IGNORE INTO tbltracking VALUES('184','92','','9219','','2021-06-27 18:31:40','_sk');
INSERT IGNORE INTO tbltracking VALUES('185','92','','SA994','','2021-07-01 14:30:33','');
INSERT IGNORE INTO tbltracking VALUES('186','70','','SA994','','2021-07-01 16:46:42','');
INSERT IGNORE INTO tbltracking VALUES('187','70','','3558','The write up on methodology should be improved. Also more literature is needed to fortify the background of the study and strengthen the results.','2021-07-05 22:23:41','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('188','93','','5760','','2021-07-12 18:31:57','_sk');
INSERT IGNORE INTO tbltracking VALUES('189','94','','5760','','2021-07-12 18:39:11','_sk');
INSERT IGNORE INTO tbltracking VALUES('190','95','','4671','','2021-07-25 15:23:15','_sk');
INSERT IGNORE INTO tbltracking VALUES('191','96','','4671','','2021-07-25 15:33:38','_sk');
INSERT IGNORE INTO tbltracking VALUES('192','97','','8652','','2021-07-31 23:37:31','_sk');
INSERT IGNORE INTO tbltracking VALUES('193','98','','9256','','2021-08-01 11:31:06','_sk');
INSERT IGNORE INTO tbltracking VALUES('194','99','','9256','','2021-08-01 11:41:17','_sk');
INSERT IGNORE INTO tbltracking VALUES('195','100','','3767','','2021-08-02 19:57:40','_sk');
INSERT IGNORE INTO tbltracking VALUES('196','101','','3767','','2021-08-02 20:02:22','_sk');
INSERT IGNORE INTO tbltracking VALUES('197','102','','3767','','2021-08-02 20:06:14','_sk');
INSERT IGNORE INTO tbltracking VALUES('198','103','','9191','','2021-08-02 20:38:04','_sk');
INSERT IGNORE INTO tbltracking VALUES('199','104','','8127','','2021-08-04 17:09:21','_sk');
INSERT IGNORE INTO tbltracking VALUES('200','105','','6471','','2021-08-06 08:54:14','_sk');
INSERT IGNORE INTO tbltracking VALUES('201','106','','6471','','2021-08-06 09:16:46','_sk');
INSERT IGNORE INTO tbltracking VALUES('202','107','','6471','','2021-08-06 13:18:43','_sk');
INSERT IGNORE INTO tbltracking VALUES('203','108','','6471','','2021-08-06 14:01:08','_sk');
INSERT IGNORE INTO tbltracking VALUES('204','109','','9013','','2021-08-11 09:44:39','_sk');
INSERT IGNORE INTO tbltracking VALUES('205','40','','SA994','','2021-08-13 09:08:24','');
INSERT IGNORE INTO tbltracking VALUES('206','110','','5887','','2021-08-18 10:51:11','_sk');
INSERT IGNORE INTO tbltracking VALUES('207','111','','5887','','2021-08-18 10:56:09','_sk');
INSERT IGNORE INTO tbltracking VALUES('208','40','','206','','2021-08-24 11:40:52','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('209','112','','9161','','2021-08-24 11:43:57','_sk');
INSERT IGNORE INTO tbltracking VALUES('210','113','','9161','','2021-08-24 11:46:10','_sk');
INSERT IGNORE INTO tbltracking VALUES('211','114','','9161','','2021-08-24 11:48:23','_sk');
INSERT IGNORE INTO tbltracking VALUES('212','115','','9161','','2021-08-24 11:50:36','_sk');
INSERT IGNORE INTO tbltracking VALUES('213','116','','9161','','2021-08-24 11:52:32','_sk');
INSERT IGNORE INTO tbltracking VALUES('214','117','','9442','','2021-08-26 12:50:41','_sk');
INSERT IGNORE INTO tbltracking VALUES('215','118','','9493','','2021-08-29 08:40:22','_sk');
INSERT IGNORE INTO tbltracking VALUES('216','119','','9340','','2021-08-30 15:45:17','_sk');
INSERT IGNORE INTO tbltracking VALUES('217','120','','6552','','2021-08-30 20:25:45','_sk');
INSERT IGNORE INTO tbltracking VALUES('218','121','','6552','','2021-08-30 20:27:23','_sk');
INSERT IGNORE INTO tbltracking VALUES('219','122','','6552','','2021-08-30 20:28:29','_sk');
INSERT IGNORE INTO tbltracking VALUES('220','123','','6552','','2021-08-30 20:29:34','_sk');
INSERT IGNORE INTO tbltracking VALUES('221','124','','6552','','2021-08-30 20:30:27','_sk');
INSERT IGNORE INTO tbltracking VALUES('222','125','','6552','','2021-08-30 20:31:08','_sk');
INSERT IGNORE INTO tbltracking VALUES('223','126','','5938','','2021-09-03 06:30:04','_sk');
INSERT IGNORE INTO tbltracking VALUES('224','127','','9578','','2021-09-04 10:28:55','_sk');
INSERT IGNORE INTO tbltracking VALUES('225','128','','9122','','2021-09-12 16:05:03','_sk');
INSERT IGNORE INTO tbltracking VALUES('226','129','','8846','','2021-09-17 18:09:07','_sk');
INSERT IGNORE INTO tbltracking VALUES('227','130','','9340','','2021-09-20 15:04:28','_sk');
INSERT IGNORE INTO tbltracking VALUES('228','131','','9340','','2021-09-20 15:19:40','_sk');
INSERT IGNORE INTO tbltracking VALUES('229','126','','SA994','','2021-09-28 14:42:46','');
INSERT IGNORE INTO tbltracking VALUES('230','126','','SA994','','2021-10-06 14:21:08','');
INSERT IGNORE INTO tbltracking VALUES('231','92','','SA994','','2021-10-06 15:04:47','');
INSERT IGNORE INTO tbltracking VALUES('232','78','','SA994','','2021-10-07 10:07:33','');
INSERT IGNORE INTO tbltracking VALUES('233','132','','4532','','2021-10-07 11:31:37','_sk');
INSERT IGNORE INTO tbltracking VALUES('234','78','','495','It was quite difficult to review the article because of the language errors right from the abstract. Would it have been possible that the journal editor be guided when articles are passed on to reviewers and when it be given back to authors for further revisions? ','2021-10-08 08:51:09','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('235','126','','1102','','2021-10-12 18:20:44','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('236','126','','4020','This is a pioneering work with good data but is should consider providing the scope and limitations, more review of related literature, provide results of FGD and given the large scope and number of respondents, detail why only 1 FGD was conducted in triangulating data. It is possible that experiences may vary depending on grade levels and contexts (regions).
It would also be helpful to note if the respondents were categorized as elementary or high school teachers. Experiences may be different or the same for both categories; isuues and challnges may also be more defined.
There were instances where remote teaching were conducted before the pandemic, the research can include some data or literature about this to illustrate differences in terms of experiences. ','2021-10-14 18:40:34','_sk_r');
INSERT IGNORE INTO tbltracking VALUES('237','133','','6214','','2021-10-15 09:30:48','_sk');
INSERT IGNORE INTO tbltracking VALUES('238','134','','5719','','2021-10-15 20:52:25','_sk');
INSERT IGNORE INTO tbltracking VALUES('239','135','','4619','','2021-10-29 11:53:43','_sk');
INSERT IGNORE INTO tbltracking VALUES('240','136','','9904','','2021-11-05 15:42:58','_sk');
INSERT IGNORE INTO tbltracking VALUES('241','137','','9926','','2021-11-11 00:16:48','_sk');
INSERT IGNORE INTO tbltracking VALUES('242','138','','9571','','2021-11-16 12:39:07','_sk');
INSERT IGNORE INTO tbltracking VALUES('243','139','','9932','','2021-11-17 13:19:02','_sk');
INSERT IGNORE INTO tbltracking VALUES('244','140','','6552','','2021-11-27 12:46:00','_sk');
INSERT IGNORE INTO tbltracking VALUES('245','141','','8618','','2021-12-17 19:53:04','_sk');
INSERT IGNORE INTO tbltracking VALUES('246','142','','10026','','2022-01-01 21:46:40','_sk');



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
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8;

INSERT IGNORE INTO tblusers VALUES('7','7','superadmin','$2y$10$RVoSDfjYOdmcDzuMi9HsSuteHWR9501FuSe.hui716vSmSeI.VfA.','test@mail.com','999999','Super Admin','8','1','2022-01-18 15:36:19','2022-01-18 15:36:14','','3','2018-11-26 13:56:10','2022-01-17 10:55:21');
INSERT IGNORE INTO tblusers VALUES('77','SA530','mariaelena.talingdan@nrcp.dost.gov.ph','$2y$10$HDiNLieMDNKGmVaZhql41u5HL.1JbWAkEITGe/cvsqS6VIsCsQ0Lm','','00000000','Managing Editor','3','0','','','','3','2019-09-05 15:06:27','');
INSERT IGNORE INTO tblusers VALUES('78','SA994','lanie.manalo@nrcp.dost.gov.ph','$2y$10$xxo/26AGbR5E4ME2gzy8R.TmNgLnmTwLVkZD4.ELNmK9Mu6T17YFG','','00000000','Committee','3','0','','','','3','2019-09-05 15:07:20','');
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
INSERT IGNORE INTO tblusers VALUES('129','652','ruel_cabahug2@yahoo.com','$2y$10$.d.s2c29xFe2nZw3g219reebm5nQriIICvCSaTLmtuPmOGz9PQ2Y2','','','Reviewer','5','0','','','','2','2021-02-21 22:28:18','');
INSERT IGNORE INTO tblusers VALUES('130','846','apcatabay@dlshsi.edu.ph','$2y$10$eAIJRLM47gRSni5t/XvRM.9IswOvPmkybqYtAeM719SI79p/8Xkaq','','','Reviewer','5','0','','','','2','2021-02-22 09:05:59','');
INSERT IGNORE INTO tblusers VALUES('131','639','bibulatao@up.edu.ph','$2y$10$tLSikFaSksNMfmpxFE9dwe.MmA/yF4.c4BgFqSF4qJjMhcrXPcQxy','','','Reviewer','5','0','','','','2','2021-02-22 17:23:49','');
INSERT IGNORE INTO tblusers VALUES('132','149','juli_aligaen@yahoo.com','$2y$10$k2sHdqu3fYaH4jquB0QIO.gIHmwwLLwPo6Pym9ytjtZQqutswpLaS','','','Reviewer','5','0','','','','2','2021-02-22 19:28:09','');
INSERT IGNORE INTO tblusers VALUES('133','1044','vinarosedahilig@yahoo.com','$2y$10$8koUtoC4aNL4jS7p7RQW3ujLRMC5BKviMDbWgtQBcPOxejWvEUXIa','','','Reviewer','5','0','','','','2','2021-02-24 09:46:11','');
INSERT IGNORE INTO tblusers VALUES('134','597','thborromeo@yahoo.com','$2y$10$rhAXWb6DINQH1ov7.R9OP.vbGyaF/.ol5BeAX4sv6OvOCrr7ewA2S','','','Reviewer','5','0','','','','2','2021-02-24 14:55:16','');
INSERT IGNORE INTO tblusers VALUES('135','5246','albertalbina@norsu.edu.ph','$2y$10$v8xmuuvAt5ITOG8HZ14fWOz.uuWRi5eA.VIpKL9zMZ5Lq1Gs35/Sm','','','Reviewer','5','0','','','','2','2021-03-07 23:08:04','');
INSERT IGNORE INTO tblusers VALUES('136','1297','jcdionisio@up.edu.ph','$2y$10$9t1zlGxh.DVQjiSGUD4y.e2jlv6yQy2Xgw2ZrqxlnXRN/L4l5Gz5i','','','Reviewer','5','0','','','','2','2021-03-08 05:25:15','');
INSERT IGNORE INTO tblusers VALUES('137','6148','dan.lopez@lpu.edu.ph','$2y$10$o9UQVLhpCJxblWUbKpH0he2r7/r9/CUFAJG38VCJH4vhjRm0V7PoO','','','Reviewer','5','0','','','','2','2021-03-08 09:41:34','');
INSERT IGNORE INTO tblusers VALUES('138','5667','gvillaluz2009@gmail.com','$2y$10$PrHdj.H5Js4R7tV/lJRd3u2z/XTMy4BELh4n/y0JLysDzbn22X7eu','','','Reviewer','5','0','','','','2','2021-03-08 13:35:36','');
INSERT IGNORE INTO tblusers VALUES('139','6072','rmmaxilom@gmail.com','$2y$10$6AWqOJnWw9mJ5qvdofLyl.NvqkuBg3UvSihaRxNVDqdFH5os64ZwO','','','Reviewer','5','0','','','','2','2021-03-08 15:34:42','');
INSERT IGNORE INTO tblusers VALUES('140','4393','rblucas@ust.edu.ph','$2y$10$VjHqwDi5FCZIIseAjdeyyOnx3BvoDHNQWdT/qC6TjlVs93Bufx.kO','','','Reviewer','5','0','','','','2','2021-03-08 16:32:19','');
INSERT IGNORE INTO tblusers VALUES('141','3767','bonimartominez@yahoo.com','$2y$10$OgLLB9EopPvpUQ6I7lv7qe1Spr688XeHqhqFw7VktZ4Dmo4B92bDW','','','Reviewer','5','0','','','','2','2021-03-08 16:33:52','');
INSERT IGNORE INTO tblusers VALUES('142','270','alona.ardales@dlsu.edu.ph','$2y$10$cPCC0qJ0pljgWMLCEj9ONuKWvA2Rppln.NeogPrgkp6hTSk1eyQhW','','','Reviewer','5','0','','','','2','2021-03-08 17:46:09','2021-03-08 17:54:25');
INSERT IGNORE INTO tblusers VALUES('143','3654','arwintan@gmail.com','$2y$10$6C4wgFwBD6cNR8AXHwQ/TeweBRPqx9IyAPjWSnNoZPqMKZE0CtF7W','','','Reviewer','5','0','','','','2','2021-03-08 18:18:51','');
INSERT IGNORE INTO tblusers VALUES('144','907','sandyichua@yahoo.com','$2y$10$HEIORvh..4yQ9/ehvpRQ1OTbHN./tMua64IN7sOBtM/11qVPt0cYu','','','Reviewer','5','0','','','','2','2021-03-08 18:24:54','');
INSERT IGNORE INTO tblusers VALUES('145','5763','aberleo2014@gmail.com','$2y$10$gwQUH65phyn/FKsNsJQR4u9/1.iTo222II61Fu1xG9Pw4hMDDNZMi','','','Reviewer','5','0','','','','2','2021-03-08 20:39:04','');
INSERT IGNORE INTO tblusers VALUES('146','6466','xtseposo@up.edu.ph','$2y$10$BsmoS8tcEsY.xqU9l1/i5uYd5TdUKDHv7x.o/DogmrqvA/X4Zqmse','','','Reviewer','5','0','','','','2','2021-03-09 14:11:41','');
INSERT IGNORE INTO tblusers VALUES('147','1603','galangaj@gmail.com','$2y$10$0ur9wqe9rnejn6Besa2IK.QwMlSi5KoFG88Clv3Xpv.AYSTsRG.Tq','','','Reviewer','5','0','','','','2','2021-03-09 16:47:40','');
INSERT IGNORE INTO tblusers VALUES('148','787','claritadlcarillo@gmail.com','$2y$10$TgrEfqWxFT3SEgpYXfASoeUgf1TIAHarUdDhvP2egAe7KAWRMEEzy','','','Reviewer','5','0','','','','2','2021-03-09 17:48:26','');
INSERT IGNORE INTO tblusers VALUES('149','7089','ebasanmichelle@gmail.com','$2y$10$U9AUImh0W3YVU6QvBgSGluDEQRhuUBlifBRcsKJIGjKg9.AqGSw72','','','Reviewer','5','0','','','','2','2021-03-09 19:41:47','');
INSERT IGNORE INTO tblusers VALUES('150','1432','esmeraldaaileenburgos@gmail.com','$2y$10$TMnO3we3XpMDweibW3phy..dKl/dAcCvapBvdsY/AZP71vsKcqG3u','','','Reviewer','5','0','','','','2','2021-03-09 22:51:46','');
INSERT IGNORE INTO tblusers VALUES('151','3657','denistan@cmu.edu.ph','$2y$10$NW/4VqQAhjC/tHuV3LDwbOAagAdla.sn1lujqm/Cnglxd//cUVOaa','','','Reviewer','5','0','','','','2','2021-03-10 08:46:39','');
INSERT IGNORE INTO tblusers VALUES('152','5285','jsventura@up.edu.ph','$2y$10$yJgpWTkdxKRG5SkA7hJVDuIymOW.urkJu2AELTE9H6zT1xtoQjzMi','','','Reviewer','5','0','','','','2','2021-03-11 14:00:09','');
INSERT IGNORE INTO tblusers VALUES('153','3339','ericsalenga@gmail.com','$2y$10$0Nz4sPKwDFQgtjVSM9bIbOdVkgPJshIld4WLdkmGf8D.ikMTyAhdy','','','Reviewer','5','0','','','','2','2021-03-11 14:36:16','');
INSERT IGNORE INTO tblusers VALUES('154','1337','caduante@yahoo.com','$2y$10$uKTkTXJs8Scihlmv4qoaIOC1w2G7dT8xix/4uRqoOj..ZWkyXxjzO','','','Reviewer','5','0','','','','2','2021-03-11 18:39:07','');
INSERT IGNORE INTO tblusers VALUES('155','3780','amar.torres@gmail.com','$2y$10$BNbGQQk5KdMxKasYmufTnOwDnMxWO53VSC8jIFi3mpfPQA38UGyG2','','','Reviewer','5','0','','','','2','2021-05-14 15:42:17','');
INSERT IGNORE INTO tblusers VALUES('156','5410','cherie.orpia@gmail.com','$2y$10$O.hjmm5EQ2pwyoHUUXfpP.F/Vhn9F2POPeP9pTzUbpjk0w6FNd672','','','Reviewer','5','0','','','','2','2021-05-15 08:34:16','');
INSERT IGNORE INTO tblusers VALUES('157','3558','graloheus@gmail.com','$2y$10$WVWw0VJEchDeopva5jmcluOjKwObBKFNrCWs.Ezd1/D5Ip2b2/n..','','','Reviewer','5','0','','','','2','2021-07-02 08:08:27','');
INSERT IGNORE INTO tblusers VALUES('158','206','arlen_ancheta@yahoo.co.uk','$2y$10$OHuhmUwWJCv8SBRY4usdgejFXl8ovTY.AwQ5BMDyYclI0IR8fck9a','','','Reviewer','5','0','','','','2','2021-08-13 20:34:53','');
INSERT IGNORE INTO tblusers VALUES('159','SA2764954f06e1e25b38c46c1caba6ce7c','racuna.nrcp@gmail.com','$2y$10$XNVvlKKpcIg1nX9MwrvXUuBWRV4OhsTEGeVQZ4rvwXxsG17OwWPe6','','','Managing Editor','3','0','','','','2','2021-08-18 10:32:11','');
INSERT IGNORE INTO tblusers VALUES('160','1102','doc_allan@yahoo.com','$2y$10$A8Uh/eAh0I2uBDRF54HttOaIUiRn1SakVljMsxCmXiVclNmLiucN6','','','Reviewer','5','0','','','','2','2021-09-28 19:51:14','');
INSERT IGNORE INTO tblusers VALUES('161','4020','camille.vizconde@yahoo.com.ph','$2y$10$Bxctp/cmy3VSvQtAbhWjNea1c5a0w5cMHqDUCzXcBJNCcxP5XtNV6','','','Reviewer','5','0','','','','2','2021-10-06 14:56:15','');
INSERT IGNORE INTO tblusers VALUES('162','495','abb02ph@yahoo.com','$2y$10$jE.MjVWsBqmSuXaKNl7xsOsXCtikJQ2JgULB6dFbUfDiN8s0ZI84G','','','Reviewer','5','0','','','','2','2021-10-07 10:56:16','');
INSERT IGNORE INTO tblusers VALUES('163','R7b09e9ee67d1f86333da082d011d70f0','ftdayagbil@yahoo.com','$2y$10$OzKyiaRdsMf.ynng31iUaObFiBGVvSgmmvXQwLikATAxT/SbPAxBi','','','Reviewer','5','0','','','','2','2021-10-11 18:54:49','');

