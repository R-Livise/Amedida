/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

/**
 *
 * @author LENOVO
 */
public class CorreoDTO {

    public CorreoDTO() {
        this.contrasegna="ghfjdwjgypkqdgfn";
        this.usuarioCorreo="pruebas.web.amedida@gmail.com";
    }
    
    
    
    private String usuarioCorreo;
    private String contrasegna;
    private String rutaArchivo;
    private String nombreArchivo;
    private String destino;
    private String asunto;
    private String titulo;
    private String mensaje;

    public String getUsuarioCorreo() {
        return usuarioCorreo;
    }
    
    public String getContrasegna() {
        return contrasegna;
    }

    public String getRutaArchivo() {
        return rutaArchivo;
    }

    public void setRutaArchivo(String rutaArchivo) {
        this.rutaArchivo = rutaArchivo;
    }

    public String getNombreArchivo() {
        return nombreArchivo;
    }

    public void setNombreArchivo(String nombreArchivo) {
        this.nombreArchivo = nombreArchivo;
    }

    public String getDestino() {
        return destino;
    }

    public void setDestino(String destino) {
        this.destino = destino;
    }

    public String getAsunto() {
        return asunto;
    }

    public void setAsunto(String asunto) {
        this.asunto = asunto;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }
    
    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }
    
    
}
