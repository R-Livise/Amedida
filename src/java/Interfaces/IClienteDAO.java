/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Bean.ClienteDTO;
import java.util.List;

/**
 *
 * @author Rafael Livise
 */
public interface IClienteDAO {
    
    public boolean registrarCliente(ClienteDTO obj);
    public boolean actualizarCliente(ClienteDTO obj);
    public ClienteDTO buscarCliente(int cod);
    public List<ClienteDTO> listarCliente();    
    public boolean eliminarCliente(int cod);
    public ClienteDTO iniciarSesion(String user, String password);
}
