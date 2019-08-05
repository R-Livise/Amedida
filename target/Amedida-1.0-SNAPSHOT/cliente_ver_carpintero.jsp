<%-- 
    Document   : cliente_ver_carpintero
    Created on : 15/07/2019, 11:38:58 PM
    Author     : Rafael Livise
--%>

<%@page import="com.amedida.Bean.CarpinteroDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@ include file="master_head_1.jsp" %>
    </head>
    <body class="building_version" data-spy="scroll" data-target=".header">
        <%@ include file="cliente_nav_principal.jsp" %> 
        <div id="home" class="parallax first-section" data-stellar-background-ratio="0.4" style="background-image:url('images/fondo.jpg');">
            
        
        <%
            CarpinteroDTO car = (CarpinteroDTO)request.getAttribute("carpintero");
            
        %>
            <div class="container">
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10">
                        <h2>Perfil del carpintero</h2>
                        <table class="table  bg-white text-danger text-center  ">

                            <tr>
                                <td><b>Usuario</b></td>
                                <td><%=car.getUsuario()%></td>
                            </tr>
                            <tr>
                                <td><b>Referencias</b></td>
                                <td><%=car.getReferencias()%></td>
                            </tr>
                            <tr>
                                <td><b>Estrellas</b></td>
                                <td><%=car.getEstrellas()%></td>
                            </tr>
                            <tr>
                                <td><b>Nunero de celular</b></td>
                                <td><%=car.getNcelular()%></td>
                            </tr>
                            <tr>
                                <td><b>Correo</b></td>
                                <td><%=car.getCorreo()%></td>
                            </tr>
                            
                        </table>
                    </div>
                </div>    
            </div>
        </div>
    
    
        <%@ include file="master_script_1.jsp" %> 
    </body>
</html>
