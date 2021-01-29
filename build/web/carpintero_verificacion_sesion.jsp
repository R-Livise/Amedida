<%-- 
    Document   : carpintero_verificacion_sesion
    Created on : 08/07/2019, 04:59:05 PM
    Author     : Rafael Livise
--%>

<%@ page language="java" contentType="text/html" pageEncoding="ISO-8859-1"%>
    <%@page import="Bean.CarpinteroDTO"%>
        
        <% 
            if (request.getAttribute("carpinteroSesion")!=null && request.getAttribute("codigoVerificacion").equals("carpintero")){
            
                CarpinteroDTO carpintero = (CarpinteroDTO) request.getAttribute("carpinteroSesion");
                String Codigo = (String)request.getAttribute("codigoVerificacion");
        %>
        <jsp:useBean id="carpinteroBean1" class="JavaBean.ClienteBean" scope="session"></jsp:useBean>
        
        <jsp:setProperty name="carpinteroBean1" property ="id_cliente" value="<%=carpintero.getId_carpintero()%>" />
        <jsp:setProperty name="carpinteroBean1" property ="nombres" value="<%=carpintero.getNombres()%>" />
        <jsp:setProperty name="carpinteroBean1" property ="apellidos" value="<%=carpintero.getApellidos() %>" />
        <jsp:setProperty name="carpinteroBean1" property ="usuario" value="<%=carpintero.getUsuario() %>" />
        <jsp:setProperty name="carpinteroBean1" property ="codigoVerificacion" value="<%=Codigo%>" />
     
        
        
        <% 
            }
                if(session.getAttribute("carpinteroBean1") == null){
                response.sendRedirect("index.jsp");     
            }

        %>