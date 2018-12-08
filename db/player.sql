CREATE TABLE IF NOT EXISTS `arma`.`players`  (
  `PID` int(18) NOT NULL,
  `money` int(255) NOT NULL,
  `bank` int(255) NOT NULL,
  `licenses` varchar(2500) NOT NULL,
  `inventory` varchar(2500) NOT NULL,
  PRIMARY KEY (`PID`)
);
