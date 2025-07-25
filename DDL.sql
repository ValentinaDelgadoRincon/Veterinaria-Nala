
-- -----------------------------------------------------
-- Schema Veterinaria Nala
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Veterinaria Nala` ;
USE `Veterinaria Nala` ;

-- -----------------------------------------------------
-- Table `Veterinaria Nala`.`Duenios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Veterinaria Nala`.`Duenios` (
  `idDueños` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `telefono` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idDueños`))


-- -----------------------------------------------------
-- Table `Veterinaria Nala`.`Servicio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Veterinaria Nala`.`Servicio` (
  `idServicio` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(200) NOT NULL,
  `precio` INT NOT NULL,
  PRIMARY KEY (`idServicio`))



-- -----------------------------------------------------
-- Table `Veterinaria Nala`.`Visitas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Veterinaria Nala`.`Visitas` (
  `idVisitas` INT NOT NULL AUTO_INCREMENT,
  `Servicio_idServicio` INT NOT NULL,
  `fecha` DATETIME NOT NULL,
  PRIMARY KEY (`idVisitas`),
  INDEX `fk_Visitas_Servicio1_idx` (`Servicio_idServicio` ASC) VISIBLE,
  CONSTRAINT `fk_Visitas_Servicio1`
    FOREIGN KEY (`Servicio_idServicio`)
    REFERENCES `Veterinaria Nala`.`Servicio` (`idServicio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)



-- -----------------------------------------------------
-- Table `Veterinaria Nala`.`Mascotas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Veterinaria Nala`.`Mascotas` (
  `idMascotas` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `especie` VARCHAR(45) NOT NULL,
  `raza` VARCHAR(45) NOT NULL,
  `edad` INT NOT NULL,
  `sexo` VARCHAR(45) NOT NULL,
  `vacunas` TINYINT NOT NULL,
  `Dueños_idDUeños` INT NOT NULL,
  `Visitas_idVisitas` INT NOT NULL,
  PRIMARY KEY (`idMascotas`, `Dueños_idDUeños`),
  INDEX `fk_Mascotas_Dueños_idx` (`Dueños_idDUeños` ASC) VISIBLE,
  INDEX `fk_Mascotas_Visitas1_idx` (`Visitas_idVisitas` ASC) VISIBLE,
  CONSTRAINT `fk_Mascotas_Dueños`
    FOREIGN KEY (`Dueños_idDUeños`)
    REFERENCES `Veterinaria Nala`.`Duenios` (`idDueños`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Mascotas_Visitas1`
    FOREIGN KEY (`Visitas_idVisitas`)
    REFERENCES `Veterinaria Nala`.`Visitas` (`idVisitas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)


-- -----------------------------------------------------
-- Table `Veterinaria Nala`.`Tratamientos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Veterinaria Nala`.`Tratamientos` (
  `idTratamientos` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `observaciones` VARCHAR(200) NOT NULL,
  `Visitas_idVisitas` INT NOT NULL,
  PRIMARY KEY (`idTratamientos`),
  INDEX `fk_Tratamientos_Visitas1_idx` (`Visitas_idVisitas` ASC) VISIBLE,
  CONSTRAINT `fk_Tratamientos_Visitas1`
    FOREIGN KEY (`Visitas_idVisitas`)
    REFERENCES `Veterinaria Nala`.`Visitas` (`idVisitas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)


-- -----------------------------------------------------
-- Table `Veterinaria Nala`.`Historial`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Veterinaria Nala`.`Historial` (
  `idHistorial` INT NOT NULL AUTO_INCREMENT,
  `Visitas_idVisitas` INT NOT NULL,
  PRIMARY KEY (`idHistorial`),
  INDEX `fk_Historial_Visitas1_idx` (`Visitas_idVisitas` ASC) VISIBLE,
  CONSTRAINT `fk_Historial_Visitas1`
    FOREIGN KEY (`Visitas_idVisitas`)
    REFERENCES `Veterinaria Nala`.`Visitas` (`idVisitas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
