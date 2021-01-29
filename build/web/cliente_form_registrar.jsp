<%-- 
    Document   : cliente_form_registrar
    Created on : 28/06/2019, 04:08:21 PM
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
        <h2>Registrar cliente</h2>
                <form class="col" action="ServletCliente">
                    <span>Nombre :</span>
                    <input type="text" name="nombres">
                    </br>
                    <span>Apellido </span>
                    <input type="text" name="apellidos">
                    </br>
                    <span>Correo</span>
                    <input type="text" name="correo">
                    </br>
                    <span>Usuario</span>
                    <input type="text" name="usuario">
                    </br>
                    <span>Contraseña</span>
                    <input type="text" name="password">
                    </br>
                    
                    <input type="hidden" name="accion" value="registrar">
                
                    <input type="submit" value="enviar">
                </form>
        
    </body>
</html>
