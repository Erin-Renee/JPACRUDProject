-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema snacksdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `snacksdb` ;

-- -----------------------------------------------------
-- Schema snacksdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `snacksdb` DEFAULT CHARACTER SET utf8 ;
USE `snacksdb` ;

-- -----------------------------------------------------
-- Table `Snacks`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Snacks` ;

CREATE TABLE IF NOT EXISTS `Snacks` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(50) NULL,
  `Description` VARCHAR(100) NULL,
  `Category` VARCHAR(45) NULL,
  `Calories` INT NULL,
  `sodium` INT NULL,
  `fats` INT NULL,
  `sugars` INT NULL,
  `vegan` TINYINT NULL,
  `contains_nuts` TINYINT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS user1@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'user1'@'localhost' IDENTIFIED BY 'user1';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'user1'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `Snacks`
-- -----------------------------------------------------
START TRANSACTION;
USE `snacksdb`;
INSERT INTO `Snacks` (`id`, `Name`, `Description`, `Category`, `Calories`, `sodium`, `fats`, `sugars`, `vegan`, `contains_nuts`) VALUES (1, 'Doritos', 'Nacho cheese flavored tortilla chips', 'chips', 150, 210, 8, 1, false, false);
INSERT INTO `Snacks` (`id`, `Name`, `Description`, `Category`, `Calories`, `sodium`, `fats`, `sugars`, `vegan`, `contains_nuts`) VALUES (2, 'Orville Redenbacher\'s Buttery Popcorn', 'rich and buttery, but popcorn so you can still pretend its healthy!', 'popcorn', 160, 340, 10, 0, false, false);
INSERT INTO `Snacks` (`id`, `Name`, `Description`, `Category`, `Calories`, `sodium`, `fats`, `sugars`, `vegan`, `contains_nuts`) VALUES (3, 'Cherries', 'whole fresh cherries', 'fruit', 87, 0, 0, 18, true, false);
INSERT INTO `Snacks` (`id`, `Name`, `Description`, `Category`, `Calories`, `sodium`, `fats`, `sugars`, `vegan`, `contains_nuts`) VALUES (4, 'peanut M&Ms', 'peanut covered in cocolate in a sugar shell', 'candy', 220, 20, 11, 22, false, true);
INSERT INTO `Snacks` (`id`, `Name`, `Description`, `Category`, `Calories`, `sodium`, `fats`, `sugars`, `vegan`, `contains_nuts`) VALUES (5, 'Reece\'s Peanut Butter Cups', 'Reeces Peanut Butter Cups', 'candy', 232, 161, 14, 21, false, true);
INSERT INTO `Snacks` (`id`, `Name`, `Description`, `Category`, `Calories`, `sodium`, `fats`, `sugars`, `vegan`, `contains_nuts`) VALUES (6, 'Pineapple', 'Fresh Pineapple', 'fruit', 82, 0, 0, 16, true, false);
INSERT INTO `Snacks` (`id`, `Name`, `Description`, `Category`, `Calories`, `sodium`, `fats`, `sugars`, `vegan`, `contains_nuts`) VALUES (7, 'cupcakes', 'vanilla cupcake with icing', 'cupcakes', 188, 213, 7, 19, false, false);
INSERT INTO `Snacks` (`id`, `Name`, `Description`, `Category`, `Calories`, `sodium`, `fats`, `sugars`, `vegan`, `contains_nuts`) VALUES (8, 'Pretzels', 'Aunt Annies Original Pretzel', 'pretzels', 340, 990, 5, 15, true, false);
INSERT INTO `Snacks` (`id`, `Name`, `Description`, `Category`, `Calories`, `sodium`, `fats`, `sugars`, `vegan`, `contains_nuts`) VALUES (9, 'Ben & Jerrys Chunky Monkey', 'Banana Ice Cream With Fudge Chunks And Walnuts', 'ice cream', 400, 50, 25, 38, false, true);
INSERT INTO `Snacks` (`id`, `Name`, `Description`, `Category`, `Calories`, `sodium`, `fats`, `sugars`, `vegan`, `contains_nuts`) VALUES (10, 'cheez-Its', 'original cheesy, crunchy, satisfaction.', 'crackers', 150, 230, 8, 0, false, false);
INSERT INTO `Snacks` (`id`, `Name`, `Description`, `Category`, `Calories`, `sodium`, `fats`, `sugars`, `vegan`, `contains_nuts`) VALUES (11, 'Fruit Roll ups', 'fruit flavored snacks', 'candy', 50, 50, 1, 7, true, false);
INSERT INTO `Snacks` (`id`, `Name`, `Description`, `Category`, `Calories`, `sodium`, `fats`, `sugars`, `vegan`, `contains_nuts`) VALUES (12, 'Fruit Gushers', 'fruit flavored snacks with a liquid inside', 'candy', 90, 45, 2, 12, true, false);
INSERT INTO `Snacks` (`id`, `Name`, `Description`, `Category`, `Calories`, `sodium`, `fats`, `sugars`, `vegan`, `contains_nuts`) VALUES (13, 'Little Debby Zebra Cakes', 'yellow cake with creme filling, and white icing', 'cake', 320, 150, 14, 32, false, false);
INSERT INTO `Snacks` (`id`, `Name`, `Description`, `Category`, `Calories`, `sodium`, `fats`, `sugars`, `vegan`, `contains_nuts`) VALUES (14, 'Celery', 'fresh celery', 'vegetable', 6, 32, 0, 0, true, false);
INSERT INTO `Snacks` (`id`, `Name`, `Description`, `Category`, `Calories`, `sodium`, `fats`, `sugars`, `vegan`, `contains_nuts`) VALUES (16, 'Cheetos', 'flammin hot crunchy', 'chips', 160, 250, 11, 1, false, true);
INSERT INTO `Snacks` (`id`, `Name`, `Description`, `Category`, `Calories`, `sodium`, `fats`, `sugars`, `vegan`, `contains_nuts`) VALUES (17, 'lays potato chips', 'classic potato chips', 'chips', 280, 330, 18, 0, true, false);

COMMIT;

