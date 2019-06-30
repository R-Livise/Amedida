<%-- 
    Document   : from_prueba
    Created on : 27/06/2019, 01:11:38 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
                <form class="col" action="ServletCarpintero">
                    <span>usuario :</span>
                    <input type="text" name="usuario">
                    </br>
                    <span>titulo: </span>
                    <input type="text" name="titulo">
                    </br>
                    <span>propuesta:</span>
                    <input type="text" name="mensaje">
                    </br>
                    
                    <input type="hidden" name="accion" value="enviarPropuest">
                
                    <input type="submit" value="enviar">
                </form>
    </body>
</html>
