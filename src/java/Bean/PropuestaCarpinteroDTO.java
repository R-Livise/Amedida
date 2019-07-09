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
public class PropuestaCarpinteroDTO {
    
    public PropuestaCarpinteroDTO(){
        this.mueble = new PedidoMuebleDTO();
        this.carpintero = new CarpinteroDTO();
    }
    
    private int id_propuesta;
    private PedidoMuebleDTO mueble;
    private CarpinteroDTO carpintero;
    private Double precio; 
    private String mensaje;

    public int getId_propuesta() {
        return id_propuesta;
    }

    public void setId_propuesta(int id_propuesta) {
        this.id_propuesta = id_propuesta;
    }

    public PedidoMuebleDTO getMueble() {
        return mueble;
    }

    public void setMueble(PedidoMuebleDTO mueble) {
        this.mueble = mueble;
    }

    public CarpinteroDTO getCarpintero() {
        return carpintero;
    }

    public void setCarpintero(CarpinteroDTO carpintero) {
        this.carpintero = carpintero;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }
    
    
    
}
