-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema videoclub
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema videoclub
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `videoclub` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
-- -----------------------------------------------------
-- Schema coches
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema coches
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `coches` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `videoclub` ;

-- -----------------------------------------------------
-- Table `videoclub`.`actor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`actor` (
  `actor_id` INT NULL DEFAULT NULL,
  `actor_name` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`category` (
  `category_id` INT NULL DEFAULT NULL,
  `category_name` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`df_actor_clean`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`df_actor_clean` (
  `actor_id` INT NULL DEFAULT NULL,
  `actor_name` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`df_category_clean`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`df_category_clean` (
  `category_id` INT NULL DEFAULT NULL,
  `category_name` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`df_film_clean`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`df_film_clean` (
  `film_id` INT NULL DEFAULT NULL,
  `title` TEXT NULL DEFAULT NULL,
  `description` TEXT NULL DEFAULT NULL,
  `special_features` TEXT NULL DEFAULT NULL,
  `rating` TEXT NULL DEFAULT NULL,
  `length` INT NULL DEFAULT NULL,
  `rental_duration` INT NULL DEFAULT NULL,
  `rental_rate` DOUBLE NULL DEFAULT NULL,
  `replacement_cost` DOUBLE NULL DEFAULT NULL,
  `language_id` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`df_inventory_clean`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`df_inventory_clean` (
  `inventory_id` INT NULL DEFAULT NULL,
  `film_id` INT NULL DEFAULT NULL,
  `store_id` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`df_language_clean`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`df_language_clean` (
  `language_id` INT NULL DEFAULT NULL,
  `language_name` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`df_old_hdd_clean`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`df_old_hdd_clean` (
  `old_hdd_id` INT NULL DEFAULT NULL,
  `actor_id` INT NULL DEFAULT NULL,
  `film_id` INT NULL DEFAULT NULL,
  `actor_name` TEXT NULL DEFAULT NULL,
  `title` TEXT NULL DEFAULT NULL,
  `category_id` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`df_rental_clean`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`df_rental_clean` (
  `rental_id` INT NULL DEFAULT NULL,
  `rental_duration` INT NULL DEFAULT NULL,
  `rental_date` TEXT NULL DEFAULT NULL,
  `return_date` TEXT NULL DEFAULT NULL,
  `customer_id` INT NULL DEFAULT NULL,
  `inventory_id` INT NULL DEFAULT NULL,
  `staff_id` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`film`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`film` (
  `film_id` INT NULL DEFAULT NULL,
  `title` TEXT NULL DEFAULT NULL,
  `description` TEXT NULL DEFAULT NULL,
  `special_features` TEXT NULL DEFAULT NULL,
  `rating` TEXT NULL DEFAULT NULL,
  `length` INT NULL DEFAULT NULL,
  `rental_duration` INT NULL DEFAULT NULL,
  `rental_rate` DOUBLE NULL DEFAULT NULL,
  `replacement_cost` DOUBLE NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`inventory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`inventory` (
  `inventory_id` INT NULL DEFAULT NULL,
  `film_id` INT NULL DEFAULT NULL,
  `store_id` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`language`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`language` (
  `language_id` INT NULL DEFAULT NULL,
  `language_name` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`old_hdd`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`old_hdd` (
  `actor_id` INT NULL DEFAULT NULL,
  `film_id` INT NULL DEFAULT NULL,
  `actor_name` TEXT NULL DEFAULT NULL,
  `title` TEXT NULL DEFAULT NULL,
  `category_id` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`rental`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`rental` (
  `rental_id` INT NULL DEFAULT NULL,
  `rental_duration` INT NULL DEFAULT NULL,
  `rental_date` TEXT NULL DEFAULT NULL,
  `return_date` TEXT NULL DEFAULT NULL,
  `customer_id` INT NULL DEFAULT NULL,
  `staff_id` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

USE `coches` ;

-- -----------------------------------------------------
-- Table `coches`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`salespersons` (
  `ID` INT NOT NULL,
  `VIN` VARCHAR(45) NULL DEFAULT NULL,
  `Staff ID` VARCHAR(45) NULL,
  `Name` INT NULL,
  `Store` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `coches`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`cars` (
  `ID` INT NOT NULL,
  `VIN` VARCHAR(25) NULL DEFAULT NULL,
  `Manufacturer` VARCHAR(25) NULL DEFAULT NULL,
  `Model` TEXT NULL DEFAULT NULL,
  `Year` INT NULL DEFAULT NULL,
  `Color` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `coches`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`customers` (
  `ID` INT NOT NULL,
  `Customer ID` INT NULL DEFAULT NULL,
  `Name` TEXT NULL DEFAULT NULL,
  `Phone` TEXT NULL DEFAULT NULL,
  `Email` TEXT NULL DEFAULT NULL,
  `Address` TEXT NULL DEFAULT NULL,
  `City` TEXT NULL DEFAULT NULL,
  `State/Province` TEXT NULL DEFAULT NULL,
  `Country` TEXT NULL DEFAULT NULL,
  `Postal` INT NULL DEFAULT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `coches`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`invoices` (
  `ID` INT NOT NULL,
  `Invoice Number` INT NULL DEFAULT NULL,
  `Date` DATETIME NULL DEFAULT NULL,
  `Car_ID` INT NULL DEFAULT NULL,
  `Customer_ID` INT NULL DEFAULT NULL,
  `Sales_Person_ID` INT NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  INDEX `car_ID_idx` (`Car_ID` ASC) VISIBLE,
  INDEX `Customer_ID_idx` (`Customer_ID` ASC) VISIBLE,
  INDEX `Sales_Person_ID_idx` (`Sales_Person_ID` ASC) VISIBLE,
  CONSTRAINT `car_ID`
    FOREIGN KEY (`Car_ID`)
    REFERENCES `coches`.`cars` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Customer_ID`
    FOREIGN KEY (`Customer_ID`)
    REFERENCES `coches`.`customers` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Sales_Person_ID`
    FOREIGN KEY (`Sales_Person_ID`)
    REFERENCES `coches`.`salespersons` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
