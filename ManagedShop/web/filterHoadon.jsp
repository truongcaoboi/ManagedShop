<%-- 
    Document   : filterHoadon
    Created on : Dec 19, 2018, 1:08:17 AM
    Author     : Xuan Truong PC
--%>

<%@page import="model.Receipt"%>
<%@page import="java.util.Vector"%>
<%@page import="DAO.DataHoadon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String makh = request.getParameter("makh");
            String tenkh = java.net.URLDecoder.decode(request.getParameter("tenkh"), "UTF-8");
            String trangthai = request.getParameter("trangthai");
            
//            out.println(makh);
//            out.println(tenkh);
//            out.println(trangthai);

            Vector<Receipt> res = DataHoadon.filter(makh, tenkh, trangthai);
            if (res.size() == 0) {
                out.print("no results");
            } else {
                for (Receipt r : res) {
        %>
    <tr>
        <td width="100px" align="center"><%= r.getCom().getMakh()%></td>
        <td width="200px"><%= r.getCom().getHoten()%></td>
        <td width="100px" align="center"><%= r.getEm().getManv()%></td>
        <td width="200px"><%= r.getEm().getHoten()%></td>
        <td width="150px" align="center"><%=r.getNgaytao()%></td>
        <td width="150px" align="center"><%=r.getNgayhoanthanh()%></td>
        <td width="150px"><%=r.getTrangthai()%></td>
        <td width="200px"><%=r.getTennguoinhan()%></td>
        <td align="center" valign="center"><div class="iconEdit" style="width: 25px;height: 35px; background-image: url(images/edit.png);background-size: 25px 25px;" onclick="update1(<%=r.getMahoadon()%>)"></div></td>
        <td align="center" valign="center"><div class="iconEdit" style="width: 25px;height: 35px; background-image: url(images/iconfinder_basket_1814090.png);background-size: 25px 25px;" onclick="delete1(<%=r.getMahoadon()%>,this)"></div></td>
    </tr>
    <%
            }
        }
    %>
</body>
</html>
