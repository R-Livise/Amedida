<%-- 
    Document   : cliente_form_cotizacion_modal_interna
    Created on : 17/07/2019, 10:56:15 PM
    Author     : Rafael Livise
--%>


                <div class="modal-body">   
                    <div class="form-group">
                        <label for="titulo">Titulo</label>
                        <input type="text" name="titulo" class="form-control" id="titulo" aria-describedby="Escriba el titulo de su cotizacion" placeholder="Escriba los Nombres">

                    </div>
                    <div class="form-group">
                        <label for="descripcion">Descripcion</label>
                        <textarea type="text" name="descripcion" class="form-control" id="descripcion" placeholder="Describa su cotizacion">
                        </textarea>                    
                    </div>
                    <div class="form-group">
                        <label for="imagen1">Imagen 1</label>
                        <input type="file" name="imagen1" class="" id="imagen1" >
                    </div> 
                    <div class="form-group">
                        <label for="imagen2">Imagen 2</label>
                        <input type="file" name="imagen2" class="" id="imagen2" >
                        
                    </div>
                    <input type="hidden" name="ID_cliente" value="<jsp:getProperty name="clienteBean1" property ="id_cliente" />">
                    <input type="hidden" name="accion" value="cotizar">
                    </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-warning">Enviar</button>
                </div>
