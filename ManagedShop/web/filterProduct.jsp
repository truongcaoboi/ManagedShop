<%-- 
    Document   : filterProduct
    Created on : Dec 19, 2018, 11:30:11 PM
    Author     : Xuan Truong PC
--%>

<%@page import="model.Product"%>
<%@page import="java.util.Vector"%>
<%@page import="DAO.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
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
        %>
                    <tr onclick="choose(<%=p.getMaSP()%>, this)" class="row_data">
                        <td widtd='150px'><%= p.getMaSP()%></td>
                        <td widtd='250px'><%= p.getTenSP()%></td>
                        <td widtd='150px'><%=p.getGia()%></td>
                        <td widtd='150px'><%=p.getKichCo()%></td>
                        <td widtd='150px' align="center"><div style="height: 20px; width: 100px; background-color: #<%=p.getMau()%>"></div></td>
                        <td widtd='150px'><%=(int) p.getSoLuong()%></td>
                        <td widtd='250px'><%=p.getTenncc()%></td>
                        <td widtd='200px'><%=p.getTenloaisp()%></td>
                        <td align="center" valign="center"><div class="iconEdit" style="width: 25px;height: 35px; background-image: url(images/edit.png);background-size: 25px 25px;" onclick="update1(<%=p.getMaSP()%>)"></div></td>
                    </tr>
    <%
            }
        }
    %>
</body>
</html>
