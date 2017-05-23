<?php
	header("Access-Control-Allow-Origin: *"); 
	include("conexion.php");

	$cedula = $_POST["cedula"];
	
	$sql = "SELECT * FROM pedidos WHERE cedula = '" . $cedula . "'";
	
	$query = mysqli_query($conexion, $sql);
	
	$cantidadRegistros = mysqli_num_rows($query);
	
	if($cantidadRegistros > 0)
	{
		$tabla = "<table class='table table-striped'>";
		$tabla = $tabla . "<tr><th>cedula</th><th>producto</th><th>cantidad</th><th>estado</th><th>fecha</th></tr>";
		while($row = mysqli_fetch_array($query))
		{
			$tabla = $tabla . "<tr><td>" . $row["cedula"] . "</td>";
			$tabla = $tabla . "<td>" . $row["producto"] . "</td>";
			$tabla = $tabla . "<td>" . $row["cantidad"] . "</td>";
			$tabla = $tabla . "<td>" . $row["estado"] . "</td>";
			$tabla = $tabla . "<td>" . $row["fecha"] . "</td></tr>";
		}		

		$tabla = $tabla . "</table>";
		echo $tabla;
	}
	else
	{
		echo "No hay registros";
	}

	mysqli_close($conexion);
?>