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
 * @author Rafael Livise
 */
public abstract class DAOFactory {
    
	public static final int MYSQL = 1;
	public static final int SQL_SERVER = 2;
	public static final int ORACLE = 3;

        //Registran los daos
	public abstract ICarpinteroDAO getCarpintero();
        public abstract IClienteDAO getCliente();
        public abstract IPedidoMuebleDAO getPedidoMueble();
        public abstract IPropuestaCarpinteroDAO getPropuestaCarpintero();
			
	//Se va retornar la subfabrica segun el tipo
	public static  DAOFactory getDAOFactory(int tipo)
        {
			switch (tipo) 
			{
				case MYSQL:
					return new MySQLDAOFactory();
				case SQL_SERVER:
					//Se crea la subfabrica cuando se necesite con SqlServer
					return null;
				case ORACLE:
					//Se crea la subfabrica cuando se necesite con Oracle
					return null;
			}
		return null;
        }

}
