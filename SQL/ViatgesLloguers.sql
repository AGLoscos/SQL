CREATE DATABASE IF NOT EXISTS ViatgesLLogers;
USE ViatgesLLogers;

CREATE TABLE clients (
  NIF varchar(12) NOT NULL,
  NOM varchar(30) DEFAULT NULL,
  ADRECA varchar(50) DEFAULT NULL,
  CP varchar(5) DEFAULT NULL,
  CIUTAT varchar(30) DEFAULT NULL,
  PROVINCIA varchar(25) DEFAULT NULL,
  TELEFON varchar(12) DEFAULT NULL,
  EMAIL varchar(50) DEFAULT NULL,
  PRIMARY KEY (NIF)
) ENGINE=InnoDB;


INSERT INTO clients VALUES 
 ('03545444W','Marta Jimenez','Perico, 32','98756','Alcala de Henares',null,'091452121','marta1245@gmail.com'),
 ('05875544Z','Lola Martinez','Altares, 2','98746','Alcala de Henares',null,'091215454','lola.martinez@hotmail.com'),
 ('12578754P','Roberto Valles','Felinos, 20','98453','El Escorial',null,'687545452','Roverto14@ya.com'),
 ('14122115T','Ana Zinc','Principal, 2','98405','Madrid',null,'645655461','zinc@gmail.com'),
 ('14645455U','Guillermo Adan','Decima, 122','97401','Toledo',null,'654555655','guillermo.adan@ya.com'),
 ('15445544F','Andrea Jordan','Ninos, 13','83412','Leon',null,'645421211','andrea4578@hotmail.com'),
 ('21154201X','Jaime Brea','Adan, 23','97401','Tomelloso',null,'655481415','jaime@ono.com'),
 ('21224441R','Javier Prim','Garcilaso, 1','98405','Madrid',null,'612121245','prime@valoe.net'),
 ('21354245B','Maria Lopez','Tren, 87','97846','Tomelloso',null,'687874212','maria.lopez@gmail.com'),
 ('21444441F','Manuel Gonzalez','Martina, 18','97982','Daimiel',null,'621545233','manuel_g@ya.com'),
 ('21467448S','Carlos Fernandez','Pinos, 1','83124','Astorga',null,'688444211','carlos@marlo.com'),
 ('21634524E','Natalia Faena','Camino, 3','97845','Toledo',null,'632321121','natalia@retalo.com'),
 ('21654465G','Margarita McCoy','Verde, 21','08005','Barcelona',null,'093231151','margarita147@hotmail.com'),
 ('21655445K','Luis Perez','Hierba, 3','97401','Ruidera',null,'632541441','luis@roleta.com'),
 ('21655446I','Natalia Garcia','Oceano, 19','97816','Toledo',null,'612121214',NULL),
 ('22444524B','Oscar Martinez','Morfeo, 3','83019','Astorga',null,'687454127',NULL),
 ('23566534R','Hector Martin','San Jorge','83908','Leon',null,'689544444','hector.martin@gmail.com'),
 ('24524132E','Sergio Lozano','Salmon, 12','97265','Almorox',null,'645787841',NULL),
 ('24544532B','Jorge Granero','Libros, 91','83412','Astorga',null,'684125421',NULL),
 ('24544533C','Montserrat Perdiz','Perdices, 21','83124','Valladolid',null,'632541287','monte@gmail.com'),
 ('24654644S','Marta Perez','Sabio, 2','83985','La Baneza',null,'658412896',NULL),
 ('25544152F','Jose Rodriguez','Uno, 2','98756','Torrejon de Ardoz',null,'685214792','jrodriguez@mandrarin.es'),
 ('32145452E','Barbara Paris','Catastro, 3','97401','Mora de Toledo',null,'698214542','barabara@gmail.com'),
 ('32545452R','Josefina Potosi','Libreros, 1','83412','La Baneza',null,'635248984',NULL),
 ('32548775L','Miguel Jordan','Fanta, 7','98401','Alcala de Henares',null,'632512457',NULL),
 ('32565451G','Manuel Rodriguez','Pinos, 3','98412','Aranjuez',null,'632587455','n_rodriguez@gmail.com'),
 ('34578875T','Guillermo Primero','Pao, 13','98401','Tres Cantos',null,'632512142',NULL),
 ('35756411S','Monte Palomo','Torito, 12','98761','Alcala de Henares',null,'091352641','palomo@ya.com'),
 ('35878441A','Sandra Williams','Ventanal, 3','98401','Torrelaguna',null,'684215897',NULL),
 ('35878454B','Joaquin Adan','Gracia, 21','98746','El Escorial',null,'621247552','j_adan@gmail.com'),
 ('38745454E','Joaquin Adan','Decima, 66','98410','Buitrago',null,'623587422','j_adan10@gmail.com'),
 ('42548787M','Juan Valles','Bosque, 2','98756','Madrid',null,'635212145',NULL),
 ('44144013D','Sergio Jimenez','Principal, 2','83187','Valladolid',null,'658977411',NULL),
 ('44545442L','Patricia Ibanez','Obispo, 45','97401','Ciudad Real',null,'625412145',NULL),
 ('44787423F','Marcos Lopez','Extremo, 1','98154','Madrid',null,'652444414',NULL),
 ('45245785R','Felisa Granizo','Farmaco, 2','98401','Aravaca',null,'698778121','j_granizo@perlin.net'),
 ('45421201E','Juan Jose Lopez','Merlin, 15','08031','Barcelona',null,'689871566',NULL),
 ('45787874S','John  Williams','Ventanal, 3','98401','Torrelaguna',null,'623254235',NULL),
 ('48721211Q','Maria Purla','Grupo, 7','98746','Las Rozas',null,'687546541','mpurla@ya.com'),
 ('52124744X','Carlota Jojoy','Pericos, 5','98401','Madrid',null,'658745245',NULL),
 ('52215411A','Vicente Pinto','Pablo, 3','83412','La Baneza',null,'652454541',NULL),
 ('54445233Y','Carlos Rodriguez','Derecho, 7','97541','Valdepenas',null,'625454414',NULL),
 ('54446654R','Dolores Martinez','Avenida, 1','83412','Astorga',null,'623215214',NULL),
 ('54455561J','Sandra Castro','Altura, 1','97213','Valdepenas',null,'658741574',NULL),
 ('54554521C','Esteban Brea','Sicomoro, 25','83401','La Baneza',null,'658841215',NULL),
 ('55687785R','Pedro Valencia','Ballena, 1','08041','Barcelona',null,'622114541',NULL),
 ('58754544V','Salomon Yola','Librero, 2','98412','Alcala de Henares',null,'669845455',NULL), 
 ('65965566S','Lorenzo Martinez','Aguilas, 22','83412','Astorga',null,'658744555','lmartinez@ono.com'),
 ('78241422S','Trinidad Sastre','pescador, 1','98012','Alcala de Henares',null,'091326444',NULL),
 /*Viatges*/
('10000000A','Jordi Robles','Avda. Tarraco, 3','03002','Tarragona','Tarragona','972773374',null),
 ('11111111B','Pepe Pinto','C/ Pintat, 23','08192','Cerdanyola','Barcelona','938882882',null),
 ('22222222C','José Colorado','C/ Colorin, 24','08021','Barcelona','Barcelona','938882883',null),
 ('33333333D','Fernando Vilariño','C/ SQL, 84','08192','Cerdanyola','Barcelona','938882884',null),
 ('44444444E','Enric Martí','C/ Date, 24','08204','Sabadell','Barcelona','938882885',null),
 ('55555555F','José López','C/ Xirgu, 34','08195','Sant Cugat del Vallès','Barcelona','938882886',null),
 ('66666666G','Luis Marín','Rambles, 87 3-1','08001','Barcelona','Barcelona','932083374',null),
 ('77777777H','Emili Ponce','Aragó, 359 4-2','08004','Barcelona','Barcelona','931093388',null),
 ('88888888I','Rosa Orellana','Merinals, 34 atic','08206','Sabadell','Barcelona','937290032',null),
 ('99999999J','Vicenç Portolés','Llul, 298 4-3','08002','Barcelona','Barcelona','932061199',null);

CREATE TABLE aeroports (
  NOM varchar(30) NOT NULL,
  CIUTAT varchar(30) DEFAULT NULL,
  PRIMARY KEY (NOM)
) ENGINE=InnoDB;

--
-- Dumping data for table `aeroports`
--
INSERT INTO aeroports  VALUES 
 ('Barcelona','Barcelona'),
 ('Cancún','Cancún'),
 ('CDG','Paris'),
 ('Chicago','Chicago'),
 ('Dulles','Washington'),
 ('Estocolm','Estocolm'),
 ('Francfurt','Francfurt'),
 ('Frankfurt','Frankfurt'),
 ('Gatwick','Londres'),
 ('Heatrow','Londres'),
 ('JFK','New York'),
 ('La Guardia','New York'),
 ('Madrid','Madrid'),
 ('Málaga','Málaga'),
 ('Moscow','Moscow'),
 ('Munich','Munich'),
 ('Orly','Paris'),
 ('Oslo','Oslo'),
 ('Palma de Mallorca','Palma de Mallorca'),
 ('Praga','Praga'),
 ('Rio de Janeiro','Rio de Janeiro'),
 ('Roma','Roma'),
 ('Ronald Reagan','Washington'),
 ('Sea-Tac','Seattle'),
 ('Tenerife','Tenerife'),
 ('Tokio','Tokio'),
 ('Vancouver','Vancouver'),
 ('Varsòvia','Varsòvia');

CREATE TABLE vols (
  CODI varchar(6) NOT NULL,
  ORIGEN varchar(30) DEFAULT NULL,
  DESTI varchar(30) DEFAULT NULL,
  DATA_SORTIDA date DEFAULT NULL,
  HORA_SORTIDA time DEFAULT NULL,
  DATA_ARRIBADA date DEFAULT NULL,
  HORA_ARRIBADA time DEFAULT NULL,
  COMPANYIA varchar(30) DEFAULT NULL,
  NUM_PLACES int DEFAULT NULL,
  PRIMARY KEY (CODI),
  FOREIGN KEY (ORIGEN) REFERENCES aeroports (NOM),
  FOREIGN KEY (DESTI) REFERENCES aeroports (NOM)
) ENGINE=InnoDB;

--
-- Dumping data for table `vols`
--
INSERT INTO vols VALUES 
 ('AA1030','La Guardia','Barcelona','2009-08-25','16:00:00','2009-08-25','21:00:00','American Airlines',50),
 ('AA1623','JFK','Barcelona','2009-07-16','13:00:00','2009-07-16','18:00:00','American Airlines',50),
 ('AA3010','Barcelona','La Guardia','2009-08-05','09:00:00','2009-08-05','14:00:00','American Airlines',50),
 ('AA3519','JFK','Barcelona','2010-01-04','08:30:00','2010-01-04','14:30:00','American Airlines',30),
 ('AE3840','Moscow','Barcelona','2009-01-07','07:00:00','2009-01-07','14:00:00','Aeroflot',60),
 ('AE888','Barcelona','Moscow','2009-08-26','09:00:00','2009-08-26','12:00:00','Aeroflot',85),
 ('AF5555','Barcelona','CDG','2009-08-15','07:00:00','2009-08-15','09:00:00','Air France',30),
 ('AF6666','Orly','Barcelona','2009-08-31','19:00:00','2009-08-31','21:00:00','Air France',45),
 ('BA1234','Barcelona','Heatrow','2009-07-15','10:00:00','2009-07-15','11:00:00','British Airways',20),
 ('BA3041','Barcelona','Sea-Tac','2009-09-15','08:00:00','2009-09-15','18:00:00','British Airways',50);
INSERT INTO vols VALUES 
 ('BA4321','Heatrow','Barcelona','2009-07-31','18:00:00','2009-07-22','21:00:00','British Airways',20),
 ('DA1130','Sea-Tac','Vancouver','2009-09-19','10:00:00','2009-09-19','11:00:00','Delta Airlines',20),
 ('DA3011','Vancouver','Sea-Tac','2009-09-21','18:00:00','2009-09-21','19:00:00','Delta Airlines',25),
 ('DA4452','Barcelona','La Guardia','2009-04-14','10:00:00','2009-04-14','15:00:00','Delta Airlines',30),
 ('DA5244','La Guardia','Barcelona','2009-11-28','10:00:00','2009-11-28','16:00:00','Delta Airlines',50),
 ('DA8934','Sea-Tac','Barcelona','2009-09-25','08:00:00','2009-09-25','17:30:00','Delta Airlines',40),
 ('IB0000','Barcelona','Madrid','2009-05-15','10:00:00','2009-05-15','10:45:00','Iberia',45),
 ('IB1111','Barcelona','Madrid','2009-05-15','11:00:00','2009-05-15','11:45:00','Iberia',45),
 ('IB1298','Barcelona','Oslo','2009-07-22','12:00:00','2009-07-22','15:00:00','Iberia',25),
 ('IB1919','Barcelona','Varsòvia','2009-03-22','09:30:00','2009-03-22','12:00:00','Iberia',30);
INSERT INTO vols VALUES 
 ('IB1935','Barcelona','La Guardia','2009-12-27','15:00:00','2009-12-27','21:00:00','Iberia',50),
 ('IB2222','Madrid','Barcelona','2009-05-15','09:15:00','2009-05-15','10:00:00','Iberia',45),
 ('IB3333','Madrid','Barcelona','2009-05-15','10:15:00','2009-05-15','11:00:00','Iberia',45),
 ('IB3535','Barcelona','Varsòvia','2009-07-24','09:00:00','2009-07-24','11:30:00','Iberia',30),
 ('IB4458','JFK','Barcelona','2009-04-21','12:00:00','2009-04-21','18:00:00','Iberia',30),
 ('IB4549','Barcelona','Chicago','2009-07-08','10:00:00','2009-07-08','15:00:00','Iberia',50),
 ('IB5555','Barcelona','Málaga','2009-05-21','09:00:00','2009-05-21','11:00:00','Iberia',50),
 ('IB5915','Madrid','Varsòvia','2009-06-15','10:00:00','2009-06-15','12:30:00','Iberia',20),
 ('IB6767','Palma de Mallorca','Barcelona','2009-01-05','20:00:00','2009-01-05','21:00:00','Iberia',20),
 ('IB7623','Barcelona','Oslo','2009-01-12','08:00:00','2009-01-12','11:00:00','Iberia',25);
INSERT INTO vols VALUES 
 ('IB7676','Barcelona','Palma de Mallorca','2009-01-04','08:00:00','2009-01-04','09:00:00','Iberia',20),
 ('IB7782','Barcelona','Tokio','2009-03-22','06:00:00','2009-03-22','22:00:00','Iberia',60),
 ('IB8804','Barcelona','JFK','2009-11-14','07:00:00','2009-11-14','13:00:00','Iberia',40),
 ('IB8932','Oslo','Barcelona','2009-01-26','19:00:00','2002-01-26','22:00:00','Iberia',25),
 ('IB9934','Barcelona','Estocolm','2009-12-31','16:00:00','2009-12-31','19:00:00','Iberia',25),
 ('IB9999','Barcelona','Madrid','2009-05-15','09:00:00','2009-05-15','09:45:00','Iberia',45),
 ('JA2289','Tokio','Barcelona','2009-03-31','07:00:00','2009-03-31','21:30:00','Japan Airlines',50),
 ('LO3825','Varsòvia','Madrid','2009-07-31','08:00:00','2009-07-31','11:30:00','LOT',30),
 ('LO5318','Varsòvia','Madrid','2009-06-22','11:30:00','2009-06-22','15:00:00','LOT',30),
 ('LO9130','Varsòvia','Barcelona','2009-04-01','10:00:00','2009-04-01','13:00:00','LOT',30),
 ('SA2298','Oslo','Barcelona','2009-08-05','19:00:00','2009-08-05','22:00:00','Scandinavian Airlines',25);
INSERT INTO vols VALUES 
 ('SA2345','Estocolm','Barcelona','2010-01-07','10:00:00','2010-01-07','13:00:00','Scandinavian Airlines',20),
 ('SP2538','Barcelona','Moscow','2009-01-01','08:00:00','2009-01-01','14:00:00','SpanAir',55);

--
--
-- Definition of table `escales`
--
CREATE TABLE escales (
  CODI_VOL varchar(6) NOT NULL,
  NUM_ESCALA int NOT NULL,
  AEROPORT varchar(30) DEFAULT NULL,
  PRIMARY KEY (CODI_VOL,NUM_ESCALA),
  FOREIGN KEY (CODI_VOL) REFERENCES vols (CODI),
  FOREIGN KEY (AEROPORT) REFERENCES aeroports (NOM)
) ENGINE=InnoDB;

--
-- Dumping data for table `escales`
--
INSERT INTO escales  VALUES 
 ('AA1030',1,'Barcelona'),
 ('AA1623',1,'Barcelona'),
 ('AA3519',1,'Barcelona'),
 ('AE3840',3,'Barcelona'),
 ('AF6666',1,'Barcelona'),
 ('BA4321',1,'Barcelona'),
 ('DA5244',1,'Barcelona'),
 ('DA8934',3,'Barcelona'),
 ('IB2222',1,'Barcelona'),
 ('IB3333',1,'Barcelona'),
 ('IB4458',1,'Barcelona'),
 ('IB6767',1,'Barcelona'),
 ('IB8932',1,'Barcelona'),
 ('JA2289',2,'Barcelona'),
 ('LO9130',1,'Barcelona'),
 ('SA2298',1,'Barcelona'),
 ('SA2345',1,'Barcelona'),
 ('AF5555',1,'CDG'),
 ('IB4549',2,'Chicago'),
 ('IB9934',1,'Estocolm'),
 ('IB3535',1,'Francfurt'),
 ('JA2289',1,'Francfurt'),
 ('LO3825',1,'Francfurt'),
 ('SP2538',1,'Francfurt'),
 ('BA1234',1,'Heatrow'),
 ('BA3041',1,'Heatrow'),
 ('IB1935',1,'Heatrow'),
 ('DA8934',1,'JFK'),
 ('IB8804',1,'JFK'),
 ('AA3010',1,'La Guardia'),
 ('DA4452',1,'La Guardia'),
 ('IB1935',2,'La Guardia'),
 ('IB4549',1,'La Guardia'),
 ('AE3840',2,'Madrid'),
 ('DA8934',2,'Madrid'),
 ('IB0000',1,'Madrid'),
 ('IB1111',1,'Madrid');
INSERT INTO escales VALUES 
 ('IB9999',1,'Madrid'),
 ('LO3825',2,'Madrid'),
 ('LO5318',1,'Madrid'),
 ('SP2538',2,'Moscow'),
 ('AE3840',1,'Munich'),
 ('IB5915',1,'Munich'),
 ('IB1298',1,'Oslo'),
 ('IB7623',1,'Oslo'),
 ('IB7676',1,'Palma de Mallorca'),
 ('BA3041',2,'Sea-Tac'),
 ('DA3011',1,'Sea-Tac'),
 ('DA1130',1,'Vancouver'),
 ('IB1919',1,'Varsòvia'),
 ('IB3535',2,'Varsòvia'),
 ('IB5915',2,'Varsòvia');

--
-- Definition of table `hotels`
--
CREATE TABLE hotels (
  CODI varchar(6) NOT NULL,
  NOM varchar(30) DEFAULT NULL,
  CATEGORIA int DEFAULT NULL,
  CIUTAT varchar(30) DEFAULT NULL,
  PRIMARY KEY (CODI)
) ENGINE=InnoDB;

--
-- Dumping data for table `hotels`
--
INSERT INTO hotels VALUES 
 ('H0001','Ambassador-VRS',4,'Varsòvia'),
 ('H0002','Walesa',3,'Varsòvia'),
 ('H0003','Hilton-VRS',3,'Varsòvia'),
 ('H0004','Juan Carlos I',5,'Barcelona'),
 ('H0005','Ritz-BCN',5,'Barcelona'),
 ('H0006','Ritz_MAD',5,'Madrid'),
 ('H0007','Bel Air',3,'Madrid'),
 ('H0008','Catalunya',4,'Barcelona'),
 ('H0009','Sheraton-CHG',5,'Chicago'),
 ('H0010','Riga-OSL',3,'Oslo'),
 ('H0011','Scandic-OSL',4,'Oslo'),
 ('H0012','Hilton-STT',5,'Seattle'),
 ('H0013','Balear',4,'Palma de Mallorca'),
 ('H0014','Reis de Mallorca',5,'Palma de Mallorca'),
 ('H0015','Voramar',3,'Palma de Mallorca'),
 ('H0016','Melià-PM',5,'Palma de Mallorca'),
 ('H0017','Manacor',4,'Palma de Mallorca'),
 ('H0018','Scandic-STO',4,'Estocolm'),
 ('H0019','Riga-STO',3,'Estocolm'),
 ('H0020','Sheraton-STO',5,'Estocolm'),
 ('H0021','Melià-CNC',4,'Cancún'),
 ('H0022','Hilton-LND',5,'Londres'),
 ('H0023','New England',4,'Londres'),
 ('H0024','Harrington',4,'Londres'),
 ('H0025','Nelson',3,'Londres');
INSERT INTO hotels VALUES 
 ('H0026','Forrester',5,'Londres'),
 ('H0027','Sheraton-CUB',4,'La Habana'),
 ('H0028','Revolución',3,'La Habana'),
 ('H0029','Varadero',4,'La Habana'),
 ('H0030','Hilton-WSH',5,'Washington'),
 ('H0031','Potomac',4,'Washington'),
 ('H0032','Arlington',2,'Washington'),
 ('H0033','Lincoln',2,'Washington'),
 ('H0034','Pennsylvania',3,'Washington'),
 ('H0035','Copacabana',3,'Rio de Janeiro'),
 ('H0036','Santos',3,'Rio de Janeiro'),
 ('H0037','Rio',4,'Rio de Janeiro'),
 ('H0038','Niagara',4,'Montreal'),
 ('H0039','Green Lake',4,'Montreal'),
 ('H0040','Ambassador-MNT',5,'Montreal'),
 ('H0041','Hilton-MSC',5,'Moscow'),
 ('H0042','Potemkin',3,'Moscow'),
 ('H0043','Rasputin',3,'Moscow'),
 ('H0044','Sheraton-NY',5,'New York'),
 ('H0045','Hilton-NY',5,'New York'),
 ('H0046','Manhattan',4,'New York'),
 ('H0047','Wall Street',4,'New York'),
 ('H0048','St. Patrick',3,'New York'),
 ('H0049','Black Star',2,'New York'),
 ('H0050','Capone',3,'Chicago'),
 ('H0051','St. Valentin',4,'Chicago');
INSERT INTO hotels VALUES 
 ('H0052','Hilton-CHG',5,'Chicago'),
 ('H0053','Hilton-TOK',5,'Tokio'),
 ('H0054','Yokohama',4,'Tokio'),
 ('H0055','Fujiyama',4,'Tokio'),
 ('H0056','Jalisco',4,'Cancún'),
 ('H0057','Monterrey',4,'Cancún'),
 ('H0058','Juárez',4,'Cancún'),
 ('H0059','Pearl Harbour',4,'Honolulu'),
 ('H0060','Reconquista',4,'Madrid'),
 ('H0061','Melià-MAD',5,'Madrid'),
 ('H0062','Cibeles',3,'Madrid'),
 ('H0063','Blake',4,'Edinburgh'),
 ('H0064','Red Lion',3,'Seattle'),
 ('H0065','Turin',4,'Madrid'),
 ('H0066','Alcalá',4,'Madrid'),
 ('H0067','Double Tree',4,'Seattle'),
 ('H0068','Alamo',3,'Cancún');

--
-- Definition of table `viatges`
--
CREATE TABLE viatges (
  CODI varchar(6) NOT NULL,
  ORIGEN varchar(30) DEFAULT NULL,
  DESTI varchar(30) DEFAULT NULL,
  DATA_SORTIDA date DEFAULT NULL,
  DATA_ARRIBADA date DEFAULT NULL,
  PREU float DEFAULT NULL,
  NUM_PLACES int DEFAULT NULL,
  PRIMARY KEY (`CODI`)
) ENGINE=InnoDB;

--
-- Dumping data for table `viatges`
--
INSERT INTO viatges  VALUES 
 ('V03001','Barcelona','Oslo','2009-07-22','2009-08-05',900,7),
 ('V03002','Barcelona','Oslo','2009-01-12','2009-01-26',920,10),
 ('V03003','Barcelona','New York','2009-08-05','2009-08-25',1500,12),
 ('V03004','Barcelona','Varsòvia','2009-07-24','2009-07-31',500,8),
 ('V03005','Madrid','Varsòvia','2009-06-15','2009-06-22',550,15),
 ('V03006','Barcelona','Varsòvia','2009-03-22','2009-04-01',600,15),
 ('V03007','Barcelona','Chicago','2009-07-08','2009-07-16',1200,20),
 ('V03008','Barcelona','Moscow','2009-01-01','2009-01-07',900,15),
 ('V03009','Barcelona','Montreal','2009-03-20','2009-03-26',1500,10),
 ('V03010','Barcelona','Tokio','2009-03-22','2009-03-31',2500,10),
 ('V03011','Barcelona','Palma de Mallorca','2009-01-04','2009-01-05',150,25),
 ('V03012','Barcelona','Palma de Mallorca','2009-01-18','2009-01-19',150,25),
 ('V03013','Barcelona','Palma de Mallorca','2009-02-16','2009-02-17',150,25),
 ('V03014','Barcelona','Palma de Mallorca','2009-03-29','2009-03-30',175,25);
INSERT INTO viatges VALUES 
 ('V03015','Barcelona','Palma de Mallorca','2009-04-17','2009-04-21',300,35),
 ('V03016','Barcelona','Palma de Mallorca','2009-04-26','2009-04-27',200,20),
 ('V03017','Barcelona','Palma de Mallorca','2009-06-21','2009-06-24',200,20),
 ('V03018','Barcelona','Palma de Mallorca','2009-07-12','2009-07-13',270,20),
 ('V03019','Barcelona','Palma de Mallorca','2009-08-01','2009-08-15',900,35),
 ('V03020','Barcelona','Palma de Mallorca','2009-08-16','2009-08-31',900,35),
 ('V03021','Barcelona','Palma de Mallorca','2009-09-11','2009-11-14',300,20),
 ('V03022','Barcelona','Rio de Janeiro','2009-07-24','2009-08-03',1200,20),
 ('V03023','Barcelona','Cancún','2009-10-21','2009-10-28',1000,15),
 ('V03024','Barcelona','Honolulu','2009-10-21','2009-11-02',1500,15),
 ('V03025','Barcelona','La Habana','2009-10-21','2009-10-26',800,18),
 ('V03026','Barcelona','Washington','2009-08-18','2009-08-25',1500,18),
 ('V03027','Barcelona','New York','2009-12-27','2010-01-04',1800,18);
INSERT INTO viatges VALUES 
 ('V03028','Barcelona','New York','2009-04-14','2009-04-21',1600,16),
 ('V03029','Barcelona','Madrid','2009-04-14','2009-04-21',300,20),
 ('V03030','Barcelona','Madrid','2009-10-21','2009-10-26',700,20),
 ('V03031','Madrid','New York','2009-04-18','2009-04-25',250,18),
 ('V03032','Barcelona','New York','2009-11-14','2009-11-28',1500,18),
 ('V03033','Bilbao','New York','2009-11-27','2009-12-06',1000,15),
 ('V03034','Barcelona','Londres','2009-08-01','2009-08-15',800,10),
 ('V03035','Barcelona','Londres','2009-07-15','2009-07-31',750,10),
 ('V03036','Barcelona','Cancún','2009-01-14','2009-01-21',500,15),
 ('V03037','Barcelona','Estocolm','2009-08-16','2009-08-31',750,10),
 ('V03038','Barcelona','Edinburgh','2009-08-01','2009-08-15',850,10),
 ('V03039','Barcelona','Estocolm','2009-12-31','2010-01-07',500,10),
 ('V03040','Madrid','Rio de Janeiro','2009-11-18','2009-11-25',300,15),
 ('V03041','Barcelona','Seattle','2009-09-15','2009-09-25',500,30);

--
-- Definition of table `ofertes_hotels`
--
CREATE TABLE ofertes_hotels (
  CODI_VIATGE varchar(6) NOT NULL,
  CODI_HOTEL varchar(6) NOT NULL,
  PREU_INDIVIDUAL float DEFAULT NULL,
  PREU_DOBLE float DEFAULT NULL,
  PRIMARY KEY (CODI_VIATGE, CODI_HOTEL),
  FOREIGN KEY (CODI_VIATGE) REFERENCES viatges (CODI),
  FOREIGN KEY (CODI_HOTEL) REFERENCES hotels (CODI)
) ENGINE=InnoDB;

--
-- Dumping data for table `ofertes_hotels`
--
INSERT INTO ofertes_hotels VALUES 
 ('V03001','H0010',150,200),
 ('V03001','H0011',100,150),
 ('V03002','H0010',70,120),
 ('V03002','H0011',100,140),
 ('V03003','H0044',150,220),
 ('V03003','H0046',90,140),
 ('V03003','H0049',60,100),
 ('V03004','H0001',100,170),
 ('V03004','H0002',65,95),
 ('V03004','H0003',70,100),
 ('V03005','H0001',90,150),
 ('V03005','H0002',60,90),
 ('V03006','H0001',60,90),
 ('V03006','H0003',65,95),
 ('V03007','H0009',90,120),
 ('V03007','H0050',75,100),
 ('V03007','H0052',130,170),
 ('V03008','H0041',100,130),
 ('V03008','H0042',80,120),
 ('V03009','H0038',100,150),
 ('V03009','H0039',110,170),
 ('V03009','H0040',130,180),
 ('V03010','H0053',120,160),
 ('V03010','H0054',100,140),
 ('V03010','H0055',90,130),
 ('V03011','H0013',100,140),
 ('V03011','H0015',60,90),
 ('V03011','H0017',75,100),
 ('V03012','H0015',65,100),
 ('V03012','H0016',120,160),
 ('V03013','H0013',100,140),
 ('V03013','H0014',120,160),
 ('V03013','H0015',60,90);
INSERT INTO ofertes_hotels VALUES 
 ('V03014','H0015',60,90),
 ('V03014','H0016',110,150),
 ('V03015','H0015',60,90),
 ('V03015','H0017',80,110),
 ('V03016','H0016',120,150),
 ('V03017','H0014',130,160),
 ('V03017','H0015',70,100),
 ('V03018','H0013',120,160),
 ('V03018','H0017',100,140),
 ('V03019','H0013',105,145),
 ('V03019','H0014',135,165),
 ('V03019','H0015',75,105),
 ('V03019','H0017',110,150),
 ('V03020','H0013',120,150),
 ('V03020','H0014',130,160),
 ('V03020','H0015',75,105),
 ('V03020','H0016',125,155),
 ('V03020','H0017',100,140),
 ('V03021','H0014',110,150),
 ('V03021','H0015',60,90),
 ('V03021','H0017',80,110),
 ('V03022','H0035',50,90),
 ('V03022','H0037',75,100),
 ('V03023','H0056',40,75),
 ('V03023','H0057',55,85),
 ('V03023','H0058',60,95),
 ('V03024','H0059',90,120),
 ('V03025','H0028',50,75),
 ('V03025','H0029',70,100),
 ('V03026','H0030',130,160),
 ('V03026','H0031',100,130),
 ('V03026','H0032',40,70),
 ('V03026','H0034',70,100),
 ('V03027','H0044',120,180);
INSERT INTO ofertes_hotels VALUES 
 ('V03027','H0046',90,130),
 ('V03027','H0049',30,50),
 ('V03028','H0045',130,190),
 ('V03028','H0046',90,130),
 ('V03028','H0048',60,90),
 ('V03029','H0061',115,130),
 ('V03029','H0062',90,120),
 ('V03030','H0060',100,125),
 ('V03031','H0044',130,170),
 ('V03031','H0047',100,130),
 ('V03032','H0044',130,170),
 ('V03032','H0046',90,120),
 ('V03032','H0049',50,75),
 ('V03033','H0046',90,120),
 ('V03033','H0047',75,105),
 ('V03033','H0048',50,85),
 ('V03033','H0049',50,75),
 ('V03034','H0025',75,100),
 ('V03034','H0026',115,140),
 ('V03035','H0022',130,150),
 ('V03035','H0023',110,140),
 ('V03035','H0025',80,110),
 ('V03036','H0068',90,130),
 ('V03037','H0020',60,95),
 ('V03038','H0063',90,120),
 ('V03039','H0020',120,150),
 ('V03041','H0064',60,95);

--
-- Definition of table `reserves_hotels`
--
CREATE TABLE reserves_hotels (
  CODI_HOTEL varchar(6) NOT NULL,
  CODI_VIATGE varchar(6) NOT NULL,
  NIF_CLIENT varchar(12) NOT NULL,
  DATA_INICIAL date DEFAULT NULL,
  DATA_FINAL date DEFAULT NULL,
  NUM_HABS_IND int DEFAULT NULL,
  NUM_HABS_DOB int DEFAULT NULL,
  PRIMARY KEY (CODI_HOTEL,CODI_VIATGE,NIF_CLIENT),
  FOREIGN KEY (CODI_HOTEL) REFERENCES hotels (CODI),
  FOREIGN KEY (CODI_VIATGE) REFERENCES viatges (CODI),
  FOREIGN KEY (NIF_CLIENT) REFERENCES clients (NIF)
) ENGINE=InnoDB;

--
-- Dumping data for table `reserves_hotels`
--
INSERT INTO reserves_hotels VALUES 
 ('H0001','V03004','33333333D','2009-07-24','2009-07-29',3,0),
 ('H0001','V03006','33333333D','2009-03-22','2009-03-28',1,2),
 ('H0002','V03004','11111111B','2009-07-24','2009-07-31',2,1),
 ('H0003','V03006','44444444E','2009-03-22','2009-04-01',0,2),
 ('H0010','V03001','33333333D','2009-07-22','2009-08-05',1,0),
 ('H0011','V03002','99999999J','2009-01-12','2009-01-26',0,1),
 ('H0017','V03015','44444444E','2009-04-17','2009-04-21',2,0),
 ('H0031','V03026','88888888I','2009-01-14','2009-01-21',2,1),
 ('H0040','V03009','33333333D','2009-03-20','2009-03-22',0,1),
 ('H0040','V03009','55555555F','2009-03-20','2009-03-22',1,1),
 ('H0040','V03009','77777777H','2009-03-20','2009-03-22',2,1),
 ('H0044','V03003','22222222C','2009-08-05','2009-08-25',1,1),
 ('H0044','V03031','22222222C','2009-04-17','2009-04-25',1,1),
 ('H0046','V03003','22222222C','2009-08-05','2009-08-25',2,0),
 ('H0046','V03003','99999999J','2009-08-18','2009-08-25',0,2);
INSERT INTO reserves_hotels VALUES 
 ('H0046','V03033','44444444E','2009-11-27','2009-12-06',1,1),
 ('H0047','V03031','22222222C','2009-04-18','2009-04-25',2,0),
 ('H0047','V03033','44444444E','2009-11-27','2009-12-06',0,1),
 ('H0048','V03028','22222222C','2009-04-14','2009-04-21',1,1),
 ('H0048','V03033','44444444E','2009-11-27','2009-12-06',2,0),
 ('H0049','V03003','33333333D','2009-08-05','2009-08-25',0,1),
 ('H0049','V03033','44444444E','2009-11-27','2009-12-06',3,0),
 ('H0050','V03007','10000000A','2009-07-08','2009-07-16',0,1),
 ('H0052','V03007','55555555F','2009-07-08','2009-07-16',1,2),
 ('H0052','V03007','99999999J','2009-07-08','2009-07-16',1,2),
 ('H0064','V03041','44444444E','2009-09-15','2009-09-25',1,1);


--
-- Definition of table `reserves_viatges`
--
CREATE TABLE reserves_viatges (
  CODI_VIATGE varchar(6) NOT NULL,
  NIF_CLIENT varchar(12) NOT NULL,
  NUM_PLACES int DEFAULT NULL,
  PRIMARY KEY (CODI_VIATGE,NIF_CLIENT),
  FOREIGN KEY (CODI_VIATGE) REFERENCES viatges (CODI),
  FOREIGN KEY (NIF_CLIENT) REFERENCES clients (NIF)
) ENGINE=InnoDB;

--
-- Dumping data for table `reserves_viatges`
--
INSERT INTO reserves_viatges VALUES 
 ('V03001','33333333D',1),
 ('V03001','44444444E',5),
 ('V03002','22222222C',2),
 ('V03002','99999999J',2),
 ('V03003','22222222C',5),
 ('V03003','33333333D',2),
 ('V03003','99999999J',4),
 ('V03004','11111111B',4),
 ('V03004','33333333D',3),
 ('V03005','88888888I',2),
 ('V03006','33333333D',5),
 ('V03006','44444444E',4),
 ('V03006','55555555F',3),
 ('V03007','10000000A',2),
 ('V03007','55555555F',5),
 ('V03007','99999999J',5),
 ('V03009','33333333D',2),
 ('V03009','55555555F',3),
 ('V03009','77777777H',4),
 ('V03010','88888888I',8),
 ('V03011','33333333D',4),
 ('V03011','44444444E',4),
 ('V03011','77777777H',2),
 ('V03012','55555555F',3),
 ('V03014','33333333D',2),
 ('V03014','55555555F',2),
 ('V03014','88888888I',1),
 ('V03015','44444444E',2),
 ('V03016','11111111B',2),
 ('V03016','33333333D',2),
 ('V03020','22222222C',4),
 ('V03020','55555555F',5),
 ('V03021','22222222C',3),
 ('V03021','33333333D',2),
 ('V03026','88888888I',4),
 ('V03027','11111111B',3);
INSERT INTO reserves_viatges VALUES 
 ('V03027','88888888I',2),
 ('V03028','22222222C',3),
 ('V03028','55555555F',4),
 ('V03031','22222222C',5),
 ('V03031','66666666G',1),
 ('V03031','77777777H',1),
 ('V03033','44444444E',10),
 ('V03036','88888888I',5),
 ('V03037','44444444E',6),
 ('V03037','77777777H',6),
 ('V03039','11111111B',2),
 ('V03039','22222222C',4),
 ('V03039','33333333D',5),
 ('V03041','44444444E',3);


--
-- Definition of table `vols_viatges`
--
CREATE TABLE vols_viatges (
  CODI_VIATGE varchar(6) NOT NULL,
  CODI_VOL varchar(6) NOT NULL,
  NUM_VOL int DEFAULT NULL,
  PRIMARY KEY (CODI_VIATGE,CODI_VOL),
  FOREIGN KEY (CODI_VIATGE) REFERENCES viatges (CODI),
  FOREIGN KEY (CODI_VOL) REFERENCES vols (CODI)
) ENGINE=InnoDB;

--
-- Dumping data for table `vols_viatges`
--
INSERT INTO vols_viatges VALUES 
 ('V03001','IB1298',1),
 ('V03001','SA2298',2),
 ('V03002','IB7623',1),
 ('V03002','IB8932',2),
 ('V03003','AA1030',2),
 ('V03003','AA3010',1),
 ('V03004','IB3535',1),
 ('V03004','LO3825',2),
 ('V03005','IB5915',1),
 ('V03005','LO5318',2),
 ('V03006','IB1919',1),
 ('V03006','LO9130',2),
 ('V03007','AA1623',2),
 ('V03007','IB4549',1),
 ('V03008','AE3840',2),
 ('V03008','SP2538',1),
 ('V03010','IB7782',1),
 ('V03010','JA2289',2),
 ('V03011','IB6767',2),
 ('V03011','IB7676',1),
 ('V03027','AA3519',2),
 ('V03027','IB1935',1),
 ('V03028','DA4452',1),
 ('V03028','IB4458',2),
 ('V03032','DA5244',2),
 ('V03032','IB8804',1),
 ('V03039','IB9934',1),
 ('V03039','SA2345',2),
 ('V03041','BA3041',1),
 ('V03041','DA1130',2),
 ('V03041','DA3011',3),
 ('V03041','DA8934',4);
 
 CREATE TABLE `preus` (
  `IDCATEGORIA` int NOT NULL,
  `PREU_I` float DEFAULT NULL,
  `PREU_F` float DEFAULT NULL,
  PRIMARY KEY (`IDCATEGORIA`)
) ENGINE=InnoDB;

--
-- Dumping data for table `preus`
--
INSERT INTO `preus` (`IDCATEGORIA`,`PREU_I`,`PREU_F`) VALUES 
 (1,30,51),
 (2,52,76),
 (3,77,102),
 (4,103,153),
 (5,153,306);

--
-- Definition of table `fitxa_casa`
--
CREATE TABLE `fitxa_casa` (
  `IDCASA` int NOT NULL,
  `NOM` varchar(100) DEFAULT NULL,
  `ADRECA` varchar(150) DEFAULT NULL,
  `PROVINCIA` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `TELEFON` varchar(12) DEFAULT NULL,
  `CAPACITAT` int DEFAULT NULL,
  `CATEGORIA` int DEFAULT NULL,
   PRIMARY KEY (`IDCASA`),
   foreign key (categoria) references preus (idcategoria)
) ENGINE=InnoDB;

--
-- Dumping data for table `fitxa_casa`
--
INSERT INTO `fitxa_casa` (`IDCASA`,`NOM`,`ADRECA`,`PROVINCIA`,`EMAIL`,`TELEFON`,`CAPACITAT`,`CATEGORIA`) VALUES 
 (1,'Sansalvador','Mas Sansalvador - 08519 Orista','Barcelona','sansalvador@gmail.com','938 880 420',12,2),
 (2,'La Salada','s/n - 08503 Sant Julia Sassorba','Barcelona','lasalada@ya.com','609 300 966',10,2),
 (3,'La Torre de la Vall','La Torre de la Vall - 08511 Tavertet','Barcelona','latorre@gmail.com','609 375 259',14,2),
 (4,'Cal Ramonet','Cal Queralt s/n - 08256 Aguilar de Segarra','Barcelona','cal.ramonet@ya.com','680 434 531',9,3),
 (5,'Les Feixes de Coaner','Crta.Valls de Torruella a Salo Km.4 - 08269 Salo','Barcelona','feixes@hotmail.com','663 284 933',11,2),
 (6,'Casa Rural Eucaliptus','Partida de la Planeta, s/n - 43812 Montferri','Tarragona','eucaliptus@ono.com','977 614 004',6,4),
 (7,'Badia Tucana','Port Fluvial de Sant Francesc. Ctra de Faia, km. 6,8 - 43790 Riba-Roja D\'ebre','Tarragona','tucana@gmail.com','977 265 061',9,5),
 (8,'La Vaqueria','Came de Llorenc, 7 - 43711 Banyeres del Penedes','Tarragona','la.vaqueria@gmail.com','977 671 394',5,2),
 (9,'Can Gasol','Carrer Major, 8 - 43429 Guialmons','Tarragona','can.gasol@ya.com','696 143 822',12,2);
INSERT INTO `fitxa_casa` (`IDCASA`,`NOM`,`ADRECA`,`PROVINCIA`,`EMAIL`,`TELEFON`,`CAPACITAT`,`CATEGORIA`) VALUES 
 (10,'Moli del Pont','Moli del Pont - 43360 Cornudella de Montsant','Tarragona','moli.pont@gmail.com','600 702 940',25,3),
 (11,'Casavella','C/ Major, 4 - Conca de Barbera - Vimbodi','Tarragona','casavella@gmail.com','977 391 885',10,2),
 (12,'Caseta Montanyana','Carretera Montanyana - 43580 Deltebre','Tarragona','caseta.montanya@hotmail.com','660 039 192',6,2),
 (13,'La Pallissa de Joanet','Calle de la Plaza, S/N - 17401 Joanet (Arbecies)','Girona','pallissa@ono.com','972 860 765',13,2),
 (14,'La Vinyassa','La Vinyassa s/n - 17401 Arbucies','Girona','la.vinyassa@ya.com','616 990 078',20,2),
 (15,'Can Vicens','Can Vicens - 17468 Vilamari','Girona','can.vicens@gmail.com','972 561 030',11,2),
 (16,'Riudecos','Mas Riudecos, s/n - 17401 Arbucies','Girona','riudecos@gmail.com','972 860 453',13,2),
 (17,'Can Pujol','C/ Orient, 11 - 17133 Serra de Dara','Girona','can.pujol@hotmail.com','609 03 98 5',8,2),
 (18,'La Rovirota','El Moli de la Plana , s/n - 17814 Riudaura','Girona','rovirota@rovirota.net','619 370 672',20,3);
INSERT INTO `fitxa_casa` (`IDCASA`,`NOM`,`ADRECA`,`PROVINCIA`,`EMAIL`,`TELEFON`,`CAPACITAT`,`CATEGORIA`) VALUES 
 (19,'Cal Rajoler','C/ Angels de Gorgot, 3 - Vilamaniscle','Girona','rajoler@hotmail.com','669 828 995',8,2),
 (20,'Mas Pauli','Mas Pauli s/n - 17750 Capmany','Girona','mas.pauli@pauli.com','687 429 633',8,2),
 (21,'Mas Jou','s/n - 17851 Maia de Montcal','Girona','mas.jou@hotmail.com','671 292 115',8,1);

--
-- Definition of table `fotografies`
--
CREATE TABLE `fotografies` (
  `IDFOTO` int NOT NULL,
  `FOTO` blob,
  PRIMARY KEY (`IDFOTO`)
) ENGINE=InnoDB;

--
-- Dumping data for table `fotografies`
--
INSERT INTO `fotografies` (`IDFOTO`,`FOTO`) VALUES 
 (11,''),
 (12,''),
 (21,''),
 (22,''),
 (31,''),
 (41,''),
 (51,''),
 (61,''),
 (71,''),
 (81,''),
 (91,'');

--
-- Definition of table `fotos_casa`
--
CREATE TABLE `fotos_casa` (
  `IDCASA` int NOT NULL,
  `IDFOTO` int NOT NULL,
  PRIMARY KEY (`IDCASA`,`IDFOTO`),
  FOREIGN KEY (`IDCASA`) REFERENCES `fitxa_casa` (`IDCASA`),
  FOREIGN KEY (`IDFOTO`) REFERENCES `fotografies` (`IDFOTO`)
) ENGINE=InnoDB;

--
-- Dumping data for table `fotos_casa`
--

INSERT INTO `fotos_casa` (`IDCASA`,`IDFOTO`) VALUES 
 (1,11),
 (1,12),
 (2,21),
 (2,22),
 (3,31),
 (4,41),
 (5,51),
 (6,61),
 (7,71),
 (8,81),
 (9,91);

--
-- Definition of table `llocs_interes`
--
CREATE TABLE `llocs_interes` (
  `IDCASA` int NOT NULL,
  `LLOC` varchar(256) NOT NULL,
  PRIMARY KEY (`IDCASA`,`LLOC`),
  FOREIGN KEY (`IDCASA`) REFERENCES `fitxa_casa` (`IDCASA`)
) ENGINE=InnoDB;

--
-- Dumping data for table `llocs_interes`
--
INSERT INTO `llocs_interes` (`IDCASA`,`LLOC`) VALUES
 (1,'Museo de Ceramica de Orista'),
 (1,'Riera de Marles'),
 (2,'Folguerolas y Verdaguer'),
 (2,'Pantano de Sau'),
 (2,'Sierra de Collsacabra'),
 (2,'Valle de Sau y St. Pere de casserres'),
 (3,'Cantonigros'),
 (3,'El pueblo de Tavertet es precioso'),
 (3,'Vic, ciudad milenaria con todos los servicios'),
 (4,'La \"Muntanya de Montserrat i el seu Monestir\"'),
 (4,'Las minas de Sal de Cardona'),
 (4,'Los pueblos de Rajadell, Cardona y Suria con sus calles antiguas tan bien conservadas'),
 (5,'Montaña de sal y castillo de Cardona'),
 (5,'Observatorio de Castelltallat'),
 (5,'Salo'),
 (5,'Santuario de Coaner'),
 (6,'Bodegas modernistas de principios del siglo XX'),
 (6,'Comarca de la Conca de Barbera'),
 (6,'Comarca de L''Alt Camp'),
 (7,'El pantano de Riba-roja d''Ebre'),
 (8,'Port Aventura'),
 (8,'Ruta del Caster'),
 (9,'Conjunto historico-medieval de Santa Coloma de Queralt (visitas guiadas)'),
 (9,'Montaña de Montserrat, Tarragona romana y Reus modernista'),
 (9,'Ruta del Caster (Poblet, Santes Creus, Vallbona de les Monges)');
INSERT INTO `llocs_interes` (`IDCASA`,`LLOC`) VALUES
 (10,'Pantano de Siurana'),
 (10,'Port Aventura'),
 (10,'Siurana'),
 (11,'El Museu del vidre del propio municipio'),
 (11,'El paisaje agricola, viñedos, pinares y forrajes'),
 (11,'Es interesante la Iglesia y la cercana Ermita dels Torrents'),
 (12,'La desembocadura del rio'),
 (12,'Llacunas para visitar'),
 (12,'Parque Natural del Delta del Ebro'),
 (13,'Museo de Dali'),
 (13,'Museo etnologico del Montseny'),
 (13,'Pirineos'),
 (13,'Ripoll'),
 (14,'Costa Brava'),
 (14,'La Garrotxa'),
 (15,'Aiguamolls de l''emporda (35 km)'),
 (15,'Cuevas prehistoricas de Serinya (15 km)'),
 (15,'Lago de Banyoles (10 km)'),
 (15,'Museo Dali de Figueres (30 km)'),
 (16,'Castillo de Montsoriu (gotico)'),
 (16,'Parque Natural del Montseny y las Guilleries'),
 (17,'Empuries a 14Km (Ciudad Romana)'),
 (17,'Figueres a 25 Km (Museo Dali, museo del juguete...)'),
 (17,'La Bisbal a 10Km (Ceramica, Castillo...)'),
 (17,'Pubol a 9Km (CAstillo de Dali)'),
 (17,'Ullastret a 2Km (ciudad iberica)');
INSERT INTO `llocs_interes` (`IDCASA`,`LLOC`) VALUES
 (18,'Besalu, una esplendida villa medieval'),
 (18,'Figueres, con el Museo Dali'),
 (19,'Cadaques'),
 (19,'Parque natural de l''Aiguamolls de l''Emporda'),
 (19,'Parque natural de L''Albera.'),
 (20,'Cap de Creus'),
 (20,'Museo Dali'),
 (20,'Parque de l''Albera'),
 (21,'Desde el pueblo de Maia de Montcal'),
 (21,'pueblo de Besalu');

--
-- Definition of table `opinions`
--
CREATE TABLE `opinions` (
  `IDCASA` int NOT NULL,
  `OPINIO` varchar(256) NOT NULL,
  `DATA` date DEFAULT NULL,
  PRIMARY KEY (`IDCASA`,`OPINIO`),
  FOREIGN KEY (`IDCASA`) REFERENCES `fitxa_casa` (`IDCASA`)
) ENGINE=InnoDB;

--
-- Dumping data for table `opinions`
--
INSERT INTO `opinions` (`IDCASA`,`OPINIO`,`DATA`) VALUES 
 (1,'hola, somos una familia de Mataro que estuvimos alojados en la casa esta Semana Santa y este comentantario es solo para recomendar esta preciosa masia por su interior.','2017-05-05'),
 (1,'Todo perfecto, se nos hizo corto.. Fuimos el ultimo fin de semana de agosto. Solo os recomiendo que lleveis agua embotellada, el agua no es buena.Por lo demas maravilloso.','2017-08-31'),
 (1,'Ya es la cuarta vez que volvemos y volveremos muchas mas, sensacional, es una masia muy acojedora y los duenos son buenas personas, muy amables.','2017-07-10'),
 (2,'Fuimos por recomendacion de unos amigos. Hemos pasado unos dias en la casa individual para 8-10 personas que tiene el mas. El entorno y el mas son fantasticos.','2017-08-15'),
 (2,'Somos tres matrimonios de Alicante que fuimos a ver el baloncesto a Barcelona y nos gusto tanto La Salada que no vimos el baloncesto.','2017-09-15');
INSERT INTO `opinions` (`IDCASA`,`OPINIO`,`DATA`) VALUES 
 (3,'Hemos estado en muchas casas rurales pero la torre de la vall es una torre de vigilancia antigua super original, muy bien restaurada y cuidada. Hemos venido varias parejas y hemos disfrutado mucho.','2017-07-07'),
 (3,'Si eres un viajero exigente, no te lo puedes perder. La casa, que te parecera estar en un castillo, esta impecable. Tiene todas los servicios y comodidades que necesitas.','2017-09-15'),
 (4,'Fantastico, hemos estado en Cal Ramonet en varias ocasiones y siempre hemos disfrutado al 100%, en un entorno tranquilo, rodeados de pura naturaleza y lleno de actividades para hacer.','2017-08-12'),
 (4,'Hemos pasado pocos dias en Cal Ramonet,pero lo hemos disfrutado al maximo.La casa esta construida y decorada con mucho gusto. ','2017-08-25'),
 (5,'He estado con un grupo de amigos, nuestros hijos y el lugar tiene todo lo que buscas. - Tranquilidad - Naturaleza - Acogedor - Encanto.','2017-08-12');
INSERT INTO `opinions` (`IDCASA`,`OPINIO`,`DATA`) VALUES 
 (5,'Hem vingut a pasa-hi el dia per celebrar la Festa de Empresa. El lloc es molt bonic, la casa molt acollidora, el museu, el pou tot prou interesant.','2017-09-10'),
 (8,'Hemos pasado unos dias esta Semana Santa muy agradables en esta casita sobretodo por el jardin que es muy soleado e ideal para los infantes.','2017-09-15'),
 (8,'Un lugar muy agradable con personas muy agradables.','2017-08-20'),
 (9,'Hemos celebrado el 30 cumpleaños de mi compañero con toda la familia y ha sido genial. La casa esta perfectamente acondicionada, no falta de nada y encima, decorada con mucho gusto.','2017-07-05'),
 (9,'Hemos estado un grupo de 12 personas celebrando un cumpleanos y estuvo genial. Los duenos son super amables y tienen la casa a la perfeccion no hay detalle que falte y sobretodo limpia. ','2017-09-25'),
 (9,'La casa es una autentica maravilla y los dueños son mas que encantadores. Lo unico a tener en cuenta es que en la zona no hay aparcamiento.','2017-08-10');
INSERT INTO `opinions` (`IDCASA`,`OPINIO`,`DATA`) VALUES 
 (10,'El lugar era muy bonito y tranquilo. La casa muy acogedora y calentita. El dueno que nos atendio, super amable y muy atento. Seguro que voy a volver.','2017-08-15'),
 (10,'El lugar es un paraiso, realmente precioso en plena naturaleza y muy cerquita del pueblo. Con buen tiempo es un lugar maravilloso donde poder gozar de la tranquilidad.','2017-08-05'),
 (10,'Hemos descubierto esta casa y hemos pasado estos dias de puente, ha sido fantastico tanto el trato recibido por parte de Gloria y Jose Maria, como el acondicionamiento del alojamiento. ','2017-09-05'),
 (11,'Pasemos el fin de semana pasado uns dias muy tranquilos. La casa muy chula, las habitaciones, en la cocina hay de todo, hasta futbolin tienen en la planta baja!!!','2017-08-23'),
 (11,'Que fin de semana mas genial. Llegamos el sabado por la manana, la casa es grande, bien decorada, no le falta de nada. El pueblo es bonito y tranquilo.','2017-08-31'),
 (13,'Hemos estado un fin de semana de febrero, es la segunda vez que vamos y esta genial para ir con infantes. La casa es acogedora, limpia amplia y segura para los mas pequenos.','2017-07-12');
INSERT INTO `opinions` (`IDCASA`,`OPINIO`,`DATA`) VALUES 
 (13,'Somos un grupo de amigos de castellon que hemos pasado una semana este mes de agosto (2007)y queremos agradecer la atencion de Ernest y Lluisa, porque hemos pasado una semana fantastica.','2017-08-15'),
 (14,'Han sido unas vacaciones maravillosas, las casa una pasada y Jaume y Alicia son encantadores. Gracias a sus indicaciones y consejos turisticos vimos lo mejor de lo mejor.','2017-08-25'),
 (14,'Hemos estado un grupo de 16 personas. Ha sido una semana genial, la casa cumple todas las expextativas, es tal y como sale en las fotos y mejor. La casa es comodisima, el jardin una maravilla. ','2017-07-21'),
 (14,'No se si podra anadir algo nuevo a todo lo dicho aqui, al lio!! a ver que me sale, nuestra estancia en la Vinyasa a sido una maravilla, la casa calida y acojedora, decorada con muy buen gusto.','2017-09-10'),
 (15,'Ayer llegamos de pasar un fin de semana estupendo, y ya estoy buscando disponibilidad para volver en breve. Hemos ido tres parejas y cuatro peques, nos lo hemos pasado genial.','2017-08-15');
INSERT INTO `opinions` (`IDCASA`,`OPINIO`,`DATA`) VALUES 
 (15,'Me repito pero es asi es una casa fantastica ,ya estuvimos alli en enero y nos ha gusto tanto que hemos repetido y no me importaria repetir 1000 veces mas .Hemos ido con familia y unos amigos no nos ha faltado de nada.','2017-08-27'),
 (16,'Estubimos un grupo de 11 amigos del 1 al 4 de junio y alquilamos las dos casas. Son preciosas y estan muy bien equipadas, no falta de nada, dispones de todo lo necesario: sabanas, toallas,... Hasta azucar!! ','2017-08-20'),
 (16,'Estuvimos el fin de semana del 14 al 16 de septiembre unos companeros de trabajo en El Moli de Riudecos. Un paraje fantastico, relajante, en medio del bosque y al lado del rio.','2017-07-15'),
 (16,'Hemos pasado 9 dias de vacaciones en Riudecos,es un sitio precioso,la casa esta perfectamente equipada en todos los sentidos e impecable. Tiene una piscina enorme y un jardin con barbacoa para cada casa. ','2017-07-20'),
 (17,'Es un lugar idoneo para pasar unas vacaciones ya que esta cerca de cualquier lugar (playa o montana). Los propietarios son magnificos siempre est n atento a cualquier problema. ','2017-08-15');
INSERT INTO `opinions` (`IDCASA`,`OPINIO`,`DATA`) VALUES 
 (17,'Hemos pasado unos dias estupendos. El Carles y la Nuri estuvieron pendientes en todo momento de que no faltase de nada. Nuestro peque ajo disfruto un monton del jardin y los animales, y \"les prunes\" estaban buenisimas. ','2017-09-15'),
 (18,'La Rovirota tiene tres cualidades indispensables para el disfrute completo de unas vacaciones: 1-El entorno, en la fant stica garrotxa, con muchas excursiones cercanas para visitar como paseo o a nivel m s deportivo. s','2017-07-20'),
 (18,'Por la tranquilidad, el silencio y la calma que se respira; por la zona de descanso junto a la piscina; por la propia piscina; por la amabilidad y buen trato dispensado por los propietarios.','2017-08-25'),
 (19,'He pasado un finreserves de semana de lujo,a la casa no le falta ni un solo detalle,ademas todo es muy nuevo,el pueblo super tranquilo y cerca de otros pueblos muy bonitos como Roses,Llan  ,empuriabrava... ','2017-09-15'),
 (20,'Estube en Mas Pauli en Junio, para Sant Juan, fue un fin de semana fantastico, la casa perfecta, todo muy limpio y la propietaria de la casa muy amable. Si tengo que volver por esa zona elegire sin duda alguna Mas Pauli.','2017-08-20');
INSERT INTO `opinions` (`IDCASA`,`OPINIO`,`DATA`) VALUES 
 (20,'Somos dos matrimonios de las Islas Canarias y hemos pasado 5 dias muy agradable en una casa r stica con muchos detalles.','2017-08-25');

--
-- Definition of table `reserves`
--
CREATE TABLE `reserves` (
  `IDCASA` int NOT NULL,
  `NIF` varchar(9) NOT NULL,
  `DATA_ENTRADA` date NOT NULL,
  `DATA_SORTIDA` date DEFAULT NULL,
  PRIMARY KEY (`IDCASA`,`NIF`,`DATA_ENTRADA`),
  FOREIGN KEY (`IDCASA`) REFERENCES `fitxa_casa` (`IDCASA`),
  FOREIGN KEY (`NIF`) REFERENCES `clients` (`NIF`)
) ENGINE=InnoDB;

--
-- Dumping data for table `reserves`
--
INSERT INTO `reserves` (`IDCASA`,`NIF`,`DATA_ENTRADA`,`DATA_SORTIDA`) VALUES 
 (1,'03545444W','2017-08-10','2017-08-15'),
 (1,'03545444W','2018-12-03','2018-12-05'),
 (1,'24544533C','2017-08-16','2017-08-20'),
 (1,'24544533C','2018-12-10','2018-12-15'),
 (1,'78241422S','2017-08-21','2017-08-30'),
 (1,'78241422S','2019-01-01','2019-01-10'),
 (2,'12578754P','2017-08-20','2017-08-25'),
 (2,'12578754P','2019-01-10','2019-01-15'),
 (2,'24544532B','2017-08-26','2017-08-30'),
 (2,'24544532B','2019-01-20','2019-01-30'),
 (3,'21655446I','2017-08-18','2017-08-20'),
 (3,'42548787M','2017-08-21','2017-08-30'),
 (4,'15445544F','2017-08-25','2017-09-05'),
 (4,'34578875T','2017-09-06','2017-09-10'),
 (5,'14122115T','2017-08-22','2017-08-25'),
 (5,'24654644S','2017-08-26','2017-08-30'),
 (6,'78241422S','2017-08-15','2017-08-30'),
 (7,'65965566S','2017-08-15','2017-08-20'),
 (8,'14645455U','2017-08-28','2017-09-10'),
 (8,'35878441A','2017-09-11','2017-09-15'),
 (8,'58754544V','2017-09-16','2017-09-20'),
 (9,'52124744X','2017-08-12','2017-08-15');
INSERT INTO `reserves` (`IDCASA`,`NIF`,`DATA_ENTRADA`,`DATA_SORTIDA`) VALUES 
 (9,'54455561J','2017-08-16','2017-08-20'),
 (10,'05875544Z','2017-08-20','2017-08-22'),
 (10,'32565451G','2017-08-23','2017-08-30'),
 (11,'48721211Q','2017-08-01','2017-08-15'),
 (12,'21354245B','2017-08-25','2017-08-30'),
 (12,'35756411S','2017-09-01','2017-09-10'),
 (12,'54446654R','2017-09-11','2017-09-15'),
 (12,'54455561J','2017-09-16','2017-09-20'),
 (13,'52124744X','2017-08-14','2017-09-20'),
 (13,'65965566S','2017-09-21','2017-09-25'),
 (14,'44787423F','2017-08-21','2017-08-30'),
 (14,'45245785R','2017-08-10','2017-08-20'),
 (15,'44144013D','2017-08-05','2017-08-15'),
 (16,'32548775L','2017-09-05','2017-09-15'),
 (17,'45245785R','2017-08-14','2017-08-25'),
 (18,'45787874S','2017-09-05','2017-09-15'),
 (19,'45421201E','2017-08-25','2017-08-30'),
 (20,'21224441R','2017-08-15','2017-08-25'),
 (20,'42548787M','2017-08-25','2017-08-30'),
 (20,'45421201E','2017-08-26','2017-08-30'),
 (21,'14122115T','2017-09-10','2017-09-12');


