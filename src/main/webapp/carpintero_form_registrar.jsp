<%-- 
    Document   : carpintero_form_registrar
    Created on : 08/07/2019, 05:41:53 PM
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
        <h2>Registrar carpintero</h2>
                <form class="col" action="ServletCarpinero">
                    <span>Nombres :</span>
                    <input type="text" name="nombres">
                    </br>
                    <span>Apellido :</span>
                    <input type="text" name="apellidos">
                    </br>
                    <span>Numero de celular :</span>
                    <input type="text" name="ncelular">
                    </br>
                    <span>Referencias :</span>
                    <input type="text" name="referencias">
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
