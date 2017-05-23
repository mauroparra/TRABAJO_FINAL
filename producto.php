<?php

  header("Access-Control-Allow-Origin: *"); 
  include("conexion.php");

  $tipo = $_POST["tipo"];

  $sql = "SELECT * FROM producto WHERE tipo = '" . $tipo . "'"; 
  
  
  $query = mysqli_query($conexion, $sql);
  
  $cantidadRegistros = mysqli_num_rows($query);
  
  if($cantidadRegistros > 0)
  {
    $tabla = "<table class='table table-striped'>";
    $tabla = $tabla . "<tr><th>Nombre</th><th>Ingredientes</th><th>Precio</th><th>Tipo</th></tr>";
    while($row = mysqli_fetch_array($query))
    {
      $tabla = $tabla . "<tr><td>" . $row["nombre"] . "</td>";
      $tabla = $tabla . "<td>" . $row["ingredientes"] . "</td>";
      $tabla = $tabla . "<td>" . $row["precio"] . "</td>";      
      $tabla = $tabla . "<td>" . $row["tipo"] . "</td></tr>";
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