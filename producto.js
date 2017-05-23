window.onload = function()
{
	$("#hamburguesa").click(hamburguesa);
  $("#perro").click(perro);
  $("#arepa").click(arepa);
  $("#pizza").click(pizza);
}

function hamburguesa() 
{ 
  $.ajax({ 
  async:true, 
  type: "POST", 
  dataType: "html", contentType: "application/x-www-form-urlencoded", 
  url:"https://mauroburguer.000webhostapp.com/TRABAJO_FINAL/producto.php", 
  data:"tipo=hamburguesa", beforeSend:inicioEnvio, success:llegadaDatos, 
  timeout:4000, 
  error:problemas }); 
  return false; 
} 

function perro() 
{ 
  $.ajax({ 
  async:true, 
  type: "POST", 
  dataType: "html", contentType: "application/x-www-form-urlencoded", 
  url:"https://mauroburguer.000webhostapp.com/TRABAJO_FINAL/producto.php", 
  data:"tipo=perro", beforeSend:inicioEnvio, success:llegadaDatos, 
  timeout:4000, 
  error:problemas }); 
  return false; 
} 

function arepa() 
{ 
  $.ajax({ 
  async:true, 
  type: "POST", 
  dataType: "html", contentType: "application/x-www-form-urlencoded", 
  url:"https://mauroburguer.000webhostapp.com/TRABAJO_FINAL/producto.php", 
  data:"tipo=arepa", beforeSend:inicioEnvio, success:llegadaDatos, 
  timeout:4000, 
  error:problemas }); 
  return false; 
} 

function pizza() 
{   
  $.ajax({ 
  async:true, 
  type: "POST", 
  dataType: "html", contentType: "application/x-www-form-urlencoded", 
  url:"https://mauroburguer.000webhostapp.com/TRABAJO_FINAL/producto.php", 
  data:"tipo=pizza", beforeSend:inicioEnvio, success:llegadaDatos, 
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
