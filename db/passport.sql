CREATE TABLE IF NOT EXISTS `arma`.`passport`  (
  `PID` int(18) NOT NULL,
  `name` char(255) NOT NULL,
  `birth` char(255) NOT NULL,
  `residence` char(255) NOT NULL,
  `gender` enum('Male','Female') NOT NULL DEFAULT 'Male',
  PRIMARY KEY (`PID`)
);
