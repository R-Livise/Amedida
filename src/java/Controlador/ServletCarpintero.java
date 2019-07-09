/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Bean.CarpinteroDTO;
import DAO.DAOFactory;
import Interfaces.ICarpinteroDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Rafael Livise
 */
@WebServlet(name = "ServletCarpintero", urlPatterns = {"/ServletCarpintero"})
public class ServletCarpintero extends HttpServlet {

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
            
            if(accion.equals("registrar")){
                this.Registrar(request, response);
            }
            
            if(accion.equals("listar")){
                this.Listar(request, response); 
            }
            
            if(accion.equals("buscar")){
                this.Buscar(request, response); 
            }
            
            if(accion.equals("actualizar")){
                this.Actualizar(request, response); 
            }
            
            if(accion.equals("eliminar")){
                this.Eliminar(request, response); 
            }
            
            if(accion.equals("login")){
                this.Login(request, response); 
            }
            
            if(accion.equals("logout")){
                this.Logout(request, response); 
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

    private void Login(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
            String user = request.getParameter("usuario");
            String password = request.getParameter("password");            

            DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            ICarpinteroDAO daoCarpintero = factory.getCarpintero();
            
            CarpinteroDTO carpintero = daoCarpintero.iniciarSesion(user,password);
            
            
            if(carpintero != null){
                request.setAttribute("carpinteroSesion", carpintero);
                request.setAttribute("codigoVerificacion", "carpintero");
                request.setAttribute("mensaje","Incio correcto");
                request.getRequestDispatcher("carpintero_menu.jsp").forward(request, response);
            }else{    
                
                request.setAttribute("mensaje","Error usuario y/o clave");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
	}
    private void Logout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.invalidate();
        response.sendRedirect("index.jsp");
    }
    
    private void Registrar(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException {
        
        DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
        ICarpinteroDAO daoCarpintero = factory.getCarpintero();
        
        CarpinteroDTO dtoCarpintero = new CarpinteroDTO();
        
        dtoCarpintero.setNombres(request.getParameter("nombres"));
        dtoCarpintero.setApellidos(request.getParameter("apellidos"));
        dtoCarpintero.setNcelular(request.getParameter("ncelular"));
        dtoCarpintero.setReferencias(request.getParameter("referencias"));
        dtoCarpintero.setCorreo(request.getParameter("correo"));
        dtoCarpintero.setUsuario(request.getParameter("usuario"));
        dtoCarpintero.setContrasegna(request.getParameter("password"));
        
        boolean resp= daoCarpintero.registrarCarpintero(dtoCarpintero);
        
        if(resp){
            request.setAttribute("cliente", dtoCarpintero);
            request.getRequestDispatcher("carpintero_menu.jsp").forward(request, response);
        }else{
            request.setAttribute("mensaje", "No se pudo crear una cuenta");
            request.getRequestDispatcher("carpintero_menu.jsp").forward(request, response);
        }
    }
    
    private void Listar(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
        ICarpinteroDAO daoCarpintero = factory.getCarpintero();
        
        List<CarpinteroDTO> listaCarpintero = daoCarpintero.listarCarpintero();
        System.out.println(listaCarpintero.toString());
            request.setAttribute("carpinteros", listaCarpintero);
            request.getRequestDispatcher("carpintero_tabla_listar.jsp").forward(request, response);
        

       
    }
    
    private void Buscar(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException {
        
        DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
        ICarpinteroDAO daoCarpintero = factory.getCarpintero();
        
        CarpinteroDTO dtoCarpintero = new CarpinteroDTO();
        
        dtoCarpintero.setId_carpintero(Integer.parseInt(request.getParameter("ID")));
        
        dtoCarpintero= daoCarpintero.buscarCarpintero(dtoCarpintero.getId_carpintero());
        
            request.setAttribute("carpintero", dtoCarpintero);
            request.getRequestDispatcher("carpintero_form_actualizar.jsp").forward(request, response);
        
    }
    
    private void Actualizar(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
        
        DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
        ICarpinteroDAO daoCarpintero = factory.getCarpintero();
        
        boolean resp =false;
        
        CarpinteroDTO dtoCarpintero = new CarpinteroDTO();
        
        dtoCarpintero.setNombres(request.getParameter("nombres"));
        dtoCarpintero.setApellidos(request.getParameter("apellidos"));
        dtoCarpintero.setCorreo(request.getParameter("correo"));
        dtoCarpintero.setUsuario(request.getParameter("usuario"));
        dtoCarpintero.setContrasegna(request.getParameter("password"));
        dtoCarpintero.setId_carpintero(Integer.parseInt(request.getParameter("ID")));
        
        resp = daoCarpintero.actualizarCarpintero(dtoCarpintero);
        
        if(resp){
            request.setAttribute("mensaje", "Se ralizo la actualizacion");
            request.getRequestDispatcher("carpintero_menu.jsp").forward(request, response);
        }else{
            request.setAttribute("mensaje", "No se pudo actualizar una cuenta");
            request.getRequestDispatcher("carpintero_menu.jsp").forward(request, response);
        }
        
    }

    private void Eliminar(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
        
        DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
        ICarpinteroDAO daoCarpintero = factory.getCarpintero();
        
        boolean resp = false;
        int cod = Integer.parseInt(request.getParameter("ID"));
        
        resp = daoCarpintero.eliminarCarpintero(cod);
        
        if(resp){
            request.setAttribute("mensaje", "Se realizo la eliminacion");
            request.getRequestDispatcher("carpintero_menu.jsp").forward(request, response);
        }else{
            request.setAttribute("mensaje", "No se pudo eliminar una cuenta");
            request.getRequestDispatcher("carpintero_menu.jsp").forward(request, response);
        }
    }
    
}
