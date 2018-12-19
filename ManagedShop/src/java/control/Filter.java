/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import DAO.Data;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Product;

/**
 *
 * @author Xuan Truong PC
 */
public class Filter extends HttpServlet {

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
            int maSP = 0;
            String tenSP = "";
            String mau = "";
            String kc = "";
            int mancc = 0;
            int maloai = 0;
            try {
                maSP = Integer.parseInt(request.getParameter("masp"));
            } catch (Exception e) {
                maSP = 0;
            }
            tenSP = java.net.URLDecoder.decode(request.getParameter("tenSP"), "UTF-8");
            mau = request.getParameter("maMau");
            kc = request.getParameter("kc");
            mancc = Integer.parseInt(request.getParameter("ncc"));
            maloai = Integer.parseInt(request.getParameter("loai"));
            Vector< Product> products = new Data().getProducts(maSP, tenSP, kc, mau, mancc, maloai);
            //out.print("<p>"+new Data().getProducts1(maSP, tenSP, kc, mau, mancc, maloai)+"</p>");
            if (products.size() == 0) {
                out.print("no results");
            } else {
                
                for (Product p : products) {                    
                    out.print(" <tr onclick=\"choose("+p.getMaSP()+", this)\" class=\"row_data\">");
                    out.print("<td widtd='150px'>"+p.getMaSP()+"</td>");
                    out.print("<td widtd='250px'>"+p.getTenSP()+"</td>");
                    out.print(" <td widtd='150px'>"+p.getGia()+"</td>");
                    out.print("<td widtd='150px'>"+p.getKichCo()+"</td>");
                    out.print(" <td widtd='150px' align=\"center\"><div style=\"height: 20px; width: 100px; background-color: #"+p.getMau()+"\"></div></td>");
                    out.print("<td widtd='150px'>"+(int) p.getSoLuong()+"</td>");
                    out.print("<td widtd='250px'>"+p.getTenncc()+"</td>");
                    out.print("<td widtd='200px'>"+p.getTenloaisp()+"</td>");
                    out.print("<td align=\'center\' valign=\'center\'><div class=\'iconEdit\' style=\'width: 25px;height: 35px; background-image: url(images/edit.png);background-size: 25px 25px;\' onclick=\'update1(<%=p.getMaSP()%>)\'></div></td>");
                    out.print("</tr>");
                }
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

}
