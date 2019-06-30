/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Interfaces.ICarpinteroDAO;
import Interfaces.IClienteDAO;
import Interfaces.IPedidoMuebleDAO;
import Interfaces.IPropuestaCarpinteroDAO;

/**
 *
 * @author LENOVO
 */
public class MySQLDAOFactory extends DAOFactory {

    @Override
    public ICarpinteroDAO getCarpintero()
    {
        return new MySqlCarpinteroDAO();
    }
    
    @Override
    public IClienteDAO getCliente()
    {
        return new MySqlClienteDAO();
    }

    @Override
    public IPedidoMuebleDAO getPedidoMueble() {
        return new MySqlPedidoMuebleDAO();
    }

    @Override
    public IPropuestaCarpinteroDAO getPropuestaCarpintero() {
        return new MySqlPropuestaCarpinteroDAO();
    }


}
