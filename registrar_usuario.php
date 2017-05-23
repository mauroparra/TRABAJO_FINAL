<?php

    header("Access-Control-Allow-Origin: *"); 
    include("conexion.php");
    
 
 $nombre = $_POST["nombre"];
 $cedula = $_POST["cedula"];
 $direccion = $_POST["direccion"];
 $barrio = $_POST["barrio"];
 $telefono = $_POST["telefono"];
 $correo = $_POST["correo"];
 
 $sql = "INSERT INTO usuario(nombre, cedula, direccion, barrio, telefono, email) VALUES ('" . $nombre . "','" . $cedula . "','" . $direccion . "','" . $barrio . "','" . $telefono . "','" . $correo . "')";

 $query = mysqli_query($conexion, $sql);
 
 if($query)
 {
  echo "Se ingreso el usuario";
 }
 else
 {
  echo "error al ingresar el usuario";
 }
 
 mysqli_close($conexion);
?>"
