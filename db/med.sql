CREATE TABLE `arma`.`med`  (
  `serviceNumber` int(12) NOT NULL,
  `PID` int(18) NOT NULL,
  `rank` int(25) NOT NULL DEFAULT 1,
  PRIMARY KEY (`serviceNumber`, `PID`)
);