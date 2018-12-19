<%-- 
    Document   : slidebar
    Created on : Dec 14, 2018, 3:16:52 PM
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
         <div class="slidebar">
                <ul>
                    <li class="item_menu">
                        <a href="tongquan.jsp">
                            <div class="cover_menu">
                                <div class="image_menu" style="background-image: url(images/overview.png)"></div>
                                <div class="content_menu">
                                    <div>Tổng quan</div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="item_menu">
                        <a href="khachhang.jsp">
                            <div class="cover_menu">
                                <div class="image_menu" style="background-image: url(images/my_client_277840.png)"></div>
                                <div class="content_menu">
                                    <div>Khách hàng</div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="item_menu">
                        <a href="index.jsp">
                            <div class="cover_menu">
                                <div class="image_menu" style="background-image: url(images/product.png)"></div>
                                <div class="content_menu">
                                    <div>Danh mục sản phẩm</div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="item_menu">
                        <a href="suplier.jsp">
                            <div class="cover_menu">
                                <div class="image_menu" style="background-image: url(images/suplier.png)"></div>
                                <div class="content_menu">
                                    <div>Danh mục nhà cung cấp</div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="item_menu">
                        <% Employee employee=(Employee)session.getAttribute("user"); if(employee==null){ request.getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);} %>
                        <a href="<%= employee.getVaitro()==1?"nhanvien.jsp":"#"%>">
                            <div class="cover_menu">
                                <div class="image_menu" style="background-image: url(images/64005-200.png)"></div>
                                <div class="content_menu">
                                    <div>Nhân viên</div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="item_menu">
                        <a href="report.jsp">
                            <div class="cover_menu">
                                <div class="image_menu" style="background-image: url(images/report.png)"></div>
                                <div class="content_menu">
                                    <div>Hóa đơn</div>
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
    </body>
</html>
