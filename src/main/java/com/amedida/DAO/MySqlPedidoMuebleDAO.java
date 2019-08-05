/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.amedida.DAO;

import com.amedida.Bean.CorreoDTO;
import com.amedida.Bean.PedidoMuebleDTO;
import com.amedida.Interfaces.IPedidoMuebleDAO;
import com.amedida.Utils.Mensajero;
import com.amedida.Utils.MysqlDBConexion;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

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
            pstm.setBlob(5, obj.getImagen1());
            pstm.setBlob(6, obj.getImagen2());
            
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
            pstm.setBinaryStream(5, obj.getImagen1());
            pstm.setBinaryStream(6, obj.getImagen2());
            pstm.setInt(7, obj.getId_mueble());
            
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
                obj.setImagen11(rs.getBytes("imagen1"));
                obj.setImagen22(rs.getBytes("imagen2"));
                obj.setId_mueble(rs.getInt("ID_mueble"));
                
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
                        obj.setImagen11(rs.getBytes("imagen1"));
                        obj.setImagen22(rs.getBytes("imagen2"));
                        obj.setId_mueble(rs.getInt("ID_mueble"));
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
                        obj.setImagen11(rs.getBytes("imagen1"));
                        obj.setImagen22(rs.getBytes("imagen2"));
                        obj.setId_mueble(rs.getInt("ID_mueble"));
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
    public List<PedidoMuebleDTO> listarPedidoMuebleTipo(int Tipo) {
        List<PedidoMuebleDTO> data = new ArrayList<PedidoMuebleDTO>();

        Connection conn= null;
        PreparedStatement pstm = null;
        ResultSet rs = null;
        try {
                conn = MysqlDBConexion.getConexion();
                String sql ="select * from master_pedido_muebles WHERE tipo = ?";
                
                pstm = conn.prepareStatement(sql);
                pstm.setInt(1, Tipo);
                
                rs = pstm.executeQuery();
                System.out.println("Se envia tipo: " + pstm.toString());
                PedidoMuebleDTO obj = null;
                while(rs.next()){
                    
                        System.out.println("ID_Cliente: " + rs.getInt("ID_cliente"));
                        obj = new PedidoMuebleDTO();
                        obj.setTipo(rs.getInt("tipo"));
                        obj.getCliente().setId_cliente(rs.getInt("ID_cliente"));
                        obj.setTitulo(rs.getString("titulo"));
                        obj.setDescripcion(rs.getString("descripcion"));
                        obj.setImagen11(rs.getBytes("imagen1"));
                        obj.setImagen22(rs.getBytes("imagen2"));
                        obj.setId_mueble(rs.getInt("ID_mueble"));
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
    
    @Override
    public byte[] listarImagen(int id, int num){
        
        Connection cn = null;
        ResultSet rs = null;
        PreparedStatement pstm = null;
        byte[] b = null;
        try{
            
            String sql = "";
            if(num == 1){
                sql = "select imagen1 FROM master_pedido_muebles WHERE ID_mueble = ?";
            }else{
                sql = "select imagen2 FROM master_pedido_muebles WHERE ID_mueble = ?";
            }
            cn = MysqlDBConexion.getConexion();
            pstm=cn.prepareStatement(sql);
            pstm.setInt(1, id);
            System.out.println(pstm.toString());
            
            rs = pstm.executeQuery();
            
            if(rs.next()){
                b = rs.getBytes(1);
            }
            
        }catch(Exception e){
            System.out.println("error es :" +e);
            
        }
        
        return b;
        
    }
            
    
    
}
