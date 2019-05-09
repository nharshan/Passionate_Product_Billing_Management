##mydb Query for Passionate data base
##By Harshan Nagulapally
##SID: 01597680
##to Prof Kui Du
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`customer` ;

CREATE TABLE IF NOT EXISTS `mydb`.`customer` (
  `customer_id` INT NOT NULL,
  `firstname` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(45) NOT NULL,
  `middlename` VARCHAR(45) NULL,
  `emailid` VARCHAR(45) NULL,
  `phonenumber` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NULL,
  `city` VARCHAR(45) NOT NULL,
  `pincode` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE INDEX `customer_id_UNIQUE` (`customer_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`invoice`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`invoice` ;

CREATE TABLE IF NOT EXISTS `mydb`.`invoice` (
  `invoiceid` INT NOT NULL,
  `customerid` INT NOT NULL,
  `invoicedate` DATE NOT NULL,
  `itemid` INT NOT NULL,
  `itemquantity` INT NOT NULL,
  `itemprice` INT NULL,
  `itemtax` INT NULL,
  `totalamount` DECIMAL(45) NOT NULL,
  `customer_customer_id` INT NOT NULL,
  `store_storeid` INT NOT NULL,
  `manager_managerid` INT NOT NULL,
  `item_itemid` INT NOT NULL,
  `item_product_productcode` INT NOT NULL,
  PRIMARY KEY (`invoiceid`, `customer_customer_id`, `store_storeid`, `manager_managerid`, `item_itemid`, `item_product_productcode`),
  UNIQUE INDEX `invoiceid_UNIQUE` (`invoiceid` ASC) VISIBLE,
  INDEX `fk_invoice_customer1_idx` (`customer_customer_id` ASC) VISIBLE,
  INDEX `fk_invoice_store1_idx` (`store_storeid` ASC) VISIBLE,
  INDEX `fk_invoice_manager1_idx` (`manager_managerid` ASC) VISIBLE,
  INDEX `fk_invoice_item1_idx` (`item_itemid` ASC, `item_product_productcode` ASC) VISIBLE,
  CONSTRAINT `fk_invoice_customer1`
    FOREIGN KEY (`customer_customer_id`)
    REFERENCES `mydb`.`customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoice_store1`
    FOREIGN KEY (`store_storeid`)
    REFERENCES `mydb`.`store` (`storeid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoice_manager1`
    FOREIGN KEY (`manager_managerid`)
    REFERENCES `mydb`.`manager` (`managerid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoice_item1`
    FOREIGN KEY (`item_itemid` , `item_product_productcode`)
    REFERENCES `mydb`.`item` (`itemid` , `product_productcode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`item`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`item` ;

CREATE TABLE IF NOT EXISTS `mydb`.`item` (
  `itemid` INT NOT NULL,
  `itemname` VARCHAR(45) NULL,
  `itemprice` INT NULL,
  `productid` INT NULL,
  `quantity` INT NULL,
  `product_productcode` INT NOT NULL,
  UNIQUE INDEX `itemid_UNIQUE` (`itemid` ASC) VISIBLE,
  PRIMARY KEY (`itemid`, `product_productcode`)
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`manager`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`manager` ;

CREATE TABLE IF NOT EXISTS `mydb`.`manager` (
  `managerid` INT NOT NULL,
  `firstname` VARCHAR(45) NULL,
  `lastname` VARCHAR(45) NULL,
  `middlename` VARCHAR(45) NULL,
  `phonenumber` VARCHAR(45) NULL,
  `accesscode` INT NULL,
  PRIMARY KEY (`managerid`),
  UNIQUE INDEX `phonenumber_UNIQUE` (`phonenumber` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`product` ;

CREATE TABLE IF NOT EXISTS `mydb`.`product` (
  `productcode` INT NOT NULL,
  `productname` VARCHAR(45) NULL,
  `producttax` VARCHAR(45) NULL,
  `producttype` VARCHAR(45) NULL,
  PRIMARY KEY (`productcode`),
  UNIQUE INDEX `productcode_UNIQUE` (`productcode` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`store`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`store` ;

CREATE TABLE IF NOT EXISTS `mydb`.`store` (
  `storeid` INT NOT NULL,
  `storename` VARCHAR(45) NOT NULL,
  `storeaddress` VARCHAR(45) NOT NULL,
  `storepincode` VARCHAR(45) NOT NULL,
  `storephonenumber` INT NOT NULL,
  `storeemailid` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`storeid`),
  UNIQUE INDEX `storeid_UNIQUE` (`storeid` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
