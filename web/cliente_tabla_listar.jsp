<%-- 
    Document   : cliente_form_listar
    Created on : 29/06/2019, 12:38:21 AM
    Author     : Rafael Livise
--%>

<%@page import="java.util.List"%>
<%@page import="Bean.ClienteDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table class="table">
            <tr>
                <th>Codigo</th><th>Nombres</th><th>Apellidos</th><th>Correo</th><th>Usuario</th><th>Contraseña</th><th colspan="2">ACCIONES</th>
            </tr>
		<%
                    List<ClienteDTO> cl = (List<ClienteDTO>)request.getAttribute("clientes");
                    if(cl!= null)
                    {
                        for(ClienteDTO aux: cl)
                            {
		%>	  
                                <tr class="grilla_campo">
                                        <td><%= aux.getId_cliente()%></td>
                                        <td><%= aux.getNombres()%></td>
                                        <td><%= aux.getApellidos()%></td>
                                        <td><%= aux.getCorreo()%></td>
                                        <td><%= aux.getUsuario()%></td>
                                        <td><%= aux.getContrasegna()%></td>
                                        <td colspan="2" align="center">
                                            <a href="ServletCliente?accion=buscar&ID=<%=aux.getId_cliente()%>">
                                            <img alt="Editar" title="Editar" src="images\edit.jpg" width="30px" height="30px"></a>
                                            <a href="ServletCliente?accion=eliminar&ID=<%=aux.getId_cliente()%>">
                                            <img alt="Eliminar" title="Eliminar" src="images\delete.jpg"  width="30px" height="30px"></a>
                                        </td>
                                
                                </tr>
		<%          }
                    } %>	  
			  
	</table>
    </body>
</html>
