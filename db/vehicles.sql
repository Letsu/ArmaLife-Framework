CREATE TABLE IF NOT EXISTS `arma`.`vehicles`  (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `plate` int(8) NOT NULL,
  `PID` int(18) NOT NULL,
  `keyOwner` char(255) NOT NULL DEFAULT [],
  `fuel` int(100) NOT NULL DEFAULT 100,
  `inventory` char(2500) NOT NULL,
  `available tinyint(2) NOT NULL DEFAULT 0,
  `alive` tinyint(2) NOT NULL,
  PRIMARY KEY (`plate`)
);
