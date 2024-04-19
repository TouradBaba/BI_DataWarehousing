SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema transactions_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema transactions_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `transactions_db` DEFAULT CHARACTER SET utf8 ;
USE `transactions_db` ;

-- -----------------------------------------------------
-- Table `transactions_db`.`Products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `transactions_db`.`Products` (
  `ProductID` INT NOT NULL AUTO_INCREMENT,
  `Category` VARCHAR(50) NOT NULL,
  `ProductName` VARCHAR(45) NOT NULL,
  `Price` DECIMAL(10) NOT NULL,
  PRIMARY KEY (`ProductID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `transactions_db`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `transactions_db`.`Customers` (
  `CustomerID` INT NOT NULL AUTO_INCREMENT,
  `FirstName` VARCHAR(45) NOT NULL,
  `LastName` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(90) NULL,
  `Phone` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(150) NULL,
  PRIMARY KEY (`CustomerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `transactions_db`.`Transactions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `transactions_db`.`Transactions` (
  `OrderID` INT NOT NULL AUTO_INCREMENT,
  `CustomerID` INT NOT NULL,
  `ProductID` INT NOT NULL,
  `OrderDate` DATE NOT NULL,
  `Quantity` FLOAT NOT NULL,
  `UnitPrice` FLOAT NOT NULL,
  PRIMARY KEY (`OrderID`),
  INDEX `fk_SalesTransactions_Products_idx` (`ProductID` ASC) VISIBLE,
  INDEX `fk_SalesTransactions_Customers1_idx` (`CustomerID` ASC) VISIBLE,
  CONSTRAINT `fk_SalesTransactions_Products`
    FOREIGN KEY (`ProductID`)
    REFERENCES `transactions_db`.`Products` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_SalesTransactions_Customers1`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `transactions_db`.`Customers` (`CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;