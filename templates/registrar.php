<?php
$conexion=mysqli_connect("127.0.0.1","AdminXD","pablo9884","bdtesci") or die ("Problemas de conexión");
$NoControl=$_POST['NoControl'];
$NombreCom=$_POST['NombreCom'];
$req=(strlen($NoControl)* strlen($NombreCom)) or die 
("No se completo la conexión satisfactoriamente");

$consulta = "call registro('$NoControl','$NombreCom')";
$resultado = mysqli_query($conexion,$consulta) or die 
("<h2>Verficar datos</h2>");
echo '
<h2>Registro completo</h2>
<h5>Gracias por su registro</h5>
<a href="http://localhost/proyectoServicio/index.html">Regresar</a>
'


?>