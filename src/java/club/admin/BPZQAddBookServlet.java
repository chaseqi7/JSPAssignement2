/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package club.admin;

import club.business.Book;
import club.data.BookIO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Bpaquette6801
 */
public class BPZQAddBookServlet extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        ServletContext Scontext= getServletContext();
        String path = Scontext.getRealPath("/WEB-INF/books.txt");
        String message = "";
        String code = request.getParameter("code");
        code=code.trim();
        if(code==null||code==""){
            message+="Book code is required.<br>";
        }
        String desc = request.getParameter("desc");
        desc=desc.trim();
        if(desc.length()<2){
            message+="Description must have at least 2 characters.<br>";
        }
        String quanti = request.getParameter("quant");
        int quant=0;
        if(quanti.trim()==null||quanti.trim()=="")
        {
            message+="Quantity is required.<br>";
        }
        else{
            quant =Integer.parseInt(quanti);
            if(quant <0){
                message+="Quantity must be a positive number.<br>";
            }
        }
        Book book = new Book(code, desc, quant);
        if(message != ""){
            message+="you still have some errors";
            request.setAttribute("message", message);
            getServletContext().getRequestDispatcher("/BPZQAddBook.jsp").forward(request,response);

        }
        else{
             BookIO.insert(book, path); 
             getServletContext().getRequestDispatcher("/BPZQDisplayBooks").forward(request,response);
        }
        
        

//        try {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet BPZQAddBookServlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet BPZQAddBookServlet at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        } finally {
//            out.close();
//        }
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

}
