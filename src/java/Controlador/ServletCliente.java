/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Bean.CarpinteroDTO;
import Bean.ClienteDTO;
import DAO.DAOFactory;
import Interfaces.IClienteDAO;
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
@WebServlet(name = "ServletCliente", urlPatterns = {"/ServletCliente"})
public class ServletCliente extends HttpServlet {

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
            IClienteDAO daoCliente = factory.getCliente();
            
            ClienteDTO cliente = daoCliente.iniciarSesion(user,password);
            
            
            if(cliente != null){
                request.setAttribute("clienteSesion", cliente);
                request.setAttribute("codigoVerificacion", "cliente");
                request.setAttribute("mensaje","Inicio correcto");
                request.getRequestDispatcher("cliente_menu.jsp").forward(request, response);
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
        IClienteDAO daoCliente = factory.getCliente();
        
        ClienteDTO dtoCliente = new ClienteDTO();
        
        dtoCliente.setNombres(request.getParameter("nombres"));
        dtoCliente.setApellidos(request.getParameter("apellidos"));
        dtoCliente.setCorreo(request.getParameter("correo"));
        dtoCliente.setUsuario(request.getParameter("usuario"));
        dtoCliente.setContrasegna(request.getParameter("password"));
        
        boolean resp= daoCliente.registrarCliente(dtoCliente);
        
        if(resp){
            request.setAttribute("cliente", dtoCliente);
            request.getRequestDispatcher("cliente_menu.jsp").forward(request, response);
        }else{
            request.setAttribute("mensaje", "No se pudo crear una cuenta");
            request.getRequestDispatcher("cliente_menu.jsp").forward(request, response);
        }
    }
    
    private void Listar(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
        IClienteDAO daoCliente = factory.getCliente();
        
        List<ClienteDTO> dtoClientes = daoCliente.listarCliente();
        System.out.println(dtoClientes.toString());
            request.setAttribute("clientes", dtoClientes);
            request.getRequestDispatcher("cliente_tabla_listar.jsp").forward(request, response);
        

       
    }
    
    private void Buscar(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException {
        
        DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
        IClienteDAO daoCliente = factory.getCliente();
        
        ClienteDTO dtoCliente = new ClienteDTO();
        
        dtoCliente.setId_cliente(Integer.parseInt(request.getParameter("ID")));
        
        dtoCliente= daoCliente.buscarCliente(dtoCliente.getId_cliente());
        
            request.setAttribute("cliente", dtoCliente);
            request.getRequestDispatcher("cliente_form_actualizar.jsp").forward(request, response);
        
    }
    
    private void Actualizar(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
        
        DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
        IClienteDAO daoCliente = factory.getCliente();
        
        boolean resp =false;
        
        ClienteDTO dtoCliente = new ClienteDTO();
        
        dtoCliente.setNombres(request.getParameter("nombres"));
        dtoCliente.setApellidos(request.getParameter("apellidos"));
        dtoCliente.setCorreo(request.getParameter("correo"));
        dtoCliente.setUsuario(request.getParameter("usuario"));
        dtoCliente.setContrasegna(request.getParameter("password"));
        dtoCliente.setId_cliente(Integer.parseInt(request.getParameter("ID")));
        
        resp = daoCliente.actualizarCliente(dtoCliente);
        
        if(resp){
            request.setAttribute("cliente", dtoCliente);
            request.setAttribute("mensaje", "Se ralizo la actualizacion");
            request.getRequestDispatcher("cliente_menu.jsp").forward(request, response);
        }else{
            request.setAttribute("mensaje", "No se pudo actualizar una cuenta");
            request.getRequestDispatcher("cliente_menu.jsp").forward(request, response);
        }
        
    }

    private void Eliminar(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
        
        DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
        IClienteDAO daoCliente = factory.getCliente();
        
        boolean resp = false;
        int cod = Integer.parseInt(request.getParameter("ID"));
        
        resp = daoCliente.eliminarCliente(cod);
        
        if(resp){
            request.setAttribute("mensaje", "Se realizo la eliminacion");
            request.getRequestDispatcher("cliente_menu.jsp").forward(request, response);
        }else{
            request.setAttribute("mensaje", "No se pudo eliminar una cuenta");
            request.getRequestDispatcher("cliente_menu.jsp").forward(request, response);
        }
    }

}
