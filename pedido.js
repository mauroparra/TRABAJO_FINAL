window.onload = function()
{
 $("#comprar").click(enviar);
}

function enviar() 
{ 
  var cedula = $("#Cedula").val(); 
  var producto = $("#producto").val(); 
  var cantidad = $("#cantidad").val();
  var estado = $("#estado").val(); 
  

  $.ajax({ 
  async:true, 
  type: "POST", 
  dataType: "html", contentType: "application/x-www-form-urlencoded", 
  url:"https://mauroburguer.000webhostapp.com/TRABAJO_FINAL/pedido.php", 
  data:"cedula="+cedula+"&producto="+producto+"&cantidad="+cantidad+"&estado="+estado, beforeSend:inicioEnvio, success:llegadaDatos, 
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
