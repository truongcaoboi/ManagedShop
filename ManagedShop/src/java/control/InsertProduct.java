/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import DAO.Data;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Xuan Truong PC
 */
public class InsertProduct extends HttpServlet {

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
            String ten=java.net.URLDecoder.decode(request.getParameter("ten"), "UTF-8");
            String gia=request.getParameter("gia");
            String [] kichthuoc=request.getParameterValues("kichthuoc");
            String kc="";
            for(String k:kichthuoc){
                kc+=k+",";
            }
            kc=kc.substring(0,kc.length()-1);
            String soluong=request.getParameter("soluong");
            String mau=request.getParameter("mau").substring(1);
            String mota=java.net.URLDecoder.decode(request.getParameter("mota"), "UTF-8");
            String [] hinhs=request.getParameterValues("hinh");
            String hinh="";
            if (hinhs.length > 0) {
                for (String h : hinhs) {
                    hinh += h + ";";
                    out.print(h);
                }
            }
            hinh=hinh.substring(0,hinh.length()-1);
            String ncc=request.getParameter("maNcc");
            String loai=request.getParameter("loai");
            out.print(new Data().InsertProduct(ten, gia, soluong, mota, hinh, ncc, loai, mau, kc));
            request.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
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

}
