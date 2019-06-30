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
public class CarpinteroDTO {

    public CarpinteroDTO() {
    }
    
    private int id_carpintero;
    private String nombres;
    private String apellidos;
    private String ncelular;
    private String referencias;
    private int nnota;
    private double estrellas;
    private String correo;
    private String usuario;
    private String contrasegna;
    private int monedas;

    public int getId_carpintero() {
        return id_carpintero;
    }

    public void setId_carpintero(int id_carpintero) {
        this.id_carpintero = id_carpintero;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getNcelular() {
        return ncelular;
    }

    public void setNcelular(String ncelular) {
        this.ncelular = ncelular;
    }

    public String getReferencias() {
        return referencias;
    }

    public void setReferencias(String referencias) {
        this.referencias = referencias;
    }

    public int getNnota() {
        return nnota;
    }

    public void setNnota(int nnota) {
        this.nnota = nnota;
    }

    public double getEstrellas() {
        return estrellas;
    }

    public void setEstrellas(double estrellas) {
        this.estrellas = estrellas;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContrasegna() {
        return contrasegna;
    }

    public void setContrasegna(String contrasegna) {
        this.contrasegna = contrasegna;
    }

    public int getMonedas() {
        return monedas;
    }

    public void setMonedas(int monedas) {
        this.monedas = monedas;
    }

    
}
