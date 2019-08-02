<%-- 
    Document   : cliente_lista_propuestas
    Created on : 09/07/2019, 11:54:36 AM
    Author     : Rafael Livise
--%>

<%@page import="Bean.PropuestaCarpinteroDTO"%>
<%@page import="java.util.List"%>
<%@page import="Bean.PedidoMuebleDTO"%>
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
            <div class="container">
                <%
                    PedidoMuebleDTO ped = (PedidoMuebleDTO)request.getAttribute("pedidoMueble");
                    
                        String TipoTexto = "";
                            
                            switch(ped.getTipo()){
                                
                                case 1:
                                    TipoTexto = "Mesa";
                                    break;
                                case 2:
                                    TipoTexto = "Sofa";
                                    break;
                                case 3:
                                    TipoTexto = "Ropero";
                                    break;
                                case 4:
                                    TipoTexto = "Silla";
                                    break;
                                default:
                                    TipoTexto = "no tiene selecion";
                            }
                                                       
                                                           
		%>	  

                        <div class="row">
                    <div class="col-md-2" ></div>
                    <div class="col-md-8">
                        <table class="table bg-warning text-dark text-center border-table ">
                            <thead class="border-table">
                                <tr class="border-table">
                                    <th class="text-center text-uppercase border-table"><h3><%= TipoTexto%></h3></th>  
                                </tr>
                            </thead>
                            <tbody class="border-table">
                                <tr class="text-justify p-2 ">
                                    
                                    <td class="text-capitalize p-2 ">
                                        <h3><b><%= ped.getTitulo()%></b></h3>
                                        <h4><%= ped.getDescripcion()%></h4>
                                    </td>
                                    
                                </tr>
                            </tbody>


                        </table>
                    </div>
                </div>
                        </br>
		<%  
                     	
                    List<PropuestaCarpinteroDTO> pro = (List<PropuestaCarpinteroDTO>)request.getAttribute("listaPropuestas");
                    
                    if(pro!= null && pro.size()!=0)
                    {
                %>
                <div class="row">
                    <div class="col-md-1" ></div>
                    <div class="col-md-10">  
                        <div class="scroll">
                <table class="table  bg-white text-dark text-center border-table">
                        <tr class="border-table bg-white">
                            <th class="border-table"><h3>Carpintero</h3></th>
                            <th class="border-table"><h3>Precio</h3></th>
                            <th class="border-table"><h3>Estrellas</h3></th>
                            <th class="border-table"><h3>Mesaje</h3></th>
                            <th class="border-table" colspan="2"><h3>Acciones</h3></th>
                        </tr>
                <%
                        for(PropuestaCarpinteroDTO aux: pro){
                %>
                    
                        <tr>
                            <td class="border-table">
                                <h4>
                                    <b><%= aux.getCarpintero().getUsuario()%></b>
                <%
                            if(aux.getAprobacion()==1){
                %>
                                    <i ><span class="glyphicon glyphicon-ok" aria-hidden="true"></span></i>           
                <%
                            }
                %> 
                                
                               
                                </h4>
                            </td>
                            <td class="border-table"><h4><%= aux.getPrecio()%></h4></td>
                            <td class="border-table"><h4><%=aux.getCarpintero().getEstrellas()%> </h4></td>
                            <td class="border-table"><h4><%= aux.getMensaje()%></h4></td>
                                        <td  class="border-table" colspan="2" align="center">
                                            <a href="ServletAccCliente?accion=mostrarPerfilCarpintero&ID_carpintero=<%= aux.getCarpintero().getId_carpintero()%>&ID_propuesta=<%= aux.getId_propuesta()%>">
                                            <i> Ver informacion <span class="glyphicon glyphicon-ok" aria-hidden="true"></span> </i>  
                                        </td>
                                
                                </tr>
                  
                
		<%      
                        }
                %>
                    </table>
                    </div>
                <%
                    }else{
        
                %>
                <h1 class="bg-warning">No tiene propuestas por ahora.</h1> 
		<%      
                    }
                    
                %>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>


        <!--fin modelboostrap--> 


        <!--fin modelboostrap--> 


        <!--fin modelboostrap-->


        <!--fin modelboostrap-->


        <!--fin modelboostrap-->


        <a href="#home" data-scroll class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
        <!-- ALL JS FILES -->
        <script src="js/all.js"></script>
        <!-- ALL PLUGINS -->
        <script src="js/custom.js"></script>
        <script src="js/portfolio.js"></script>
        <script src="js/hoverdir.js"></script> 

    </body>
</html>
