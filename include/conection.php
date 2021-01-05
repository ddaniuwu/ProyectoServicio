<?php
$email=$_POST['mail'];
$password=$_POST['password'];
$mysqli= new mysqli("localhost","root","","BDtesci");
if($mysqli===false){
	die("ERROR:NO SE ESTABLECIO LA CONEXION".mysqli_connect_error());
}

$sql="SELECT NombrePrincipal,NoControlPrincipal FROM tblControlUsuarios WHERE NombrePrincipal = '$email' AND NoControlPrincipal  = '$password'";
if($result=$mysqli->query($sql)){
	if($result->num_rows>0){
		while($row=$result->fetch_array()){
			echo '<script type="text/javascript">
        alert("Bienvenido");
        window.location.href="../templates/home.html";
        </script> ';
          session_start();
        		$_SESSION["_usuario"] = $usu;

		}
		$result->close();
	}else{
		echo '<script type="text/javascript">
        alert("Nombre o contrseña incorrectos");
        window.location.href="../index.html";
        </script> ';
	}
}else{
	echo "ERROR:No fue posible ejecutar $sql".$mysqli->error;
}

}
$mysqli->close();
?>