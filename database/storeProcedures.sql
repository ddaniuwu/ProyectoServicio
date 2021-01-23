-- Error
-- DELIMITER //
--CREATE PROCEDURE registroPrincipal(in numeroControl INT ,in nombreCompleto VARCHAR  (50))
--BEGIN 
--declare totalRegistros int;
--SELECT COUNT (*)
--INTO totalRegistros
--from tblcontrolusuarios
--where NoControlPrincipal;  

--if totalRegistros >= 1 then
--INSERT INTO tblControlUsuarios values (numeroControl,nombreCompleto);
--else 
-- SIGNAL SQLSTATE 'HY000'
--SET message_text='Error verficar datos';
--END IF;
--END //
--DELIMITER;

-- --------------------------------------------------------
-- --------------------------------------------------------
-- --------------------------------------------------------

-- Registro Usuarios
DELIMITER //
CREATE PROCEDURE registroUsuario(in NumeroControlU INT, 
in NombreU VARCHAR (75), in Cont1U VARCHAR (30), in Cont2U VARCHAR (30), 
in TipoUsuarioUsu INT)

BEGIN

INSERT INTO tblControlUsuarios values (NumeroControlU, NombreU, Cont1U, Cont2U, TipoUsuarioUsu);

END //
DELIMITER;

-- --------------------------------------------------------
-- --------------------------------------------------------
-- Datos personales 
-- --------------------------------------------------------
-- --------------------------------------------------------

DELIMITER //
CREATE PROCEDURE registroDatosPer(in NumeroControlDPAlum INT, 
in NomAlum VARCHAR (60), in ApPAlum VARCHAR (60), in ApMAlum VARCHAR (60), 
in CorrreoInsAlum VARCHAR (80), in CorrreoPerAlum VARCHAR (80), 
in IdCarreraAlum INT, in GrupoAlum VARCHAR (15), in TipoUsuarioAlumnos INT)

BEGIN

INSERT INTO tblDatosPersonalesAlumnos values (NumeroControlDPAlum, NomAlum, ApPAlum, ApMAlum,
                                      CorrreoInsAlum,CorrreoPerAlum,IdCarreraAlum,
                                      GrupoAlum,TipoUsuarioAlumnos);

END //
DELIMITER;
call registroDatosPer (1234,'Pablo','z','s','pablo@/xd','pablo@/xd',1,'373M',1)
drop PROCEDURE registroDatosPer;