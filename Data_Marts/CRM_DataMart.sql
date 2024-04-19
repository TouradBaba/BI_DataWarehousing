SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema CRM_DM
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema CRM_DM
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `CRM_DM` DEFAULT CHARACTER SET utf8 ;
USE `CRM_DM` ;

-- -----------------------------------------------------
-- Table `CRM_DM`.`CRM`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CRM_DM`.`CRM` (
  `account_id` INT NOT NULL,
  `contact_id` INT NULL,
  `lead_id` INT NULL,
  `opportunity_id` INT NULL,
  `activity_id` INT NULL,
  `full_name` VARCHAR(99) NULL,
  `status` VARCHAR(45) NULL,
  PRIMARY KEY (`account_id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
