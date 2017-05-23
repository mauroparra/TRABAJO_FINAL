"window.onload = function()
{
 $("#btnRegistrar").click(enviar);
}

function enviar() 
{ 
  var id = $("#id").val(); 
  var nombre = $("#nombre").val(); 
  var ingredientes = $("#ingredientes").val();
  var precio = $("#precio").val(); 
  

  $.ajax({ 
  async:true, 
  type: "POST", 
  dataType: "html", contentType: "application/x-www-form-urlencoded", 
  url:"producto.php", 
  data:"id="+id+"&nombre="+nombre+"&ingredientes="+ingredientes+"&precio="+precio, beforeSend:inicioEnvio, success:llegadaDatos, 
  timeout:4000, 
  error:problemas }); 
  return false; 
} 

 function inicioEnvio(datos)
{
 
}

function llegadaDatos(datos)
{
 
}

function problemas()
{
 
}
