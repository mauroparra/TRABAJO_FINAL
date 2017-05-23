window.onload = function()
{
 $("#Registrarse").click(enviar);
}

function enviar() 
{ 
  var nombre = $("#Nombre").val(); 
  var cedula = $("#Cedula").val(); 
  var direccion = $("#Direccion").val();
  var barrio = $("#Barrio").val(); 
  var telefono = $("#Telefono").val();  
  var correo = $("#Email").val(); 

  $.ajax({ 
  async:true, 
  type: "POST", 
  dataType: "html", contentType: "application/x-www-form-urlencoded", 
  url:"https://mauroburguer.000webhostapp.com/TRABAJO_FINAL/registrar_usuario.php", 
  data:"nombre="+nombre+"&cedula="+cedula+"&direccion="+direccion+"&barrio="+barrio+"&telefono="+telefono+"&correo="+correo, beforeSend:inicioEnvio, success:llegadaDatos, 
  timeout:4000, 
  error:problemas }); 
  return false; 
} 

 function inicioEnvio(datos)
{
 
}

function llegadaDatos(datos)
{
 alert(datos);
}

function problemas()
{
 alert("Error");
}
