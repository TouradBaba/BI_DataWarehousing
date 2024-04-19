SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema SupportSystem
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema SupportSystem
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `SupportSystem` DEFAULT CHARACTER SET utf8 ;
USE `SupportSystem` ;

-- -----------------------------------------------------
-- Table `SupportSystem`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SupportSystem`.`Customers` (
  `CustomerID` INT NOT NULL AUTO_INCREMENT,
  `FirstName` VARCHAR(45) NOT NULL,
  `LastName` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NULL,
  `Phone` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(300) NULL,
  PRIMARY KEY (`CustomerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SupportSystem`.`Tickets`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SupportSystem`.`Tickets` (
  `TicketID` INT NOT NULL AUTO_INCREMENT,
  `CustomerID` INT NOT NULL,
  `Subject` VARCHAR(90) NOT NULL,
  `Description` VARCHAR(460) NULL,
  `Status` VARCHAR(45) NULL,
  `Priority` VARCHAR(45) NULL,
  `CreatedDate` DATE NULL,
  `ResolvedDate` DATE NULL,
  PRIMARY KEY (`TicketID`),
  INDEX `fk_Tickets_Customers_idx` (`CustomerID` ASC) VISIBLE,
  CONSTRAINT `fk_Tickets_Customers`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `SupportSystem`.`Customers` (`CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
