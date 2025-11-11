/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import DAO.AccesoDAO;
import DAOIMPLENT.AccesoDAOIMPLET;
import DTO.AccesoDTO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author !mX ***Made on Earth by Humans***
 */
public class AccesoSERVLET extends HttpServlet {

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

        AccesoDAO acceso = new AccesoDAOIMPLET();
        AccesoDTO accesoDTO = new AccesoDTO();

        accesoDTO.setNombre_usuario(request.getParameter("imputUsuario"));
        accesoDTO.setContrasena(request.getParameter("imputPassword"));

        if (acceso.verificarUsuario(accesoDTO)) {
            //Si la verificacion de usuario fue correcta creo una sesion
            HttpSession sessionActiva = request.getSession();
            //creo una variable para capturar el usuario que se logeo
            String UsuarioLogueado = accesoDTO.getNombre_usuario();
            //creo una variable para validar el rol String UsuarioRol = "admin";
            //agrego atributos a la sesion creada
            sessionActiva.setAttribute("sessionON", UsuarioLogueado);
            //sessionActiva.setAttribute("sessionROL", UsuarioRol);

            response.sendRedirect("/SEquirenta/Index.jsp");
            System.out.println("Verificacion exitosa de usuario");
        } else {
            response.sendRedirect("/SEquirenta/Login.jsp");
            System.out.println("Error al verificar usuario o Credenciales Erroneas");
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

}
