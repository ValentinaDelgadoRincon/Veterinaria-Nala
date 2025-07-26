
-- -----------------------------------------------------
-- Schema Veterinaria Nala
-- -----------------------------------------------------
CREATE DATABASE IF NOT EXISTS `Veterinaria Nala` ;
USE `Veterinaria Nala` ;

-- -----------------------------------------------------
-- Table `Veterinaria Nala`.`Duenios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Duenios` (
  `idDuenios` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nombre` VARCHAR(45) NOT NULL,
  `telefono` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL);


-- -----------------------------------------------------
-- Table `Veterinaria Nala`.`Servicio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Servicio` (
  `idServicio` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(200) NOT NULL,
  `precio` INT NOT NULL);



-- -----------------------------------------------------
-- Table `Veterinaria Nala`.`Visitas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Visitas` (
  `idVisitas` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `Servicio_idServicio` INT NOT NULL,
  `fecha` DATETIME NOT NULL,
    FOREIGN KEY (`Servicio_idServicio`)REFERENCES `Veterinaria Nala`.`Servicio` (`idServicio`));



-- -----------------------------------------------------
-- Table `Veterinaria Nala`.`Mascotas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mascotas` (
  `idMascotas` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nombre` VARCHAR(45) NOT NULL,
  `especie` VARCHAR(45) NOT NULL,
  `raza` VARCHAR(45) NOT NULL,
  `edad` INT NOT NULL,
  `sexo` VARCHAR(45) NOT NULL,
  `vacunas` TINYINT NOT NULL,
  `Duenios_idDuenios` INT NOT NULL,
  `Visitas_idVisitas` INT NOT NULL,
    FOREIGN KEY (`Duenios_idDuenios`)REFERENCES `Veterinaria Nala`.`Duenios` (`idDuenios`),
    FOREIGN KEY (`Visitas_idVisitas`)REFERENCES `Veterinaria Nala`.`Visitas` (`idVisitas`));


-- -----------------------------------------------------
-- Table `Veterinaria Nala`.`Tratamientos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Tratamientos` (
  `idTratamientos` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nombre` VARCHAR(45) NOT NULL,
  `observaciones` VARCHAR(200) NOT NULL,
  `Visitas_idVisitas` INT NOT NULL,
    FOREIGN KEY (`Visitas_idVisitas`)REFERENCES `Veterinaria Nala`.`Visitas` (`idVisitas`));


-- -----------------------------------------------------
-- Table `Veterinaria Nala`.`Historial`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Historial` (
  `idHistorial` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `Visitas_idVisitas` INT NOT NULL,
    FOREIGN KEY (`Visitas_idVisitas`)REFERENCES `Veterinaria Nala`.`Visitas` (`idVisitas`));
