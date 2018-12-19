<%-- 
    Document   : login
    Created on : Dec 19, 2018, 2:39:20 PM
    Author     : Xuan Truong PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="cover">
            <div class="cover-form">
                <caption><h1>Đăng nhập</h1></caption>
                <form action="LoginServlet" method="post">
                    
                    <table cellspacing="10">
                        <tbody>
                            <tr>
                                <td><h3>Tên đăng nhập</h3></td>
                                <td><input type="text" value="" placeholder="Tên đăng nhập" class="thongtin" name="username" required="true" pattern="^[a-zA-Z0-9_]+$"></td>
                            </tr>
                            <tr>
                                <td><h3>Mật khẩu</h3></td>
                                <td><input type="password" value="" placeholder="Mật khẩu" class="thongtin" name="password" required="true" pattern="^[a-zA-Z0-9]+$"></td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center"><input class="button" type="submit" value="Đăng nhập"></td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
