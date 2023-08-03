-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema haksa
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema haksa
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `haksa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `haksa` ;

-- -----------------------------------------------------
-- Table `haksa`.`department`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `haksa`.`department` (
  `department_Code` INT NOT NULL,
  `department_name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`department_Code`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `haksa`.`student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `haksa`.`student` (
  `student_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `height` DECIMAL(5,2) NOT NULL,
  `department_code` INT NOT NULL,
  PRIMARY KEY (`student_id`),
  INDEX `department_code_idx` (`department_code` ASC) VISIBLE,
  CONSTRAINT `fk_department_code`
    FOREIGN KEY (`department_code`)
    REFERENCES `haksa`.`department` (`department_Code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `haksa`.`professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `haksa`.`professor` (
  `professor_code` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `department_department_Code` INT NOT NULL,
  PRIMARY KEY (`professor_code`),
  INDEX `fk_professor_department1_idx` (`department_department_Code` ASC) VISIBLE,
  CONSTRAINT `fk_professor_department1`
    FOREIGN KEY (`department_department_Code`)
    REFERENCES `haksa`.`department` (`department_Code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `haksa`.`course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `haksa`.`course` (
  `course_code` INT NOT NULL AUTO_INCREMENT,
  `course_name` VARCHAR(45) NOT NULL,
  `start_date` DATE NOT NULL,
  `end_date` DATE NOT NULL,
  `professor_code` INT NOT NULL,
  PRIMARY KEY (`course_code`),
  INDEX `fk_course_professor1_idx` (`professor_code` ASC) VISIBLE,
  CONSTRAINT `fk_course_professor1`
    FOREIGN KEY (`professor_code`)
    REFERENCES `haksa`.`professor` (`professor_code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `haksa`.`student_course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `haksa`.`student_course` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `course_code` INT NOT NULL,
  `student_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_student_course_course1_idx` (`course_code` ASC) VISIBLE,
  INDEX `fk_student_course_student1_idx` (`student_id` ASC) VISIBLE,
  CONSTRAINT `fk_student_course_course1`
    FOREIGN KEY (`course_code`)
    REFERENCES `haksa`.`course` (`course_code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_student_course_student1`
    FOREIGN KEY (`student_id`)
    REFERENCES `haksa`.`student` (`student_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
