<%-- 
    Document   : cliente_form_cotizacion
    Created on : 29/06/2019, 05:00:56 PM
    Author     : Rafael Livise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@ include file="master_head_1.jsp" %> 
    </head>
    <body>
        <%@ include file="cliente_verificacion_sesion.jsp" %> 
        <h1>Registrar Cotizacion</h1>
        <h2 class="usuario" >  <jsp:getProperty name="clienteBean1" property ="usuario" /> </h2>
        
                <form class="col" action="ServletAccCliente">
                    <span>Tipo :</span>
                    <input type="text" name="tipo" value="1">
                    </br>
                    <span>Titulo :</span>
                    <input type="text" name="titulo">
                    </br>
                    <span>Descripcion :</span>
                    <input type="text" name="descripcion">
                    </br>
                    <span>Imagen 1 :</span>
                    <input type="text" name="imagen1" value="en prueva no toques">
                    </br>
                    <span>Imagen 2 :</span>
                    <input type="text" name="imagen2" value="en prueva no toques">
                    </br>
                    <input type="hidden" name="ID_cliente" value="<jsp:getProperty name="clienteBean1" property ="id_cliente" />">
                    <input type="hidden" name="accion" value="cotizar">
                
                    <input type="submit" value="cotizar">
                </form>
    </body>
</html>
