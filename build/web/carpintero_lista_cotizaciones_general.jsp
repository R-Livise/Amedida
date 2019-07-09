<%-- 
    Document   : carpintero_lista_cotizaciones_general
    Created on : 08/07/2019, 07:57:34 PM
    Author     : Rafael Livise
--%>

<%@page import="Bean.PedidoMuebleDTO"%>
<%@page import="Bean.ClienteDTO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
           <%@ include file="master_head_1.jsp" %> 
    </head>
    <body>
        
        <div class="container">
            
		<%
                    List<PedidoMuebleDTO> ped = (List<PedidoMuebleDTO>)request.getAttribute("cotizaciones");
                    if(ped!= null)
                    {
                        for(PedidoMuebleDTO aux: ped){
                        
                            String TipoTexto = "";
                            
                            switch(aux.getTipo()){
                                
                                case 1:
                                    TipoTexto = "mesa";
                                    break;
                                case 2:
                                    TipoTexto = "sofa";
                                    break;
                                case 3:
                                    TipoTexto = "ropero";
                                    break;
                                case 4:
                                    TipoTexto = "silla";
                                    break;
                                default:
                                    TipoTexto = "no tiene selecion";
                            }
                                                       
                                                           
		%>	  

                        <div style="border:#ec971f solid 2px; ">
                            <div style="border-bottom: #ec971f solid 2px; ">
                            <%= TipoTexto%>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title"><%= aux.getTitulo()%></h5>
                                <p class="card-text"><%= aux.getDescripcion()%></p>
                                <a href="carpintero_form_propuesta.jsp?ID=<%=aux.getId_muebles()%>&ID_cliente=<%=aux.getCliente().getId_cliente()%>&titulo=<%= aux.getTitulo()%>&des=<%= aux.getDescripcion()%>&tipot=<%= TipoTexto%>" class="btn btn-primary">Proponer</a>

                            </div>
                        </div>
                        </br>
		<%      }
                    } %>	  
        </div>        
                            
    </body>
</html>
