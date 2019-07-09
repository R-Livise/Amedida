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
public class PedidoMuebleDTO {

    public PedidoMuebleDTO() {
        this.cliente = new ClienteDTO();
    }
    
    
    
    private int id_mueble;
    private int tipo;
    private ClienteDTO cliente;
    private String titulo;
    private String descripcion;
    private String imagen1;
    private String imagen2;

    public int getId_muebles() {
        return id_mueble;
    }

    public void setId_muebles(int id_mueble) {
        this.id_mueble = id_mueble;
    }

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }
    
    public ClienteDTO getCliente() {
        return cliente;
    }

    public void setCliente(ClienteDTO cliente) {
        this.cliente = cliente;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getImagen1() {
        return imagen1;
    }

    public void setImagen1(String imagen1) {
        this.imagen1 = imagen1;
    }

    public String getImagen2() {
        return imagen2;
    }

    public void setImagen2(String imagen2) {
        this.imagen2 = imagen2;
    }
    
    
    
}
