<%-- 
    Document   : cliente_verificacion_sesion
    Created on : 29/06/2019, 10:11:26 PM
    Author     : Rafael Livise
--%>

<%@ page language="java" contentType="text/html" pageEncoding="ISO-8859-1"%>
    <%@page import="Bean.ClienteDTO"%>
        
        <% 
            if (request.getAttribute("clienteSesion")!=null && request.getAttribute("codigoVerificacion").equals("cliente")){
            
                ClienteDTO cliente = (ClienteDTO) request.getAttribute("clienteSesion");
                String Codigo = (String)request.getAttribute("codigoVerificacion");
        %>
        <jsp:useBean id="clienteBean1" class="JavaBean.ClienteBean" scope="session"></jsp:useBean>
        
        <jsp:setProperty name="clienteBean1" property ="id_cliente" value="<%=cliente.getId_cliente()%>" />
        <jsp:setProperty name="clienteBean1" property ="nombres" value="<%=cliente.getNombres()%>" />
        <jsp:setProperty name="clienteBean1" property ="apellidos" value="<%=cliente.getApellidos() %>" />
        <jsp:setProperty name="clienteBean1" property ="usuario" value="<%=cliente.getUsuario() %>" />
        <jsp:setProperty name="clienteBean1" property ="codigoVerificacion" value="<%=Codigo%>" />
     
        
        
        <% 
            }
                if(session.getAttribute("clienteBean1") == null){
                response.sendRedirect("index.jsp");     
            }

        %>
        
