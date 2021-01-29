/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Bean.CorreoDTO;
import Bean.PedidoMuebleDTO;
import Interfaces.IPedidoMuebleDAO;
import Utils.Mensajero;
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
public class MySqlPedidoMuebleDAO implements IPedidoMuebleDAO{

    @Override
    public boolean registrarPedidoMueble(PedidoMuebleDTO obj) {
        
        Connection cn = null;
        PreparedStatement pstm = null;
        
        boolean resp = false;
        
        try{
            
            
            String sql = "INSERT INTO master_pedido_muebles "
                    + "( tipo, ID_cliente, titulo, descripcion, imagen1, imagen2) "
                    + "VALUES (?,?,?,?,?,?)";
            cn = MysqlDBConexion.getConexion();
            
            pstm=cn.prepareStatement(sql);
            pstm.setInt(1, obj.getTipo());
            pstm.setInt(2, obj.getCliente().getId_cliente());
            pstm.setString(3, obj.getTitulo());
            pstm.setString(4, obj.getDescripcion());
            pstm.setString(5, obj.getImagen1());
            pstm.setString(6, obj.getImagen2());
            
            System.out.println("Se envia : " + pstm.toString());
            
            int i = pstm.executeUpdate();
            
            if(i==1)
                resp = true;
                
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Error registrar pedido :" + e);
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
    public boolean actualizarPedidoMueble(PedidoMuebleDTO obj) {
        
        Connection cn = null;
        PreparedStatement pstm = null;
        
        boolean resp = false;
        
        try{
            
            String sql = "UPDATE master_pedido_muebles SET "
                    + "tipo = ? , ID_cliente = ? , titulo = ? ,"
                    + "descripcion = ? , imagen1 = ?, , imagen2 = ? WHERE ID_mueble= ?";
            cn = MysqlDBConexion.getConexion();
            
            pstm=cn.prepareStatement(sql);
            pstm.setInt(1, obj.getTipo());
            pstm.setInt(2, obj.getCliente().getId_cliente());
            pstm.setString(3, obj.getTitulo());
            pstm.setString(4, obj.getDescripcion());
            pstm.setString(5, obj.getImagen1());
            pstm.setString(6, obj.getImagen2());
            pstm.setInt(7, obj.getId_muebles());
            
            System.out.println("Se envia : " + pstm.toString());
            
            int i = pstm.executeUpdate();
            
            if(i==1)
                resp = true;
                
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Error registrar pedido del mueble:" + e);
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
    public PedidoMuebleDTO buscarPedidoMueble(int cod) {
        PedidoMuebleDTO obj = null;
        Connection cn = null;
        ResultSet rs = null;
        PreparedStatement pstm = null;
        
        try{
            
            String sql = "SELECT * FROM master_pedido_muebles WHERE ID_mueble = ?";
            cn = MysqlDBConexion.getConexion();
            
            pstm=cn.prepareStatement(sql);
            pstm.setInt(1, cod);
            
            System.out.println("Se envia : " + pstm.toString());
            
            rs=pstm.executeQuery();
            if(rs.next()){
                obj = new PedidoMuebleDTO();
                obj.setTipo(rs.getInt("tipo"));
                obj.getCliente().setId_cliente(rs.getInt("ID_mueble"));
                obj.setTitulo(rs.getString("titulo"));
                obj.setDescripcion(rs.getString("descripcion"));
                obj.setImagen1(rs.getString("imagen1"));
                obj.setImagen2(rs.getString("imagen2"));
                obj.setId_muebles(rs.getInt("ID_mueble"));
                
            }
            System.out.println(obj.getTitulo());
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Error buscar pedido clientes:" + e);
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
    public List<PedidoMuebleDTO> listarPedidoMueble() {
        List<PedidoMuebleDTO> data = new ArrayList<PedidoMuebleDTO>();

        Connection conn= null;
        PreparedStatement pstm = null;
        ResultSet rs = null;
        try {
                conn = MysqlDBConexion.getConexion();
                String sql ="select * from master_pedido_muebles";
                pstm = conn.prepareStatement(sql);
                rs = pstm.executeQuery();
                System.out.println("Se envia : " + pstm.toString());
                PedidoMuebleDTO obj = null;
                while(rs.next()){
                    
                        System.out.println("ID_Cliente: " + rs.getInt("ID_cliente"));
                        obj = new PedidoMuebleDTO();
                        obj.setTipo(rs.getInt("tipo"));
                        obj.getCliente().setId_cliente(rs.getInt("ID_cliente"));
                        obj.setTitulo(rs.getString("titulo"));
                        obj.setDescripcion(rs.getString("descripcion"));
                        obj.setImagen1(rs.getString("imagen1"));
                        obj.setImagen2(rs.getString("imagen2"));
                        obj.setId_muebles(rs.getInt("ID_mueble"));
                        data.add(obj);
                }
        } catch (Exception e) 
        {
                e.printStackTrace();
                System.out.println("Error buscar pedido clientes:" + e);
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
    public List<PedidoMuebleDTO> listarPedidoMueble(int ID_cliente) {
        List<PedidoMuebleDTO> data = new ArrayList<PedidoMuebleDTO>();

        Connection conn= null;
        PreparedStatement pstm = null;
        ResultSet rs = null;
        try {
                conn = MysqlDBConexion.getConexion();
                String sql ="select * from master_pedido_muebles WHERE ID_cliente = ?";
                
                pstm = conn.prepareStatement(sql);
                pstm.setInt(1, ID_cliente);
                
                rs = pstm.executeQuery();
                System.out.println("Se envia : " + pstm.toString());
                PedidoMuebleDTO obj = null;
                while(rs.next()){
                    
                        System.out.println("ID_Cliente: " + rs.getInt("ID_cliente"));
                        obj = new PedidoMuebleDTO();
                        obj.setTipo(rs.getInt("tipo"));
                        obj.getCliente().setId_cliente(rs.getInt("ID_cliente"));
                        obj.setTitulo(rs.getString("titulo"));
                        obj.setDescripcion(rs.getString("descripcion"));
                        obj.setImagen1(rs.getString("imagen1"));
                        obj.setImagen2(rs.getString("imagen2"));
                        obj.setId_muebles(rs.getInt("ID_mueble"));
                        data.add(obj);
                }
        } catch (Exception e) 
        {
                e.printStackTrace();
                System.out.println("Error buscar las cotizaiones realizadas:" + e);
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
    public boolean eliminarPedidoMueble(int cod) {
    
        Connection cn = null;
        PreparedStatement pstm = null;
        
        boolean resp = false;
        
        try{
            
            String sql = "DELETE FROM master_pedido_muebles WHERE ID_mueble = ?";
            cn = MysqlDBConexion.getConexion();
            
            pstm=cn.prepareStatement(sql);
            pstm.setInt(1, cod);
            
            System.out.println("Se envia : " + pstm.toString());
            
            int i = pstm.executeUpdate();
            
            if(i==1)
                resp = true;
                
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Error eliminar pedido muebles:" + e);
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
