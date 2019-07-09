/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Bean.ClienteDTO;
import Bean.CorreoDTO;
import Bean.PedidoMuebleDTO;
import Bean.PropuestaCarpinteroDTO;
import DAO.DAOFactory;
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
@WebServlet(name = "ServletAccCarpintero", urlPatterns = {"/ServletAccCarpintero"})
public class ServletAccCarpintero extends HttpServlet {

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
            
            if(accion.equals("listarCotizacionesGeneral")){
                this.ListarCotizacionesGeneral(request, response);
            }
            if(accion.equals("proponer")){
                this.Proponer(request, response);
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

    private void ListarCotizacionesGeneral(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException{
    
        DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
        IPedidoMuebleDAO daoPedidoMueble = factory.getPedidoMueble();
        
        List<PedidoMuebleDTO> listaPedidos = daoPedidoMueble.listarPedidoMueble();
        System.out.println("la lista muestra" + listaPedidos.toString());
            request.setAttribute("cotizaciones", listaPedidos);
            request.getRequestDispatcher("carpintero_lista_cotizaciones_general.jsp").forward(request, response);
    }
    
    private void Proponer(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException{
    
        DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
        IPropuestaCarpinteroDAO daoPropuestaCarpintero = factory.getPropuestaCarpintero();
        
        PropuestaCarpinteroDTO dtoPropuestaCarpintero = new PropuestaCarpinteroDTO();
        
        dtoPropuestaCarpintero.getMueble().setId_muebles(Integer.parseInt(request.getParameter("ID_pedido")));
        dtoPropuestaCarpintero.getCarpintero().setId_carpintero(Integer.parseInt(request.getParameter("ID_carpintero")));
        dtoPropuestaCarpintero.setMensaje(request.getParameter("mensaje"));
        dtoPropuestaCarpintero.setPrecio(Double.parseDouble(request.getParameter("precio")));
        
        boolean resp = daoPropuestaCarpintero.registrarPropuestaCarpintero(dtoPropuestaCarpintero);
        
        if(resp){
                    
            this.enviarPropuesta(request, response,Integer.parseInt(request.getParameter("ID_cliente")));
        
        }else{
            request.setAttribute("mensaje","Error realizar la cotizacion");
             request.getRequestDispatcher("carpintero_menu.jsp").forward(request, response);
        }
    }
    
    private void enviarPropuesta(HttpServletRequest request, HttpServletResponse response,int codigoCliente) 
        throws ServletException, IOException{
        
            DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            IClienteDAO daoCliente = factory.getCliente();
            
            ClienteDTO dtoCliente = new ClienteDTO();
            
            dtoCliente = daoCliente.buscarCliente(codigoCliente);
        
            
            boolean resp2 = false;
            
            String path = getServletContext().getRealPath("/");
            String pathImagen = path + "images/dataImagenes/logo-icon.png";
            
            CorreoDTO c = new CorreoDTO();
            
            c.setNombreArchivo("pruebaCambioNombre.png");
            c.setRutaArchivo(pathImagen);
            c.setTitulo("revisa tu cuenta");
            c.setMensaje("<button><a href=\"192.168.43.12:8080/Amedida/index.jsp\">Revisar</a></button>");
            c.setDestino(dtoCliente.getCorreo());
            c.setAsunto(dtoCliente.getUsuario() + " tienes una nueva propuesta");
            
            resp2 = Mensajero.enviarCorreo(c);
                    
            if(resp2){
                request.setAttribute("mensaje","Se ha registrado correctamente la cotizacion");
                request.getRequestDispatcher("carpintero_menu.jsp").forward(request, response);
            }else{
                request.setAttribute("mensaje","Error en enviar el mensaje al los carpintero");
                request.getRequestDispatcher("carpintero_menu.jsp").forward(request, response);
            }
        
        
    }
    
}
