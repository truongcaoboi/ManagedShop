<%-- 
    Document   : abc
    Created on : Dec 18, 2018, 3:20:25 PM
    Author     : Xuan Truong PC
--%>

<%@page import="model.Huyen"%>
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
        <option value="\'\',\'\',\'\'" label="Chọn huyện"></option>
        <%
            String ma = request.getParameter("matinh");
            Vector<Huyen> huyens = Data.getHuyens(ma);
            for (Huyen h : huyens) {
        %>
            <option value="<%=h.getMaHuyen() %>,<%=h.getTenHuyen() %>,<%=h.getPhi() %>" label="<%=h.getTenHuyen() %>"></option>
        <%
            }
        %>

</body>
</html>
