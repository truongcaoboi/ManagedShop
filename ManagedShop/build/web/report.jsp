<%-- 
    Document   : index
    Created on : Dec 13, 2018, 7:21:18 AM
    Author     : Xuan Truong PC
--%>

<%@page import="DAO.DataHoadon"%>
<%@page import="model.Receipt"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/hoadon.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include  file="header.jsp" %>
        <div class="cover">
            <%@include file="slidebar.jsp" %>
            <div class="content">
                <div class="titile">Danh mục hóa đơn</div>
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
                    <table cellspacing="0" style="width: 1500px">
                        <tbody class="title_column">
                            <tr>
                                <th width="100px">Mã khách hàng</th>
                                <th width="200px">Tên khách hàng</th>
                                <th width="150px">Mã nhân viên</th>
                                <th width="200px">Tên nhân viên</th>
                                <th width="150px">Ngày tạo</th>
                                <th width="150px">Ngày hoàn thành</th>
                                <th width="150px">Trạng thái</th>
                                <th width="200px">Tên người nhận</th>
                                <th width="100px">Cập nhập</th>
                                <th width="100px">Hủy bỏ</th>
                            </tr>
                            <tr>
                                <th width="100px"><input type="text" id="makh" value="" class="require require100" onkeyup="filter()"></th>
                                <th width="200px"><input type="text" id="tenkh" value="" class="require require200" onkeyup="filter()"></th>
                                <th width="100px"></th>
                                <th width="200px"></th>
                                <th width="150px"></th>
                                <th width="150px"></th>
                                <th width="150px">
                                    <select class="require require150" id="trangthai" onchange="filter()">
                                        <option value="1">Mới tạo</option>
                                        <option value="2">Đang xử lý</option>
                                        <option value="3">Đã hoàn thành</option>
                                    </select>
                                </th>
                                <th width="200px"></th>
                                <th width="100px"></th>
                                <th width="100px"></th>
                            </tr>
                        </tbody>
                        <tbody id="table-data">
                            <%
                                Vector<Receipt> res = DataHoadon.getAllReceipt();
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
                                <td align="center" valign="center"><div class="iconEdit" style="width: 25px;height: 35px; background-image: url(images/edit.png);background-size: 25px 25px;" onclick="update1(<%=r.getMahoadon()%>,this)"></div></td>
                                <td align="center" valign="center"><div class="iconEdit" style="width: 25px;height: 35px; background-image: url(images/iconfinder_basket_1814090.png);background-size: 25px 25px;" onclick="delete1(<%=r.getMahoadon()%>)"></div></td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div id="chitiet" style="display: flex;justify-content: flex-start">
            <div id="chitiethoadon">

            </div>
            <div id="chitietsanpham">

            </div>
            <div id="chitietkhachhang">

            </div>
        </div>
    </body>
    <script src="js/hoadon.js" type="text/javascript"></script>
</html>
