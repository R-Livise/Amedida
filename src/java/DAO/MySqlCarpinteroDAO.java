/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Bean.CarpinteroDTO;
import Interfaces.ICarpinteroDAO;
import Utils.MysqlDBConexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author LENOVO
 */
public class MySqlCarpinteroDAO implements ICarpinteroDAO {

    @Override
    public boolean registrarCarpintero(CarpinteroDTO obj) {
        Connection cn = null;
        PreparedStatement pstm = null;
        
        boolean resp = false;
        
        try{
            
            
            String sql = "INSERT INTO master_carpintero "
                    + "( nombres , apellidos, ncelular, referencias, nnotas, "
                    + "estrellas, correo, usuario, password, monedas) "
                    + "VALUES (?,?,?,?,?,?,?,?,?,?)";
            cn = MysqlDBConexion.getConexion();
            
            pstm=cn.prepareStatement(sql);
            pstm.setString(1, obj.getNombres());
            pstm.setString(2, obj.getApellidos());
            pstm.setString(3, obj.getNcelular());
            pstm.setString(4, obj.getReferencias());
            pstm.setInt(5, obj.getNnota());
            pstm.setDouble(6, obj.getEstrellas());
            pstm.setString(7, obj.getCorreo());
            pstm.setString(8, obj.getUsuario());
            pstm.setString(9, obj.getContrasegna());
            pstm.setInt(10, obj.getMonedas());
            
            
            
            System.out.println("Se envia : " + pstm.toString());
            
            int i = pstm.executeUpdate();
            
            if(i==1)
                resp = true;
                
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Error registrar carpintero:" + e);
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
    public boolean actualizarCarpintero(CarpinteroDTO obj) {
        
        Connection cn = null;
        PreparedStatement pstm = null;
        
        boolean resp = false;
        
        try{
            
            String sql = "UPDATE master_carpintero SET "
                    + "nombres = ? , apellidos = ? , ncelular = ?, "
                    + "referencias = ?, nnota = ?, estrellas = ?, correo = ? , "
                    + "usuario = ? , password = ?, monedas = ? "
                    + "WHERE ID_carpintero = ?";
            cn = MysqlDBConexion.getConexion();
            
            pstm=cn.prepareStatement(sql);
            pstm.setString(1, obj.getNombres());
            pstm.setString(2, obj.getApellidos());
            pstm.setString(3, obj.getNcelular());
            pstm.setString(4, obj.getReferencias());
            pstm.setInt(5, obj.getNnota());
            pstm.setDouble(6, obj.getEstrellas());
            pstm.setString(7, obj.getCorreo());
            pstm.setString(8, obj.getUsuario());
            pstm.setString(9, obj.getContrasegna());
            pstm.setInt(10, obj.getMonedas());
            pstm.setInt(11, obj.getId_carpintero());
            
            System.out.println("Se envia : " + pstm.toString());
            
            int i = pstm.executeUpdate();
            
            if(i==1)
                resp = true;
                
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Error actualizar carpintero:" + e);
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
    public CarpinteroDTO buscarCarpintero(int cod) {
        CarpinteroDTO obj = null;
        Connection cn = null;
        ResultSet rs = null;
        PreparedStatement pstm = null;
        
        try{
            
            String sql = "SELECT * FROM master_carpintero WHERE ID_carpintero = ?";
            cn = MysqlDBConexion.getConexion();
            
            pstm=cn.prepareStatement(sql);
            pstm.setInt(1, cod);
            
            System.out.println("Se envia : " + pstm.toString());
            
            rs=pstm.executeQuery();
            if(rs.next()){
                obj = new CarpinteroDTO();
                obj.setNombres(rs.getString("nombres"));
                obj.setApellidos(rs.getString("apellidos"));
                obj.setNcelular(rs.getString("ncelular"));
                obj.setReferencias(rs.getString("referencias"));
                obj.setNnota(rs.getInt("nnotas"));
                obj.setEstrellas(rs.getDouble("estrellas"));
                obj.setCorreo(rs.getString("correo"));
                obj.setUsuario(rs.getString("usuario"));
                obj.setContrasegna(rs.getString("password"));
                obj.setId_carpintero(rs.getInt("ID_cliente"));
                
            }
            
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Error buscar carpintero :" + e);
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
    public List<CarpinteroDTO> listarCarpintero() {
        List<CarpinteroDTO> data = new ArrayList<CarpinteroDTO>();

        Connection conn= null;
        PreparedStatement pstm = null;
        ResultSet rs = null;
        try {
                conn = MysqlDBConexion.getConexion();
                String sql ="select * from master_carpintero";
                pstm = conn.prepareStatement(sql);
                rs = pstm.executeQuery();
                CarpinteroDTO obj = null;
                while(rs.next()){
                        obj = new CarpinteroDTO();
                        obj.setNombres(rs.getString("nombres"));
                        obj.setApellidos(rs.getString("apellidos"));
                        obj.setApellidos(rs.getString("ncelular"));
                        obj.setApellidos(rs.getString("referencias"));
                        obj.setApellidos(rs.getString("nnotas"));
                        obj.setApellidos(rs.getString("estrellas"));
                        obj.setCorreo(rs.getString("correo"));
                        obj.setUsuario(rs.getString("usuario"));
                        obj.setContrasegna(rs.getString("password"));
                        obj.setId_carpintero(rs.getInt("ID_carpintero"));
                        data.add(obj);
                }
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
    public boolean eliminarCarpintero(int cod) {
        Connection cn = null;
        PreparedStatement pstm = null;
        
        boolean resp = false;
        
        try{
            
            String sql = "DELETE FROM master_carpintero WHERE ID_carpintero = ?";
            cn = MysqlDBConexion.getConexion();
            
            pstm=cn.prepareStatement(sql);
            pstm.setInt(1, cod);
            
            System.out.println("Se envia : " + pstm.toString());
            
            int i = pstm.executeUpdate();
            
            if(i==1)
                resp = true;
                
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Error eliminar carpintero:" + e);
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
    public CarpinteroDTO iniciarSesion(String user, String password) {
        CarpinteroDTO obj = null;
        Connection cn = null;
        ResultSet rs = null;
        PreparedStatement pstm = null;
        
        try{
            
            String sql = "SELECT * FROM master_carpintero WHERE usuario = ? and password = ? ";
            cn = MysqlDBConexion.getConexion();
            
            pstm=cn.prepareStatement(sql);
            pstm.setString(1, user);
            pstm.setString(2, password);
            
            System.out.println("Se envia : " + pstm.toString());
            
            rs=pstm.executeQuery();
            if(rs.next()){
                obj = new CarpinteroDTO();
                obj.setNombres(rs.getString("nombres"));
                obj.setApellidos(rs.getString("apellidos"));
                obj.setCorreo(rs.getString("correo"));
                obj.setUsuario(rs.getString("usuario"));
                obj.setContrasegna(rs.getString("password"));
                obj.setId_carpintero(rs.getInt("ID_carpintero"));
                
            }
            
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Error buscar carpintero:" + e);
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
    
}
