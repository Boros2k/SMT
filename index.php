<!DOCTYPE html>
<html>
<head>

	<meta charset="utf-8">
		<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
		<link rel="stylesheet" href="bootstrap/css/bootstrap-responsive.css">
		<link rel="stylesheet" type="text/css" href="estilos/estilos.css">
		
	<title>Proyecto SMT</title>
</head>
<body background="images/car.jpg" style="background-attachment: fixed" >
	<center><div class="tit"><h2 style="color: #022026; ">Inicio de sesión</h2>
		<center><div class="Ingreso">

	<table border="0" align="center" valign="middle">
		<tr>
		<td rowspan=2>
		<form action="validar.php" method="post">

		<table border="0">

<!-- 	
		<tr><td></td>  </td> 	<tr><td><label style="font-size: 14pt"><b>Usuario: </b></label>
			<td width=80> <input class="form-group has-success" style="border-radius:15px;" type="password" name="pass"></td></tr>
 -->
        <tr><td><label style="font-size: 14pt"><b>Usuario: </b></label></td>
			<td witdh=80><input class="form-group has-success" style="border-radius:15px;" type="password" name="pass"></td></tr>
		<tr><td></td>
			<td width=80 align=center><input class="btn btn-primary" type="submit" value="Aceptar"></td>
			</tr></tr></table>
		</form>
<br>


<!-- formulario registro 

<form method="post" action="" >
  <fieldset>
    <legend  style="font-size: 18pt"><b>Registro</b></legend>
    <div class="form-group">
      <label style="font-size: 14pt"><b>Ingresa tu nombre</b></label>
      <input type="text" name="realname" class="form-control" placeholder="Ingresa tu nombre" />
    </div>
    <div class="form-group">
      <label style="font-size: 14pt; color: #FFFFFF;"><b>Ingresa tu email</b></label>
      <input type="text" name="nick" class="form-control"  required placeholder="Ingresa mail"/>
    </div>
    <div class="form-group">
      <label style="font-size: 14pt; color: #FFFFFF;"><b>Ingresa tu Password</b></label>
      <input type="password" name="pass" class="form-control"  placeholder="Ingresa contraseña" />
    </div>
    <div class="form-group">
      <label style="font-size: 14pt"><b>Repite tu contraseña</b></label>
      <input type="password" name="rpass" class="form-control" required placeholder="repite contraseña" />
    </div>
      
    </div>
   
    <input  class="btn btn-danger" type="submit" name="submit" value="Registrarse"/>

  </fieldset>
</form>
</div>

-->
<!--  Fin formulario registro -->

<?php 
		if(isset($_POST['submit'])){
			require("registro.php");
		}
	?>

		</td>
		</tr>
		</table>
		</div></center></div></center>

<!-- Query -->

<?php
	require('connect_db.php');	
	$query="SELECT * FROM viewprincipal";	
	$resultado=mysqli_query($mysqli, $query);	
?>
<!-- View -->
<div class="container">																
				<div class="row">
				<div class="col-sm col-md col-lg col-xl col-xxl"> </div>
					</div>
					  <p><img src="images/utec.png" width="200" height="58"></p> <!-- comentario -->
						<p><br>
					  </p>
					  <h3>Captura de tiempo muerto</h3>
					  <div class="table-responsive">
						<table class="table table-hover"> 
							<thead>
								<tr>
									<td><b>FOLIO</b></td>
                                    <td><b>OPERADOR</b></td>
									<td><b>TURNO</b></td>
									<td><b>LINEA</b></td>
									<td><b>EQUIPO</b></td>
									<td><b>FALLA</b></td>                                		<td><b>HORA ABIERTO</b></td>
                                    <td><b>HORA PROCESO</b></td>
                                    <td><b>HORA CERRADO</b></td>
									<td><b>ESTADO</b></td>
									<td><b>ATIENDE</b></td>
									<td><b>COMENTARIO</b></td>
								</tr>
							</thead>
							<tbody>
							
								<?php 
								while($row=$resultado->fetch_assoc()){ 
								?>
								<tr>
									<td>
									<?php echo $row['id_new_folio'];?>
									</td>

									<td>
									<?php echo $row['id_operador'];?>
									</td>

									<td>
									<?php echo $row['id_turno'];?>
									</td>

									<td>
									<?php echo $row['id_linea'];?>
									</td>

									<td>
									<?php echo $row['id_equipo'];?>
									</td>

									<td>
									<?php echo $row['id_falla'];?>
									</td>

                                    <td>
									<?php echo $row['id_fecha_comienzo'];?>
									</td>
                                    
                                    <td>
									<?php echo $row['id_fecha_atendido'];?>
									</td>
                                    
                                    <td>
									<?php echo $row['id_fecha_cerrado'];?>
									</td>
                                    
									<td>
									<?php echo $row['id_estado'];?>
									</td>
									
									<td>
									<?php echo $row['id_tecnico'];?>
									</td>
									
									<td>
									<?php echo $row['comentario'];?>
									</td>
								
									
								</tr>
								<?php 
								} 
								?>							
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>


	
</body>
</html>