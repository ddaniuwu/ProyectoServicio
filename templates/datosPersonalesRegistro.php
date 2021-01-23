<?php
$conexion=mysqli_connect("127.0.0.1","AdminXD","pablo9884","bdtesci") or die ("Problemas de conexión");
$NumeroControlDPAlum=$_POST['numeroControl'];
$NomAlum=$_POST['nombres'];
$ApPAlum=$_POST['apP'];
$ApMAlum=$_POST['apM'];
$CorrreoInsAlum=$_POST['correoInst'];
$CorrreoPerAlum=$_POST['correoPer'];
$IdCarreraAlum=$_POST['IdCarrera'];
$GrupoAlum=$_POST['Grupo'];
$TipoUsuarioAlumnos=$_POST['tipoUsuario'];

$req=(strlen($NumeroControlDPAlum)* strlen($NomAlum)* strlen($ApPAlum)* 
strlen($ApMAlum)* strlen($CorrreoInsAlum)* strlen($CorrreoPerAlum)* strlen($IdCarreraAlum)* 
strlen($GrupoAlum)* strlen($TipoUsuarioAlumnos)) or die 
("No se completo la conexión satisfactoriamente");

$consulta = "call registroDatosPer('$NumeroControlDPAlum', '$NomAlum', '$ApPAlum', '$ApMAlum',
                                 '$CorrreoInsAlum','$CorrreoPerAlum','$IdCarreraAlum',
                                 '$GrupoAlum','$TipoUsuarioAlumnos')";
$resultado = mysqli_query($conexion,$consulta) or die 
("<h2>Verficar datos</h2>");
echo '
<h2>Registro completo</h2>
<h5>Gracias por su registro</h5>
<a href="http://localhost/proyectoServicio/index.html">Regresar</a>
'
?>