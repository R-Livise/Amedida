/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Bean.PropuestaCarpinteroDTO;
import Interfaces.IPropuestaCarpinteroDAO;
import Utils.MysqlDBConexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Rafael Livise
 */
public class MySqlPropuestaCarpinteroDAO implements IPropuestaCarpinteroDAO{

    @Override
    public boolean registrarPropuestaCarpintero(PropuestaCarpinteroDTO obj) {
        Connection cn = null;
        PreparedStatement pstm = null;
        
        boolean resp = false;
        
        try{
            
            
            String sql = "INSERT INTO propuesta_carpinteros_muebles "
                    + "( ID_muebles , ID_carpintero, precio, mensaje) "
                    + "VALUES (?,?,?,?)";
            cn = MysqlDBConexion.getConexion();
            
            pstm=cn.prepareStatement(sql);
            pstm.setInt(1, obj.getMueble().getId_muebles());
            pstm.setInt(2, obj.getCarpintero().getId_carpintero());
            pstm.setDouble(3,obj.getPrecio());
            pstm.setString(4, obj.getMensaje());
            
            System.out.println("Se envia : " + pstm.toString());
            
            int i = pstm.executeUpdate();
            
            if(i==1)
                resp = true;
                
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Error registrar propuesta:" + e);
        }finally
        {
                try 
                {   
                        if(pstm != null) pstm.close();
                        if(cn!= null) cn.close();
                } catch (Exception e2) 
                {
                }
        }
        
        return resp;
    }

    @Override
    public boolean actualizarPropuestaCarpintero(PropuestaCarpinteroDTO obj) {
        
        Connection cn = null;
        PreparedStatement pstm = null;
        
        boolean resp = false;
        
        try{
            
            String sql = "UPDATE master_carpintero SET "
                    + "ID_muebles = ? , ID_carpintero = ? , precio = ?, mensaje = ? "
                    + "WHERE ID_propuesta = ?";
            cn = MysqlDBConexion.getConexion();
            
            pstm=cn.prepareStatement(sql);
            pstm.setInt(1, obj.getMueble().getId_muebles());
            pstm.setInt(2, obj.getCarpintero().getId_carpintero());
            pstm.setDouble(3,obj.getPrecio());
            pstm.setString(4, obj.getMensaje());
            pstm.setInt(5, obj.getId_propuesta());
            
            System.out.println("Se envia : " + pstm.toString());
            
            int i = pstm.executeUpdate();
            
            if(i==1)
                resp = true;
                
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Error actualizar propuesta:" + e);
        }finally
        {
                try 
                {   
                        if(pstm != null) pstm.close();
                        if(cn!= null) cn.close();
                } catch (Exception e2) 
                {
                }
        }
        
        return resp;
    }

    @Override
    public PropuestaCarpinteroDTO buscarPropuestaCarpintero(int cod) {
        PropuestaCarpinteroDTO obj = null;
        Connection cn = null;
        ResultSet rs = null;
        PreparedStatement pstm = null;
        
        try{
            
            String sql = "SELECT * FROM propuesta_carpinteros_muebles WHERE ID_propuesta = ?";
            cn = MysqlDBConexion.getConexion();
            
            pstm=cn.prepareStatement(sql);
            pstm.setInt(1, cod);
            
            System.out.println("Se envia : " + pstm.toString());
            
            rs=pstm.executeQuery();
            if(rs.next()){
                obj = new PropuestaCarpinteroDTO();
                obj.getMueble().setId_muebles(rs.getInt("ID_muebles"));
                obj.getCarpintero().setId_carpintero(rs.getInt("ID_carpintero"));
                obj.setPrecio(rs.getDouble("precio"));
                obj.setMensaje(rs.getString("mensaje"));                
            }
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Error buscar propuesta :" + e);
        }finally
        {
                try 
                {   
                        if(rs!= null) rs.close();
                        if(pstm!= null) pstm.close();
                        if(cn!= null) cn.close();
                } catch (Exception e2) 
                {
                }
        }
        
        return obj;
    }

    @Override
    public List<PropuestaCarpinteroDTO> listarPropuestaCarpintero(int ID_Cotizacion) {
        
        List<PropuestaCarpinteroDTO> data = new ArrayList<PropuestaCarpinteroDTO>();

        Connection conn= null;
        PreparedStatement pstm = null;
        ResultSet rs = null;
        try {
                conn = MysqlDBConexion.getConexion();
                String sql ="SELECT * from propuesta_carpinteros_muebles WHERE ID_muebles = ?";
                
                pstm = conn.prepareStatement(sql);
                pstm.setInt(1, ID_Cotizacion);
                
                rs = pstm.executeQuery();
                PropuestaCarpinteroDTO obj = null;
                while(rs.next()){
                        obj = new PropuestaCarpinteroDTO();
                        obj.getMueble().setId_muebles(rs.getInt("ID_muebles"));
                        obj.getCarpintero().setId_carpintero(rs.getInt("ID_carpintero"));
                        obj.setPrecio(rs.getDouble("precio"));
                        obj.setMensaje(rs.getString("mensaje"));  
                        data.add(obj);  
                }
                
                System.out.println(pstm.toString());
        } catch (Exception e) 
        {
                e.printStackTrace();
        } finally
        {
                try 
                {   
                        if(rs!= null) rs.close();
                        if(pstm!= null) pstm.close();
                        if(conn!= null) conn.close();
                } catch (Exception e2) 
                {
                }
        }

        return data;
    }

    @Override
    public boolean eliminarPropuestaCarpintero(int cod) {
        Connection cn = null;
        PreparedStatement pstm = null;
        
        boolean resp = false;
        
        try{
            
            String sql = "DELETE FROM propuesta_carpinteros_muebles WHERE ID_propuesta = ?";
            cn = MysqlDBConexion.getConexion();
            
            pstm=cn.prepareStatement(sql);
            pstm.setInt(1, cod);
            
            System.out.println("Se envia : " + pstm.toString());
            
            int i = pstm.executeUpdate();
            
            if(i==1)
                resp = true;
                
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Error eliminar propuesta:" + e);
        }finally
        {
                try 
                {   
                        if(pstm != null) pstm.close();
                        if(cn!= null) cn.close();
                } catch (Exception e2) 
                {
                }
        }
        
        return resp;
    }
    
}
