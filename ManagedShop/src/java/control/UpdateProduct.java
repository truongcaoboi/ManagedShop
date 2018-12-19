/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import DAO.Data;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Base64;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Xuan Truong PC
 */
public class UpdateProduct extends HttpServlet {

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
        try {
            /* TODO output your page here. You may use following sample code. */
            String masp = request.getParameter("maSP");
            String tensp = java.net.URLDecoder.decode(request.getParameter("tenSP"), "UTF-8");
            String gia = request.getParameter("gia");
            String soluong = request.getParameter("soluong");
            String[] kichthuoc = request.getParameterValues("kichthuoc");
            String kc = "";
            if (kichthuoc.length > 0) {
                for (String k : kichthuoc) {
                    kc += k + ",";
                }
            }
            kc = kc.substring(0, kc.length() - 1);
            out.print(kc+"<br>");
            String mota = java.net.URLDecoder.decode(request.getParameter("mota"), "UTF-8");
            out.print(mota+"<br>");
            String[] hinhs = request.getParameterValues("hinh");
            String hinh = "";
            if (hinhs.length > 0) {
                for (String h : hinhs) {
                    hinh += h + ";";
                    //out.print(h);
                }
            }
            hinh = hinh.substring(0, hinh.length() - 1);
            out.print(hinh+"<br>");
            String ncc=request.getParameter("maNcc");
            String loai=request.getParameter("loai");
            String mau=request.getParameter("mau").substring(1);
            out.print(new Data().UpdateProduct(masp, tensp, gia, soluong, mota, hinh, kc,ncc,loai,mau));

            request.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
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

    public String UploadFile(HttpServletRequest request, PrintWriter out) {
        String fileName = "";
        try {

            // Đường dẫn tuyệt đối tới thư mục gốc của web app.
            String appPath = request.getServletContext().getRealPath("");
            appPath = appPath.replace('\\', '/');

            // Thư mục để save file tải lên.
            String fullSavePath = null;
            if (appPath.endsWith("/")) {
                fullSavePath = appPath + "imageProducts";
            } else {
                fullSavePath = appPath + "/" + "imageProducts";
            }

            // Tạo thư mục nếu nó không tồn tại.
            File fileSaveDir = new File(fullSavePath);
            if (!fileSaveDir.exists()) {
                fileSaveDir.mkdir();
            }

            for (Part part : request.getParts()) {
                fileName = extractFileName(part);
                if (fileName != null && fileName.length() > 0) {
                    String filePath = fullSavePath + File.separator + fileName;
                    out.println("Write attachment to file: " + filePath);

                    // Ghi vào file.
                    part.write(filePath);
                }
            }
            out.print("thanh cong");
        } catch (Exception e) {
            out.print(e.getMessage());
        }
        return fileName;
    }

    private String extractFileName(Part part) {
        // form-data; name="file"; filename="C:\file1.zip"
        // form-data; name="file"; filename="C:\Note\file2.zip"
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                // C:\file1.zip
                // C:\Note\file2.zip
                String clientFileName = s.substring(s.indexOf("=") + 2, s.length() - 1);
                clientFileName = clientFileName.replace("\\", "/");
                int i = clientFileName.lastIndexOf('/');
                // file1.zip
                // file2.zip
                return clientFileName.substring(i + 1);
            }
        }
        return null;
    }
}
