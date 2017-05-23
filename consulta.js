window.onload = function()
{
	$("#Consultar").click(enviar);
}

function enviar() 
{ 
  var cedula = $("#cedula").val();
  $.ajax({ 
  async:true, 
  type: "POST", 
  dataType: "html", contentType: "application/x-www-form-urlencoded", 
  url:"https://mauroburguer.000webhostapp.com/TRABAJO_FINAL/consultar.php", 
  data:"cedula="+cedula, beforeSend:inicioEnvio, success:llegadaDatos, 
  timeout:4000, 
  error:problemas }); 
  return false; 
} 

 function inicioEnvio(datos)
{
}

function llegadaDatos(datos)
{
	$("#resultado").html(datos);
}

function problemas()
{
	$("#resultado").text('Problemas en el servidor.');
}
