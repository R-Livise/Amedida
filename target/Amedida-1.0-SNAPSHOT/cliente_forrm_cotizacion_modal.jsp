<%-- 
    Document   : cliente_forrm_cotizacion_modal
    Created on : 16/07/2019, 10:54:51 AM
    Author     : Rafael Livise
--%>

<div class="modal fade" id="formMesas" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h3 class="modal-title" id="exampleModalLabel">Mesas</h3>
                
            </div>
            <div class="modal-body">
                <%
                    if (session.getAttribute("clienteBean1")!=null) {
                            
                        
                    %>
                
                <form class="col" action="ServletAccCliente" method="post"  enctype="multipart/form-data">
                    <input type="hidden" name="tipo" value="1">
                    <%@include  file="cliente_form_cotizacion_modal_interna.jsp" %>
                </form>
                <%
                } else {
                %>
                <button type="button" class="btn btn-warning" data-toggle="modal" data-dismiss="modal" data-target="#modalIniciarSession" title="iniciar sección"><i class="fa fa-user" aria-hidden="true">Iniciar Sesión</i></button>
                <button type="button" class="btn btn-warning" data-toggle="modal" data-dismiss="modal" data-target="#modalRegistrarse" title="registrase"><i class="fa fa-user-plus" aria-hidden="true">Registrarse</i></button>
                <%
                    }
                %>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<!--fin modelboostrap-->

<div class="modal fade" id="formRoperos" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h3 class="modal-title" id="formRoperos">Roperos</h3>
            </div>
            <div class="modal-body">
                <%
                    if (session.getAttribute("clienteBean1")!=null) {
                            
                        
                    %>
                
                <form class="col" action="ServletAccCliente" method="post"  enctype="multipart/form-data">
                    <input type="hidden" name="tipo" value="2">
                    <%@include  file="cliente_form_cotizacion_modal_interna.jsp" %>
                </form>
                <%
                } else {
                %>
                <button type="button" class="btn btn-warning" data-toggle="modal" data-dismiss="modal" data-target="#modalIniciarSession" title="iniciar sección"><i class="fa fa-user" aria-hidden="true">Iniciar Sesión</i></button>
                <button type="button" class="btn btn-warning" data-toggle="modal" data-dismiss="modal" data-target="#modalRegistrarse" title="registrase"><i class="fa fa-user-plus" aria-hidden="true">Registrarse</i></button>
                <%
                    }
                %>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<!--fin modelboostrap-->

<div class="modal fade" id="formSillas" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h3 class="modal-title" id="formSillas">Sillas</h3>
            </div>
            <div class="modal-body">
                <%
                    if (session.getAttribute("clienteBean1")!=null) {
                            
                        
                    %>
                
                <form class="col" action="ServletAccCliente" method="post"  enctype="multipart/form-data">
                    <input type="hidden" name="tipo" value="3">
                    <%@include  file="cliente_form_cotizacion_modal_interna.jsp" %>
                </form>
                <%
                } else {
                %>
                <button type="button" class="btn btn-warning" data-toggle="modal" data-dismiss="modal" data-target="#modalIniciarSession" title="iniciar sección"><i class="fa fa-user" aria-hidden="true">Iniciar Sesión</i></button>
                <button type="button" class="btn btn-warning" data-toggle="modal" data-dismiss="modal" data-target="#modalRegistrarse" title="registrase"><i class="fa fa-user-plus" aria-hidden="true">Registrarse</i></button>
                <%
                    }
                %>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div> 
<!--fin modelboostrap-->

<div class="modal fade" id="formSofas" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h3 class="modal-title" id="formSillas">Sofas</h3>
            </div>
            <div class="modal-body">
                <%
                    if (session.getAttribute("clienteBean1")!=null) {
                            
                        
                    %>
                <form class="col" action="ServletAccCliente" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="tipo" value="4">
                    <%@include  file="cliente_form_cotizacion_modal_interna.jsp" %>
                </form>
                <%
                } else {
                %>
                <button type="button" class="btn btn-warning" data-toggle="modal" data-dismiss="modal" data-target="#modalIniciarSession" title="iniciar sección"><i class="fa fa-user" aria-hidden="true">Iniciar Sesión</i></button>
                <button type="button" class="btn btn-warning" data-toggle="modal" data-dismiss="modal" data-target="#modalRegistrarse" title="registrase"><i class="fa fa-user-plus" aria-hidden="true">Registrarse</i></button>
                <%
                    }
                %>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div> 