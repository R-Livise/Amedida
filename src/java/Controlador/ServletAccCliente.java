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
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Rafael Livise
 */
@WebServlet(name = "ServletAccCliente", urlPatterns = {"/ServletAccCliente"})
@MultipartConfig
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
            
            if(accion.equals("listarCotizacionPersonal")){
                this.ListarCotizacionPersonal(request, response);
            }
            if(accion.equals("mostrarPropuestas")){
                this.MostrarPropuestas(request, response);
            }
            if(accion.equals("mostrarPerfilCarpintero")){
                this.MostrarPerfilCarpintero(request, response);
            }
            if(accion.equals("cotizar")){
                RequestDispatcher view = request.getRequestDispatcher("/cliente_menu.jsp");
                view.forward(request, response);
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
        String accion = request.getParameter("accion");
            
            if(accion.equals("cotizar")){
                this.Cotizar(request, response);
            }
            
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
        
        try{
            
            dtoPedidoMueble.setTipo(Integer.parseInt(request.getParameter("tipo")));
            dtoPedidoMueble.setTitulo(request.getParameter("titulo"));
            dtoPedidoMueble.setDescripcion(request.getParameter("descripcion"));    
            
            System.out.println("antes imagen 1 a");
            InputStream inputStream1 = null;
            Part filePart1 = request.getPart("imagen1");
            
            System.out.println("Error imagen 1 :" + filePart1.toString());
            if (filePart1.getSize() > 0) {
                    System.out.println(filePart1.getName());
                    System.out.println(filePart1.getSize());
                    System.out.println(filePart1.getContentType());
                    inputStream1 = filePart1.getInputStream();
                }
            
            System.out.println("antes imagen 2 a");
            
            InputStream inputStream2 = null;
            Part filePart2 = request.getPart("imagen2");
            
            
            System.out.println("Error imagen 2 :" + filePart2.toString());
            if (filePart2.getSize() > 0) {
                    System.out.println(filePart2.getName());
                    System.out.println(filePart2.getSize());
                    System.out.println(filePart2.getContentType());
                    inputStream2 = filePart2.getInputStream();
                }


            if (inputStream1 != null) {
                        dtoPedidoMueble.setImagen1(inputStream1);
            }
            if (inputStream2 != null) {
                        dtoPedidoMueble.setImagen2(inputStream2);
            }
        
        }catch(Exception e){
            System.out.println("Error cotizar: " + e );
            System.out.println("Error cotizar: " + e.getMessage() );
        }
        
        dtoCliente = daoCliente.buscarCliente(cod);
        
        dtoPedidoMueble.setCliente(dtoCliente);

        resp = daoPedidoMueble.registrarPedidoMueble(dtoPedidoMueble);
        
        if(resp){
                    
            this.enviarCotizacion(request, response, dtoPedidoMueble);
        
        }else{
            request.setAttribute("men","Error realizar la cotizacion");
            
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
                
            }else{
                request.setAttribute("men","Error en enviar el mensaje al los carpintero");
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
        
    private void MostrarPerfilCarpintero(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException{
        
            int ID_carpintero = Integer.parseInt(request.getParameter("ID_carpintero"));
            int ID_propuesta = Integer.parseInt(request.getParameter("ID_propuesta"));
            
            DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            ICarpinteroDAO daoCarpintero = factory.getCarpintero();
            IPropuestaCarpinteroDAO daoPropuestaCarpintero = factory.getPropuestaCarpintero();
            
            CarpinteroDTO dtoCarpintero = daoCarpintero.buscarCarpintero(ID_carpintero);
            
            daoPropuestaCarpintero.aprobarPropuestaCarpintero(ID_propuesta);
            
            request.setAttribute("carpintero",dtoCarpintero); 
            request.getRequestDispatcher("cliente_ver_carpintero.jsp").forward(request, response);
        }    
        
        
    
    
    

}
