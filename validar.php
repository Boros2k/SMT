
<?php
//include("connect_db.php");

//$miconexion = new connect_db;


session_start();
	require("connect_db.php");

#	$username=$_POST['mail'];
	$pass=$_POST['pass'];


	//la variable  $mysqli viene de connect_db que lo traigo con el require("connect_db.php");
	$sql2=mysqli_query($mysqli,"SELECT * FROM tecnico WHERE pass='$pass'");
	if($f2=mysqli_fetch_assoc($sql2)){
		if($pass==$f2['pass']){
			$_SESSION['id_tecnico']=$f2['id_tecnico'];
			$_SESSION['name']=$f2['name'];
			$_SESSION['rol']=$f2['rol'];

			echo '<script>alert("BIENVENIDO")</script> ';
			echo "<script>location.href='admin.php'</script>";
		
		}
	}


	$sql=mysqli_query($mysqli,"SELECT * FROM operador WHERE pass='$pass'");
	if($f=mysqli_fetch_assoc($sql)){
		if($pass==$f['pass']){
			$_SESSION['id_operador']=$f['id_operador'];
			$_SESSION['name']=$f['name'];
			$_SESSION['rol']=$f['rol'];

			header("Location: index2.php");
		}
	}else{
		
		echo '<script>alert("ESTE USUARIO NO EXISTE")</script> ';
		
		echo "<script>location.href='index.php'</script>";	

	}

?>