-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema TopCarros
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema TopCarros
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `TopCarros` DEFAULT CHARACTER SET utf8 ;
USE `TopCarros` ;

-- -----------------------------------------------------
-- Table `TopCarros`.`carro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TopCarros`.`carro` (
  `id_carro` INT NOT NULL,
  `marca` VARCHAR(50) NULL,
  `modelo` VARCHAR(50) NULL,
  `ano` INT NULL,
  `cor` VARCHAR(30) NULL,
  `preco` DECIMAL(10,2) NULL,
  `disponivel` TINYINT NULL,
  PRIMARY KEY (`id_carro`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TopCarros`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TopCarros`.`cliente` (
  `id_cliente` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NULL,
  `cpf` VARCHAR(14) NULL,
  `telefone` VARCHAR(20) NULL,
  PRIMARY KEY (`id_cliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TopCarros`.`venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TopCarros`.`venda` (
  `id_venda` INT NOT NULL,
  `data_venda` DATE NULL,
  `valor` DECIMAL(10,2) NULL,
  `id_carro` INT NOT NULL,
  `id_cliente` INT NOT NULL,
  PRIMARY KEY (`id_venda`),
  INDEX `fk_venda_carro_idx` (`id_carro` ASC) ,
  INDEX `fk_venda_cliente1_idx` (`id_cliente` ASC) ,
  CONSTRAINT `fk_venda_carro`
    FOREIGN KEY (`id_carro`)
    REFERENCES `TopCarros`.`carro` (`id_carro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_venda_cliente1`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `TopCarros`.`cliente` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
