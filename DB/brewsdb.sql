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
-- Table `Brew`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Brew` ;

CREATE TABLE IF NOT EXISTS `Brew` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `beer_name` VARCHAR(45) NOT NULL,
  `brewery_name` VARCHAR(45) NOT NULL,
  `brewery_location` VARCHAR(45) NULL,
  `style` VARCHAR(45) NOT NULL,
  `alcohol_by_volume` INT NULL,
  `international_bitterness_units` INT NULL,
  `my_rating` VARCHAR(45) NOT NULL,
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
-- Data for table `Brew`
-- -----------------------------------------------------
START TRANSACTION;
USE `brewsdb`;
INSERT INTO `Brew` (`id`, `beer_name`, `brewery_name`, `brewery_location`, `style`, `alcohol_by_volume`, `international_bitterness_units`, `my_rating`) VALUES (1, 'Habenero Sculpin', 'Stone Brewing', 'San Diego, CA', 'IPA', 7.0, 70, '5.0');
INSERT INTO `Brew` (`id`, `beer_name`, `brewery_name`, `brewery_location`, `style`, `alcohol_by_volume`, `international_bitterness_units`, `my_rating`) VALUES (2, 'Liquid Bliss', 'Terrapin Beer Co.', 'Athens, GA', 'Porter', 6.1, 30, '5.0');
INSERT INTO `Brew` (`id`, `beer_name`, `brewery_name`, `brewery_location`, `style`, `alcohol_by_volume`, `international_bitterness_units`, `my_rating`) VALUES (3, 'Peanut Butter Milk Stout', 'Belching Beaver Brewery', 'San Diego, CA', 'Stout', 5.3, 30, '5.0');
INSERT INTO `Brew` (`id`, `beer_name`, `brewery_name`, `brewery_location`, `style`, `alcohol_by_volume`, `international_bitterness_units`, `my_rating`) VALUES (4, 'Dunkelweizen', 'Culture Brewing Company', 'Solana Beach, CA', 'Dunkelweizen', 5.2, 16, '4.5');
INSERT INTO `Brew` (`id`, `beer_name`, `brewery_name`, `brewery_location`, `style`, `alcohol_by_volume`, `international_bitterness_units`, `my_rating`) VALUES (5, 'Tangering Dreamsicle', 'Terrapin Beer Co.', 'Athen, GA', 'IPA', 6.5, 80, '4.5');
INSERT INTO `Brew` (`id`, `beer_name`, `brewery_name`, `brewery_location`, `style`, `alcohol_by_volume`, `international_bitterness_units`, `my_rating`) VALUES (6, '#9', 'Magic Hat Brewing Company', 'South Burlington, VT', 'Pale Ale', 5.1, 20, '4.5');
INSERT INTO `Brew` (`id`, `beer_name`, `brewery_name`, `brewery_location`, `style`, `alcohol_by_volume`, `international_bitterness_units`, `my_rating`) VALUES (7, 'Pinner', 'Oskar Blues Brewery', 'Longmont, CO', 'Session IPA', 4.9, 35, '4.0');
INSERT INTO `Brew` (`id`, `beer_name`, `brewery_name`, `brewery_location`, `style`, `alcohol_by_volume`, `international_bitterness_units`, `my_rating`) VALUES (8, 'Warrior IPA', 'Left Hand Brewing Company', 'Longmont, CO', 'IPA', 7.3, 60, '5.0');
INSERT INTO `Brew` (`id`, `beer_name`, `brewery_name`, `brewery_location`, `style`, `alcohol_by_volume`, `international_bitterness_units`, `my_rating`) VALUES (9, 'Maplesaurus Rex', 'Pure Project Brewing', 'San Diego, CA', 'Imperial Stout', 14, 0, '4.75');
INSERT INTO `Brew` (`id`, `beer_name`, `brewery_name`, `brewery_location`, `style`, `alcohol_by_volume`, `international_bitterness_units`, `my_rating`) VALUES (10, 'Barrel-Aged \"On Fire, Jaguar\"', 'Automatic Brewing Co.', 'San Diego, CA', 'Sour', 6.3, 0, '5.0');

COMMIT;

