<?php

    header("Access-Control-Allow-Origin: *"); 
    include("conexion.php");
    
 
 $cedula = $_POST["cedula"];
 $producto = $_POST["producto"];
 $cantidad = $_POST["cantidad"];
 $estado = $_POST["estado"];
 
 
 $sql = "INSERT INTO pedidos(cedula, producto, cantidad, estado) VALUES ('" . $cedula . "','" . $producto . "','" . $cantidad . "','" . $estado . "')";

 $query = mysqli_query($conexion, $sql);
 
 if($query)
 {
  echo "Se ingreso el pedido";
 }
 else
 {
  echo "error al ingresar el pedido";
 }
 
 mysqli_close($conexion);
?>"
