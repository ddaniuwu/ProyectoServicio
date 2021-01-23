CREATE DATABASE IF NOT EXISTS bdTESCI ;
USE bdTESCI ;
-- -------------------------------------------
-- N° de Tabla:1
-- Tabla de Control Alumnos 
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblControlUsuarios (
     NoControlPrincipal INT NOT NULL,
     NombrePrincipal VARCHAR (75) NOT NULL,
	 Cont1U VARCHAR (30) NOT NULL,
     Cont2U VARCHAR (30) NOT NULL,
     TipoUsuarioUsu INT NOT NULL,
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
       PRIMARY KEY  (IdInscripcion))
	   ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Grupos
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblGrupos(
       NombreGrupo VARCHAR (15) NOT NULL,
       IdCarreraGrupo INT NOT NULL,
       SemestreGrupo INT NOT NULL,
       TurnoGrupo VARCHAR (15) NOT NULL,
       PRIMARY KEY (NombreGrupo))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Horarios Sistemas   
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblHorariosSistemas(
	   GrupoHorarioSistemas VARCHAR (15) NOT NULL,
       NCMaestrosHorarioSistemas INT NOT NULL,
       ClaveHorarioSistemas VARCHAR (20)  NOT NULL,
       LunesHorarioSistemas VARCHAR (20) NOT NULL,
       MartesHorarioSistemas VARCHAR (20) NOT NULL,
       MiercolesHorarioSistemas VARCHAR (20) NOT NULL,
       JuevesHorarioSistemas VARCHAR (20) NOT NULL,
       ViernesHorarioSistemas VARCHAR (20) NOT NULL,
       HorasHorarioSistemas INT NOT NULL,
       PRIMARY KEY (GrupoHorarioSistemas),
       
      INDEX fkTblGruposTblHorariosSistemas_idx (GrupoHorarioSistemas ASC),
	  CONSTRAINT fkTblGruposTblHorariosSistemas
	  FOREIGN KEY (GrupoHorarioSistemas)
	  REFERENCES tblGrupos (NombreGrupo))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Horarios TICS   
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblHorariosTICS(
	   GrupoHorarioTICS VARCHAR (15) NOT NULL,
       NCMaestrosHorarioTICS INT NOT NULL,
       ClaveHorarioTICS VARCHAR (20)  NOT NULL,
       LunesHorarioTICS VARCHAR (20) NOT NULL,
       MartesHorarioTICS VARCHAR (20) NOT NULL,
       MiercolesHorarioTICS VARCHAR (20) NOT NULL,
       JuevesHorarioTICS VARCHAR (20) NOT NULL,
       ViernesHorarioTICS VARCHAR (20) NOT NULL,
       HorasHorarioTICS INT NOT NULL,
       PRIMARY KEY (GrupoHorarioTICS),
       
      INDEX fkTblGruposTblHorariosTICS_idx (GrupoHorarioTICS ASC),
	  CONSTRAINT fkTblGruposTblHorariosTICS
	  FOREIGN KEY (GrupoHorarioTICS)
	  REFERENCES tblGrupos (NombreGrupo))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Horarios Industrial   
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblHorariosIndustrial(
	   GrupoHorarioIndustrial VARCHAR (15) NOT NULL,
       NCMaestrosHorarioIndustrial INT NOT NULL,
       ClaveHorarioIndustrial VARCHAR (20)  NOT NULL,
       LunesHorarioIndustrial VARCHAR (20) NOT NULL,
       MartesHorarioIndustrial VARCHAR (20) NOT NULL,
       MiercolesHorarioIndustrial VARCHAR (20) NOT NULL,
       JuevesHorarioIndustrial VARCHAR (20) NOT NULL,
       ViernesHorarioIndustrial VARCHAR (20) NOT NULL,
       HorasHorarioIndustrial INT NOT NULL,
       PRIMARY KEY (GrupoHorarioIndustrial),
       
      INDEX fkTblGruposTblHorariosIndustrial_idx (GrupoHorarioIndustrial ASC),
	  CONSTRAINT fkTblGruposTblHorariosIndustrial
	  FOREIGN KEY (GrupoHorarioIndustrial)
	  REFERENCES tblGrupos (NombreGrupo))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Horarios Contador Publico   
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblHorariosContadorPublico(
	   GrupoHorarioContadorPublico VARCHAR (15) NOT NULL,
       NCMaestrosHorarioContadorPublico INT NOT NULL,
       ClaveHorarioContadorPublico VARCHAR (20)  NOT NULL,
       LunesHorarioContadorPublico VARCHAR (20) NOT NULL,
       MartesHorarioContadorPublico VARCHAR (20) NOT NULL,
       MiercolesHorarioContadorPublico VARCHAR (20) NOT NULL,
       JuevesHorarioContadorPublico VARCHAR (20) NOT NULL,
       ViernesHorarioContadorPublico VARCHAR (20) NOT NULL,
       HorasHorarioContadorPublico INT NOT NULL,
       PRIMARY KEY (GrupoHorarioContadorPublico),
       
      INDEX fkTblGruposTblHorariosContadorPublico_idx (GrupoHorarioContadorPublico ASC),
	  CONSTRAINT fkTblGruposTblHorariosContadorPublico
	  FOREIGN KEY (GrupoHorarioContadorPublico)
	  REFERENCES tblGrupos (NombreGrupo))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Horarios Ing Administracion   
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblHorariosIngAdministracion(
	   GrupoHorarioIngAdministracion VARCHAR (15) NOT NULL,
       NCMaestrosHorarioIngAdministracion INT NOT NULL,
       ClaveHorarioIngAdministracion VARCHAR (20)  NOT NULL,
       LunesHorarioIngAdministracion VARCHAR (20) NOT NULL,
       MartesHorarioIngAdministracion VARCHAR (20) NOT NULL,
       MiercolesHorarioIngAdministracion VARCHAR (20) NOT NULL,
       JuevesHorarioIngAdministracion VARCHAR (20) NOT NULL,
       ViernesHorarioIngAdministracion VARCHAR (20) NOT NULL,
       HorasHorarioIngAdministracion INT NOT NULL,
       PRIMARY KEY (GrupoHorarioIngAdministracion),
       
      INDEX fkTblGruposTblHorariosIngAdministracion_idx (GrupoHorarioIngAdministracion ASC),
	  CONSTRAINT fkTblGruposTblHorariosIngAdministracion
	  FOREIGN KEY (GrupoHorarioIngAdministracion)
	  REFERENCES tblGrupos (NombreGrupo))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Horarios Logistica   
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblHorariosLogistica(
	   GrupoHorarioLogistica VARCHAR (15) NOT NULL,
       NCMaestrosHorarioLogistica INT NOT NULL,
       ClaveHorarioLogistica VARCHAR (20)  NOT NULL,
       LunesHorarioLogistica VARCHAR (20) NOT NULL,
       MartesHorarioLogistica VARCHAR (20) NOT NULL,
       MiercolesHorarioLogistica VARCHAR (20) NOT NULL,
       JuevesHorarioLogistica VARCHAR (20) NOT NULL,
       ViernesHorarioLogistica VARCHAR (20) NOT NULL,
       HorasHorarioLogistica INT NOT NULL,
       PRIMARY KEY (GrupoHorarioLogistica),
       
      INDEX fkTblGruposTblHorariosLogistica_idx (GrupoHorarioLogistica ASC),
	  CONSTRAINT fkTblGruposTblHorariosLogistica
	  FOREIGN KEY (GrupoHorarioLogistica)
	  REFERENCES tblGrupos (NombreGrupo))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Horarios Mecatronica   
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblHorariosMecatronica(
	   GrupoHorarioMecatronica VARCHAR (15) NOT NULL,
       NCMaestrosHorarioMecatronica INT NOT NULL,
       ClaveHorarioMecatronica VARCHAR (20)  NOT NULL,
       LunesHorarioMecatronica VARCHAR (20) NOT NULL,
       MartesHorarioMecatronica VARCHAR (20) NOT NULL,
       MiercolesHorarioMecatronica VARCHAR (20) NOT NULL,
       JuevesHorarioMecatronica VARCHAR (20) NOT NULL,
       ViernesHorarioMecatronica VARCHAR (20) NOT NULL,
       HorasHorarioMecatronica INT NOT NULL,
       PRIMARY KEY (GrupoHorarioMecatronica),
       
      INDEX fkTblGruposTblHorariosMecatronica_idx (GrupoHorarioMecatronica ASC),
	  CONSTRAINT fkTblGruposTblHorariosMecatronica
	  FOREIGN KEY (GrupoHorarioMecatronica)
	  REFERENCES tblGrupos (NombreGrupo))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Horarios Quimica   
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblHorariosQuimica(
	   GrupoHorarioQuimica VARCHAR (15) NOT NULL,
       NCMaestrosHorarioQuimica INT NOT NULL,
       ClaveHorarioQuimica VARCHAR (20)  NOT NULL,
       LunesHorarioQuimica VARCHAR (20) NOT NULL,
       MartesHorarioQuimica VARCHAR (20) NOT NULL,
       MiercolesHorarioQuimica VARCHAR (20) NOT NULL,
       JuevesHorarioQuimica VARCHAR (20) NOT NULL,
       ViernesHorarioQuimica VARCHAR (20) NOT NULL,
       HorasHorarioQuimica INT NOT NULL,
       PRIMARY KEY (GrupoHorarioQuimica),
       
      INDEX fkTblGruposTblHorariosQuimica_idx (GrupoHorarioQuimica ASC),
	  CONSTRAINT fkTblGruposTblHorariosQuimica
	  FOREIGN KEY (GrupoHorarioQuimica)
	  REFERENCES tblGrupos (NombreGrupo))
       ENGINE = InnoDB;
       
       
       
-- Tabla de ususarios (ELIMINADA)
-- ------------------------------------------
--CREATE TABLE IF NOT EXISTS tblUsuarios (
--      NumeroControlU INT NOT NULL,
--      NombreU VARCHAR (60) NOT NULL,
--      Cont1U VARCHAR (30) NOT NULL,
--      Cont2U VARCHAR (30) NOT NULL,
--      TipoUsuarioUsu INT NOT NULL,
--      PRIMARY KEY (NumeroControlU),
--	  INDEX fkTblControlUsuariosTblUsuarios_idx (NumeroControlU ASC),
--	  CONSTRAINT fkTblControlUsuariosTblUsuarios
--	  FOREIGN KEY (NumeroControlU)
--	  REFERENCES tblControlUsuarios (NoControlPrincipal))
--    ENGINE = InnoDB;

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
      IdCarreraAlum INT NOT NULL,
      GrupoAlum VARCHAR (15) NOT NULL,
      TipoUsuarioAlumnos INT NOT NULL,
      PRIMARY KEY (NumeroControlDPAlum),
      
	  INDEX fkTblControlUsuariosTblDatosPersonalesAlumnos_idx (NumeroControlDPAlum ASC),
	  CONSTRAINT fkTblControlUsuariosTblDatosPersonalesAlumnos
	  FOREIGN KEY (NumeroControlDPAlum)
	  REFERENCES tblControlUsuarios (NoControlPrincipal),
      
      INDEX fkTblGruposTblDatosPersonalesAlumnos_idx (GrupoAlum ASC),
	  CONSTRAINT fkTblGruposTblDatosPersonalesAlumnos
	  FOREIGN KEY (GrupoAlum)
	  REFERENCES tblGrupos (NombreGrupo),
      
	  INDEX fkTblCarrerasTESCITblDatosPersonalesAlumnos_idx (IdCarreraAlum ASC),
	  CONSTRAINT fkTblCarrerasTESCITblDatosPersonalesAlumnos
	  FOREIGN KEY (IdCarreraAlum )
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI ),
      
	  INDEX fkTblTiposUsuariosPTblDatosPersonalesAlumnos_idx (TipoUsuarioAlumnos ASC),
	  CONSTRAINT fkTblTiposUsuariosPTblDatosPersonalesAlumnos
	  FOREIGN KEY (TipoUsuarioAlumnos )
	  REFERENCES tblTiposUsuariosP (IdTipoUsuario))
	  ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Datos del Contribuyente
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblDatosContribuyente (
	   LineaCapturaDContribuyente INT NOT NULL,
       NumeroControlDC INT NOT NULL,
       RFC VARCHAR (45) NOT NULL,
       CURP VARCHAR (45) NOT NULL,
       ReferenciaDC VARCHAR (85) NOT NULL,
       NombreComletoDC VARCHAR (60) NOT NULL,
       Observaciones VARCHAR (150) , 
       PRIMARY KEY (LineaCapturaDContribuyente),             
       
	   INDEX fkTblControlUsuariosTblDatosContribuyentes_idx (NumeroControlDC ASC),
	   CONSTRAINT fkTblControlUsuariosTblDatosContribuyentes
	   FOREIGN KEY (NumeroControlDC)
	   REFERENCES tblControlUsuarios (NoControlPrincipal))
	   ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Datos de la Contrubucion 
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblDatosContribucion (
	   LineaCapturaDContribucion INT NOT NULL,
       ClaveDC VARCHAR (35) NOT NULL,
       DescripcionDC VARCHAR (130) NOT NULL,
       CantidadDC FLOAT NOT NULL,
       TarifaTasaDC FLOAT NOT NULL,
       SubtotalDC FLOAT NOT NULL,
       TotalDC FLOAT NOT NULL,
       PRIMARY KEY (LineaCapturaDContribucion),
       
	   INDEX fkTblDatosContribuyenteTblDatosContribucion_idx (LineaCapturaDContribucion ASC),
	   CONSTRAINT fkTblDatosContribuyenteTblDatosContribucion
	   FOREIGN KEY (LineaCapturaDContribucion)
	   REFERENCES tblDatosContribuyente (LineaCapturaDContribuyente))
	   ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Sistemas Computacionesles
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblSistemas (
       NumeroControlSis INT NOT NULL,
       TurnoSis VARCHAR (20) NOT NULL,
       EstatusAlumnoSis INT NOT NULL,
       EstatusInscripcionSis INT NOT NULL,
       IdCarreraSis INT NOT NULL,
       GrupoSis VARCHAR (25) NOT NULL,
       PRIMARY KEY (NumeroControlSis),
       
	   INDEX fkTblControlUsuariosTblSistemas_idx (NumeroControlSis ASC),
	   CONSTRAINT fkTblControlUsuariosTblSistemas
	   FOREIGN KEY (NumeroControlSis)
	   REFERENCES tblControlUsuarios (NoControlPrincipal),
       
	   INDEX fkTblEstatusAlumnosTblSistemas_idx (EstatusAlumnoSis ASC),
	   CONSTRAINT fkTblEstatusAlumnosTblSistemas
	   FOREIGN KEY (EstatusAlumnoSis)
	   REFERENCES tblEstatusAlumnos  (IdInscripcion),
       
	  INDEX fkTblCarrerasTESCITblSistemas_idx (IdCarreraSis ASC),
	  CONSTRAINT fkTblCarrerasTESCITblSistemas
	  FOREIGN KEY (IdCarreraSis )
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI ),
       
	  INDEX fkTblGruposTblSistemas_idx (GrupoSis ASC),
	  CONSTRAINT fkTblGruposTblSistemas
	  FOREIGN KEY (GrupoSis)
	  REFERENCES tblGrupos (NombreGrupo))
       ENGINE = InnoDB; 
-- ---------------------
-- Tabla Ingieneria en Sistemas Computacionesles 1er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl1SemestreSis (
	   IdCarreraSis1 INT NOT NULL,
       MateriaSis1 VARCHAR (45) NOT NULL,
       ClaveSis1 VARCHAR (45) NOT NULL,
       CredistosSis1 INT NOT NULL,
       PRIMARY KEY (IdCarreraSis1),
       
	  INDEX fkTblCarrerasTESCITbl1SemestreSis_idx (IdCarreraSis1 ASC),
	  CONSTRAINT fkTblCarrerasTESCITbl1SemestreSis
	  FOREIGN KEY (IdCarreraSis1)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Sistemas Computacionesles 2do Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl2SemestreSis (
	   IdCarreraSis2 INT NOT NULL,
       MateriaSis2 VARCHAR (45) NOT NULL,
       ClaveSis2 VARCHAR (45) NOT NULL,
       CredistosSis2 INT NOT NULL,
       PRIMARY KEY (IdCarreraSis2),
       
	  INDEX fkTblCarrerasTESCITbl2SemestreSis_idx (IdCarreraSis2 ASC),
	  CONSTRAINT fkTblCarrerasTESCITbl2SemestreSis
	  FOREIGN KEY (IdCarreraSis2)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Sistemas Computacionesles 3er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl3SemestreSis (
	   IdCarreraSis3 INT NOT NULL,
       MateriaSis3 VARCHAR (45) NOT NULL,
       ClaveSis3 VARCHAR (45) NOT NULL,
       CredistosSis3 INT NOT NULL,
       PRIMARY KEY (IdCarreraSis3),

	  INDEX fkTblCarrerasTESCITbl3SemestreSis_idx (IdCarreraSis3 ASC),
	  CONSTRAINT fkTblCarrerasTESCITbl3SemestreSis
	  FOREIGN KEY (IdCarreraSis3)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Sistemas Computacionesles 4to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl4SemestreSis (
	   IdCarreraSis4 INT NOT NULL,
       MateriaSis4 VARCHAR (45) NOT NULL,
       ClaveSis4 VARCHAR (45) NOT NULL,
       CredistosSis4 INT NOT NULL,
       PRIMARY KEY (IdCarreraSis4),
       
	  INDEX fkTblCarrerasTESCITbl4SemestreSis_idx (IdCarreraSis4 ASC),
	  CONSTRAINT fkTblCarrerasTESCITbl4SemestreSis
	  FOREIGN KEY (IdCarreraSis4)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI ))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Sistemas Computacionesles 5to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl5SemestreSis (
	   IdCarreraSis5 INT NOT NULL,
       MateriaSis5 VARCHAR (45) NOT NULL,
       ClaveSis5 VARCHAR (45) NOT NULL,
       CredistosSis5 INT NOT NULL,
       PRIMARY KEY (IdCarreraSis5),
       
	  INDEX fkTblCarrerasTESCITbl5SemestreSis_idx (IdCarreraSis5 ASC),
	  CONSTRAINT fkTblCarrerasTESCITbl5SemestreSis
	  FOREIGN KEY (IdCarreraSis5 )
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI ))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Sistemas Computacionesles 6to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl6SemestreSis (
	   IdCarreraSis6 INT NOT NULL,
       MateriaSis6 VARCHAR (45) NOT NULL,
       ClaveSis6 VARCHAR (45) NOT NULL,
       CredistosSis6 INT NOT NULL,
       PRIMARY KEY (IdCarreraSis6),

	  INDEX fkTblCarrerasTESCITbl6SemestreSis_idx (IdCarreraSis6 ASC),
	  CONSTRAINT fkTblCarrerasTESCITbl6SemestreSis
	  FOREIGN KEY (IdCarreraSis6 )
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI ))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Sistemas Computacionesles 7mo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl7SemestreSis (
	   IdCarreraSis7 INT NOT NULL,
       MateriaSis7 VARCHAR (45) NOT NULL,
       ClaveSis7 VARCHAR (45) NOT NULL,
       CredistosSis7 INT NOT NULL,
       PRIMARY KEY (IdCarreraSis7),

	  INDEX fkTblCarrerasTESCITbl7SemestreSis_idx (IdCarreraSis7 ASC),
	  CONSTRAINT fkTblCarrerasTESCITbl7SemestreSis
	  FOREIGN KEY (IdCarreraSis7)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Sistemas Computacionesles 8vo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl8SemestreSis (
	   IdCarreraSis8 INT NOT NULL,
       MateriaSis8 VARCHAR (45) NOT NULL,
       ClaveSis8 VARCHAR (45) NOT NULL,
       CredistosSis8 INT NOT NULL,
       PRIMARY KEY (IdCarreraSis8),

	  INDEX fkTblCarrerasTESCITbl8SemestreSis_idx (IdCarreraSis8 ASC),
	  CONSTRAINT fkTblCarrerasTESCITbl8SemestreSis
	  FOREIGN KEY (IdCarreraSis8)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Sistemas Computacionesles 9no Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl9SemestreSis (
	   IdCarreraSis9 INT NOT NULL,
       MateriaSis9 VARCHAR (45) NOT NULL,
       ClaveSis9 VARCHAR (45) NOT NULL,
       CredistosSis9 INT NOT NULL,
       PRIMARY KEY (IdCarreraSis9),
       
	  INDEX fkTblCarrerasTESCITbl9SemestreSis_idx (IdCarreraSis9 ASC),
	  CONSTRAINT fkTblCarrerasTESCITbl9SemestreSis
	  FOREIGN KEY (IdCarreraSis9)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en TICS
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblTICS (
	   NumeroControlTICS INT NOT NULL,
       TurnoTICS VARCHAR (20) NOT NULL,
       EstatusAlumnoTICS INT NOT NULL,
       EstatusInscripcionTICS INT NOT NULL,
	   IdCarreraTICS INT NOT NULL,
       GrupoTICS VARCHAR (25) NOT NULL,
       PRIMARY KEY (NumeroControlTICS),

	   INDEX fkTblControlUsuariosTblTICS_idx (NumeroControlTICS ASC),
	   CONSTRAINT fkTblControlUsuariosTblTICS
	   FOREIGN KEY (NumeroControlTICS)
	   REFERENCES tblControlUsuarios (NoControlPrincipal),
       
	   INDEX fkTblEstatusAlumnosTblTICS_idx (EstatusAlumnoTICS ASC),
	   CONSTRAINT fkTblEstatusAlumnosTblTICS
	   FOREIGN KEY (EstatusAlumnoTICS)
	   REFERENCES tblEstatusAlumnos  (IdInscripcion),
       
	  INDEX fkTblCarrerasTESCITblTICS_idx (IdCarreraTICS ASC),
	  CONSTRAINT fkTblCarrerasTESCITblTICS
	  FOREIGN KEY (IdCarreraTICS)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI),
       
	  INDEX fkTblGruposTblTICS_idx (GrupoTICS ASC),
	  CONSTRAINT fkTblGruposTblTICS
	  FOREIGN KEY (GrupoTICS)
	  REFERENCES tblGrupos (NombreGrupo))
       ENGINE = InnoDB;					
-- -------------------------------------------
-- Tabla Ingieneria en TICS 1er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl1SemestreTICS (
	   IdCarreraTICS1 INT NOT NULL,
       MateriaTICS1 VARCHAR (45) NOT NULL,
       ClaveTICS1 VARCHAR (45) NOT NULL,
       CredistosTICS1 INT NOT NULL,
       PRIMARY KEY (IdCarreraTICS1),
       
	  INDEX fkTblCarrerasTESCITbl1SemestreTICS_idx (IdCarreraTICS1 ASC),
	  CONSTRAINT fkTblCarrerasTESCITbl1SemestreTICS
	  FOREIGN KEY (IdCarreraTICS1)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en TICS 2do Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl2SemestreTICS (
	   IdCarreraTICS2 INT NOT NULL,
       MateriaTICS2 VARCHAR (45) NOT NULL,
       ClaveTICS2 VARCHAR (45) NOT NULL,
       CredistosTICS2 INT NOT NULL,
       PRIMARY KEY (IdCarreraTICS2),

	  INDEX fkTblCarrerasTESCITbl2SemestreTICS_idx (IdCarreraTICS2 ASC),
	  CONSTRAINT fkTblCarrerasTESCITbl2SemestreTICS
	  FOREIGN KEY (IdCarreraTICS2)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en TICS 3er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl3SemestreTICS (
	   IdCarreraTICS3 INT NOT NULL,
       MateriaTICS3 VARCHAR (45) NOT NULL,
       ClaveTICS3 VARCHAR (45) NOT NULL,
       CredistosTICS3 INT NOT NULL,
       PRIMARY KEY (IdCarreraTICS3),

	  INDEX fkTblCarrerasTESCITbl3SemestreTICS_idx (IdCarreraTICS3 ASC),
	  CONSTRAINT fkTblCarrerasTESCITbl3SemestreTICS
	  FOREIGN KEY (IdCarreraTICS3)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en TICS 4to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl4SemestreTICS (
	   IdCarreraTICS4 INT NOT NULL,
       MateriaTICS4 VARCHAR (45) NOT NULL,
       ClaveTICS4 VARCHAR (45) NOT NULL,
       CredistosTICS4 INT NOT NULL,
       PRIMARY KEY (IdCarreraTICS4),

	  INDEX fkTblCarrerasTESCITbl4SemestreTICS_idx (IdCarreraTICS4 ASC),
	  CONSTRAINT fkTblCarrerasTESCITbl4SemestreTICS
	  FOREIGN KEY (IdCarreraTICS4)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en TICS 5to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl5SemestreTICS (
	   IdCarreraTICS5 INT NOT NULL,
       MateriaTICS5 VARCHAR (45) NOT NULL,
       ClaveTICS5 VARCHAR (45) NOT NULL,
       CredistosTICS5 INT NOT NULL,
       PRIMARY KEY (IdCarreraTICS5),
       
	  INDEX fkTblCarrerasTESCITbl5SemestreTICS_idx (IdCarreraTICS5 ASC),
	  CONSTRAINT fkTblCarrerasTESCITbl5SemestreTICS
	  FOREIGN KEY (IdCarreraTICS5)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en TICS 6to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl6SemestreTICS (
	   IdCarreraTICS6 INT NOT NULL,
       MateriaTICS6 VARCHAR (45) NOT NULL,
       ClaveTICS6 VARCHAR (45) NOT NULL,
       CredistosTICS6 INT NOT NULL,
       PRIMARY KEY (IdCarreraTICS6),

	  INDEX fkTblCarrerasTESCITbl6SemestreTICS_idx (IdCarreraTICS6 ASC),
	  CONSTRAINT fkTblCarrerasTESCITbl6SemestreTICS
	  FOREIGN KEY (IdCarreraTICS6)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en TICS 7mo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl7SemestreTICS (
	   IdCarreraTICS7 INT NOT NULL,
       MateriaTICS7 VARCHAR (45) NOT NULL,
       ClaveTICS7 VARCHAR (45) NOT NULL,
       CredistosTICS7 INT NOT NULL,
       PRIMARY KEY (IdCarreraTICS7),
       
	  INDEX fkTblCarrerasTESCITbl7SemestreTICS_idx (IdCarreraTICS7 ASC),
	  CONSTRAINT fkTblCarrerasTESCITbl7SemestreTICS
	  FOREIGN KEY (IdCarreraTICS7)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en TICS 8vo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl8SemestreTICS (
	   IdCarreraTICS8 INT NOT NULL,
       MateriaTICS8 VARCHAR (45) NOT NULL,
       ClaveTICS8 VARCHAR (45) NOT NULL,
       CredistosTICS8 INT NOT NULL,
       PRIMARY KEY (IdCarreraTICS8),
       
	  INDEX fkTblCarrerasTESCITbl8SemestreTICS_idx (IdCarreraTICS8 ASC),
	  CONSTRAINT fkTblCarrerasTESCITbl8SemestreTICS
	  FOREIGN KEY (IdCarreraTICS8)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en TICS 9no Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl9SemestreTICS (
	   IdCarreraTICS9 INT NOT NULL,
       MateriaTICS9 VARCHAR (45) NOT NULL,
       ClaveTICS9 VARCHAR (45) NOT NULL,
       CredistosTICS9 INT NOT NULL,
       PRIMARY KEY (IdCarreraTICS9),

	  INDEX fkTblCarrerasTESCITbl9SemestreTICS_idx (IdCarreraTICS9 ASC),
	  CONSTRAINT fkTblCarrerasTESCITbl9SemestreTICS
	  FOREIGN KEY (IdCarreraTICS9)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Industrial
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblIndustrial (
	   NumeroControlIndustrial INT NOT NULL,
       TurnoIndustrial VARCHAR (20) NOT NULL,
       EstatusAlumnoIndustrial INT NOT NULL,
       EstatusInscripcionesIndustrial INT NOT NULL,
       IdCarreraIndustrial INT NOT NULL,
       GrupoIndustrial VARCHAR (25) NOT NULL,
       PRIMARY KEY (NumeroControlIndustrial),
       
	   INDEX fkTblControlUsuariosTblIndustrial_idx (NumeroControlIndustrial ASC),
	   CONSTRAINT fkTblControlUsuariosTblIndustrial
	   FOREIGN KEY (NumeroControlIndustrial)
	   REFERENCES tblControlUsuarios (NoControlPrincipal),
       
	   INDEX fkTblEstatusAlumnosTblIndustrial_idx (EstatusAlumnoIndustrial ASC),
	   CONSTRAINT fkTblEstatusAlumnosTblIndustrial
	   FOREIGN KEY (EstatusAlumnoIndustrial)
	   REFERENCES tblEstatusAlumnos  (IdInscripcion),
       
	  INDEX fkTblCarrerasTESCITblIndustrial_idx (IdCarreraIndustrial ASC),
	  CONSTRAINT fkTblCarrerasTESCITblIndustrial
	  FOREIGN KEY (IdCarreraIndustrial)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI),
       
	  INDEX fkTblGruposTblIndustrial_idx (GrupoIndustrial ASC),
	  CONSTRAINT fkTblGruposTblIndustrial
	  FOREIGN KEY (GrupoIndustrial)
	  REFERENCES tblGrupos (NombreGrupo))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Industrial 1er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl1SemestreIndustrial (
	   IdCarreraIndustrial1 INT NOT NULL,
       MateriaIndustrial1 VARCHAR (45) NOT NULL,
       ClaveIndustrial1 VARCHAR (45) NOT NULL,
       CredistosIndustrial1 INT NOT NULL,
       PRIMARY KEY (IdCarreraIndustrial1),

	  INDEX fkTblCarrerasTESCITblIndustrial1_idx (IdCarreraIndustrial1 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblIndustrial1
	  FOREIGN KEY (IdCarreraIndustrial1)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Industrial 2do Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl2SemestreIndustrial (
	   IdCarreraIndustrial2 INT NOT NULL,
       MateriaIndustrial2 VARCHAR (45) NOT NULL,
       ClaveIndustrial2 VARCHAR (45) NOT NULL,
       CredistosIndustrial2 INT NOT NULL,
       PRIMARY KEY (IdCarreraIndustrial2),

	  INDEX fkTblCarrerasTESCITblIndustrial2_idx (IdCarreraIndustrial2 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblIndustrial2
	  FOREIGN KEY (IdCarreraIndustrial2)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Industrial 3er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl3SemestreIndustrial (
	   IdCarreraIndustrial3 INT NOT NULL,
       MateriaIndustrial3 VARCHAR (45) NOT NULL,
       ClaveIndustrial3 VARCHAR (45) NOT NULL,
       CredistosIndustrial3 INT NOT NULL,
       PRIMARY KEY (IdCarreraIndustrial3),

	  INDEX fkTblCarrerasTESCITblIndustrial3_idx (IdCarreraIndustrial3 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblIndustrial3
	  FOREIGN KEY (IdCarreraIndustrial3)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Industrial 4to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl4SemestreIndustrial (
	   IdCarreraIndustrial4 INT NOT NULL,
       MateriaIndustrial4 VARCHAR (45) NOT NULL,
       ClaveIndustrial4 VARCHAR (45) NOT NULL,
       CredistosIndustrial4 INT NOT NULL,
       PRIMARY KEY (IdCarreraIndustrial4),

	  INDEX fkTblCarrerasTESCITblIndustrial4_idx (IdCarreraIndustrial4 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblIndustrial4
	  FOREIGN KEY (IdCarreraIndustrial4)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Industrial 5to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl5SemestreIndustrial (
	   IdCarreraIndustrial5 INT NOT NULL,
       MateriaIndustrial5 VARCHAR (45) NOT NULL,
       ClaveIndustrial5 VARCHAR (45) NOT NULL,
       CredistosIndustrial5 INT NOT NULL,
       PRIMARY KEY (IdCarreraIndustrial5),

	  INDEX fkTblCarrerasTESCITblIndustrial5_idx (IdCarreraIndustrial5 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblIndustrial5
	  FOREIGN KEY (IdCarreraIndustrial5)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Industrial 6to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl6SemestreIndustrial (
	   IdCarreraIndustrial6 INT NOT NULL,
       MateriaIndustrial6 VARCHAR (45) NOT NULL,
       ClaveIndustrial6 VARCHAR (45) NOT NULL,
       CredistosIndustrial6 INT NOT NULL,
       PRIMARY KEY (IdCarreraIndustrial6),

	  INDEX fkTblCarrerasTESCITblIndustrial6_idx (IdCarreraIndustrial6 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblIndustrial6
	  FOREIGN KEY (IdCarreraIndustrial6)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Industrial 7mo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl7SemestreIndustrial (
	   IdCarreraIndustrial7 INT NOT NULL,
       MateriaIndustrial7 VARCHAR (45) NOT NULL,
       ClaveIndustrial7 VARCHAR (45) NOT NULL,
       CredistosIndustrial7 INT NOT NULL,
       PRIMARY KEY (IdCarreraIndustrial7),
       
	  INDEX fkTblCarrerasTESCITblIndustrial7_idx (IdCarreraIndustrial7 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblIndustrial7
	  FOREIGN KEY (IdCarreraIndustrial7)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Industrial 8vo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl8SemestreIndustrial (
	   IdCarreraIndustrial8 INT NOT NULL,
       MateriaIndustrial8 VARCHAR (45) NOT NULL,
       ClaveIndustrial8 VARCHAR (45) NOT NULL,
       CredistosIndustrial8 INT NOT NULL,
       PRIMARY KEY (IdCarreraIndustrial8),

	  INDEX fkTblCarrerasTESCITblIndustrial8_idx (IdCarreraIndustrial8 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblIndustrial8
	  FOREIGN KEY (IdCarreraIndustrial8)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Industrial 9no Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl9SemestreIndustrial (
	   IdCarreraIndustrial9 INT NOT NULL,
       MateriaIndustrial9 VARCHAR (45) NOT NULL,
       ClaveIndustrial9 VARCHAR (45) NOT NULL,
       CredistosIndustrial9 INT NOT NULL,
       PRIMARY KEY (IdCarreraIndustrial9),
       
	  INDEX fkTblCarrerasTESCITblIndustrial9_idx (IdCarreraIndustrial9 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblIndustrial9
	  FOREIGN KEY (IdCarreraIndustrial9)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Contador Publico
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblContadorPublico (
	   NumeroControlContadorPublico INT NOT NULL,
       TurnoContadorPublico VARCHAR (20) NOT NULL,
       EstatusAlumnoContadorPublico INT NOT NULL,
       EstatusInscripcionesContadorPublico INT NOT NULL,
	   IdCarreraContadorPublico INT NOT NULL,
       GrupoContadorPublico VARCHAR (25) NOT NULL,
       PRIMARY KEY (NumeroControlContadorPublico),

	   INDEX fkTblControlUsuariosTblContadorPublico_idx (NumeroControlContadorPublico ASC),
	   CONSTRAINT fkTblControlUsuariosTblContadorPublico
	   FOREIGN KEY (NumeroControlContadorPublico)
	   REFERENCES tblControlUsuarios (NoControlPrincipal),
       
	   INDEX fkTblEstatusAlumnosTblContadorPublico_idx (EstatusAlumnoContadorPublico ASC),
	   CONSTRAINT fkTblEstatusAlumnosTblContadorPublico
	   FOREIGN KEY (EstatusAlumnoContadorPublico)
	   REFERENCES tblEstatusAlumnos  (IdInscripcion),
       
	  INDEX fkTblCarrerasTESCITblContadorPublico_idx (IdCarreraContadorPublico ASC),
	  CONSTRAINT fkTblCarrerasTESCITblContadorPublico
	  FOREIGN KEY (IdCarreraContadorPublico)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI),
       
	  INDEX fkTblGruposTblContadorPublico_idx (GrupoContadorPublico ASC),
	  CONSTRAINT fkTblGruposTblContadorPublico
	  FOREIGN KEY (GrupoContadorPublico)
	  REFERENCES tblGrupos (NombreGrupo))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Contador Publico 1er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl1SemestreContadorPublico (
	   IdCarreraContadorPublico1 INT NOT NULL,
       MateriaContadorPublico1 VARCHAR (45) NOT NULL,
       ClaveContadorPublico1 VARCHAR (45) NOT NULL,
       CredistosContadorPublico1 INT NOT NULL,
       PRIMARY KEY (IdCarreraContadorPublico1),
       
	  INDEX fkTblCarrerasTESCITblContadorPublico1_idx (IdCarreraContadorPublico1 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblContadorPublico1
	  FOREIGN KEY (IdCarreraContadorPublico1)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Contador Publico 2do Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl2SemestreContadorPublico (
	   IdCarreraContadorPublico2 INT NOT NULL,
       MateriaContadorPublico2 VARCHAR (45) NOT NULL,
       ClaveContadorPublico2 VARCHAR (45) NOT NULL,
       CredistosContadorPublico12 INT NOT NULL,
       PRIMARY KEY (IdCarreraContadorPublico2),

	  INDEX fkTblCarrerasTESCITblContadorPublico2_idx (IdCarreraContadorPublico2 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblContadorPublico2
	  FOREIGN KEY (IdCarreraContadorPublico2)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Contador Publico 3er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl3SemestreContadorPublico (
	   IdCarreraContadorPublico3 INT NOT NULL,
       MateriaContadorPublico3 VARCHAR (45) NOT NULL,
       ClaveContadorPublico3 VARCHAR (45) NOT NULL,
       CredistosContadorPublico3 INT NOT NULL,
       PRIMARY KEY (IdCarreraContadorPublico3),
       
	  INDEX fkTblCarrerasTESCITblContadorPublico3_idx (IdCarreraContadorPublico3 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblContadorPublico3
	  FOREIGN KEY (IdCarreraContadorPublico3)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Contador Publico 4to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl4SemestreContadorPublico (
	   IdCarreraContadorPublico4 INT NOT NULL,
       MateriaContadorPublico4 VARCHAR (45) NOT NULL,
       ClaveContadorPublico4 VARCHAR (45) NOT NULL,
       CredistosContadorPublico4 INT NOT NULL,
       PRIMARY KEY (IdCarreraContadorPublico4),
       
	  INDEX fkTblCarrerasTESCITblContadorPublico4_idx (IdCarreraContadorPublico4 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblContadorPublico4
	  FOREIGN KEY (IdCarreraContadorPublico4)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Contador Publico 5to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl5SemestreContadorPublico (
	   IdCarreraContadorPublico5 INT NOT NULL,
       MateriaContadorPublico5 VARCHAR (45) NOT NULL,
       ClaveContadorPublico5 VARCHAR (45) NOT NULL,
       CredistosContadorPublico5 INT NOT NULL,
       PRIMARY KEY (IdCarreraContadorPublico5),
       
	  INDEX fkTblCarrerasTESCITblContadorPublico5_idx (IdCarreraContadorPublico5 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblContadorPublico5
	  FOREIGN KEY (IdCarreraContadorPublico5)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Contador Publico 6to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl6SemestreContadorPublico (
	   IdCarreraContadorPublico6 INT NOT NULL,
       MateriaContadorPublico6 VARCHAR (45) NOT NULL,
       ClaveContadorPublico6 VARCHAR (45) NOT NULL,
       CredistosContadorPublico6 INT NOT NULL,
       PRIMARY KEY (IdCarreraContadorPublico6),
       
	  INDEX fkTblCarrerasTESCITblContadorPublico6_idx (IdCarreraContadorPublico6 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblContadorPublico6
	  FOREIGN KEY (IdCarreraContadorPublico6)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Contador Publico 7mo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl7SemestreContadorPublico (
	   IdCarreraContadorPublico7 INT NOT NULL,
       MateriaContadorPublico7 VARCHAR (45) NOT NULL,
       ClaveContadorPublico7 VARCHAR (45) NOT NULL,
       CredistosContadorPublico7 INT NOT NULL,
       PRIMARY KEY (IdCarreraContadorPublico7),
       
	  INDEX fkTblCarrerasTESCITblContadorPublico7_idx (IdCarreraContadorPublico7 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblContadorPublico7
	  FOREIGN KEY (IdCarreraContadorPublico7)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Contador Publico 8vo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl8SemestreContadorPublico (
	   IdCarreraContadorPublico8 INT NOT NULL,
       MateriaContadorPublico8 VARCHAR (45) NOT NULL,
       ClaveContadorPublico8 VARCHAR (45) NOT NULL,
       CredistosContadorPublico8 INT NOT NULL,
       PRIMARY KEY (IdCarreraContadorPublico8),
       
	  INDEX fkTblCarrerasTESCITblContadorPublico8_idx (IdCarreraContadorPublico8 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblContadorPublico8
	  FOREIGN KEY (IdCarreraContadorPublico8)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Contador Publico 9no Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl9SemestreContadorPublico (
	   IdCarreraContadorPublico9 INT NOT NULL,
       MateriaContadorPublico9 VARCHAR (45) NOT NULL,
       ClaveContadorPublico9 VARCHAR (45) NOT NULL,
       CredistosContadorPublico9 INT NOT NULL,
       PRIMARY KEY (IdCarreraContadorPublico9),
       
	  INDEX fkTblCarrerasTESCITblContadorPublico9_idx (IdCarreraContadorPublico9 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblContadorPublico9
	  FOREIGN KEY (IdCarreraContadorPublico9)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Administracion
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblIngAdministracion (
	   NumeroControlIngAdministracion INT NOT NULL,
       TurnoIngAdministracion VARCHAR (20) NOT NULL,
       EstatusAlumnoIngAdministracion INT NOT NULL,
       EstatusInscripcionesIngAdministracion INT NOT NULL,
	   IdCarreraIngAdministracion INT NOT NULL,
       GrupoIngAdministracion VARCHAR (25) NOT NULL,
       PRIMARY KEY (NumeroControlIngAdministracion),
       
	   INDEX fkTblControlUsuariosTblIngAdministracion_idx (NumeroControlIngAdministracion ASC),
	   CONSTRAINT fkTblControlUsuariosTblIngAdministracion
	   FOREIGN KEY (NumeroControlIngAdministracion)
	   REFERENCES tblControlUsuarios (NoControlPrincipal),
       
	   INDEX fkTblEstatusAlumnosTblIngAdministracion_idx (EstatusAlumnoIngAdministracion ASC),
	   CONSTRAINT fkTblEstatusAlumnosTblIngAdministracion
	   FOREIGN KEY (EstatusAlumnoIngAdministracion)
	   REFERENCES tblEstatusAlumnos  (IdInscripcion),
       
	  INDEX fkTblCarrerasTESCITblIngAdministracion_idx (IdCarreraIngAdministracion ASC),
	  CONSTRAINT fkTblCarrerasTESCITblIngAdministracion
	  FOREIGN KEY (IdCarreraIngAdministracion)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI),
       
	  INDEX fkTblGruposTblIngAdministracion_idx (GrupoIngAdministracion ASC),
	  CONSTRAINT fkTblGruposTblIngAdministracion
	  FOREIGN KEY (GrupoIngAdministracion)
	  REFERENCES tblGrupos (NombreGrupo))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Administracion 1er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl1SemestreIngAdministracion (
	   IdCarreraIngAdministracion1 INT NOT NULL,
       MateriaIngAdministracion1 VARCHAR (45) NOT NULL,
       ClaveIngAdministracion1 VARCHAR (45) NOT NULL,
       CredistosIngAdministracion1 INT NOT NULL,
       PRIMARY KEY (IdCarreraIngAdministracion1),
       
	  INDEX fkTblCarrerasTESCITblIngAdministracion1_idx (IdCarreraIngAdministracion1 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblIngAdministracion1
	  FOREIGN KEY (IdCarreraIngAdministracion1)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Administracion 2do Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl2SemestreIngAdministracion (
	   IdCarreraIngAdministracion2 INT NOT NULL,
       MateriaIngAdministracion2 VARCHAR (45) NOT NULL,
       ClaveIngAdministracion2 VARCHAR (45) NOT NULL,
       CredistosIngAdministracion2 INT NOT NULL,
       PRIMARY KEY (IdCarreraIngAdministracion2),
       
	  INDEX fkTblCarrerasTESCITblIngAdministracion2_idx (IdCarreraIngAdministracion2 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblIngAdministracion2
	  FOREIGN KEY (IdCarreraIngAdministracion2)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Administracion 3er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl3SemestreIngAdministracion (
	   IdCarreraIngAdministracion3 INT NOT NULL,
       MateriaIngAdministracion3 VARCHAR (45) NOT NULL,
       ClaveIngAdministracion3 VARCHAR (45) NOT NULL,
       CredistosIngAdministracion3 INT NOT NULL,
       PRIMARY KEY (IdCarreraIngAdministracion3),
       
	  INDEX fkTblCarrerasTESCITblIngAdministracion3_idx (IdCarreraIngAdministracion3 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblIngAdministracion3
	  FOREIGN KEY (IdCarreraIngAdministracion3)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Administracion 4to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl4SemestreIngAdministracion (
	   IdCarreraIngAdministracion4 INT NOT NULL,
       MateriaIngAdministracion4 VARCHAR (45) NOT NULL,
       ClaveIngAdministracion4 VARCHAR (45) NOT NULL,
       CredistosIngAdministracion4 INT NOT NULL,
       PRIMARY KEY (IdCarreraIngAdministracion4),
       
	  INDEX fkTblCarrerasTESCITblIngAdministracion4_idx (IdCarreraIngAdministracion4 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblIngAdministracion4
	  FOREIGN KEY (IdCarreraIngAdministracion4)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Administracion 5to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl5SemestreIngAdministracion (
	   IdCarreraIngAdministracion5 INT NOT NULL,
       MateriaIngAdministracion5 VARCHAR (45) NOT NULL,
       ClaveIngAdministracion5 VARCHAR (45) NOT NULL,
       CredistosIngAdministracion5 INT NOT NULL,
       PRIMARY KEY (IdCarreraIngAdministracion5),

	  INDEX fkTblCarrerasTESCITblIngAdministracion5_idx (IdCarreraIngAdministracion5 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblIngAdministracion5
	  FOREIGN KEY (IdCarreraIngAdministracion5)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Administracion 6to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl6SemestreIngAdministracion (
	   IdCarreraIngAdministracion6 INT NOT NULL,
       MateriaIngAdministracion6 VARCHAR (45) NOT NULL,
       ClaveIngAdministracion6 VARCHAR (45) NOT NULL,
       CredistosIngAdministracion6 INT NOT NULL,
       PRIMARY KEY (IdCarreraIngAdministracion6),
       
	  INDEX fkTblCarrerasTESCITblIngAdministracion6_idx (IdCarreraIngAdministracion6 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblIngAdministracion6
	  FOREIGN KEY (IdCarreraIngAdministracion6)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Administracion 7mo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl7SemestreIngAdministracion (
	   IdCarreraIngAdministracion7 INT NOT NULL,
       MateriaIngAdministracion7 VARCHAR (45) NOT NULL,
       ClaveIngAdministracion7 VARCHAR (45) NOT NULL,
       CredistosIngAdministracion7 INT NOT NULL,
       PRIMARY KEY (IdCarreraIngAdministracion7),
       
	  INDEX fkTblCarrerasTESCITblIngAdministracion7_idx (IdCarreraIngAdministracion7 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblIngAdministracion7
	  FOREIGN KEY (IdCarreraIngAdministracion7)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Administracion 8vo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl8SemestreIngAdministracion (
	   IdCarreraIngAdministracion8 INT NOT NULL,
       MateriaIngAdministracion8 VARCHAR (45) NOT NULL,
       ClaveIngAdministracion8 VARCHAR (45) NOT NULL,
       CredistosIngAdministracion8 INT NOT NULL,
       PRIMARY KEY (IdCarreraIngAdministracion8),
       
	  INDEX fkTblCarrerasTESCITblIngAdministracion8_idx (IdCarreraIngAdministracion8 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblIngAdministracion8
	  FOREIGN KEY (IdCarreraIngAdministracion8)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Administracion 9no Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl9SemestreIngAdministracion (
	   IdCarreraIngAdministracion9 INT NOT NULL,
       MateriaIngAdministracion9 VARCHAR (45) NOT NULL,
       ClaveIngAdministracion9 VARCHAR (45) NOT NULL,
       CredistosIngAdministracion9 INT NOT NULL,
       PRIMARY KEY (IdCarreraIngAdministracion9),
       
	  INDEX fkTblCarrerasTESCITblIngAdministracion9_idx (IdCarreraIngAdministracion9 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblIngAdministracion9
	  FOREIGN KEY (IdCarreraIngAdministracion9)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Logistica
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblLogistica (
	   NumeroControlLogistica INT NOT NULL,
       TurnoLogistica VARCHAR (20) NOT NULL,
       EstatusAlumnoLogistica INT NOT NULL,
       EstatusInscripcionesLogistica INT NOT NULL,
       IdCarreraLogistica INT NOT NULL,
       GrupoLogistica VARCHAR (25) NOT NULL,
       PRIMARY KEY (NumeroControlLogistica),
       
	   INDEX fkTblControlUsuariosTblLogistica_idx (NumeroControlLogistica ASC),
	   CONSTRAINT fkTblControlUsuariosTblLogistica
	   FOREIGN KEY (NumeroControlLogistica)
	   REFERENCES tblControlUsuarios (NoControlPrincipal),
       
	   INDEX fkTblEstatusAlumnosTblLogistica_idx (EstatusAlumnoLogistica ASC),
	   CONSTRAINT fkTblEstatusAlumnosTblLogistica
	   FOREIGN KEY (EstatusAlumnoLogistica)
	   REFERENCES tblEstatusAlumnos  (IdInscripcion),
       
	  INDEX fkTblCarrerasTESCITblLogistica_idx (IdCarreraLogistica ASC),
	  CONSTRAINT fkTblCarrerasTESCITblLogistica
	  FOREIGN KEY (IdCarreraLogistica)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI),
       
	  INDEX fkTblGruposTblLogistica_idx (GrupoLogistica ASC),
	  CONSTRAINT fkTblGruposTblLogistica
	  FOREIGN KEY (GrupoLogistica)
	  REFERENCES tblGrupos (NombreGrupo))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Logistica 1er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl1SemestreLogistica (
	   IdCarreraLogistica1 INT NOT NULL,
       MateriaLogistica1 VARCHAR (45) NOT NULL,
       ClaveLogistica1 VARCHAR (45) NOT NULL,
       CredistosLogistica1 INT NOT NULL,
       PRIMARY KEY (IdCarreraLogistica1),

	  INDEX fkTblCarrerasTESCITblLogistica1_idx (IdCarreraLogistica1 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblLogistica1
	  FOREIGN KEY (IdCarreraLogistica1)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Logistica 2do Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl2SemestreLogistica (
	   IdCarreraLogistica2 INT NOT NULL,
       MateriaLogistica2 VARCHAR (45) NOT NULL,
       ClaveLogistica2 VARCHAR (45) NOT NULL,
       CredistosLogistica2 INT NOT NULL,
       PRIMARY KEY (IdCarreraLogistica2),
       
	  INDEX fkTblCarrerasTESCITblLogistica2_idx (IdCarreraLogistica2 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblLogistica2
	  FOREIGN KEY (IdCarreraLogistica2)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Logistica 3er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl3SemestreLogistica (
	   IdCarreraLogistica3 INT NOT NULL,
       MateriaLogistica3 VARCHAR (45) NOT NULL,
       ClaveLogistica3 VARCHAR (45) NOT NULL,
       CredistosLogistica3 INT NOT NULL,
       PRIMARY KEY (IdCarreraLogistica3),
       
	  INDEX fkTblCarrerasTESCITblLogistica3_idx (IdCarreraLogistica3 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblLogistica3
	  FOREIGN KEY (IdCarreraLogistica3)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Logistica 4to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl4SemestreLogistica (
	   IdCarreraLogistica4 INT NOT NULL,
       MateriaLogistica4 VARCHAR (45) NOT NULL,
       ClaveLogistica4 VARCHAR (45) NOT NULL,
       CredistosLogistica4 INT NOT NULL,
       PRIMARY KEY (IdCarreraLogistica4),
       
	  INDEX fkTblCarrerasTESCITblLogistica4_idx (IdCarreraLogistica4 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblLogistica4
	  FOREIGN KEY (IdCarreraLogistica4)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Logistica 5to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl5SemestreLogistica (
	   IdCarreraLogistica5 INT NOT NULL,
       MateriaLogistica5 VARCHAR (45) NOT NULL,
       ClaveLogistica5 VARCHAR (45) NOT NULL,
       CredistosLogistica5 INT NOT NULL,
       PRIMARY KEY (IdCarreraLogistica5),
       
	  INDEX fkTblCarrerasTESCITblLogistica5_idx (IdCarreraLogistica5 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblLogistica5
	  FOREIGN KEY (IdCarreraLogistica5)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Logistica 6to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl6SemestreLogistica (
	   IdCarreraLogistica6 INT NOT NULL,
       MateriaLogistica6 VARCHAR (45) NOT NULL,
       ClaveLogistica6 VARCHAR (45) NOT NULL,
       CredistosLogistica6 INT NOT NULL,
       PRIMARY KEY (IdCarreraLogistica6),

	  INDEX fkTblCarrerasTESCITblLogistica6_idx (IdCarreraLogistica6 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblLogistica6
	  FOREIGN KEY (IdCarreraLogistica6)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Logistica 7mo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl7SemestreLogistica (
	   IdCarreraLogistica7 INT NOT NULL,
       MateriaLogistica7 VARCHAR (45) NOT NULL,
       ClaveLogistica7 VARCHAR (45) NOT NULL,
       CredistosLogistica7 INT NOT NULL,
       PRIMARY KEY (IdCarreraLogistica7),
       
	  INDEX fkTblCarrerasTESCITblLogistica7_idx (IdCarreraLogistica7 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblLogistica7
	  FOREIGN KEY (IdCarreraLogistica7)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Logistica 8vo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl8SemestreLogistica (
	   IdCarreraLogistica8 INT NOT NULL,
       MateriaLogistica8 VARCHAR (45) NOT NULL,
       ClaveLogistica8 VARCHAR (45) NOT NULL,
       CredistosLogistica8 INT NOT NULL,
       PRIMARY KEY (IdCarreraLogistica8),
       
	  INDEX fkTblCarrerasTESCITblLogistica8_idx (IdCarreraLogistica8 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblLogistica8
	  FOREIGN KEY (IdCarreraLogistica8)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Logistica 9no Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl9SemestreLogistica (
	   IdCarreraLogistica9 INT NOT NULL,
       MateriaLogistica9 VARCHAR (45) NOT NULL,
       ClaveLogistica9 VARCHAR (45) NOT NULL,
       CredistosLogistica9 INT NOT NULL,
       PRIMARY KEY (IdCarreraLogistica9),
       
	  INDEX fkTblCarrerasTESCITblLogistica9_idx (IdCarreraLogistica9 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblLogistica9
	  FOREIGN KEY (IdCarreraLogistica9)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Mecatronica
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblMecatronica (
	   NumeroControlMecatronica INT NOT NULL,
       TurnoMecatronica VARCHAR (20) NOT NULL,
       EstatusAlumnoMecatronica INT NOT NULL,
       EstatusInscripcionesMecatronica INT NOT NULL,
       IdCarreraMecatronica INT NOT NULL,
       GrupoMecatronica VARCHAR (25) NOT NULL,
       PRIMARY KEY (NumeroControlMecatronica),
       
	   INDEX fkTblControlUsuariosTblMecatronica_idx (NumeroControlMecatronica ASC),
	   CONSTRAINT fkTblControlUsuariosTblMecatronica
	   FOREIGN KEY (NumeroControlMecatronica)
	   REFERENCES tblControlUsuarios (NoControlPrincipal),
       
	   INDEX fkTblEstatusAlumnosTblMecatronica_idx (EstatusAlumnoMecatronica ASC),
	   CONSTRAINT fkTblEstatusAlumnosTblMecatronica
	   FOREIGN KEY (EstatusAlumnoMecatronica)
	   REFERENCES tblEstatusAlumnos  (IdInscripcion),
       
	  INDEX fkTblCarrerasTESCITblMecatronica_idx (IdCarreraMecatronica ASC),
	  CONSTRAINT fkTblCarrerasTESCITblMecatronica
	  FOREIGN KEY (IdCarreraMecatronica)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI),
       
	  INDEX fkTblGruposTblMecatronica_idx (GrupoMecatronica ASC),
	  CONSTRAINT fkTblGruposTblMecatronica
	  FOREIGN KEY (GrupoMecatronica)
	  REFERENCES tblGrupos (NombreGrupo))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Mecatronica 1er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl1SemestreMecatronica (
	   IdCarreraMecatronica1 INT NOT NULL,
       MateriaMecatronica1 VARCHAR (45) NOT NULL,
       ClaveMecatronica1 VARCHAR (45) NOT NULL,
       CredistosMecatronica1 INT NOT NULL,
       PRIMARY KEY (IdCarreraMecatronica1),
       
	  INDEX fkTblCarrerasTESCITblMecatronica1_idx (IdCarreraMecatronica1 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblMecatronica1
	  FOREIGN KEY (IdCarreraMecatronica1)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Mecatronica 2do Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl2SemestreMecatronica (
	   IdCarreraMecatronica2 INT NOT NULL,
       MateriaMecatronica2 VARCHAR (45) NOT NULL,
       ClaveMecatronica2 VARCHAR (45) NOT NULL,
       CredistosMecatronica2 INT NOT NULL,
       PRIMARY KEY (IdCarreraMecatronica2),
       
	  INDEX fkTblCarrerasTESCITblMecatronica2_idx (IdCarreraMecatronica2 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblMecatronica2
	  FOREIGN KEY (IdCarreraMecatronica2)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Mecatronica 3er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl3SemestreMecatronica (
	   IdCarreraMecatronica3 INT NOT NULL,
       MateriaMecatronica3 VARCHAR (45) NOT NULL,
       ClaveMecatronica3 VARCHAR (45) NOT NULL,
       CredistosMecatronica3 INT NOT NULL,
       PRIMARY KEY (IdCarreraMecatronica3),
       
	  INDEX fkTblCarrerasTESCITblMecatronica3_idx (IdCarreraMecatronica3 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblMecatronica3
	  FOREIGN KEY (IdCarreraMecatronica3)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Mecatronica 4to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl4SemestreMecatronica (
	   IdCarreraMecatronica4 INT NOT NULL,
       MateriaMecatronica4 VARCHAR (45) NOT NULL,
       ClaveMecatronica4 VARCHAR (45) NOT NULL,
       CredistosMecatronica4 INT NOT NULL,
       PRIMARY KEY (IdCarreraMecatronica4),
       
	  INDEX fkTblCarrerasTESCITblMecatronica4_idx (IdCarreraMecatronica4 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblMecatronica4
	  FOREIGN KEY (IdCarreraMecatronica4)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Mecatronica 5to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl5SemestreMecatronica (
	   IdCarreraMecatronica5 INT NOT NULL,
       MateriaMecatronica5 VARCHAR (45) NOT NULL,
       ClaveMecatronica5 VARCHAR (45) NOT NULL,
       CredistosMecatronica5 INT NOT NULL,
       PRIMARY KEY (IdCarreraMecatronica5),

	  INDEX fkTblCarrerasTESCITblMecatronica5_idx (IdCarreraMecatronica5 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblMecatronica5
	  FOREIGN KEY (IdCarreraMecatronica5)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Mecatronica 6to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl6SemestreMecatronica (
	   IdCarreraMecatronica6 INT NOT NULL,
       MateriaMecatronica6 VARCHAR (45) NOT NULL,
       ClaveMecatronica6 VARCHAR (45) NOT NULL,
       CredistosMecatronica6 INT NOT NULL,
       PRIMARY KEY (IdCarreraMecatronica6),
       
	  INDEX fkTblCarrerasTESCITblMecatronica6_idx (IdCarreraMecatronica6 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblMecatronica6
	  FOREIGN KEY (IdCarreraMecatronica6)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Mecatronica 7mo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl7SemestreMecatronica (
	   IdCarreraMecatronica7 INT NOT NULL,
       MateriaMecatronica7 VARCHAR (45) NOT NULL,
       ClaveMecatronica7 VARCHAR (45) NOT NULL,
       CredistosMecatronica7 INT NOT NULL,
       PRIMARY KEY (IdCarreraMecatronica7),
       
	  INDEX fkTblCarrerasTESCITblMecatronica7_idx (IdCarreraMecatronica7 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblMecatronica7
	  FOREIGN KEY (IdCarreraMecatronica7)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Mecatronica 8vo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl8SemestreMecatronica (
	   IdCarreraMecatronica8 INT NOT NULL,
       MateriaMecatronica8 VARCHAR (45) NOT NULL,
       ClaveMecatronica8 VARCHAR (45) NOT NULL,
       CredistosMecatronica8 INT NOT NULL,
       PRIMARY KEY (IdCarreraMecatronica8),
       
	  INDEX fkTblCarrerasTESCITblMecatronica8_idx (IdCarreraMecatronica8 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblMecatronica8
	  FOREIGN KEY (IdCarreraMecatronica8)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Mecatronica 9no Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl9SemestreMecatronica (
	   IdCarreraMecatronica9 INT NOT NULL,
       MateriaMecatronica9 VARCHAR (45) NOT NULL,
       ClaveMecatronica9 VARCHAR (45) NOT NULL,
       CredistosMecatronica9 INT NOT NULL,
       PRIMARY KEY (IdCarreraMecatronica9),
       
	  INDEX fkTblCarrerasTESCITblMecatronica9_idx (IdCarreraMecatronica9 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblMecatronica9
	  FOREIGN KEY (IdCarreraMecatronica9)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Quimica
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblQuimica (
	   NumeroControlQuimica INT NOT NULL,
       TurnoQuimica VARCHAR (20) NOT NULL,
       EstatusAlumnoQuimica INT NOT NULL,
       EstatusInscripcionesQuimica INT NOT NULL,
       IdCarreraQuimica INT NOT NULL,
       GrupoQuimica VARCHAR (25) NOT NULL,
       PRIMARY KEY (NumeroControlQuimica),
       
	   INDEX fkTblControlUsuariosTblQuimica_idx (NumeroControlQuimica ASC),
	   CONSTRAINT fkTblControlUsuariosTblQuimica
	   FOREIGN KEY (NumeroControlQuimica)
	   REFERENCES tblControlUsuarios (NoControlPrincipal),
       
	   INDEX fkTblEstatusAlumnosTblQuimica_idx (EstatusAlumnoQuimica ASC),
	   CONSTRAINT fkTblEstatusAlumnosTblQuimica
	   FOREIGN KEY (EstatusAlumnoQuimica)
	   REFERENCES tblEstatusAlumnos  (IdInscripcion),
       
	  INDEX fkTblCarrerasTESCITblQuimica_idx (IdCarreraQuimica ASC),
	  CONSTRAINT fkTblCarrerasTESCITblQuimica
	  FOREIGN KEY (IdCarreraQuimica)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI),
       
	  INDEX fkTblGruposTblQuimica_idx (GrupoQuimica ASC),
	  CONSTRAINT fkTblGruposTblQuimica
	  FOREIGN KEY (GrupoQuimica)
	  REFERENCES tblGrupos (NombreGrupo))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Quimica 1er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl1SemestreQuimica (
	   IdCarreraQuimica1 INT NOT NULL,
       MateriaQuimica1 VARCHAR (45) NOT NULL,
       ClaveQuimica1 VARCHAR (45) NOT NULL,
       CredistosQuimica1 INT NOT NULL,
       PRIMARY KEY (IdCarreraQuimica1),

	  INDEX fkTblCarrerasTESCITblQuimica1_idx (IdCarreraQuimica1 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblQuimica1
	  FOREIGN KEY (IdCarreraQuimica1)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Quimica 2do Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl2SemestreQuimica (
	   IdCarreraQuimica2 INT NOT NULL,
       MateriaQuimica2 VARCHAR (45) NOT NULL,
       ClaveQuimica2 VARCHAR (45) NOT NULL,
       CredistosQuimica2 INT NOT NULL,
       PRIMARY KEY (IdCarreraQuimica2),
       
	  INDEX fkTblCarrerasTESCITblQuimica2_idx (IdCarreraQuimica2 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblQuimica2
	  FOREIGN KEY (IdCarreraQuimica2)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Quimica 3er Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl3SemestreQuimica (
	   IdCarreraQuimica3 INT NOT NULL,
       MateriaQuimica3 VARCHAR (45) NOT NULL,
       ClaveQuimica3 VARCHAR (45) NOT NULL,
       CredistosQuimica3 INT NOT NULL,
       PRIMARY KEY (IdCarreraQuimica3),
       
	  INDEX fkTblCarrerasTESCITblQuimica3_idx (IdCarreraQuimica3 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblQuimica3
	  FOREIGN KEY (IdCarreraQuimica3)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Quimica 4to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl4SemestreQuimica (
	   IdCarreraQuimica4 INT NOT NULL,
       MateriaQuimica4 VARCHAR (45) NOT NULL,
       ClaveQuimica4 VARCHAR (45) NOT NULL,
       CredistosQuimica4 INT NOT NULL,
       PRIMARY KEY (IdCarreraQuimica4),
       
	  INDEX fkTblCarrerasTESCITblQuimica4_idx (IdCarreraQuimica4 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblQuimica4
	  FOREIGN KEY (IdCarreraQuimica4)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Quimica 5to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl5SemestreQuimica (
	   IdCarreraQuimica5 INT NOT NULL,
       MateriaQuimica5 VARCHAR (45) NOT NULL,
       ClaveQuimica5 VARCHAR (45) NOT NULL,
       CredistosQuimica5 INT NOT NULL,
       PRIMARY KEY (IdCarreraQuimica5),
       
	  INDEX fkTblCarrerasTESCITblQuimica5_idx (IdCarreraQuimica5 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblQuimica5
	  FOREIGN KEY (IdCarreraQuimica5)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Quimica 6to Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl6SemestreQuimica (
	   IdCarreraQuimica6 INT NOT NULL,
       MateriaQuimica6 VARCHAR (45) NOT NULL,
       ClaveQuimica6 VARCHAR (45) NOT NULL,
       CredistosQuimica6 INT NOT NULL,
       PRIMARY KEY (IdCarreraQuimica6),
       
	  INDEX fkTblCarrerasTESCITblQuimica6_idx (IdCarreraQuimica6 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblQuimica6
	  FOREIGN KEY (IdCarreraQuimica6)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Quimica 7mo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl7SemestreQuimica (
	   IdCarreraQuimica7 INT NOT NULL,
       MateriaQuimica7 VARCHAR (45) NOT NULL,
       ClaveQuimica7 VARCHAR (45) NOT NULL,
       CredistosQuimica7 INT NOT NULL,
       PRIMARY KEY (IdCarreraQuimica7),
       
	  INDEX fkTblCarrerasTESCITblQuimica7_idx (IdCarreraQuimica7 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblQuimica7
	  FOREIGN KEY (IdCarreraQuimica7)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Quimica 8vo Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl8SemestreQuimica (
	   IdCarreraQuimica8 INT NOT NULL,
       MateriaQuimica8 VARCHAR (45) NOT NULL,
       ClaveQuimica8 VARCHAR (45) NOT NULL,
       CredistosQuimica8 INT NOT NULL,
       PRIMARY KEY (IdCarreraQuimica8),
       
	  INDEX fkTblCarrerasTESCITblQuimica8_idx (IdCarreraQuimica8 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblQuimica8
	  FOREIGN KEY (IdCarreraQuimica8)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
       ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla Ingieneria en Ing Quimica 9no Semestre
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tbl9SemestreQuimica (
	   IdCarreraQuimica9 INT NOT NULL,
       MateriaQuimica9 VARCHAR (45) NOT NULL,
       ClaveQuimica9 VARCHAR (45) NOT NULL,
       CredistosQuimica9 INT NOT NULL,
       PRIMARY KEY (IdCarreraQuimica9),
       
	  INDEX fkTblCarrerasTESCITblQuimica9_idx (IdCarreraQuimica9 ASC),
	  CONSTRAINT fkTblCarrerasTESCITblQuimica9
	  FOREIGN KEY (IdCarreraQuimica9)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
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
      TipoUsuarioPA INT NOT NULL,
      IdCarreraPA INT NOT NULL,
      PRIMARY KEY (NumeroContolPA),
	
	  INDEX fkTblControlUsuariosTblDatospersonalesAdministrativos_idx (NumeroContolPA ASC),
	  CONSTRAINT fkTblControlUsuariosTblDatospersonalesAdministrativos
	  FOREIGN KEY (NumeroContolPA)
	  REFERENCES tblControlUsuarios (NoControlPrincipal),
      
	  INDEX fkTblCarrerasTESCITblDatospersonalesAdministrativos_idx (IdCarreraPA ASC),
	  CONSTRAINT fkTblCarrerasTESCITblDatospersonalesAdministrativos
	  FOREIGN KEY (IdCarreraPA )
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI ),
      
	  INDEX fkTblTiposUsuariosPTblDatospersonalesAdministrativos_idx (TipoUsuarioPA ASC),
	  CONSTRAINT fkTblTiposUsuariosPTblDatospersonalesAdministrativos
	  FOREIGN KEY (TipoUsuarioPA )
	  REFERENCES tblTiposUsuariosP (IdTipoUsuario))
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
       TipoUsuarioPM INT NOT NULL,
       PRIMARY KEY (NumeroControlPM),
       
	  INDEX fkTblControlUsuariosTblDatosPersonalesMaestros_idx (NumeroControlPM ASC),
	  CONSTRAINT fkTblControlUsuariosTblDatosPersonalesMaestros
	  FOREIGN KEY (NumeroControlPM)
	  REFERENCES tblControlUsuarios (NoControlPrincipal),
      
	  INDEX fkTblCarrerasTESCITblDatosPersonalesMaestros_idx (IdCarreraPM ASC),
	  CONSTRAINT fkTblCarrerasTESCITblDatosPersonalesMaestros
	  FOREIGN KEY (IdCarreraPM )
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI ),
      
	  INDEX fkTblTiposUsuariosPTblDatosPersonalesMaestros_idx (TipoUsuarioPM ASC),
	  CONSTRAINT fkTblTiposUsuariosPTblDatosPersonalesMaestros
	  FOREIGN KEY (TipoUsuarioPM )
	  REFERENCES tblTiposUsuariosP (IdTipoUsuario))
	   ENGINE =  InnoDB;
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
       PRIMARY KEY (NumeroControlIrregulares),

	  INDEX fkTblControlUsuariosTblCargaHorariaIrregulares_idx (NumeroControlIrregulares ASC),
	  CONSTRAINT fkTblControlUsuariosTblCargaHorariaIrregulares
	  FOREIGN KEY (NumeroControlIrregulares)
	  REFERENCES tblControlUsuarios (NoControlPrincipal),

	  INDEX fkTblCarrerasTESCITblCargaHorariaIrregulares_idx (IdCarreraIrre ASC),
	  CONSTRAINT fkTblCarrerasTESCITblCargaHorariaIrregulares
	  FOREIGN KEY (IdCarreraIrre )
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI ))
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
-- Tabla de para boleta de ingles de todos los alumnos 
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblBoletaIngles (
       NoControlBoletaIngles INT NOT NULL,
       NombreBoletaIngles VARCHAR (65) NOT NULL,
	   FechaBoletaIngles DATE NOT NULL,
       PeriodoBoletaIngles VARCHAR (15) NOT NULL,
       IdiomaBoletaIngles VARCHAR (15) NOT NULL,
       FolioBoletaIngles VARCHAR (25) NOT NULL,
       IdCarreraBoletaIngles INT NOT NULL,
       NivelCursadoBoletaIngles VARCHAR (20) NOT NULL,
       EstatusBoletaIngles INT NOT NULL,
       PRIMARY KEY (NoControlBoletaIngles),
       
	  INDEX fkTblControlUsuariosTblBoletaIngles_idx (NoControlBoletaIngles ASC),
	  CONSTRAINT fkTblControlUsuariosTblBoletaIngles
	  FOREIGN KEY (NoControlBoletaIngles)
	  REFERENCES tblControlUsuarios (NoControlPrincipal),

	  INDEX fkTblCarrerasTESCITblBoletaIngles_idx (IdCarreraBoletaIngles ASC),
	  CONSTRAINT fkTblCarrerasTESCITblBoletaIngles
	  FOREIGN KEY (IdCarreraBoletaIngles )
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI ),
      
	  INDEX fkTblEstatusInglesTESCITblBoletaIngles_idx (EstatusBoletaIngles ASC),
	  CONSTRAINT fkTblEstatusInglesTESCITblBoletaIngles
	  FOREIGN KEY (EstatusBoletaIngles)
	  REFERENCES tblEstatusIngles (IdEstatusIngles ))
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
      PRIMARY KEY(NoControlCargaSistemas),

	  INDEX fkTblControlUsuariosTblCargasSistemasDatosPersonales_idx (NoControlCargaSistemas ASC),
	  CONSTRAINT fkTblControlUsuariosTblCargasSistemasDatosPersonales
	  FOREIGN KEY (NoControlCargaSistemas)
	  REFERENCES tblControlUsuarios (NoControlPrincipal),
      
	  INDEX fkTblCarrerasTESCITblCargasSistemasDatosPersonales_idx (IdCarreraCargaSistemas ASC),
	  CONSTRAINT fkTblCarrerasTESCITblCargasSistemasDatosPersonales
	  FOREIGN KEY (IdCarreraCargaSistemas )
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI ))
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
      PRIMARY KEY (NoControlCargaMateriaSistemas),
      
	  INDEX fkTblControlUsuariosTblCargasMateriasSistemas_idx (NoControlCargaMateriaSistemas ASC),
	  CONSTRAINT fkTblControlUsuariosTblCargasMateriasSistemas
	  FOREIGN KEY (NoControlCargaMateriaSistemas)
	  REFERENCES tblControlUsuarios (NoControlPrincipal),
      
	  INDEX fkTblControlGruposTblCargasMateriasSistemas_idx (GrupoCargaSistemas ASC),
	  CONSTRAINT fkTblGruposTblCargasMateriasSistemas
	  FOREIGN KEY (GrupoCargaSistemas)
	  REFERENCES tblGrupos  (NombreGrupo))
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
      PRIMARY KEY(NoControlCargaTICS),
      
	  INDEX fkTblControlUsuariosTblCargasTICSDatosPersonales_idx (NoControlCargaTICS ASC),
	  CONSTRAINT fkTblControlUsuariosTblCargasTICSDatosPersonales
	  FOREIGN KEY (NoControlCargaTICS)
	  REFERENCES tblControlUsuarios (NoControlPrincipal),
      
	  INDEX fkTblCarrerasTESCITblCargasTICSDatosPersonales_idx (IdCarreraCargaTICS ASC),
	  CONSTRAINT fkTblCarrerasTESCITblCargasTICSDatosPersonales
	  FOREIGN KEY (IdCarreraCargaTICS )
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI ))
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
      PRIMARY KEY (NoControlCargaMateriaTICS),
      
	  INDEX fkTblControlUsuariosTblCargasMateriasTICS_idx (NoControlCargaMateriaTICS ASC),
	  CONSTRAINT NoControlCargaMateriaTICS
	  FOREIGN KEY (NoControlCargaMateriaTICS)
	  REFERENCES tblControlUsuarios (NoControlPrincipal),
      
	  INDEX fkTblControlGruposTblCargasMateriasTICS_idx (GrupoCargaTICS ASC),
	  CONSTRAINT fkTblGruposTblCargasMateriasTICS
	  FOREIGN KEY (GrupoCargaTICS)
	  REFERENCES tblGrupos  (NombreGrupo))
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
      PRIMARY KEY(NoControlCargaIndustrial),
      
	  INDEX fkTblControlUsuariosTblCargasIndustrialDatosPersonales_idx (NoControlCargaIndustrial ASC),
	  CONSTRAINT fkTblControlUsuariosTblCargasIndustrialDatosPersonales
	  FOREIGN KEY (NoControlCargaIndustrial)
	  REFERENCES tblControlUsuarios (NoControlPrincipal),
      
	  INDEX fkTblCarrerasTESCITblCargasIndustrialDatosPersonales_idx (IdCarreraCargaIndustrial ASC),
	  CONSTRAINT fkTblCarrerasTESCITblCargasIndustrialDatosPersonales
	  FOREIGN KEY (IdCarreraCargaIndustrial )
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI ))
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
      PRIMARY KEY (NoControlCargaMateriaIndustrial),
      
	  INDEX fkTblControlUsuariosTblCargasMateriasIndustrial_idx (NoControlCargaMateriaIndustrial ASC),
	  CONSTRAINT fkTblControlUsuariosTblCargasMateriasIndustrial
	  FOREIGN KEY (NoControlCargaMateriaIndustrial)
	  REFERENCES tblControlUsuarios (NoControlPrincipal),
      
	  INDEX fkTblControlGruposTblCargasMateriasIndustrial_idx (GrupoCargaIndustrial ASC),
	  CONSTRAINT fkTblGruposTblCargasMateriasIndustrial
	  FOREIGN KEY (GrupoCargaIndustrial)
	  REFERENCES tblGrupos  (NombreGrupo))
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
      PRIMARY KEY(NoControlCargaContadorPublico),
      
	  INDEX fkTblControlUsuariosTblCargasContadorPublicoDatosPersonales_idx (NoControlCargaContadorPublico ASC),
	  CONSTRAINT fkTblControlUsuariosTblCargasContadorPublicoDatosPersonales
	  FOREIGN KEY (NoControlCargaContadorPublico)
	  REFERENCES tblControlUsuarios (NoControlPrincipal),
      
	  INDEX fkTblCarrerasTESCITblCargasContadorPublicoDatosPersonales_idx (IdCarreraCargaContadorPublico ASC),
	  CONSTRAINT fkTblCarrerasTESCITblCargasContadorPublicoDatosPersonales
	  FOREIGN KEY (IdCarreraCargaContadorPublico)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
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
      PRIMARY KEY (NoControlCargaMateriaContadorPublico),
      
	  INDEX fkTblControlUsuariosTblCargasMateriasContadorPublico_idx (NoControlCargaMateriaContadorPublico ASC),
	  CONSTRAINT fkTblControlUsuariosTblCargasMateriasContadorPublico
	  FOREIGN KEY (NoControlCargaMateriaContadorPublico)
	  REFERENCES tblControlUsuarios (NoControlPrincipal),
      
	  INDEX fkTblControlGruposTblCargasMateriasContadorPublico_idx (GrupoCargaContadorPublico ASC),
	  CONSTRAINT fkTblGruposTblCargasMateriasContadorPublico
	  FOREIGN KEY (GrupoCargaContadorPublico)
	  REFERENCES tblGrupos  (NombreGrupo))
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
      PRIMARY KEY(NoControlCargaIngAdministracion),
      
	  INDEX fkTblControlUsuariosTblCargasIngAdministracionDatosPer_idx (NoControlCargaIngAdministracion ASC),
	  CONSTRAINT fkTblControlUsuariosTblCargasIngAdministracionDatosPer
	  FOREIGN KEY (NoControlCargaIngAdministracion)
	  REFERENCES tblControlUsuarios (NoControlPrincipal),
      
	  INDEX fkTblCarrerasTESCITblCargasIngAdministracionDatosPersonales_idx (IdCarreraCargaIngAdministracion ASC),
	  CONSTRAINT fkTblCarrerasTESCITblCargasIngAdministracionDatosPersonales
	  FOREIGN KEY (IdCarreraCargaIngAdministracion)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
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
      PRIMARY KEY (NoControlCargaMateriaIngAdministracion),
      
	  INDEX fkTblControlUsuariosTblCargasMateriasIngAdministracion_idx (NoControlCargaMateriaIngAdministracion ASC),
	  CONSTRAINT fkTblControlUsuariosTblCargasMateriasIngAdministracion
	  FOREIGN KEY (NoControlCargaMateriaIngAdministracion)
	  REFERENCES tblControlUsuarios (NoControlPrincipal),
      
	  INDEX fkTblGruposTblCargasMateriasIngAdministracion_idx (GrupoCargaIngAdministracion ASC),
	  CONSTRAINT fkTblGruposTblCargasMateriasIngAdministracion
	  FOREIGN KEY (GrupoCargaIngAdministracion)
	  REFERENCES tblGrupos  (NombreGrupo))
      ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de cargas academicas de alumnos de Logistica 
-- SOLO DATOS PERSONALES
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblCargasLogisticaDatosPersonales(
      NoControlCargaLogistica INT NOT NULL, 
      NombreCaragaLogistica VARCHAR (60) NOT NULL,
      IdCarreraCargaLogistica INT NOT NULL,
      ReticulaCargaLogistica INT NOT NULL,
      PeriodoCargaLogistica VARCHAR (10) NOT NULL,
      PRIMARY KEY(NoControlCargaLogistica),
      
	  INDEX fkTblControlUsuariosTblCargasLogisticaDatosPersonales_idx (NoControlCargaLogistica ASC),
	  CONSTRAINT fkTblControlUsuariosTblCargasLogisticaDatosPersonales
	  FOREIGN KEY (NoControlCargaLogistica)
	  REFERENCES tblControlUsuarios (NoControlPrincipal),
      
	  INDEX fkTblCarrerasTESCITblCargasLogisticaDatosPersonales_idx (IdCarreraCargaLogistica ASC),
	  CONSTRAINT fkTblCarrerasTESCITblCargasLogisticaDatosPersonales
	  FOREIGN KEY (IdCarreraCargaLogistica)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
      ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de cargas academicas de alumnos de Logistica
-- SOLO MATERIAS DE CARGAS ACADEMICAS 
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblCargasMateriasLogistica(
	  NoControlCargaMateriaLogistica INT NOT NULL,
      ClaveMateriaCargaLogistica VARCHAR (45) NOT NULL,
      MateriaCargaMecatronica VARCHAR (60) NOT NULL, 
      CreditosCargaLogistica INT NOT NULL,
      GrupoCargaLogistica VARCHAR (20) NOT NULL,
      PRIMARY KEY (NoControlCargaMateriaLogistica),
      
	  INDEX fkTblControlUsuariosTblCargasMateriasLogistica_idx (NoControlCargaMateriaLogistica ASC),
	  CONSTRAINT fkTblControlUsuariosTblCargasMateriasLogistica
	  FOREIGN KEY (NoControlCargaMateriaLogistica)
	  REFERENCES tblControlUsuarios (NoControlPrincipal),
      
	  INDEX fkTblControlGruposTblCargasMateriasLogistica_idx (GrupoCargaLogistica ASC),
	  CONSTRAINT fkTblGruposTblCargasMateriasLogistica
	  FOREIGN KEY (GrupoCargaLogistica)
	  REFERENCES tblGrupos  (NombreGrupo))
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
      PRIMARY KEY(NoControlCargaMecatronica),
      
	  INDEX fkTblControlUsuariosTblCargasMecatronicaDatosPersonales_idx (NoControlCargaMecatronica ASC),
	  CONSTRAINT fkTblControlUsuariosTblCargasMecatronicaDatosPersonales
	  FOREIGN KEY (NoControlCargaMecatronica)
	  REFERENCES tblControlUsuarios (NoControlPrincipal),
      
	  INDEX fkTblCarrerasTESCITblCargasMecatronicaDatosPersonales_idx (IdCarreraCargaMecatronica ASC),
	  CONSTRAINT fkTblCarrerasTESCITblCargasMecatronicaDatosPersonales
	  FOREIGN KEY (IdCarreraCargaMecatronica)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
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
      PRIMARY KEY (NoControlCargaMateriaMecatronica),
      
	  INDEX fkTblControlUsuariosTblCargasMateriasMecatronica_idx (NoControlCargaMateriaMecatronica ASC),
	  CONSTRAINT fkTblControlUsuariosTblCargasMateriasMecatronica
	  FOREIGN KEY (NoControlCargaMateriaMecatronica)
	  REFERENCES tblControlUsuarios (NoControlPrincipal),
      
	  INDEX fkTblControlGruposTblCargasMateriasMecatronica_idx (GrupoCargaMecatronica ASC),
	  CONSTRAINT fkTblGruposTblCargasMateriasMecatronica
	  FOREIGN KEY (GrupoCargaMecatronica)
	  REFERENCES tblGrupos  (NombreGrupo))
      ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de cargas academicas de alumnos de Quimica 
-- SOLO DATOS PERSONALES
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblCargasQuimicaDatosPersonales(
      NoControlCargaQuimica INT NOT NULL, 
      NombreCaragaQuimica VARCHAR (60) NOT NULL,
      IdCarreraCargaQuimica INT NOT NULL,
      ReticulaCargaQuimica INT NOT NULL,
      PeriodoCargaQuimica VARCHAR (10) NOT NULL,
      PRIMARY KEY(NoControlCargaQuimica),
      
	  INDEX fkTblControlUsuariosTblCargasQuimicaDatosPersonales_idx (NoControlCargaQuimica ASC),
	  CONSTRAINT fkTblControlUsuariosTblCargasQuimicaDatosPersonales
	  FOREIGN KEY (NoControlCargaQuimica)
	  REFERENCES tblControlUsuarios (NoControlPrincipal),
      
	  INDEX fkTblCarrerasTESCITblCargasQuimicaDatosPersonales_idx (IdCarreraCargaQuimica ASC),
	  CONSTRAINT fkTblCarrerasTESCITblCargasQuimicaDatosPersonales
	  FOREIGN KEY (IdCarreraCargaQuimica)
	  REFERENCES tblCarrerasTESCI (IdCarrerasTESCI))
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
      PRIMARY KEY (NoControlCargaMateriaQuimica),
      
	  INDEX fkTblControlUsuariosTblCargasMateriasQuimica_idx (NoControlCargaMateriaQuimica ASC),
	  CONSTRAINT fkTblControlUsuariosTblCargasMateriasQuimica
	  FOREIGN KEY (NoControlCargaMateriaQuimica)
	  REFERENCES tblControlUsuarios (NoControlPrincipal),
      
	  INDEX fkTblControlGruposTblCargasMateriasQuimica_idx (GrupoCargaQuimica ASC),
	  CONSTRAINT fkTblGruposTblCargasMateriasQuimica
	  FOREIGN KEY (GrupoCargaQuimica)
	  REFERENCES tblGrupos  (NombreGrupo))
      ENGINE = InnoDB;
-- -------------------------------------------
-- Tabla de Direcciones de todos los usuarios del sistema 
-- -------------------------------------------
CREATE TABLE IF NOT EXISTS tblDirecciones (
     NoControlDireccion INT NOT NULL,
     CalleNumeroDireccion VARCHAR (130) NOT NULL,
     ColoniaDireccion VARCHAR (130) NOT NULL,
     MunicipioDireccion VARCHAR (50) NOT NULL,
     CodigoPostal INT NOT NULL,
     EstadoDirecion VARCHAR (40) NOT NULL,
     PaisDireccion VARCHAR (40) NOT NULL,
     PRIMARY KEY (NoControlDireccion),
     
	  INDEX fkTblControlUsuariosTblDirecciones_idx (NoControlDireccion ASC),
	  CONSTRAINT fkTblControlUsuariosTblDirecciones
	  FOREIGN KEY (NoControlDireccion)
	  REFERENCES tblControlUsuarios (NoControlPrincipal))
     ENGINE = InnoDB;
