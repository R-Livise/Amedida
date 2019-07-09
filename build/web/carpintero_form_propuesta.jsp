<%-- 
    Document   : carpintero_form_propuesta
    Created on : 08/07/2019, 06:20:14 PM
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
        <%@ include file="carpintero_verificacion_sesion.jsp" %> 
        
        <%
            String idMueble = request.getParameter("ID");
            String idCliente = request.getParameter("ID_cliente");
            String titulo = request.getParameter("titulo");
            String descripcion = request.getParameter("des");
            String tipot = request.getParameter("tipot");
                        %>
                        
        <div class="container">
            <h1>Registrar Cotizacion</h1>
            <h2 class="usuario" >  <jsp:getProperty name="carpinteroBean1" property ="usuario" /> </h2>
            
            <div class="row">
                <div class="col-md-6">
                    <div style="border:#ec971f solid 2px; ">
                            <div style="border-bottom: #ec971f solid 2px; ">
                            <%= tipot%>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title"><%= titulo%></h5>
                                <p class="card-text"><%= descripcion%></p>
                            </div>
                        </div>
                </div>

                <div class="col-md-6">
                        <form class="col" action="ServletAccCarpintero">
                            <span>Precio :</span>
                            <input type="text" name="precio">
                            </br>
                            <span>Mensaje :</span>
                            <input type="text" name="mensaje">
                            </br>
                            </br>
                            <input type="hidden" name="ID_pedido" value="<%= idMueble%>">
                            <input type="hidden" name="ID_cliente" value="<%= idCliente%>">
                            <input type="hidden" name="ID_carpintero" value="<jsp:getProperty name="carpinteroBean1" property ="id_cliente" />">
                            <input type="hidden" name="accion" value="proponer">

                            <input type="submit" value="enviar Propuesta">
                        </form>
                </div>            
            </div>        
        </div>            
    </body>
</html>
