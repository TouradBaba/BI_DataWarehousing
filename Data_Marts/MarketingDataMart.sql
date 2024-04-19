SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema MarketingDataMart
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema MarketingDataMart
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `MarketingDataMart` DEFAULT CHARACTER SET utf8 ;
USE `MarketingDataMart` ;

-- -----------------------------------------------------
-- Table `MarketingDataMart`.`Marketing`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MarketingDataMart`.`Marketing` (
  `campaignid` INT NOT NULL,
  `campaign_name` VARCHAR(45) NULL,
  `lead_source` VARCHAR(45) NULL,
  `response_type` VARCHAR(45) NULL,
  `conversion_rate` FLOAT NULL,
  PRIMARY KEY (`campaignid`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
