<%-- 
    Document   : carpintero_verificacion_sesion
    Created on : 08/07/2019, 04:59:05 PM
    Author     : Rafael Livise
--%>

<%@page import="com.amedida.JavaBean.CarpinteroBean"%>
<%@ page language="java" contentType="text/html" pageEncoding="ISO-8859-1"%>
    <%@page import="com.amedida.Bean.CarpinteroDTO"%>
        
        <% 
            if (request.getAttribute("carpinteroSesion")!=null && request.getAttribute("codigoVerificacion").equals("carpintero")){
            
                CarpinteroDTO carpintero = (CarpinteroDTO) request.getAttribute("carpinteroSesion");
                String Codigo = (String)request.getAttribute("codigoVerificacion");
        %>
        <jsp:useBean id="carpinteroBean1" class="com.amedida.JavaBean.CarpinteroBean" scope="session"></jsp:useBean>
        
        <jsp:setProperty name="carpinteroBean1" property ="id_carpintero" value="<%=carpintero.getId_carpintero()%>" />
        <jsp:setProperty name="carpinteroBean1" property ="nombres" value="<%=carpintero.getNombres()%>" />
        <jsp:setProperty name="carpinteroBean1" property ="apellidos" value="<%=carpintero.getApellidos() %>" />
        <jsp:setProperty name="carpinteroBean1" property ="usuario" value="<%=carpintero.getUsuario() %>" />
        <jsp:setProperty name="carpinteroBean1" property ="codigoVerificacion" value="<%=Codigo%>" />
     
        
        
        <% 
            }
                if((CarpinteroBean)session.getAttribute("carpinteroBean1") == null){
                response.sendRedirect("index.jsp");     
            }

        %>