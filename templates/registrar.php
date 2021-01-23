

<?php
$conexion=mysqli_connect("127.0.0.1","AdminXD","pablo9884","bdtesci") or die ("Problemas de conexión");
$NumeroControlU=$_POST['NoControl'];
$NombreU=$_POST['NombreCom'];
$Cont1U=$_POST['p1'];
$Cont2U=$_POST['p2'];
$TipoUsuarioUsu=$_POST['tipoUsuario'];

$req=(strlen($NumeroControlU)* strlen($NombreU)* strlen($Cont1U)* strlen($Cont2U)* strlen($TipoUsuarioUsu)) or die 
("No se completo la conexión satisfactoriamente");

$consulta = "call registroUsuario('$NumeroControlU', '$NombreU', '$Cont1U', '$Cont2U', '$TipoUsuarioUsu')";
$resultado = mysqli_query($conexion,$consulta) or die 
("<h2>Verficar datos</h2>");
echo '
<h2>Registro completo</h2>
<h5>Gracias por su registro</h5>
<a href="http://localhost/proyectoServicio/templates/datosPersonales.html">Continuar</a>
'
?>