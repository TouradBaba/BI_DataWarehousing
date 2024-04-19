SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


-- -----------------------------------------------------
-- Schema Transactions_DM
-- -----------------------------------------------------

CREATE SCHEMA IF NOT EXISTS `Transactions_DM` DEFAULT CHARACTER SET utf8 ;
USE `Transactions_DM` ;

-- -----------------------------------------------------
-- Table `Transactions_DM`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Transactions_DM`.`Customer` (
  `CustomerID` INT NOT NULL,
  `FirstName` VARCHAR(45) NULL,
  `LastName` VARCHAR(45) NULL,
  `Phone` VARCHAR(80) NULL,
  `Email` VARCHAR(90) NULL,
  `Address` VARCHAR(100) NULL,
  PRIMARY KEY (`CustomerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Transactions_DM`.`Products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Transactions_DM`.`Products` (
  `ProductID` INT NOT NULL,
  `ProductName` VARCHAR(45) NULL,
  `Category` VARCHAR(45) NULL,
  `Price` VARCHAR(45) NULL,
  PRIMARY KEY (`ProductID`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `Transactions_DM`.`Transactions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Transactions_DM`.`Transactions` (
  `OrderID` INT NOT NULL,
  `CustomerID` INT NOT NULL,
  `ProductID` INT NOT NULL,
  `Quantity` INT NULL,
  `OrderDate` DATE NULL,
  `UnitPrice` INT NULL,
  `TotalPrice` INT NULL,
  PRIMARY KEY (`OrderID`),
  INDEX `fk_Transactions_Customer_idx` (`CustomerID` ASC) VISIBLE,
  INDEX `fk_Transactions_Products1_idx` (`ProductID` ASC) VISIBLE,
  CONSTRAINT `fk_Transactions_Customer`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `Transactions_DM`.`Customer` (`CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Transactions_Products1`
    FOREIGN KEY (`ProductID`)
    REFERENCES `Transactions_DM`.`Products` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;