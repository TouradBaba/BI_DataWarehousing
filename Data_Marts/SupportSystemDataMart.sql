SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema SupportSystemDM
-- -----------------------------------------------------


CREATE SCHEMA IF NOT EXISTS `SupportSystemDM` DEFAULT CHARACTER SET utf8 ;

-- -----------------------------------------------------
USE `SupportSystemDM` ;

-- Table `SupportSystemDM`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `full_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 101
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `SupportSystemDM`.`tickets`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tickets` (
  `ticket_id` INT NOT NULL AUTO_INCREMENT,
  `customer_id` INT NOT NULL,
  `subject` VARCHAR(90) NOT NULL,
  `status` VARCHAR(45) NULL DEFAULT NULL,
  `priority` VARCHAR(45) NULL DEFAULT NULL,
  `time_taken` BIGINT DEFAULT NULL,
  PRIMARY KEY (`ticket_id`),
  INDEX `fk_Tickets_Customers_idx` (`customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_Tickets_Customers`
    FOREIGN KEY (`customer_id`)
    REFERENCES `supportsystemdm`.`customers` (`customer_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 501
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
