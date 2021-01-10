CREATE DATABASE IF NOT EXISTS bdTESCI DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE bdTESCI;

-- Tabla de ususarios 
-- ------------------------------------------
CREATE TABLE IF NOT EXISTS tblUsuarios (
      NumeroControlU INT NOT NULL,
      NombreU VARCHAR (60) NOT NULL,
      Cont1U VARCHAR (30) NOT NULL,
      Cont2U VARCHAR (30) NOT NULL,
      TipoUsuarioUsu INT NOT NULL,
      PRIMARY KEY (NumeroControlU))
      ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Datos Personales  Alumnos 
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblDatosPersonalesAlumnos (
      NumeroControlDPAlum INT NOT NULL,
      NomAlum VARCHAR (60) NOT NULL,
      ApPAlum VARCHAR (60) NOT NULL,
      ApMAlum VARCHAR (60) NOT NULL,
      CorrreoInsAlum VARCHAR (80) NOT NULL,
      CorrreoPerAlum VARCHAR (80) NOT NULL,
      GrupoAlum VARCHAR (10) NOT NULL,
      IdCarreraAlum INT NOT NULL,
      PRIMARY KEY (NumeroControlDPAlum))
	  ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Estatus de inscripcion
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblEstatusInscripcion (
       IdIncripcion INT NOT NULL,
       EstatusInscripcion VARCHAR (15) NOT NULL,
       PRIMARY KEY  (IdIncripcion))
	   ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Datos del Contribuyente
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblDatosContribuyente (
       NumeroControlDC INT NOT NULL,
       RFC VARCHAR (45) NOT NULL,
       CURP VARCHAR (45) NOT NULL,
       ReferenciaDC VARCHAR (85) NOT NULL,
       NombreComletoDC VARCHAR (60) NOT NULL,
       Observaciones VARCHAR (150) ,
       PRIMARY KEY (NumeroControlDC))
	   ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Datos de la Contrubucion 
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblDatosContribucion (
       ClaveDC VARCHAR (35) NOT NULL,
       DescripcionDC VARCHAR (130) NOT NULL,
       CantidadDC FLOAT NOT NULL,
       TarifaTasaDC FLOAT NOT NULL,
       SubtotalDC FLOAT NOT NULL,
       TotalDC FLOAT NOT NULL
       -- PRIMARY KEY (Por defenir))
       )ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Sistemas Computacionesles
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblSistemas (
       NumeroControlSistemas INT NOT NULL,
       TurnoSis VARCHAR (20) NOT NULL,
       EstatusAlumnoSis INT NOT NULL,
       EstatusInscripcionesSis INT NOT NULL,
       GrupoSis VARCHAR (25) NOT NULL,
       PRIMARY KEY (NumeroControlSistemas))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Sistemas Computacionesles 1er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl1SemestreSis (
	   IdCarreraSis1 INT NOT NULL,
       MateriaSis1 VARCHAR (45) NOT NULL,
       ClaveSis1 VARCHAR (45) NOT NULL,
       CredistosSis1 INT NOT NULL,
       PRIMARY KEY (IdCarreraSis1))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Sistemas Computacionesles 2do Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl2SemestreSis (
	   IdCarreraSis2 INT NOT NULL,
       MateriaSis2 VARCHAR (45) NOT NULL,
       ClaveSis2 VARCHAR (45) NOT NULL,
       CredistosSis2 INT NOT NULL,
       PRIMARY KEY (IdCarreraSis2))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Sistemas Computacionesles 3er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl3SemestreSis (
	   IdCarreraSis3 INT NOT NULL,
       MateriaSis3 VARCHAR (45) NOT NULL,
       ClaveSis3 VARCHAR (45) NOT NULL,
       CredistosSis3 INT NOT NULL,
       PRIMARY KEY (IdCarreraSis3))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Sistemas Computacionesles 4to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl4SemestreSis (
	   IdCarreraSis4 INT NOT NULL,
       MateriaSis4 VARCHAR (45) NOT NULL,
       ClaveSis4 VARCHAR (45) NOT NULL,
       CredistosSis4 INT NOT NULL,
       PRIMARY KEY (IdCarreraSis4))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Sistemas Computacionesles 5to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl5SemestreSis (
	   IdCarreraSis5 INT NOT NULL,
       MateriaSis5 VARCHAR (45) NOT NULL,
       ClaveSis5 VARCHAR (45) NOT NULL,
       CredistosSis5 INT NOT NULL,
       PRIMARY KEY (IdCarreraSis5))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Sistemas Computacionesles 6to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl6SemestreSis (
	   IdCarreraSis6 INT NOT NULL,
       MateriaSis6 VARCHAR (45) NOT NULL,
       ClaveSis6 VARCHAR (45) NOT NULL,
       CredistosSis6 INT NOT NULL,
       PRIMARY KEY (IdCarreraSis6))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Sistemas Computacionesles 7mo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl7SemestreSis (
	   IdCarreraSis7 INT NOT NULL,
       MateriaSis7 VARCHAR (45) NOT NULL,
       ClaveSis7 VARCHAR (45) NOT NULL,
       CredistosSis7 INT NOT NULL,
       PRIMARY KEY (IdCarreraSis7))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Sistemas Computacionesles 8vo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl8SemestreSis (
	   IdCarreraSis8 INT NOT NULL,
       MateriaSis8 VARCHAR (45) NOT NULL,
       ClaveSis8 VARCHAR (45) NOT NULL,
       CredistosSis8 INT NOT NULL,
       PRIMARY KEY (IdCarreraSis8))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Sistemas Computacionesles 9no Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl9SemestreSis (
	   IdCarreraSis9 INT NOT NULL,
       MateriaSis9 VARCHAR (45) NOT NULL,
       ClaveSis9 VARCHAR (45) NOT NULL,
       CredistosSis9 INT NOT NULL,
       PRIMARY KEY (IdCarreraSis9))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en TICS
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblTICS (
	   NumeroControlTICS INT NOT NULL,
       TurnoTICS VARCHAR (20) NOT NULL,
       EstatusAlumnoTICS INT NOT NULL,
       EstatusInscripcionesTICS INT NOT NULL,
       GrupoSis VARCHAR (25) NOT NULL,
       PRIMARY KEY (NumeroControlTICS))
       ENGINE = InnoDB;					
-- -------------------------------------------
-- Tabla Ingieneria en TICS 1er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl1SemestreTICS (
	   IdCarreraTICS1 INT NOT NULL,
       MateriaTICS1 VARCHAR (45) NOT NULL,
       ClaveTICS1 VARCHAR (45) NOT NULL,
       CredistosTICS1 INT NOT NULL,
       PRIMARY KEY (IdCarreraTICS1))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en TICS 2do Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl2SemestreTICS (
	   IdCarreraTICS2 INT NOT NULL,
       MateriaTICS2 VARCHAR (45) NOT NULL,
       ClaveTICS2 VARCHAR (45) NOT NULL,
       CredistosTICS2 INT NOT NULL,
       PRIMARY KEY (IdCarreraTICS2))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en TICS 3er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl3SemestreTICS (
	   IdCarreraTICS3 INT NOT NULL,
       MateriaTICS3 VARCHAR (45) NOT NULL,
       ClaveTICS3 VARCHAR (45) NOT NULL,
       CredistosTICS3 INT NOT NULL,
       PRIMARY KEY (IdCarreraTICS3))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en TICS 4to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl4SemestreTICS (
	   IdCarreraTICS4 INT NOT NULL,
       MateriaTICS4 VARCHAR (45) NOT NULL,
       ClaveTICS4 VARCHAR (45) NOT NULL,
       CredistosTICS4 INT NOT NULL,
       PRIMARY KEY (IdCarreraTICS4))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en TICS 5to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl15SemestreTICS (
	   IdCarreraTICS5 INT NOT NULL,
       MateriaTICS5 VARCHAR (45) NOT NULL,
       ClaveTICS5 VARCHAR (45) NOT NULL,
       CredistosTICS5 INT NOT NULL,
       PRIMARY KEY (IdCarreraTICS5))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en TICS 6to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl6SemestreTICS (
	   IdCarreraTICS6 INT NOT NULL,
       MateriaTICS6 VARCHAR (45) NOT NULL,
       ClaveTICS6 VARCHAR (45) NOT NULL,
       CredistosTICS6 INT NOT NULL,
       PRIMARY KEY (IdCarreraTICS6))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en TICS 7mo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl7SemestreTICS (
	   IdCarreraTICS7 INT NOT NULL,
       MateriaTICS7 VARCHAR (45) NOT NULL,
       ClaveTICS7 VARCHAR (45) NOT NULL,
       CredistosTICS7 INT NOT NULL,
       PRIMARY KEY (IdCarreraTICS7))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en TICS 8vo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl8SemestreTICS (
	   IdCarreraTICS8 INT NOT NULL,
       MateriaTICS8 VARCHAR (45) NOT NULL,
       ClaveTICS8 VARCHAR (45) NOT NULL,
       CredistosTICS8 INT NOT NULL,
       PRIMARY KEY (IdCarreraTICS8))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en TICS 9no Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl9SemestreTICS (
	   IdCarreraTICS9 INT NOT NULL,
       MateriaTICS9 VARCHAR (45) NOT NULL,
       ClaveTICS9 VARCHAR (45) NOT NULL,
       CredistosTICS9 INT NOT NULL,
       PRIMARY KEY (IdCarreraTICS9))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Industrial
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblIndustrial (
	   NumeroControlIndustrial INT NOT NULL,
       TurnoIndustrial VARCHAR (20) NOT NULL,
       EstatusAlumnoIndustrial INT NOT NULL,
       EstatusInscripcionesIndustrial INT NOT NULL,
       GrupoSis VARCHAR (25) NOT NULL,
       PRIMARY KEY (NumeroControlIndustrial))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Industrial 1er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl1SemestreIndustrial (
	   IdCarreraIndustrial1 INT NOT NULL,
       MateriaIndustrial1 VARCHAR (45) NOT NULL,
       ClaveIndustrial1 VARCHAR (45) NOT NULL,
       CredistosIndustrial1 INT NOT NULL,
       PRIMARY KEY (IdCarreraIndustrial1))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Industrial 2do Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl2SemestreIndustrial (
	   IdCarreraIndustrial2 INT NOT NULL,
       MateriaIndustrial2 VARCHAR (45) NOT NULL,
       ClaveIndustrial2 VARCHAR (45) NOT NULL,
       CredistosIndustrial2 INT NOT NULL,
       PRIMARY KEY (IdCarreraIndustrial2))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Industrial 3er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl3SemestreIndustrial (
	   IdCarreraIndustrial3 INT NOT NULL,
       MateriaIndustrial3 VARCHAR (45) NOT NULL,
       ClaveIndustrial3 VARCHAR (45) NOT NULL,
       CredistosIndustrial3 INT NOT NULL,
       PRIMARY KEY (IdCarreraIndustrial3))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Industrial 4to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl4SemestreIndustrial (
	   IdCarreraIndustrial4 INT NOT NULL,
       MateriaIndustrial4 VARCHAR (45) NOT NULL,
       ClaveIndustrial4 VARCHAR (45) NOT NULL,
       CredistosIndustrial4 INT NOT NULL,
       PRIMARY KEY (IdCarreraIndustrial4))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Industrial 5to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl5SemestreIndustrial (
	   IdCarreraIndustrial5 INT NOT NULL,
       MateriaIndustrial5 VARCHAR (45) NOT NULL,
       ClaveIndustrial5 VARCHAR (45) NOT NULL,
       CredistosIndustrial5 INT NOT NULL,
       PRIMARY KEY (IdCarreraIndustrial5))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Industrial 6to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl6SemestreIndustrial (
	   IdCarreraIndustrial6 INT NOT NULL,
       MateriaIndustrial6 VARCHAR (45) NOT NULL,
       ClaveIndustrial6 VARCHAR (45) NOT NULL,
       CredistosIndustrial6 INT NOT NULL,
       PRIMARY KEY (IdCarreraIndustrial6))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Industrial 7mo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl7SemestreIndustrial (
	   IdCarreraIndustrial7 INT NOT NULL,
       MateriaIndustrial7 VARCHAR (45) NOT NULL,
       ClaveIndustrial7 VARCHAR (45) NOT NULL,
       CredistosIndustrial7 INT NOT NULL,
       PRIMARY KEY (IdCarreraIndustrial7))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Industrial 8vo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl8SemestreIndustrial (
	   IdCarreraIndustrial8 INT NOT NULL,
       MateriaIndustrial8 VARCHAR (45) NOT NULL,
       ClaveIndustrial8 VARCHAR (45) NOT NULL,
       CredistosIndustrial8 INT NOT NULL,
       PRIMARY KEY (IdCarreraIndustrial8))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Industrial 9no Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl9SemestreIndustrial (
	   IdCarreraIndustrial9 INT NOT NULL,
       MateriaIndustrial9 VARCHAR (45) NOT NULL,
       ClaveIndustrial9 VARCHAR (45) NOT NULL,
       CredistosIndustrial9 INT NOT NULL,
       PRIMARY KEY (IdCarreraIndustrial9))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Contador Publico
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblContadorPublico (
	   NumeroControlContadorPublico INT NOT NULL,
       TurnoContadorPublico VARCHAR (20) NOT NULL,
       EstatusAlumnoContadorPublico INT NOT NULL,
       EstatusInscripcionesContadorPublico INT NOT NULL,
       GrupoContadorPublico VARCHAR (25) NOT NULL,
       PRIMARY KEY (NumeroControlContadorPublico))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Contador Publico 1er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl1SemestreContadorPublico (
	   IdCarreraContadorPublico1 INT NOT NULL,
       MateriaContadorPublico1 VARCHAR (45) NOT NULL,
       ClaveContadorPublico1 VARCHAR (45) NOT NULL,
       CredistosContadorPublico1 INT NOT NULL,
       PRIMARY KEY (IdCarreraContadorPublico1))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Contador Publico 2do Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl2SemestreContadorPublico (
	   IdCarreraContadorPublico2 INT NOT NULL,
       MateriaContadorPublico2 VARCHAR (45) NOT NULL,
       ClaveContadorPublico2 VARCHAR (45) NOT NULL,
       CredistosContadorPublico12 INT NOT NULL,
       PRIMARY KEY (IdCarreraContadorPublico2))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Contador Publico 3er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl3SemestreContadorPublico (
	   IdCarreraContadorPublico3 INT NOT NULL,
       MateriaContadorPublico3 VARCHAR (45) NOT NULL,
       ClaveContadorPublico3 VARCHAR (45) NOT NULL,
       CredistosContadorPublico3 INT NOT NULL,
       PRIMARY KEY (IdCarreraContadorPublico3))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Contador Publico 4to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl4SemestreContadorPublico (
	   IdCarreraContadorPublico4 INT NOT NULL,
       MateriaContadorPublico4 VARCHAR (45) NOT NULL,
       ClaveContadorPublico4 VARCHAR (45) NOT NULL,
       CredistosContadorPublico4 INT NOT NULL,
       PRIMARY KEY (IdCarreraContadorPublico4))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Contador Publico 5to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl5SemestreContadorPublico (
	   IdCarreraContadorPublico5 INT NOT NULL,
       MateriaContadorPublico5 VARCHAR (45) NOT NULL,
       ClaveContadorPublico5 VARCHAR (45) NOT NULL,
       CredistosContadorPublico5 INT NOT NULL,
       PRIMARY KEY (IdCarreraContadorPublico5))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Contador Publico 6to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl6SemestreContadorPublico (
	   IdCarreraContadorPublico6 INT NOT NULL,
       MateriaContadorPublico6 VARCHAR (45) NOT NULL,
       ClaveContadorPublico6 VARCHAR (45) NOT NULL,
       CredistosContadorPublico6 INT NOT NULL,
       PRIMARY KEY (IdCarreraContadorPublico6))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Contador Publico 7mo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl7SemestreContadorPublico (
	   IdCarreraContadorPublico7 INT NOT NULL,
       MateriaContadorPublico7 VARCHAR (45) NOT NULL,
       ClaveContadorPublico7 VARCHAR (45) NOT NULL,
       CredistosContadorPublico7 INT NOT NULL,
       PRIMARY KEY (IdCarreraContadorPublico7))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Contador Publico 8vo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl8SemestreContadorPublico (
	   IdCarreraContadorPublico8 INT NOT NULL,
       MateriaContadorPublico8 VARCHAR (45) NOT NULL,
       ClaveContadorPublico8 VARCHAR (45) NOT NULL,
       CredistosContadorPublico8 INT NOT NULL,
       PRIMARY KEY (IdCarreraContadorPublico8))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Contador Publico 9no Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl9SemestreContadorPublico (
	   IdCarreraContadorPublico9 INT NOT NULL,
       MateriaContadorPublico9 VARCHAR (45) NOT NULL,
       ClaveContadorPublico9 VARCHAR (45) NOT NULL,
       CredistosContadorPublico9 INT NOT NULL,
       PRIMARY KEY (IdCarreraContadorPublico9))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Administracion
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblIngAdministracion (
	   NumeroControlIngAdministracion INT NOT NULL,
       TurnoIngAdministracion VARCHAR (20) NOT NULL,
       EstatusAlumnoIngAdministracion INT NOT NULL,
       EstatusInscripcionesIngAdministracion INT NOT NULL,
       GrupoIngAdministracion VARCHAR (25) NOT NULL,
       PRIMARY KEY (NumeroControlIngAdministracion))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Administracion 1er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl1SemestreIngAdministracion (
	   IdCarreraIngAdministracion1 INT NOT NULL,
       MateriaIngAdministracion1 VARCHAR (45) NOT NULL,
       ClaveIngAdministracion1 VARCHAR (45) NOT NULL,
       CredistosIngAdministracion1 INT NOT NULL,
       PRIMARY KEY (IdCarreraIngAdministracion1))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Administracion 2do Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl2SemestreIngAdministracion (
	   IdCarreraIngAdministracion2 INT NOT NULL,
       MateriaIngAdministracion2 VARCHAR (45) NOT NULL,
       ClaveIngAdministracion2 VARCHAR (45) NOT NULL,
       CredistosIngAdministracion2 INT NOT NULL,
       PRIMARY KEY (IdCarreraIngAdministracion2))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Administracion 3er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl3SemestreIngAdministracion (
	   IdCarreraIngAdministracion3 INT NOT NULL,
       MateriaIngAdministracion3 VARCHAR (45) NOT NULL,
       ClaveIngAdministracion3 VARCHAR (45) NOT NULL,
       CredistosIngAdministracion3 INT NOT NULL,
       PRIMARY KEY (IdCarreraIngAdministracion3))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Administracion 4to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl4SemestreIngAdministracion (
	   IdCarreraIngAdministracion4 INT NOT NULL,
       MateriaIngAdministracion4 VARCHAR (45) NOT NULL,
       ClaveIngAdministracion4 VARCHAR (45) NOT NULL,
       CredistosIngAdministracion4 INT NOT NULL,
       PRIMARY KEY (IdCarreraIngAdministracion4))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Administracion 5to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl5SemestreIngAdministracion (
	   IdCarreraIngAdministracion5 INT NOT NULL,
       MateriaIngAdministracion5 VARCHAR (45) NOT NULL,
       ClaveIngAdministracion5 VARCHAR (45) NOT NULL,
       CredistosIngAdministracion5 INT NOT NULL,
       PRIMARY KEY (IdCarreraIngAdministracion5))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Administracion 6to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl6SemestreIngAdministracion (
	   IdCarreraIngAdministracion6 INT NOT NULL,
       MateriaIngAdministracion6 VARCHAR (45) NOT NULL,
       ClaveIngAdministracion6 VARCHAR (45) NOT NULL,
       CredistosIngAdministracion6 INT NOT NULL,
       PRIMARY KEY (IdCarreraIngAdministracion6))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Administracion 7mo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl7SemestreIngAdministracion (
	   IdCarreraIngAdministracion7 INT NOT NULL,
       MateriaIngAdministracion7 VARCHAR (45) NOT NULL,
       ClaveIngAdministracion7 VARCHAR (45) NOT NULL,
       CredistosIngAdministracion7 INT NOT NULL,
       PRIMARY KEY (IdCarreraIngAdministracion7))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Administracion 8vo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl8SemestreIngAdministracion (
	   IdCarreraIngAdministracion8 INT NOT NULL,
       MateriaIngAdministracion8 VARCHAR (45) NOT NULL,
       ClaveIngAdministracion8 VARCHAR (45) NOT NULL,
       CredistosIngAdministracion8 INT NOT NULL,
       PRIMARY KEY (IdCarreraIngAdministracion8))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Administracion 9no Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl9SemestreIngAdministracion (
	   IdCarreraIngAdministracion9 INT NOT NULL,
       MateriaIngAdministracion9 VARCHAR (45) NOT NULL,
       ClaveIngAdministracion9 VARCHAR (45) NOT NULL,
       CredistosIngAdministracion9 INT NOT NULL,
       PRIMARY KEY (IdCarreraIngAdministracion9))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Logistica
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblLogistica (
	   NumeroControlLogistica INT NOT NULL,
       TurnoLogistica VARCHAR (20) NOT NULL,
       EstatusAlumnoLogistica INT NOT NULL,
       EstatusInscripcionesLogistica INT NOT NULL,
       GrupoLogistica VARCHAR (25) NOT NULL,
       PRIMARY KEY (NumeroControlLogistica))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Logistica 1er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl1SemestreLogistica (
	   IdCarreraLogistica1 INT NOT NULL,
       MateriaLogistica1 VARCHAR (45) NOT NULL,
       ClaveLogistica1 VARCHAR (45) NOT NULL,
       CredistosLogistica1 INT NOT NULL,
       PRIMARY KEY (IdCarreraLogistica1))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Logistica 2do Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl2SemestreLogistica (
	   IdCarreraLogistica2 INT NOT NULL,
       MateriaLogistica2 VARCHAR (45) NOT NULL,
       ClaveLogistica2 VARCHAR (45) NOT NULL,
       CredistosLogistica2 INT NOT NULL,
       PRIMARY KEY (IdCarreraLogistica2))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Logistica 3er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl3SemestreLogistica (
	   IdCarreraLogistica3 INT NOT NULL,
       MateriaLogistica3 VARCHAR (45) NOT NULL,
       ClaveLogistica3 VARCHAR (45) NOT NULL,
       CredistosLogistica3 INT NOT NULL,
       PRIMARY KEY (IdCarreraLogistica3))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Logistica 4to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl4SemestreLogistica (
	   IdCarreraLogistica4 INT NOT NULL,
       MateriaLogistica4 VARCHAR (45) NOT NULL,
       ClaveLogistica4 VARCHAR (45) NOT NULL,
       CredistosLogistica4 INT NOT NULL,
       PRIMARY KEY (IdCarreraLogistica4))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Logistica 5to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl5SemestreLogistica (
	   IdCarreraLogistica5 INT NOT NULL,
       MateriaLogistica5 VARCHAR (45) NOT NULL,
       ClaveLogistica5 VARCHAR (45) NOT NULL,
       CredistosLogistica5 INT NOT NULL,
       PRIMARY KEY (IdCarreraLogistica5))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Logistica 6to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl6SemestreLogistica (
	   IdCarreraLogistica6 INT NOT NULL,
       MateriaLogistica6 VARCHAR (45) NOT NULL,
       ClaveLogistica6 VARCHAR (45) NOT NULL,
       CredistosLogistica6 INT NOT NULL,
       PRIMARY KEY (IdCarreraLogistica1))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Logistica 7mo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl7SemestreLogistica (
	   IdCarreraLogistica7 INT NOT NULL,
       MateriaLogistica7 VARCHAR (45) NOT NULL,
       ClaveLogistica7 VARCHAR (45) NOT NULL,
       CredistosLogistica7 INT NOT NULL,
       PRIMARY KEY (IdCarreraLogistica7))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Logistica 8vo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl8SemestreLogistica (
	   IdCarreraLogistica8 INT NOT NULL,
       MateriaLogistica8 VARCHAR (45) NOT NULL,
       ClaveLogistica8 VARCHAR (45) NOT NULL,
       CredistosLogistica8 INT NOT NULL,
       PRIMARY KEY (IdCarreraLogistica8))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Logistica 9no Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl9SemestreLogistica (
	   IdCarreraLogistica9 INT NOT NULL,
       MateriaLogistica9 VARCHAR (45) NOT NULL,
       ClaveLogistica9 VARCHAR (45) NOT NULL,
       CredistosLogistica9 INT NOT NULL,
       PRIMARY KEY (IdCarreraLogistica9))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Mecatronica
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblMecatronica (
	   NumeroControlMecatronica INT NOT NULL,
       TurnoMecatronica VARCHAR (20) NOT NULL,
       EstatusAlumnoMecatronica INT NOT NULL,
       EstatusInscripcionesMecatronica INT NOT NULL,
       GrupoMecatronica VARCHAR (25) NOT NULL,
       PRIMARY KEY (NumeroControlMecatronica))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Mecatronica 1er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl1SemestreMecatronica (
	   IdCarreraMecatronica1 INT NOT NULL,
       MateriaMecatronica1 VARCHAR (45) NOT NULL,
       ClaveMecatronica1 VARCHAR (45) NOT NULL,
       CredistosMecatronica1 INT NOT NULL,
       PRIMARY KEY (IdCarreraMecatronica1))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Mecatronica 2do Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl2SemestreMecatronica (
	   IdCarreraMecatronica2 INT NOT NULL,
       MateriaMecatronica2 VARCHAR (45) NOT NULL,
       ClaveMecatronica2 VARCHAR (45) NOT NULL,
       CredistosMecatronica2 INT NOT NULL,
       PRIMARY KEY (IdCarreraMecatronica2))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Mecatronica 3er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl3SemestreMecatronica (
	   IdCarreraMecatronica3 INT NOT NULL,
       MateriaMecatronica3 VARCHAR (45) NOT NULL,
       ClaveMecatronica3 VARCHAR (45) NOT NULL,
       CredistosMecatronica3 INT NOT NULL,
       PRIMARY KEY (IdCarreraMecatronica3))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Mecatronica 4to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl4SemestreMecatronica (
	   IdCarreraMecatronica4 INT NOT NULL,
       MateriaMecatronica4 VARCHAR (45) NOT NULL,
       ClaveMecatronica4 VARCHAR (45) NOT NULL,
       CredistosMecatronica4 INT NOT NULL,
       PRIMARY KEY (IdCarreraMecatronica4))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Mecatronica 5to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl5SemestreMecatronica (
	   IdCarreraMecatronica5 INT NOT NULL,
       MateriaMecatronica5 VARCHAR (45) NOT NULL,
       ClaveMecatronica5 VARCHAR (45) NOT NULL,
       CredistosMecatronica5 INT NOT NULL,
       PRIMARY KEY (IdCarreraMecatronica5))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Mecatronica 6to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl6SemestreMecatronica (
	   IdCarreraMecatronica6 INT NOT NULL,
       MateriaMecatronica6 VARCHAR (45) NOT NULL,
       ClaveMecatronica6 VARCHAR (45) NOT NULL,
       CredistosMecatronica6 INT NOT NULL,
       PRIMARY KEY (IdCarreraMecatronica6))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Mecatronica 7mo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl7SemestreMecatronica (
	   IdCarreraMecatronica7 INT NOT NULL,
       MateriaMecatronica7 VARCHAR (45) NOT NULL,
       ClaveMecatronica7 VARCHAR (45) NOT NULL,
       CredistosMecatronica7 INT NOT NULL,
       PRIMARY KEY (IdCarreraMecatronica7))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Mecatronica 8vo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl8SemestreMecatronica (
	   IdCarreraMecatronica8 INT NOT NULL,
       MateriaMecatronica8 VARCHAR (45) NOT NULL,
       ClaveMecatronica8 VARCHAR (45) NOT NULL,
       CredistosMecatronica8 INT NOT NULL,
       PRIMARY KEY (IdCarreraMecatronica8))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Mecatronica 9no Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl9SemestreMecatronica (
	   IdCarreraMecatronica9 INT NOT NULL,
       MateriaMecatronica9 VARCHAR (45) NOT NULL,
       ClaveMecatronica9 VARCHAR (45) NOT NULL,
       CredistosMecatronica9 INT NOT NULL,
       PRIMARY KEY (IdCarreraMecatronica9))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Quimica
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblQuimica (
	   NumeroControlQuimica INT NOT NULL,
       TurnoQuimica VARCHAR (20) NOT NULL,
       EstatusAlumnoQuimica INT NOT NULL,
       EstatusInscripcionesQuimica INT NOT NULL,
       GrupoQuimica VARCHAR (25) NOT NULL,
       PRIMARY KEY (NumeroControlQuimica))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Quimica 1er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl1SemestreQuimica (
	   IdCarreraQuimica1 INT NOT NULL,
       MateriaQuimica1 VARCHAR (45) NOT NULL,
       ClaveQuimica1 VARCHAR (45) NOT NULL,
       CredistosQuimica1 INT NOT NULL,
       PRIMARY KEY (IdCarreraQuimica1))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Quimica 2do Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl2SemestreQuimica (
	   IdCarreraQuimica2 INT NOT NULL,
       MateriaQuimica2 VARCHAR (45) NOT NULL,
       ClaveQuimica2 VARCHAR (45) NOT NULL,
       CredistosQuimica2 INT NOT NULL,
       PRIMARY KEY (IdCarreraQuimica2))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Quimica 3er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl3SemestreQuimica (
	   IdCarreraQuimica3 INT NOT NULL,
       MateriaQuimica3 VARCHAR (45) NOT NULL,
       ClaveQuimica3 VARCHAR (45) NOT NULL,
       CredistosQuimica3 INT NOT NULL,
       PRIMARY KEY (IdCarreraQuimica3))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Quimica 4to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl4SemestreQuimica (
	   IdCarreraQuimica4 INT NOT NULL,
       MateriaQuimica4 VARCHAR (45) NOT NULL,
       ClaveQuimica4 VARCHAR (45) NOT NULL,
       CredistosQuimica4 INT NOT NULL,
       PRIMARY KEY (IdCarreraQuimica4))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Quimica 5to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl5SemestreQuimica (
	   IdCarreraQuimica5 INT NOT NULL,
       MateriaQuimica5 VARCHAR (45) NOT NULL,
       ClaveQuimica5 VARCHAR (45) NOT NULL,
       CredistosQuimica5 INT NOT NULL,
       PRIMARY KEY (IdCarreraQuimica5))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Quimica 6to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl6SemestreQuimica (
	   IdCarreraQuimica6 INT NOT NULL,
       MateriaQuimica6 VARCHAR (45) NOT NULL,
       ClaveQuimica6 VARCHAR (45) NOT NULL,
       CredistosQuimica6 INT NOT NULL,
       PRIMARY KEY (IdCarreraQuimica6))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Quimica 7mo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl7SemestreQuimica (
	   IdCarreraQuimica7 INT NOT NULL,
       MateriaQuimica7 VARCHAR (45) NOT NULL,
       ClaveQuimica7 VARCHAR (45) NOT NULL,
       CredistosQuimica7 INT NOT NULL,
       PRIMARY KEY (IdCarreraQuimica7))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Quimica 8vo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl8SemestreQuimica (
	   IdCarreraQuimica8 INT NOT NULL,
       MateriaQuimica8 VARCHAR (45) NOT NULL,
       ClaveQuimica8 VARCHAR (45) NOT NULL,
       CredistosQuimica8 INT NOT NULL,
       PRIMARY KEY (IdCarreraQuimica8))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Quimica 9no Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl9SemestreQuimica (
	   IdCarreraQuimica9 INT NOT NULL,
       MateriaQuimica9 VARCHAR (45) NOT NULL,
       ClaveQuimica9 VARCHAR (45) NOT NULL,
       CredistosQuimica9 INT NOT NULL,
       PRIMARY KEY (IdCarreraQuimica9))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de carreras TESCI
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblCarrerasTESCI (
      idCarrerasTESCI INT NOT NULL ,
      CarrerasTESCI VARCHAR (40) NOT NULL,
      PRIMARY KEY (idCarrerasTESCI))
      ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Tipos de Usuarios 
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblTiposUsuariosP (
      IdTipoUsuario INT NOT NULL,
      TipoUsuarioP VARCHAR (30) NOT NULL,
      PRIMARY KEY (IdTipoUsuario))
      ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Datos Personales Administrativos
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblDatospersonalesAdministrativos(
      NumeroContolPA INT NOT NULL,
      NombrePA VARCHAR (50) NOT NULL,
      ApPPA VARCHAR (50) NOT NULL,
      ApMPA VARCHAR (50) NOT NULL,
      FechaNaPA DATE NOT NULL,
      CorreoPersonalPA VARCHAR (60) NOT NULL,
      CorreoInstitucional VARCHAR (60) NOT NULL,
      PRIMARY KEY (NumeroContolPA))
      ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Datos Personales Maestros 
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblDatosPersonalesMaestros(
       NumeroControlPM INT NOT NULL,
       NombrePM VARCHAR (50) NOT NULL, 
       ApPPM VARCHAR (50) NOT NULL,
       ApMPM VARCHAR (50) NOT NULL,
       FechaNaPM DATE NOT NULL,
       IdCarreraPM INT NOT NULL,
       CorreoPersonalPM VARCHAR (60) NOT NULL,
       CorreoInstitucionalPM VARCHAR (60) NOT NULL,
       PRIMARY KEY (NumeroControlPM))
	   ENGINE =  InnoDB;
-- -------------------------------------------
-- Tabla de Grupos Sistemas  
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblGruposSistemas(
	   NombreGrupoSistemas VARCHAR (15) NOT NULL,
       SemestreGrupoSistemas INT NOT NULL,
       TurnoGrupoSistemas VARCHAR (15) NOT NULL,
       PRIMARY KEY (NombreGrupoSistemas))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Horarios Sistemas   
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblHorariosSistemas(
	   GrupoHorarioSistemas VARCHAR (15) NOT NULL,
       MaestrosHorarioSistemas VARCHAR (60) NOT NULL,
       ClaveHorarioSistemas VARCHAR (20)  NOT NULL,
       LunesHorarioSistemas VARCHAR (20) NOT NULL,
       MartesHorarioSistemas VARCHAR (20) NOT NULL,
       MiercolesHorarioSistemas VARCHAR (20) NOT NULL,
       JuevesHorarioSistemas VARCHAR (20) NOT NULL,
       ViernesHorarioSistemas VARCHAR (20) NOT NULL,
       HorasHorarioSistemas INT NOT NULL,
       PRIMARY KEY (GrupoHorarioSistemas))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Grupos TICS  
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblGruposTICS(
	   NombreGrupoTICS VARCHAR (15) NOT NULL,
       SemestreGrupoTICS INT NOT NULL,
       TurnoGrupoTICS VARCHAR (15) NOT NULL,
       PRIMARY KEY (NombreGrupoTICS))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Horarios TICS   
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblHorariosTICS(
	   GrupoHorarioTICS VARCHAR (15) NOT NULL,
       MaestrosHorarioTICS VARCHAR (60) NOT NULL,
       ClaveHorarioTICS VARCHAR (20)  NOT NULL,
       LunesHorarioTICS VARCHAR (20) NOT NULL,
       MartesHorarioTICS VARCHAR (20) NOT NULL,
       MiercolesHorarioTICS VARCHAR (20) NOT NULL,
       JuevesHorarioTICS VARCHAR (20) NOT NULL,
       ViernesHorarioTICS VARCHAR (20) NOT NULL,
       HorasHorarioTICS INT NOT NULL,
       PRIMARY KEY (GrupoHorarioTICS))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Grupos Industrial  
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblGruposIndustrial(
	   NombreGrupoIndustrial VARCHAR (15) NOT NULL,
       SemestreGrupoIndustrial INT NOT NULL,
       TurnoGrupoIndustrial VARCHAR (15) NOT NULL,
       PRIMARY KEY (NombreGrupoIndustrial))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Horarios Industrial   
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblHorariosIndustrial(
	   GrupoHorarioIndustrial VARCHAR (15) NOT NULL,
       MaestrosHorarioIndustrial VARCHAR (60) NOT NULL,
       ClaveHorarioIndustrial VARCHAR (20)  NOT NULL,
       LunesHorarioIndustrial VARCHAR (20) NOT NULL,
       MartesHorarioIndustrial VARCHAR (20) NOT NULL,
       MiercolesHorarioIndustrial VARCHAR (20) NOT NULL,
       JuevesHorarioIndustrial VARCHAR (20) NOT NULL,
       ViernesHorarioIndustrial VARCHAR (20) NOT NULL,
       HorasHorarioIndustrial INT NOT NULL,
       PRIMARY KEY (GrupoHorarioIndustrial))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Grupos Contador Publico  
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblGruposContadorPublico(
	   NombreGrupoContadorPublico VARCHAR (15) NOT NULL,
       SemestreGrupoContadorPublico INT NOT NULL,
       TurnoGrupoContadorPublico VARCHAR (15) NOT NULL,
       PRIMARY KEY (NombreGrupoContadorPublico))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Horarios Contador Publico   
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblHorariosContadorPublico(
	   GrupoHorarioContadorPublico VARCHAR (15) NOT NULL,
       MaestrosHorarioContadorPublico VARCHAR (60) NOT NULL,
       ClaveHorarioContadorPublico VARCHAR (20)  NOT NULL,
       LunesHorarioContadorPublico VARCHAR (20) NOT NULL,
       MartesHorarioContadorPublico VARCHAR (20) NOT NULL,
       MiercolesHorarioContadorPublico VARCHAR (20) NOT NULL,
       JuevesHorarioContadorPublico VARCHAR (20) NOT NULL,
       ViernesHorarioContadorPublico VARCHAR (20) NOT NULL,
       HorasHorarioContadorPublico INT NOT NULL,
       PRIMARY KEY (GrupoHorarioContadorPublico))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Grupos Ing Administracion  
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblGruposIngAdministracion(
	   NombreGrupoIngAdministracion VARCHAR (15) NOT NULL,
       SemestreGrupoIngAdministracion INT NOT NULL,
       TurnoGrupoIngAdministracion VARCHAR (15) NOT NULL,
       PRIMARY KEY (NombreGrupoIngAdministracion))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Horarios Ing Administracion   
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblHorariosIngAdministracion(
	   GrupoHorarioIngAdministracion VARCHAR (15) NOT NULL,
       MaestrosHorarioIngAdministracion VARCHAR (60) NOT NULL,
       ClaveHorarioIngAdministracion VARCHAR (20)  NOT NULL,
       LunesHorarioIngAdministracion VARCHAR (20) NOT NULL,
       MartesHorarioIngAdministracion VARCHAR (20) NOT NULL,
       MiercolesHorarioIngAdministracion VARCHAR (20) NOT NULL,
       JuevesHorarioIngAdministracion VARCHAR (20) NOT NULL,
       ViernesHorarioIngAdministracion VARCHAR (20) NOT NULL,
       HorasHorarioIngAdministracion INT NOT NULL,
       PRIMARY KEY (GrupoHorarioIngAdministracion))
       ENGINE = InnoDB;

-- -------------------------------------------
-- Tabla de Grupos Logistica  
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblGruposLogistica(
	   NombreGrupoLogistica VARCHAR (15) NOT NULL,
       SemestreGrupoLogistica INT NOT NULL,
       TurnoGrupoLogistica VARCHAR (15) NOT NULL,
       PRIMARY KEY (NombreGrupoLogistica))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Horarios Logistica   
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblHorariosLogistica(
	   GrupoHorarioLogistica VARCHAR (15) NOT NULL,
       MaestrosHorarioLogistica VARCHAR (60) NOT NULL,
       ClaveHorarioLogistica VARCHAR (20)  NOT NULL,
       LunesHorarioLogistica VARCHAR (20) NOT NULL,
       MartesHorarioLogistica VARCHAR (20) NOT NULL,
       MiercolesHorarioLogistica VARCHAR (20) NOT NULL,
       JuevesHorarioLogistica VARCHAR (20) NOT NULL,
       ViernesHorarioLogistica VARCHAR (20) NOT NULL,
       HorasHorarioLogistica INT NOT NULL,
       PRIMARY KEY (GrupoHorarioLogistica))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Grupos Mecatronica  
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblGruposMecatronica(
	   NombreGrupoMecatronica VARCHAR (15) NOT NULL,
       SemestreGrupoMecatronica INT NOT NULL,
       TurnoGrupoMecatronica VARCHAR (15) NOT NULL,
       PRIMARY KEY (NombreGrupoMecatronica))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Horarios Mecatronica   
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblHorariosMecatronica(
	   GrupoHorarioMecatronica VARCHAR (15) NOT NULL,
       MaestrosHorarioMecatronica VARCHAR (60) NOT NULL,
       ClaveHorarioMecatronica VARCHAR (20)  NOT NULL,
       LunesHorarioMecatronica VARCHAR (20) NOT NULL,
       MartesHorarioMecatronica VARCHAR (20) NOT NULL,
       MiercolesHorarioMecatronica VARCHAR (20) NOT NULL,
       JuevesHorarioMecatronica VARCHAR (20) NOT NULL,
       ViernesHorarioMecatronica VARCHAR (20) NOT NULL,
       HorasHorarioMecatronica INT NOT NULL,
       PRIMARY KEY (GrupoHorarioMecatronica))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Grupos Quimica  
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblGruposQuimica(
	   NombreGrupoQuimica VARCHAR (15) NOT NULL,
       SemestreGrupoQuimica INT NOT NULL,
       TurnoGrupoQuimica VARCHAR (15) NOT NULL,
       PRIMARY KEY (NombreGrupoQuimica))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Horarios Quimica   
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblHorariosQuimica(
	   GrupoHorarioQuimica VARCHAR (15) NOT NULL,
       MaestrosHorarioQuimica VARCHAR (60) NOT NULL,
       ClaveHorarioQuimica VARCHAR (20)  NOT NULL,
       LunesHorarioQuimica VARCHAR (20) NOT NULL,
       MartesHorarioQuimica VARCHAR (20) NOT NULL,
       MiercolesHorarioQuimica VARCHAR (20) NOT NULL,
       JuevesHorarioQuimica VARCHAR (20) NOT NULL,
       ViernesHorarioQuimica VARCHAR (20) NOT NULL,
       HorasHorarioQuimica INT NOT NULL,
       PRIMARY KEY (GrupoHorarioQuimica))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de para generar carga horaria irregualares 
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblCargaHorariaIrregulares(
	   NumeroControlIrregulares INT NOT NULL,
       IdCarreraIrre INT NOT NULL, 
       ClaveIrre VARCHAR (20) NOT NULL,
       MateriaIrre VARCHAR (60) NOT NULL,
       CreditosIrre INT NOT NULL,
       LunesIrre VARCHAR (15) NOT NULL,
       MartesIrre VARCHAR (15) NOT NULL,
       MiercolesIrre VARCHAR (15) NOT NULL, 
       JuevesIrre VARCHAR (15) NOT NULL,
       ViernesIrre VARCHAR (15) NOT NULL,
       PRIMARY KEY (NumeroControlIrregulares))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de para boleta de ingles de todos los alumnos 
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblBoletaIngles (
       NoControlBoletaIngles INT NOT NULL,
       NombreBoletaIngles VARCHAR (65) NOT NULL,
	   FechaBoletaIngles DATE NOT NULL,
       PeriodoBoletaIngles VARCHAR (15) NOT NULL,
       IdiomaBoletaIngles VARCHAR (15) NOT NULL,
       FolioBoletaIngles VARCHAR (25) NOT NULL,
       IdcarreraBoletaIngles INT NOT NULL,
       NivelCursadoBoletaIngles VARCHAR (20) NOT NULL,
       EstatusBoletaIngles INT NOT NULL,
       PRIMARY KEY (NoControlBoletaIngles))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de para estatus de ingles de todos los alumnos 
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblEstatusIngles(
	   IdEstatusIngles INT NOT NULL, 
       EstatusIngles VARCHAR (20) NOT NULL,
       PRIMARY KEY(IdEstatusIngles))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de cargas academicas de alumnos de Sistemas 
-- SOLO DATOS PERSONALES
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblCargasSistemasDatosPersonales(
      NoControlCargaSistemas INT NOT NULL, 
      NombreCaragaSistemas VARCHAR (60) NOT NULL,
      IdCarreraCargaSistemas INT NOT NULL,
      ReticulaCargaSistemas INT NOT NULL,
      PeriodoCargaSistemas VARCHAR (10) NOT NULL,
      PRIMARY KEY(NoControlCargaSistemas))
      ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de cargas academicas de alumnos de Sistemas
-- SOLO MATERIAS DE CARGAS ACADEMICAS 
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblCargasMateriasSistemas(
	  NoControlCargaMateriaSistemas INT NOT NULL,
      ClaveMateriaCargaSistemas VARCHAR (45) NOT NULL,
      MateriaCargaSistemas VARCHAR (60) NOT NULL,
      CreditosCargaSistemas INT NOT NULL,
      GrupoCargaSistemas VARCHAR (20) NOT NULL,
      PRIMARY KEY (NoControlCargaMateriaSistemas))
      ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de cargas academicas de alumnos de TICS 
-- SOLO DATOS PERSONALES
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblCargasTICSDatosPersonales(
      NoControlCargaTICS INT NOT NULL, 
      NombreCaragaTICS VARCHAR (60) NOT NULL,
      IdCarreraCargaTICS INT NOT NULL,
      ReticulaCargaTICS INT NOT NULL,
      PeriodoCargaTICS VARCHAR (10) NOT NULL,
      PRIMARY KEY(NoControlCargaTICS))
      ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de cargas academicas de alumnos de TICS
-- SOLO MATERIAS DE CARGAS ACADEMICAS 
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblCargasMateriasTICS(
	  NoControlCargaMateriaTICS INT NOT NULL,
      ClaveMateriaCargaTICS VARCHAR (45) NOT NULL,
      MateriaCargaTICS VARCHAR (60) NOT NULL,
      CreditosCargaTICS INT NOT NULL,
      GrupoCargaTICS VARCHAR (20) NOT NULL,
      PRIMARY KEY (NoControlCargaMateriaTICS))
      ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de cargas academicas de alumnos de Industrial 
-- SOLO DATOS PERSONALES
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblCargasIndustrialDatosPersonales(
      NoControlCargaIndustrial INT NOT NULL, 
      NombreCaragaIndustrial VARCHAR (60) NOT NULL,
      IdCarreraCargaIndustrial INT NOT NULL,
      ReticulaCargaIndustrial INT NOT NULL,
      PeriodoCargaIndustrial VARCHAR (10) NOT NULL,
      PRIMARY KEY(NoControlCargaIndustrial))
      ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de cargas academicas de alumnos de Industrial
-- SOLO MATERIAS DE CARGAS ACADEMICAS 
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblCargasMateriasIndustrial(
	  NoControlCargaMateriaIndustrial INT NOT NULL,
      ClaveMateriaCargaIndustrial VARCHAR (45) NOT NULL,
      MateriaCargaIndustrial VARCHAR (60) NOT NULL, 
      CreditosCargaIndustrial INT NOT NULL,
      GrupoCargaIndustrial VARCHAR (20) NOT NULL,
      PRIMARY KEY (NoControlCargaMateriaIndustrial))
      ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de cargas academicas de alumnos de Contador Publico 
-- SOLO DATOS PERSONALES
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblCargasContadorPublicoDatosPersonales(
      NoControlCargaContadorPublico INT NOT NULL, 
      NombreCaragaContadorPublico VARCHAR (60) NOT NULL,
      IdCarreraCargaContadorPublico INT NOT NULL,
      ReticulaCargaContadorPublico INT NOT NULL,
      PeriodoCargaContadorPublico VARCHAR (10) NOT NULL,
      PRIMARY KEY(NoControlCargaContadorPublico))
      ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de cargas academicas de alumnos de Contador Publico
-- SOLO MATERIAS DE CARGAS ACADEMICAS 
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblCargasMateriasContadorPublico(
	  NoControlCargaMateriaContadorPublico INT NOT NULL,
      ClaveMateriaCargaContadorPublico VARCHAR (45) NOT NULL,
      MateriaCargaContadorPublico VARCHAR (60) NOT NULL, 
      CreditosCargaContadorPublico INT NOT NULL,
      GrupoCargaContadorPublico VARCHAR (20) NOT NULL,
      PRIMARY KEY (NoControlCargaMateriaContadorPublico))
      ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de cargas academicas de alumnos de Ing Administracion 
-- SOLO DATOS PERSONALES
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblCargasIngAdministracionDatosPersonales(
      NoControlCargaIngAdministracion INT NOT NULL, 
      NombreCaragaIngAdministracion VARCHAR (60) NOT NULL,
      IdCarreraCargaIngAdministracion INT NOT NULL,
      ReticulaCargaIngAdministracion INT NOT NULL,
      PeriodoCargaIngAdministracion VARCHAR (10) NOT NULL,
      PRIMARY KEY(NoControlCargaIngAdministracion))
      ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de cargas academicas de alumnos de Ing Administracion
-- SOLO MATERIAS DE CARGAS ACADEMICAS 
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblCargasMateriasIngAdministracion(
	  NoControlCargaMateriaIngAdministracion INT NOT NULL,
      ClaveMateriaCargaIngAdministracion VARCHAR (45) NOT NULL,
      MateriaCargaIngAdministracion VARCHAR (60) NOT NULL, 
      CreditosCargaIngAdministracion INT NOT NULL,
      GrupoCargaIngAdministracion VARCHAR (20) NOT NULL,
      PRIMARY KEY (NoControlCargaMateriaIngAdministracion))
      ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de cargas academicas de alumnos de Mecatronica 
-- SOLO DATOS PERSONALES
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblCargasMecatronicaDatosPersonales(
      NoControlCargaMecatronica INT NOT NULL, 
      NombreCaragaMecatronica VARCHAR (60) NOT NULL,
      IdCarreraCargaMecatronica INT NOT NULL,
      ReticulaCargaMecatronica INT NOT NULL,
      PeriodoCargaMecatronica VARCHAR (10) NOT NULL,
      PRIMARY KEY(NoControlCargaMecatronica))
      ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de cargas academicas de alumnos de Mecatronica
-- SOLO MATERIAS DE CARGAS ACADEMICAS 
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblCargasMateriasMecatronica(
	  NoControlCargaMateriaMecatronica INT NOT NULL,
      ClaveMateriaCargaMecatronica VARCHAR (45) NOT NULL,
      MateriaCargaMecatronica VARCHAR (60) NOT NULL, 
      CreditosCargaMecatronica INT NOT NULL,
      GrupoCargaMecatronica VARCHAR (20) NOT NULL,
      PRIMARY KEY (NoControlCargaMateriaMecatronica))
      ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de cargas academicas de alumnos de Mecatronica 
-- SOLO DATOS PERSONALES
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblCargasMecatronicaDatosPersonales(
      NoControlCargaMecatronica INT NOT NULL, 
      NombreCaragaMecatronica VARCHAR (60) NOT NULL,
      IdCarreraCargaMecatronica INT NOT NULL,
      ReticulaCargaMecatronica INT NOT NULL,
      PeriodoCargaMecatronica VARCHAR (10) NOT NULL,
      PRIMARY KEY(NoControlCargaMecatronica))
      ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de cargas academicas de alumnos de Mecatronica
-- SOLO MATERIAS DE CARGAS ACADEMICAS 
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblCargasMateriasMecatronica(
	  NoControlCargaMateriaMecatronica INT NOT NULL,
      ClaveMateriaCargaMecatronica VARCHAR (45) NOT NULL,
      MateriaCargaMecatronica VARCHAR (60) NOT NULL, 
      CreditosCargaMecatronica INT NOT NULL,
      GrupoCargaMecatronica VARCHAR (20) NOT NULL,
      PRIMARY KEY (NoControlCargaMateriaMecatronica))
      ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de cargas academicas de alumnos de Mecatronica 
-- SOLO DATOS PERSONALES
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblCargasMecatronicaDatosPersonales(
      NoControlCargaMecatronica INT NOT NULL, 
      NombreCaragaMecatronica VARCHAR (60) NOT NULL,
      IdCarreraCargaMecatronica INT NOT NULL,
      ReticulaCargaMecatronica INT NOT NULL,
      PeriodoCargaMecatronica VARCHAR (10) NOT NULL,
      PRIMARY KEY(NoControlCargaMecatronica))
      ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de cargas academicas de alumnos de Mecatronica
-- SOLO MATERIAS DE CARGAS ACADEMICAS 
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblCargasMateriasMecatronica(
	  NoControlCargaMateriaMecatronica INT NOT NULL,
      ClaveMateriaCargaMecatronica VARCHAR (45) NOT NULL,
      MateriaCargaMecatronica VARCHAR (60) NOT NULL, 
      CreditosCargaMecatronica INT NOT NULL,
      GrupoCargaMecatronica VARCHAR (20) NOT NULL,
      PRIMARY KEY (NoControlCargaMateriaMecatronica))
      ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de cargas academicas de alumnos de Quimica 
-- SOLO DATOS PERSONALES
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblCargasMecatronicaDatosPersonales(
      NoControlCargaQuimica INT NOT NULL, 
      NombreCaragaQuimica VARCHAR (60) NOT NULL,
      IdCarreraCargaQuimica INT NOT NULL,
      ReticulaCargaQuimica INT NOT NULL,
      PeriodoCargaQuimica VARCHAR (10) NOT NULL,
      PRIMARY KEY(NoControlCargaQuimica))
      ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de cargas academicas de alumnos de Quimica
-- SOLO MATERIAS DE CARGAS ACADEMICAS 
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblCargasMateriasQuimica(
	  NoControlCargaMateriaQuimica INT NOT NULL,
      ClaveMateriaCargaQuimica VARCHAR (45) NOT NULL,
      MateriaCargaQuimica VARCHAR (60) NOT NULL, 
      CreditosCargaQuimica INT NOT NULL,
      GrupoCargaQuimica VARCHAR (20) NOT NULL,
      PRIMARY KEY (NoControlCargaMateriaQuimica))
      ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Direcciones de todos los usuarios del Sistema 
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblDirecciones (
     NoControlDireccion INT NOT NULL,
     CalleNumeroDireccion VARCHAR (130) NOT NULL,
     ColoniaDireccion VARCHAR (130) NOT NULL,
     MunicipioDireccion VARCHAR (50) NOT NULL,
     CodigoPostal INT NOT NULL,
     EstadoDirecion VARCHAR (40) NOT NULL,
     PaisDireccion VARCHAR (40) NOT NULL,
     PRIMARY KEY (NoControlDireccion))
     ENGINE = InnoDB;