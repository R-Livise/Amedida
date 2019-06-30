/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Bean.ClienteDTO;
import Interfaces.IClienteDAO;
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
public class MySqlClienteDAO implements IClienteDAO{

    @Override
    public boolean registrarCliente(ClienteDTO obj) {
        Connection cn = null;
        PreparedStatement pstm = null;
        
        boolean resp = false;
        
        try{
            
            String sql = "INSERT INTO `master_cliente`"
                    + "(`nombres`, `apellidos`, `correo`, `usuario`, `password`) "
                    + "VALUES (?,?,?,?,?)";
            cn = MysqlDBConexion.getConexion();
            
            pstm=cn.prepareStatement(sql);
            pstm.setString(1, obj.getNombres());
            pstm.setString(2, obj.getApellidos());
            pstm.setString(3, obj.getCorreo());
            pstm.setString(4, obj.getUsuario());
            pstm.setString(5, obj.getContrasegna());
            
            System.out.println("Se envia : " + pstm.toString());
            
            int i = pstm.executeUpdate();
            
            if(i==1)
                resp = true;
                
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Error registrar cliente:" + e);
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
    public boolean actualizarCliente(ClienteDTO obj) {
        
        Connection cn = null;
        PreparedStatement pstm = null;
        
        boolean resp = false;
        
        try{
            
            String sql = "UPDATE master_cliente SET "
                    + "nombres = ? , apellidos = ? , correo = ? ,"
                    + "usuario = ? , password = ? WHERE ID_cliente = ?";
            cn = MysqlDBConexion.getConexion();
            
            pstm=cn.prepareStatement(sql);
            pstm.setString(1, obj.getNombres());
            pstm.setString(2, obj.getApellidos());
            pstm.setString(3, obj.getCorreo());
            pstm.setString(4, obj.getUsuario());
            pstm.setString(5, obj.getContrasegna());
            pstm.setInt(6, obj.getId_cliente());
            
            System.out.println("Se envia : " + pstm.toString());
            
            int i = pstm.executeUpdate();
            
            if(i==1)
                resp = true;
                
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Error registrar cliente:" + e);
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
    public ClienteDTO buscarCliente(int cod) {
        ClienteDTO obj = null;
        Connection cn = null;
        ResultSet rs = null;
        PreparedStatement pstm = null;
        
        try{
            
            String sql = "SELECT * FROM master_cliente WHERE ID_cliente = ?";
            cn = MysqlDBConexion.getConexion();
            
            pstm=cn.prepareStatement(sql);
            pstm.setInt(1, cod);
            
            System.out.println("Se envia : " + pstm.toString());
            
            rs=pstm.executeQuery();
            if(rs.next()){
                obj = new ClienteDTO();
                obj.setNombres(rs.getString("nombres"));
                obj.setApellidos(rs.getString("apellidos"));
                obj.setCorreo(rs.getString("correo"));
                obj.setUsuario(rs.getString("usuario"));
                obj.setContrasegna(rs.getString("password"));
                obj.setId_cliente(rs.getInt("ID_cliente"));
                
            }
            
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Error buscar cliente:" + e);
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
    public List<ClienteDTO> listarCliente() {
        List<ClienteDTO> data = new ArrayList<ClienteDTO>();

        Connection conn= null;
        PreparedStatement pstm = null;
        ResultSet rs = null;
        try {
                conn = MysqlDBConexion.getConexion();
                String sql ="select * from master_cliente";
                pstm = conn.prepareStatement(sql);
                rs = pstm.executeQuery();
                ClienteDTO obj = null;
                while(rs.next()){
                        obj = new ClienteDTO();
                        obj.setNombres(rs.getString("nombres"));
                        obj.setApellidos(rs.getString("apellidos"));
                        obj.setCorreo(rs.getString("correo"));
                        obj.setUsuario(rs.getString("usuario"));
                        obj.setContrasegna(rs.getString("password"));
                        obj.setId_cliente(rs.getInt("ID_cliente"));
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
    public boolean eliminarCliente(int cod) {
        
        Connection cn = null;
        PreparedStatement pstm = null;
        
        boolean resp = false;
        
        try{
            
            String sql = "DELETE FROM master_cliente WHERE ID_cliente = ?";
            cn = MysqlDBConexion.getConexion();
            
            pstm=cn.prepareStatement(sql);
            pstm.setInt(1, cod);
            
            System.out.println("Se envia : " + pstm.toString());
            
            int i = pstm.executeUpdate();
            
            if(i==1)
                resp = true;
                
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Error eliminar cliente:" + e);
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
    public ClienteDTO iniciarSesion(String user, String password) {
        ClienteDTO obj = null;
        Connection cn = null;
        ResultSet rs = null;
        PreparedStatement pstm = null;
        
        try{
            
            String sql = "SELECT * FROM master_cliente WHERE usuario = ? and password = ? ";
            cn = MysqlDBConexion.getConexion();
            
            pstm=cn.prepareStatement(sql);
            pstm.setString(1, user);
            pstm.setString(2, password);
            
            System.out.println("Se envia : " + pstm.toString());
            
            rs=pstm.executeQuery();
            if(rs.next()){
                obj = new ClienteDTO();
                obj.setNombres(rs.getString("nombres"));
                obj.setApellidos(rs.getString("apellidos"));
                obj.setCorreo(rs.getString("correo"));
                obj.setUsuario(rs.getString("usuario"));
                obj.setContrasegna(rs.getString("password"));
                obj.setId_cliente(rs.getInt("ID_cliente"));
                
            }
            
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Error buscar cliente:" + e);
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
