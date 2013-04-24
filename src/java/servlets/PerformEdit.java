/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import inventory_management.Product;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import managers.ProductsManager;

/**
 *
 * @author Gilberto Leon <ripflame@gmail.com>
 */
public class PerformEdit extends HttpServlet {
    
    private ServletContext sc;    // Contexto del servlet

    @Override
    public void init(ServletConfig config) throws ServletException {
        sc = config.getServletContext(); //se obtiene el contexto del servlet
    }

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            String name = request.getParameter("name");
            String description = request.getParameter("description");
            String amountStr = request.getParameter("amount");
            String idStr = request.getParameter("prodId");
            int amount = Integer.parseInt(amountStr);
            int prodId = Integer.parseInt(idStr);
            
            if (name != null && description != null && amountStr != null && idStr != null) {
                ProductsManager pm = new ProductsManager();
                Product prodToUpdate = new Product(name, description, amount);
                prodToUpdate.setId(prodId);
                pm.updateProduct(prodToUpdate);
            }
            
//            RequestDispatcher dispatcher = sc.getRequestDispatcher("/admin/inventario.jsp");
//            dispatcher.forward(request, response);
            response.sendRedirect("/inventario/admin/inventario.jsp");
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
