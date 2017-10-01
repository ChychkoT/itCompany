- MySQL Workbench Synchronization
-- Generated: 2017-09-29 15:41
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Сотис

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

ALTER TABLE `itdb`.`ADDRESSES` 
ADD COLUMN `COUNTRY_ID` INT(11) NOT NULL AFTER `EMPLOOYES_ID`,
ADD INDEX `fk_ADDRESSES_EMPLOOYES1_idx` (`EMPLOOYES_ID` ASC),
ADD INDEX `fk_ADDRESSES_COUNTRY1_idx` (`COUNTRY_ID` ASC),
DROP INDEX `fk_ADDRESSES_EMPLOOYES1_idx` ;

ALTER TABLE `itdb`.`ADMINISTRATION` 
ADD INDEX `fk_ADMINISTRATION_EMPLOOYES_idx` (`EMPLOOYES_ID` ASC),
DROP INDEX `fk_ADMINISTRATION_EMPLOOYES_idx` ;

ALTER TABLE `itdb`.`MARKETING` 
ADD INDEX `fk_MARKETING_EMPLOOYES1_idx` (`EMPLOOYES_ID` ASC),
DROP INDEX `fk_MARKETING_EMPLOOYES1_idx` ;

ALTER TABLE `itdb`.`DEVELOPMENT` 
ADD INDEX `fk_DEVELOPMENT_EMPLOOYES1_idx` (`EMPLOOYES_ID` ASC),
DROP INDEX `fk_DEVELOPMENT_EMPLOOYES1_idx` ;

ALTER TABLE `itdb`.`DIRECTORS` 
ADD INDEX `fk_DIRECTORS_ADMINISTRATION1_idx` (`ADMINISTRATION_ID` ASC),
DROP INDEX `fk_DIRECTORS_ADMINISTRATION1_idx` ;

ALTER TABLE `itdb`.`HRMANAGERS` 
ADD INDEX `fk_HRMANAGERS_ADMINISTRATION1_idx` (`ADMINISTRATION_ID` ASC),
DROP INDEX `fk_HRMANAGERS_ADMINISTRATION1_idx` ;

ALTER TABLE `itdb`.`MARKETOLOGS` 
ADD INDEX `fk_MARKETOLOGS_MARKETING1_idx` (`MARKETING_ID` ASC),
DROP INDEX `fk_MARKETOLOGS_MARKETING1_idx` ;

ALTER TABLE `itdb`.`SALES` 
ADD INDEX `fk_SALES_MARKETING1_idx` (`MARKETING_ID` ASC),
DROP INDEX `fk_SALES_MARKETING1_idx` ;

ALTER TABLE `itdb`.`BACKENDS` 
ADD INDEX `fk_BACKENDS_DEVELOPMENT1_idx` (`DEVELOPMENT_ID` ASC),
DROP INDEX `fk_BACKENDS_DEVELOPMENT1_idx` ;

ALTER TABLE `itdb`.`FRONTENDS` 
ADD INDEX `fk_FRONTENDS_DEVELOPMENT1_idx` (`DEVELOPMENT_ID` ASC),
DROP INDEX `fk_FRONTENDS_DEVELOPMENT1_idx` ;

CREATE TABLE IF NOT EXISTS `itdb`.`COUNTRY` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `COUNTRY_NAME` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

ALTER TABLE `itdb`.`ADDRESSES` 
ADD CONSTRAINT `fk_ADDRESSES_COUNTRY1`
  FOREIGN KEY (`COUNTRY_ID`)
  REFERENCES `itdb`.`COUNTRY` (`ID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;