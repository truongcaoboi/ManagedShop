<%-- 
    Document   : filterSuplier
    Created on : Dec 14, 2018, 2:55:33 PM
    Author     : Xuan Truong PC
--%>

<%@page import="java.util.Vector"%>
<%@page import="model.Suplier"%>
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
            String ma = request.getParameter("ma");
            String ten = request.getParameter("ten");
            String thue = request.getParameter("thue");
            String dt = request.getParameter("dt");
            //out.print(ma+ten+thue+dt+dt);
        %>
        <%
            Vector<Suplier> supliers = new Data().getSupliers(ten, thue, dt, ma);
            for (Suplier s : supliers) {
        %>
    <tr onclick="choose(this,<%=s.getMa()%>)" class="row_data">
        <td widtd='150px' align="center"><%=s.getMa()%></td>
        <td widtd='350px'><%=s.getTen()%></td>
        <td widtd='200px' align="center"><%=s.getMaSoThue()%></td>
        <td widtd='400px'><%=s.getDiachi()%></td>
        <td widtd='150px' align="center"><%=s.getDienthoai()%></td>
        <td align="center" valign="center"><div class="iconEdit" style="width: 25px;height: 35px; background-image: url(images/edit.png);background-size: 25px 25px;" onclick="update1(<%=s.getMa() %>)"></div></td>
    </tr>
    <%
        }
    %>
</body>
</html>
