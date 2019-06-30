/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class MysqlDBConexion 
{
        static{
                    try {
                            Class.forName("com.mysql.jdbc.Driver");
                    }catch (ClassNotFoundException e) {
                            e.printStackTrace();
                    }
            }
	public static Connection getConexion(){
		Connection con=null;
		try {
			con=DriverManager.getConnection("jdbc:mysql://localhost/web_amedida","root","");
                        System.out.println("Conexxion exitosa");
                }catch (Exception e) {
			e.printStackTrace();
                        System.out.println("ERROR CONEXION: " + e.toString());
		}
		return con;
	}    
}
