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
                <h3 class="modal-title col-10" style="width: 80%" id="exampleModalLabel">Mesas</h3>
                
            </div>
                <%
                    if (session.getAttribute("clienteBean1")!=null) {
                        
                    %>
            <form class="col" action="ServletAccCliente" method="post"  enctype="multipart/form-data">
                <input type="hidden" id="valorMueble" name="tipo" value="1">
                    <%@include  file="cliente_form_cotizacion_modal_interna.jsp" %>
            </form>        
                <%
                } else {
                %>
            <div class="modal-body">
                <button type="button" class="btn btn-warning" data-toggle="modal" data-dismiss="modal" data-target="#modalIniciarSession" title="iniciar secci�n"><i class="fa fa-user" aria-hidden="true">Iniciar Sesi�n</i></button>
                <button type="button" class="btn btn-warning" data-toggle="modal" data-dismiss="modal" data-target="#modalRegistrarse" title="registrase"><i class="fa fa-user-plus" aria-hidden="true">Registrarse</i></button>
                <h4 class="btn">como cliente</h4>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
            </div>
                <%
                    }
                %>

            
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
                <h3 class="modal-title col-10" style="width: 80%" id="exampleModalLabel">Roperos</h3>
            </div>
                <%
                    if (session.getAttribute("clienteBean1")!=null) {
                            
                        
                    %>
            <form class="col" action="ServletAccCliente" method="post"  enctype="multipart/form-data">
                <input type="hidden" id="valorMueble" name="tipo" value="2">
                    <%@include  file="cliente_form_cotizacion_modal_interna.jsp" %>
            </form>        
                <%
                } else {
                %>
            <div class="modal-body">
                <button type="button" class="btn btn-warning" data-toggle="modal" data-dismiss="modal" data-target="#modalIniciarSession" title="iniciar secci�n"><i class="fa fa-user" aria-hidden="true">Iniciar Sesi�n</i></button>
                <button type="button" class="btn btn-warning" data-toggle="modal" data-dismiss="modal" data-target="#modalRegistrarse" title="registrase"><i class="fa fa-user-plus" aria-hidden="true">Registrarse</i></button>
                <h4 class="btn">como cliente</h4>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
            </div>
                <%
                    }
                %>
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
                <h3 class="modal-title col-10" style="width: 80%" id="exampleModalLabel">Sillas</h3>
            </div>
                <%
                    if (session.getAttribute("clienteBean1")!=null) {
                            
                        
                    %>
            <form class="col" action="ServletAccCliente" method="post"  enctype="multipart/form-data">
                <input type="hidden" id="valorMueble" name="tipo" value="3">
                    <%@include  file="cliente_form_cotizacion_modal_interna.jsp" %>
            </form>        
                <%
                } else {
                %>
            <div class="modal-body">
                <button type="button" class="btn btn-warning" data-toggle="modal" data-dismiss="modal" data-target="#modalIniciarSession" title="iniciar secci�n"><i class="fa fa-user" aria-hidden="true">Iniciar Sesi�n</i></button>
                <button type="button" class="btn btn-warning" data-toggle="modal" data-dismiss="modal" data-target="#modalRegistrarse" title="registrase"><i class="fa fa-user-plus" aria-hidden="true">Registrarse</i></button>
                <h4 class="btn">como cliente</h4>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
            </div>
                <%
                    }
                %>
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
                <h3 class="modal-title col-10" style="width: 80%" id="exampleModalLabel">Sofas</h3>
            </div>
                <%
                    if (session.getAttribute("clienteBean1")!=null) {
                            
                        
                    %>
            <form class="col" action="ServletAccCliente" method="post"  enctype="multipart/form-data">
                <input type="hidden" id="valorMueble" name="tipo" value="1">
                    <%@include  file="cliente_form_cotizacion_modal_interna.jsp" %>
            </form>        
                <%
                } else {
                %>
            <div class="modal-body">
                <button type="button" class="btn btn-warning" data-toggle="modal" data-dismiss="modal" data-target="#modalIniciarSession" title="iniciar secci�n"><i class="fa fa-user" aria-hidden="true">Iniciar Sesi�n</i></button>
                <button type="button" class="btn btn-warning" data-toggle="modal" data-dismiss="modal" data-target="#modalRegistrarse" title="registrase"><i class="fa fa-user-plus" aria-hidden="true">Registrarse</i></button>
                <h4 class="btn">como cliente</h4>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
            </div>
                <%
                    }
                %>
        </div>
    </div>
</div> 