<%-- 
    Document   : carpintero_menu
    Created on : 08/07/2019, 04:56:37 PM
    Author     : Rafael Livise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cliente_menu</title>
        <%@ include file="master_head_1.jsp" %> 
    </head>
    <body>
        <%@ include file="carpintero_verificacion_sesion.jsp" %> 
        <div class="container" >
            <h1>carpintero menu</h1>
            <div class="row " >
                    
                    <div class="col-md-2" >
                            <a class="effect-1" href="index.jsp"  >Inicio</a>
                            <br>
                            <a class="effect-1" href="carpintero_form_registrar.jsp" >Registrar</a>
                            <br>
                            <a class="effect-1" href="ServletCarpintero?accion=listar" >Listar</a>
                            <br>
                            <a class="effect-1" href="ServletAccCarpintero?accion=listarCotizacionesGeneral" >Listar Cotizaciones</a>
                            <br>
                            <a class="effect-1" href="carpintero_form_cotizacion.jsp" >Cotizar</a>
                            <br>    
                            <a class="effect-1" href="ServletCarpintero?accion=logout" >Salir</a>

                    </div>
                <div class="col-md-4 ">
                    <%
                        String x=(String) request.getAttribute("mensaje");
                        if(x!=null){

                            %> 

                            <h2><%=x %></h2>    
                     <%  
                        }
                     %> 
                </div>
            </div>    
        </div>
    </body>
</html>
