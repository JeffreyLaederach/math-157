#AIRPORT CREATE

Use ResSystem;
CREATE TABLE `airport` (
  `CODE` varchar(5) NOT NULL,
  `LOCATION` varchar(25) DEFAULT NULL,
  `ELEVATION` int(11) DEFAULT NULL,
  `PHONE` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`CODE`)
) ;

INSERT INTO `airport`
VALUES
("FLG","Flagstaff AZ",6920,'6027741897'),
("LAX","Los Angeles CA",37,'3102731846'),
("MSP","Minneapolis MN",862,'6123782910'),
("PHX","Phoenix AZ",1257,'6025831971'),
("SFO","San Francisco CA",78,'4158399237');

CREATE TABLE `reservation` (
  `CONFIRM_NO` int(11) NOT NULL,
  `DATE_OF_RE` date DEFAULT NULL,
  `NAME` varchar(25) DEFAULT NULL,
  `PHONE` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`CONFIRM_NO`)
) ;

CREATE TABLE `passenger` (
  `passenger_id` int(11) NOT NULL AUTO_INCREMENT,
  `PASS_NAME` varchar(12) DEFAULT NULL,
  `FIRST` varchar(12) DEFAULT NULL,
  `CONFIRM_NO` int(11) DEFAULT NULL,
  `ACCOUNT_NO` int(11) DEFAULT NULL,
  `SEAT` varchar(5) DEFAULT NULL,
  `FLIGHT_NO` int(11) DEFAULT NULL,
  PRIMARY KEY (`passenger_id`)
) AUTO_INCREMENT=21 ;


CREATE TABLE `flights` (
  `FLIGHT_NO` int(11) NOT NULL,
  `ORIG` varchar(5) DEFAULT NULL,
  `DEST` varchar(5) DEFAULT NULL,
   `ORIG_DATE` date DEFAULT NULL,
  `DEST_DATE` date DEFAULT NULL,
  `ORIG_TIME` time DEFAULT NULL,
  `DEST_TIME` time DEFAULT NULL,
  `MEAL` varchar(5) DEFAULT NULL,
  `FARE` decimal(12,2) DEFAULT NULL,
  `MILES` int(11) DEFAULT NULL,
  PRIMARY KEY (`FLIGHT_NO`)
) ;

CREATE TABLE `reservation` (
  `CONFIRM_NO` int(11) NOT NULL,
  `DATE_OF_RE` datetime DEFAULT NULL,
  `NAME` varchar(25) DEFAULT NULL,
  `PHONE` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`CONFIRM_NO`)
) ;



INSERT INTO flights VALUE(12,'PHX','FLG','2021-01-31','2021-01-31','8:30:00', '9:21:00','',155,100);
INSERT INTO flights VALUE(15,'PHX','LAX', '2021-01-31', '2021-01-31', '7:00:00', '8:20:00', 'B',149,600);
INSERT INTO flights VALUE(17,'PHX','LAX', '2021-01-31', '2021-01-31', '8:20:00', '9:20:00', 'B',179,600);
INSERT INTO flights VALUE(18,'SFO','LAX', '2021-01-31', '2021-01-31', '9:15:00', '11:30:00','' ,150,200);
INSERT INTO flights VALUE(22,'FLG','SFO', '2021-01-31', '2021-01-31', '7:30:00', '9:00:00','' ,150,550);
INSERT INTO flights VALUE(31,'PHX','LAX', '2021-01-31', '2021-01-31', '17:55:00', '19:10:00', 'S',149,600);
INSERT INTO flights VALUE(33,'PHX','LAX', '2021-01-31', '2021-01-31', '18:55:00', '19:15:00', 'S',149,600);
INSERT INTO flights VALUE(35,'PHX','LAX', '2021-01-31', '2021-01-31', '8:20:00', '9:40:00', 'S',149,600);
INSERT INTO flights VALUE(40,'PHX','LAX', '2021-01-31', '2021-01-31', '22:25:00', '23:42:00','' ,149,600);
INSERT INTO flights VALUE(60,'PHX','SFO', '2021-01-31', '2021-01-31', '17:45:00', '18:36:00', 'S',139,587);
INSERT INTO flights VALUE(101,'FLG','PHX', '2021-01-31', '2021-01-31', '7:00:00', '8:05:00', 'S',148.5,100);
INSERT INTO flights VALUE(102,'PHX','MSP', '2021-01-31', '2021-01-31', '9:00:00', '13:00:00', 'L',156,1147);
INSERT INTO flights VALUE(103,'MSP','PHX', '2021-01-31', '2021-01-31', '17:00:00', '19:15:00', 'D',156,1147);
INSERT INTO flights VALUE(104,'PHX','FLG', '2021-01-31', '2021-01-31', '20:30:00', '21:15:00', 'S',148.5,100);
INSERT INTO flights VALUE(202,'SFO','PHX', '2021-01-31', '2021-01-31', '7:00:00', '8:55:00', 'B',179,587);
INSERT INTO flights VALUE(215,'LGA','DEN', '2021-01-31', '2021-01-31', '2:30:00', '5:30:00','' ,155,1500);
INSERT INTO flights VALUE(329,'LAX','PHX', '2021-01-31', '2021-01-31', '9:00:00', '10:00:00', 'B',149,600);
INSERT INTO flights VALUE(400,'LAX','PHX', '2021-01-31', '2021-01-31', '10:10:00', '11:26:00','' ,149,600);
INSERT INTO flights VALUE(434,'LAX','PHX', '2021-01-31', '2021-01-31', '8:50:00', '10:44:00','' ,149,600);
INSERT INTO flights VALUE(518,'SFO','PHX', '2021-01-31', '2021-01-31', '14:23:00', '16:16:00','' ,109,587);
INSERT INTO flights VALUE(600,'PHX','SFO', '2021-01-31', '2021-01-31', '6:46:00', '8:50:00', 'B',109,587);
INSERT INTO flights VALUE(604,'PHX','SFO', '2021-01-31', '2021-01-31', '8:33:00', '10:43:00', 'B',109,587);
INSERT INTO flights VALUE(606,'PHX','SFO', '2021-01-31', '2021-01-31', '11:45:00', '13:50:00', 'L',109,587);
INSERT INTO flights VALUE(691,'SFO','PHX', '2021-01-31', '2021-01-31', '11:25:00', '13:24:00','' ,109,587);
INSERT INTO flights VALUE(694,'LAX','PHX', '2021-01-31', '2021-01-31', '7:40:00', '8:55:00','' ,179,600);
INSERT INTO flights VALUE(1260,'SFO','PHX', '2021-01-31', '2021-01-31', '17:58:00', '19:51', 'D',109,587);


INSERT INTO passenger VALUE(1,'Olson','Ole', 1, 6, '1A', 15);
INSERT INTO passenger VALUE(2,'Valderrama','Louie', 21, 15, '1a', 18);
INSERT INTO passenger VALUE(3,'Anderson','Andy', 6, 1, '1A', 329);
INSERT INTO passenger VALUE(4,'Olson','Lena', 1, 5, '1B', 15);
INSERT INTO passenger VALUE(5,'Bascon','Christine', 21, 23, '1b', 18);
INSERT INTO passenger VALUE(6,'Anderson','Gloria', 6, 3, '1B', 329);
INSERT INTO passenger VALUE(7,'Torgeson','Torgie', 12, 11, '1D', 101);
INSERT INTO passenger VALUE(8,'Valderrama','Louie', 13, 15, '1F', 1260);
INSERT INTO passenger VALUE(9,'Anderson','Andy', 4, 1, '2A', 15);
INSERT INTO passenger VALUE(10,'Swenson','Swen', 3, 10, '2A', 202);
INSERT INTO passenger VALUE(11,'Anderson','Gloria', 4, 3, '2B', 15);
INSERT INTO passenger VALUE(12,'Swenson','Olga', 3, 7, '2B', 202);
INSERT INTO passenger VALUE(13,'Peterson','Pete', 2, 8, '2B', 329);
INSERT INTO passenger VALUE(14,'Valderrama','Louie', 20, 15, '2b', 604);
INSERT INTO passenger VALUE(15,'Torgeson','Torgie', 5, 11, '2C', 104);
INSERT INTO passenger VALUE(16,'Swenson','Pete', 3, 9, '2C', 202);
INSERT INTO passenger VALUE(17,'Peterson','Hazel', 2, 4, '2C', 329);
INSERT INTO passenger VALUE(18,'Bascon','Christine', 20, 23, '2c', 604);
INSERT INTO passenger VALUE(19,'Peterson','David', 2, 2, '2D', 329);
INSERT INTO passenger VALUE(20,'Hansen','Bill', 35, 72, '4B', 12);

INSERT INTO reservation VALUE(1,'2020-11-01','Ole Olson',' 2186942221');
INSERT INTO reservation VALUE(2,'2020-12-01','Pete Peterson',' 2186943000');
INSERT INTO reservation VALUE(3,'2020-12-01','Swen Swenson',' 2186948822');
INSERT INTO reservation VALUE(4,'2020-12-10','Andy Anderson',' 6025233510');
INSERT INTO reservation VALUE(5,'2020-12-17','Torgie Torgeson',' 2082223333');
INSERT INTO reservation VALUE(6,'2020-12-17','Andy Anderson',' 6025233510');
INSERT INTO reservation VALUE(12,'2020-12-13','Torgie Torgeson',' 2082223333');
INSERT INTO reservation VALUE(13,'2020-12-13','Louie Valderrama',' 9133107826');
INSERT INTO reservation VALUE(20,'2020-12-23','Christine Bascon',' 9143106863');
INSERT INTO reservation VALUE(21,'2020-12-18','Louie Valderrama',' 9133107826');

INSERT INTO flights VALUE(21,'SFO','LAX', '2021-01-31', '2021-01-31', '10:15:00', '12:30:00',null ,150,200);
