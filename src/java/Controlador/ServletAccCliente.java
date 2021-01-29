/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Bean.CarpinteroDTO;
import Bean.ClienteDTO;
import Bean.CorreoDTO;
import Bean.PedidoMuebleDTO;
import Bean.PropuestaCarpinteroDTO;
import DAO.DAOFactory;
import Interfaces.ICarpinteroDAO;
import Interfaces.IClienteDAO;
import Interfaces.IPedidoMuebleDAO;
import Interfaces.IPropuestaCarpinteroDAO;
import Utils.Mensajero;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Rafael Livise
 */
@WebServlet(name = "ServletAccCliente", urlPatterns = {"/ServletAccCliente"})
public class ServletAccCliente extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            String accion = request.getParameter("accion");
            
            if(accion.equals("cotizar")){
                this.Cotizar(request, response);
            }
            if(accion.equals("listarCotizacionPersonal")){
                this.ListarCotizacionPersonal(request, response);
            }
            if(accion.equals("mostrarPropuestas")){
                this.MostrarPropuestas(request, response);
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    
    private void Cotizar(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException{
        
        DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
        IPedidoMuebleDAO daoPedidoMueble = factory.getPedidoMueble();
        IClienteDAO daoCliente = factory.getCliente();
        
        ClienteDTO dtoCliente = new ClienteDTO();
        PedidoMuebleDTO dtoPedidoMueble = new PedidoMuebleDTO();
        boolean resp = false;
        
        int cod = Integer.parseInt(request.getParameter("ID_cliente"));
        
        dtoPedidoMueble.setTipo(Integer.parseInt(request.getParameter("tipo")));
        dtoPedidoMueble.setTitulo(request.getParameter("titulo"));
        dtoPedidoMueble.setDescripcion(request.getParameter("descripcion"));
        dtoPedidoMueble.setImagen1(request.getParameter("imagen1"));
        dtoPedidoMueble.setImagen2(request.getParameter("imagen2"));
        
        dtoCliente = daoCliente.buscarCliente(cod);
        
        dtoPedidoMueble.setCliente(dtoCliente);

        resp = daoPedidoMueble.registrarPedidoMueble(dtoPedidoMueble);
        
        if(resp){
                    
            this.enviarCotizacion(request, response, dtoPedidoMueble);
        
        }else{
            request.setAttribute("men","Error realizar la cotizacion");
             request.getRequestDispatcher("cliente_menu.jsp").forward(request, response);
        }
    }
    
    private void enviarCotizacion(HttpServletRequest request, HttpServletResponse response, PedidoMuebleDTO dtoPedidoMueble) 
        throws ServletException, IOException{
        
            
            boolean resp2 = false;
            
            String path = getServletContext().getRealPath("/");
            String pathImagen = path + "images/dataImagenes/logo-icon.png";
            
            CorreoDTO c = new CorreoDTO();
            
            c.setNombreArchivo("pruebaCambioNombre.png");
            c.setRutaArchivo(pathImagen);
            c.setTitulo(dtoPedidoMueble.getTitulo());
            c.setMensaje(dtoPedidoMueble.getDescripcion());
            
            DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            ICarpinteroDAO daoCarpintero = factory.getCarpintero();
        
            List<CarpinteroDTO> listCarpintero = daoCarpintero.listarCarpintero();
                       
            for (int i = 0; i < listCarpintero.size(); i++) {

                c.setAsunto(listCarpintero.get(i).getUsuario() + " Aparecio una nueva corizacion");
                c.setDestino(listCarpintero.get(i).getCorreo());
                resp2 = Mensajero.enviarCorreo(c);
            
            }
        
            if(resp2){
                request.setAttribute("men","Se ha registrado correctamente la cotizacion");
                request.getRequestDispatcher("cliente_menu.jsp").forward(request, response);
            }else{
                request.setAttribute("men","Error en enviar el mensaje al los carpintero");
                request.getRequestDispatcher("cliente_menu.jsp").forward(request, response);
            }
    }    
     
    
    private void ListarCotizacionPersonal(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException{
        
            System.out.println("llega a la funcion");
            int ID_cliente = Integer.parseInt(request.getParameter("idCliente"));
            
            DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            IPedidoMuebleDAO daoPedidoMueble = factory.getPedidoMueble();
            
            List<PedidoMuebleDTO> listaPedidoMueble= daoPedidoMueble.listarPedidoMueble(ID_cliente);
            System.out.println("llega a listar");
            request.setAttribute("listaPedidosPersonal",listaPedidoMueble); 
            request.getRequestDispatcher("cliente_lista_cotizaciones_realizadas.jsp").forward(request, response);
                
        }    
    
    private void MostrarPropuestas(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException{
        
            System.out.println("ingresa al servlet Mostrar Propuesta");
            
            int ID_pedidoMueble = Integer.parseInt(request.getParameter("idPedidoMueble"));
            
            System.out.println("ingresa al servlet Mostrar Propuesta");
            
            DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            IPedidoMuebleDAO daoPedidoMueble = factory.getPedidoMueble();
            IPropuestaCarpinteroDAO daoPropuestaCarpintero = factory.getPropuestaCarpintero();
            
            PedidoMuebleDTO dtoPedidoMueble = daoPedidoMueble.buscarPedidoMueble(ID_pedidoMueble);
            
            List<PropuestaCarpinteroDTO> listaPropuestaCarpintero = daoPropuestaCarpintero.listarPropuestaCarpintero(ID_pedidoMueble);
            
            request.setAttribute("pedidoMueble",dtoPedidoMueble); 
            request.setAttribute("listaPropuestas",listaPropuestaCarpintero); 
            
            request.getRequestDispatcher("cliente_lista_propuestas.jsp").forward(request, response);
            
        }    
        
        
    
    
    

}
