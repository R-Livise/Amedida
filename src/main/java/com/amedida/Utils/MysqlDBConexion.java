/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.amedida.Utils;

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
                        //con=DriverManager.getConnection("us-cdbr-iron-east-02.cleardb.net","b0e7d1737e712b","49df93e2");
			con=DriverManager.getConnection("jdbc:mysql://us-cdbr-iron-east-02.cleardb.net/heroku_9b7961b886e5004","b536e4aa36bd2a","b3a9325d");
                        System.out.println("Conexxion exitosa");
                }catch (Exception e) {
			e.printStackTrace();
                        System.out.println("ERROR CONEXION: " + e.toString());
		}
		return con;
	}    
}
