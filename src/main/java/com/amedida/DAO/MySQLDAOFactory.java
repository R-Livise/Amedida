/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.amedida.DAO;

import com.amedida.Interfaces.ICarpinteroDAO;
import com.amedida.Interfaces.IClienteDAO;
import com.amedida.Interfaces.IPedidoMuebleDAO;
import com.amedida.Interfaces.IPropuestaCarpinteroDAO;

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
