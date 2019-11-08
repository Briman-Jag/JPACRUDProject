-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema brewsdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `brewsdb` ;

-- -----------------------------------------------------
-- Schema brewsdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `brewsdb` DEFAULT CHARACTER SET utf8 ;
USE `brewsdb` ;

-- -----------------------------------------------------
-- Table `Brews`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Brews` ;

CREATE TABLE IF NOT EXISTS `Brews` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `beer_nam` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS brews@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'brews'@'localhost' IDENTIFIED BY 'brews';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'brews'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `Brews`
-- -----------------------------------------------------
START TRANSACTION;
USE `brewsdb`;
INSERT INTO `Brews` (`id`, `beer_nam`) VALUES (1, 'Habenero Sculpin');

COMMIT;

