/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Bean.CarpinteroDTO;
import java.util.List;

/**
 *
 * @author LENOVO
 */
public interface ICarpinteroDAO {
    
        
    public boolean registrarCarpintero(CarpinteroDTO obj);
    public boolean actualizarCarpintero (CarpinteroDTO obj);
    public CarpinteroDTO buscarCarpintero(int cod);
    public List<CarpinteroDTO> listarCarpintero();    
    public boolean eliminarCarpintero(int cod);
    public CarpinteroDTO iniciarSesion(String user, String password);
    
}
