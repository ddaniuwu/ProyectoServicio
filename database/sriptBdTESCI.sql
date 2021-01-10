Llaves foraneas:
-- -------------------------------------------
-- N° de Tabla:1
-- Tabla de Control Alumnos 
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblControlUsuarios (
     NoControlPrincipal INT NOT NULL,
     NombrePrincipal VARCHAR (75) NOT NULL,
     PRIMARY KEY (NoControlPrincipal))
     ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de carreras TESCI
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblCarrerasTESCI (
      IdCarrerasTESCI INT NOT NULL ,
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
-- Tabla Estatus de inscripcion
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblEstatusInscripcion (
       IdAlumnos INT NOT NULL,
       EstatusAlumnos VARCHAR (15) NOT NULL,
       PRIMARY KEY  (IdAlumnos))
	   ENGINE = InnoDB;
-- Tabla de ususarios 
CREATE TABLE IF NOT EXISTS tblEstatusAlumnos (
       IdInscripcion INT NOT NULL,
       EstatusInscripcion VARCHAR (15) NOT NULL,
       PRIMARY KEY  (IdIncripcion))
	   ENGINE = InnoDB;

-- -------------------------------------------
-- Tabla de Grupos
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblGrupos (
       NombreGrupo VARCHAR (15) NOT NULL,
       IdCarreraGrupo INT NOT NULL,
       SemestreGrupo INT NOT NULL,
       TurnoGrupo VARCHAR (15) NOT NULL,
       PRIMARY KEY (NombreGrupo))
       ENGINE = InnoDB;