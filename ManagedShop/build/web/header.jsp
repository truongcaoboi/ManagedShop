<%-- 
    Document   : header
    Created on : Dec 14, 2018, 3:18:41 PM
    Author     : Xuan Truong PC
--%>

<%@page import="model.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            Employee e=(Employee)session.getAttribute("user");
            if(e==null){
                request.getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
            }
        %>
        <div class="header">
            <div class="logo">
                PHÁI MẠNH SHOP
            </div>
            <div class="info">
                <div class="image_admin" style="background-image: url(images/admin.png)"></div>
                <div class="name_admin"><a href="tongquan.jsp"><%=e.getHoten() %></a></div>
            </div>
        </div>
    </body>
</html>
