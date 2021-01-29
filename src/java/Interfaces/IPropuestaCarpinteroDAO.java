/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Bean.PropuestaCarpinteroDTO;
import java.util.List;

/**
 *
 * @author Rafael Livise
 */
public interface IPropuestaCarpinteroDAO {
    
        public boolean registrarPropuestaCarpintero(PropuestaCarpinteroDTO obj);
        public boolean actualizarPropuestaCarpintero(PropuestaCarpinteroDTO obj);
        public PropuestaCarpinteroDTO buscarPropuestaCarpintero(int cod);
        public List<PropuestaCarpinteroDTO> listarPropuestaCarpintero(int ID_Cotizacion);    
        public boolean eliminarPropuestaCarpintero(int cod);
}
