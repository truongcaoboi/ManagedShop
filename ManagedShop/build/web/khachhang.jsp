<%-- 
    Document   : khachhang.jsp
    Created on : Dec 17, 2018, 10:22:19 AM
    Author     : Xuan Truong PC
--%>

<%@page import="DAO.DataKH"%>
<%@page import="model.Comsumer"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/khachhang.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include  file="header.jsp" %>
        <div class="cover">
            <%@include file="slidebar.jsp" %>
            <div class="content">
                <div class="titile">Danh mục khách hàng</div>
                <div class="toolbar">
                    <ul>
                        <a href="#">
                            <li class="item_tool" onclick="insert()">
                                <div class="cover_tool">
                                    <div class="image_tool" style="background-image: url(images/add.png)"></div>
                                    <div class="content_tool">
                                        <div>Function</div>
                                    </div>
                                </div>
                            </li>
                        </a>
                        <a href="#">
                            <li class="item_tool" onclick="update()">
                                <div class="cover_tool">
                                    <div class="image_tool" style="background-image: url(images/update.png)"></div>
                                    <div class="content_tool">
                                        <div>Function</div>
                                    </div>
                                </div>
                            </li>
                        </a>
                    </ul>
                </div>
                <div  class="data">
                    <div class="search">
                        <form action="SearchKh" method="post">
                            <table cellspacing="0" cellpadding="0" border="0">
                                <tbody>
                                    <tr>
                                        <td>Tìm kiếm</td>
                                        <td><input class="nhaplieu" type="text" value="" name="txtSearch" style="height: 30px; width: 150px"></td>
                                        <td><input type="submit" value="Tìm kiếm" style="height: 30px; width: 75px" onclick="return changeData()"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </div>
                    <table cellspacing="0" style="width: 1475px">
                        <tbody class="title_column">
                            <tr>
                                <th align="center" width="150px">Mã khách hàng</th>
                                <th width="200px">Tên khách hàng</th>
                                <th width="150px">Số điện thoại</th>
                                <th width="300px">Địa chỉ</th>
                                <th width="75px">Điểm số</th>
                                <th width="175px">Số đơn đặt mới</th>
                                <th width="175px">Số đơn đang xử lý</th>
                                <th width="175px">Số đơn đã hoàn thành</th>
                                <th width="75px">Chi tiết</th>
                            </tr>
                        </tbody>
                        <tbody id="table-data">
                            <%
                                Vector<Comsumer> cons = (Vector<Comsumer>) request.getAttribute("cons");
                                if (cons == null) {
                                    cons = DataKH.getAllKH();
                                }
                                for (Comsumer c : cons) {
                            %>
                            <tr>
                                <td align="center"><%=c.getMakh()%></td>
                                <td><%=c.getHoten()%></td>
                                <td><%=c.getDienthoai()%></td>
                                <td><%=c.getDiachi()%></td>
                                <td align="center"><%=c.getDiemso()%></td>
                                <td align="center"><%=c.getDonmoi()%></td>
                                <td align="center"><%=c.getDondangthuchien()%></td>
                                <td align="center"><%=c.getDondahoanthanh()%></td>
                                <td align="center"><div class="iconEdit" style="width: 25px;height: 35px; background-image: url(images/detail.png);background-size: 25px 25px;" onclick="detail(<%=c.getMakh()%>)"></div></td>
                            </tr>
                            <%
                                }
                                cons = null;
                                request.setAttribute("cons", cons);
                            %>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div id="detail_form" style="display: none;">

        </div>
    </body>
    <script src="js/khachhang.js" type="text/javascript"></script>
</html>
