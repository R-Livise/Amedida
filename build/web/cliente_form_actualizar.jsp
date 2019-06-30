<%-- 
    Document   : cliente_form_actualizar
    Created on : 29/06/2019, 12:34:39 AM
    Author     : Rafael Livise
--%>


<%@page import="Bean.ClienteDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Actualizar informcion del cliente</h1>
        <%
                    ClienteDTO cl = (ClienteDTO)request.getAttribute("cliente");
                    if(cl!= null)
                    {
		%>
        
        <form class="col" action="ServletCliente">
                    <h3> Codigo : <%=cl.getId_cliente()%></h3>
                    
                    </br>

                    <span>Nombre :</span>
                    <input type="text" name="nombres" value="<%=cl.getNombres() %>">
                    </br>
                    <span>Apellido </span>
                    <input type="text" name="apellidos" value="<%=cl.getApellidos()%>">
                    </br>
                    <span>Correo</span>
                    <input type="text" name="correo" value="<%=cl.getCorreo()%>">
                    </br>
                    <span>Usuario</span>
                    <input type="text" name="usuario" value="<%=cl.getUsuario()%>" >
                    </br>
                    <span>Contraseña</span>
                    <input type="text" name="password" value="<%=cl.getContrasegna()%>">
                    </br>
                    
                    <input type="hidden" name="ID" value="<%=cl.getId_cliente()%>">
                    <input type="hidden" name="accion" value="actualizar">
                
                    <input type="submit" value="enviar">
                </form>
        <%
            }
        %>
    </body>
</html>
