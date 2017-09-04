<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  
<html>
<head>
<title> Registrar Al Usuario </title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<meta charset="utf-8" />
</head>

<body onload="load();">

<div id= "itmsColumn">
<h1> Bienvenido en Nuestra Pagina Art de Code </h1>	<br>
<input type="hidden" id="user_id">       
<label for="dni">Dni :</label><input type="number" id="dni" name="dni" maxlength="10" size="30" required="required" name="dni"> <br />
<label for="nombre">Nombre :</label>      <input type="text" id="nombre" size="30" required="required" name="nombre"> <br />  
<label for="apellido">Apellido: </label>  <input type="text" id="apellido" size="30" required="required" name="apellido"> <br />
<label for="apellido">Email: </label>     <input type="email" id="email" size="30"  required="required" name="email"> <br />
<label for="telefono">Telefono: </label>  <input type="number" id="telefono" maxlength="13" size="30" required="required" name="telefono"> <br />
<label for="dirccion">Direccion: </label>  <input type="text" id="dirccion" size="30" required="required" name="dirccion"> <br />
<button onclick="validar(); submit(); "> Guardar</button>     
<h1 >  </h1>
</div>
      
    <script type="text/javascript">
    function validar(){
    	
    	dni= $('#dni').val();
    	nombre = $('#nombre').val();
     	apellido = $('#apellido').val();
     	email = $('#email').val();
     	telefono = $('#telefono').val();	
    	dirccion = $('#dirccion').val();
      	
    	if (dni==""){
    		alert('Maximo Números permido 10');
        }	
    		if (nombre == ""){
           		alert('Ingresa el Nombre');          		
       		}
    		
        	if (apellido == ""){
               		alert('Ingresa el Apellido');
           	}
        	if (email == ""){
           		alert('Ingresa el Email');          		
       	 }
        	if (telefono == ""){
           		alert('Ingresa el Telefono');          		
       	}
        	if (dirccion == ""){
           		alert('Ingresa la Direccion');
           		
       	}
        	
    }
    
    	   
    data = "";
    submit = function(){
          
            $.ajax({
                url:'saveOrUpdate',
                type:'POST',
                data:{user_id:$("#user_id").val(),dni:$('#dni').val(),nombre:$('#nombre').val(),
                       apellido:$('#apellido').val(), email:$('#email').val(), telefono:$('#telefono').val(),
                	   dirccion:$('#dirccion').val()},
                success: function(response){
                        alert(response.message);
                        load();    
                }              
            });        
    }
     
    delete_ = function(id){     
         $.ajax({
            url:'delete',
            type:'POST',
            data:{user_id:id},
            success: function(response){
                    alert(response.message);
                    load();
            }              
        });
}
     

   edit = function (index){
        $("#user_id").val(data[index].user_id);
        $("#dni").val(data[index].dni);
        $("#nombre").val(data[index].nombre);
        $("#apellido").val(data[index].apellido);
        $("#email").val(data[index].email);
        $("#telefono").val(data[index].telefono);
        $("#dirccion").val(data[index].dirccion);
         
    }
     
     
    load = function(){ 
        $.ajax({
            url:'list',
            type:'POST',
            success: function(response){
                    data = response.data;
                    $('.tr').remove();
                    for(i=0; i<response.data.length; i++){                  
                        $("#table").append("<tr class='tr'> <td> "+response.data[i].dni+" </td> <td> "+response.data[i].nombre+" </td>  <td> "+response.data[i].apellido+" </td>  <td> " +response.data[i].email+" </td>  <td> "+response.data[i].telefono+" </td>  <td> "+response.data[i].dirccion+
                        " </td> <td> <a href='#' onclick= edit("+i+");> Edit </a>  </td> </td> <td> <a href='#' onclick='delete_("+response.data[i].user_id+");'> Delete </a>  </td> </tr>");
                    }          
            }              
        });
         
    }
         
    </script>
     
</body>

</html>