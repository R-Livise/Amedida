/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

import java.io.InputStream;

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
    private InputStream imagen1;
    private byte[] imagen11;
    private InputStream imagen2;
    private byte[] imagen22;
    private int habilitado;

    public int getId_mueble() {
        return id_mueble;
    }

    public int getTipo() {
        return tipo;
    }

    public ClienteDTO getCliente() {
        return cliente;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public InputStream getImagen1() {
        return imagen1;
    }

    public byte[] getImagen11() {
        return imagen11;
    }

    public InputStream getImagen2() {
        return imagen2;
    }

    public byte[] getImagen22() {
        return imagen22;
    }

    public int getHabilitado() {
        return habilitado;
    }

    public void setId_mueble(int id_mueble) {
        this.id_mueble = id_mueble;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }

    public void setCliente(ClienteDTO cliente) {
        this.cliente = cliente;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setImagen1(InputStream imagen1) {
        this.imagen1 = imagen1;
    }

    public void setImagen11(byte[] imagen11) {
        this.imagen11 = imagen11;
    }

    public void setImagen2(InputStream imagen2) {
        this.imagen2 = imagen2;
    }

    public void setImagen22(byte[] imagen22) {
        this.imagen22 = imagen22;
    }

    public void setHabilitado(int habilitado) {
        this.habilitado = habilitado;
    }

    
    
    
    
    
}
