<%-- 
    Document   : cliente_form_sesion
    Created on : 29/06/2019, 11:49:17 PM
    Author     : Rafael Livise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Inicar Seccion Cliente</h2>
                <form class="col" action="ServletCliente">
                    <span>Usuario :</span>
                    <input type="text" name="usuario">
                    </br>
                    <span>Contraseña</span>
                    <input type="text" name="password">
                    </br>
                    
                    
                    <input type="hidden" name="accion" value="login">
                
                    <input type="submit" value="enviar">
                </form>
    </body>
</html>
