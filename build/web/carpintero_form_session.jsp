<%-- 
    Document   : carpintero_form_session
    Created on : 08/07/2019, 04:34:13 PM
    Author     : Rafael Livise
--%>

        <h2>Inicar Seccion Carpintero</h2>
                <form class="col" action="ServletCarpintero">
                    <span>Usuario :</span>
                    <input type="text" name="usuario">
                    </br>
                    <span>Contraseña</span>
                    <input type="text" name="password">
                    </br>
                    
                    
                    <input type="hidden" name="accion" value="login">
                
                    <input type="submit" value="enviar">
                </form>
