/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Bean.PedidoMuebleDTO;
import java.util.List;

/**
 *
 * @author Rafael Livise
 */
public interface IPedidoMuebleDAO {
    
    public boolean registrarPedidoMueble(PedidoMuebleDTO obj);
    public boolean actualizarPedidoMueble(PedidoMuebleDTO obj);
    public PedidoMuebleDTO buscarPedidoMueble(int cod);
    public List<PedidoMuebleDTO> listarPedidoMueble();    
    public List<PedidoMuebleDTO> listarPedidoMueble(int ID_Cliente);    
    public boolean eliminarPedidoMueble(int cod);
    
}
