<%-- 
    Document   : index
    Created on : Dec 13, 2018, 7:21:18 AM
    Author     : Xuan Truong PC
--%>

<%@page import="model.*"%>
<%@page import="java.util.Vector"%>
<%@page import="DAO.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/tongquan.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include  file="header.jsp" %>
        <div class="cover">
            <%@include file="slidebar.jsp" %>
            <div class="content">
                <div class="titile">Tổng quan</div>
                <div class="toolbar">
                    <ul>
                        <a href="#">
                            <li class="item_tool" onclick="toggle_thongtin()">
                                <div class="cover_tool">
                                    <div class="image_tool" style="background-image: url(images/iconfinder_SEO-31_2588757.png)"></div>
                                    <div class="content_tool">
                                        <div>Thông tin cá nhân</div>
                                    </div>
                                </div>
                            </li>
                        </a>
                        <a href="#">
                            <li class="item_tool" onclick="toggle_tintuc()">
                                <div class="cover_tool">
                                    <div class="image_tool" style="background-image: url(images/iconfinder_4_2135787.png)"></div>
                                    <div class="content_tool">
                                        <div>Tin tức</div>
                                    </div>
                                </div>
                            </li>
                        </a>
                        <a href="#">
                            <li class="item_tool" onclick="toggle_vanchuyen()">
                                <div class="cover_tool">
                                    <div class="image_tool" style="background-image: url(images/edit.png)"></div>
                                    <div class="content_tool">
                                        <div>Cập nhật chi phí vận chuyển</div>
                                    </div>
                                </div>
                            </li>
                        </a>
                        <a href="LogoutServlet">
                            <li class="item_tool">
                                <div class="cover_tool">
                                    <div class="image_tool" style="background-image: url(images/logout.png)"></div>
                                    <div class="content_tool">
                                        <div>Đăng xuất</div>
                                    </div>
                                </div>
                            </li>
                        </a>
                    </ul>
                </div>
                <% Employee emp = (Employee) session.getAttribute("user");%>
                <div style="padding: 10px;border-bottom: 1px solid #0000DD;border-top: 1px solid #0000DD;margin-left: 10px;"><h3 style="color: #0000DD">Thông tin tài khoản</h3></div>
                <div class="thongtincanhan" id="thongtincanhan">
                    <div class="form_thongtin">
                        <form action="UpdateTK" method="post">
                            <table cellspacing="10">
                                <tbody>
                                    <tr>
                                        <td>Tên đăng nhập</td>
                                        <td><input type="text" name="tendn" value="<%=emp.getTendangnhap()%>" class="inputtext" readonly="true"></td>
                                    </tr>
                                    <tr>
                                        <td>Mã nhân viên</td>
                                        <td><input type="text" name="manv" value="<%=emp.getManv()%>" class="inputtext" readonly="true"></td>
                                    </tr>
                                    <tr>
                                        <td>Tên nhân viên</td>
                                        <td><input type="text" id="tennv" name="tennv" value="<%=emp.getHoten()%>" class="inputtext nhaplieu" required=""></td>
                                    </tr>
                                    <tr>
                                        <td>Vai trò</td>
                                        <td><input type="text" readonly="true" value="<%=emp.getVaitro() == 1 ? "Quẩn lý" : "Nhân viên thường"%>" class="inputtext"></td>
                                    </tr>
                                    <tr>
                                        <td>Giới tính</td>
                                        <td>
                                            <select name="gioitinh" class="inputtext">
                                                <option value="1" <%=emp.getGioitinh().equals("Nam") ? "selected" : ""%>>Nam</option>
                                                <option value="0" <%=emp.getGioitinh().equals("Nữ") ? "selected" : ""%>>Nữ</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2"><input class="button" type="submit" value="Cập nhập" onclick="changeData()"></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </div>
                    <div class="thongso">

                        <form action="ChangePass">
                            <input type="hidden" name="manv" value="<%=emp.getManv()%>">
                            <table cellspacing="10">
                                <tbody>
                                    <tr>
                                        <td>Nhập mật khẩu mới</td>
                                        <td><input type="password" id="pass" name="pass" value="" class="inputtext" required=""></td>
                                    </tr>
                                    <tr>
                                        <td>Nhập lại mật khẩu</td>
                                        <td><input type="password" id="repass" name="repass" value="" class="inputtext nhaplieu" required=""></td>
                                    </tr>
                                    <tr>
                                        <td>Nhập mật khẩu cũ</td>
                                        <td><input type="password" id="oldPass" name="oldPass" value="" class="inputtext nhaplieu" required=""></td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2"><input class="button" type="submit" value="Đổi mật khẩu" onclick="return check(<%=emp.getMatkhau()%>)"</td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </div>
                </div>
                <div style="padding: 10px;border-bottom: 1px solid #0000DD;border-top: 1px solid #0000DD;margin-left: 10px;"><h3 style="color: #0000DD">Tin tức</h3></div>
                <div class="tintuc" id="tintuc">

                </div>
                <div style="padding: 10px;border-bottom: 1px solid #0000DD;border-top: 1px solid #0000DD;margin-left: 10px;"><h3 style="color: #0000DD">Phí vận chuyển</h3></div>
                <div class="chiphivanchuyen" id="chiphivanchuyen">
                    <div class="tinhthanh">
                        <select id="tinhthanh" class="bochon" onchange="fillData(this.value)">
                            <option value="\'\',\'\'" label="Chọn tỉnh"></option>
                            <%
                                Vector<Tinh> tinhs = Data.getTinhs();
                                for (Tinh t : tinhs) {
                            %>
                            <option value="<%=t.getMaTinh()%>,<%=t.getTentinh()%>" label="<%=t.getTentinh()%>"></option>
                            <%
                                }
                            %>
                        </select>
                        <form action="UpdateTinh" method="post">
                            <table cellspacing="10">
                                <tbody>
                                    <tr>
                                        <td>Mã tỉnh/thành phố</td>
                                        <td><input class="inputtext" id="matinh" name="matinh" value="" type="text" readonly="true" /></td>
                                    </tr>
                                    <tr>
                                        <td>Tên tỉnh/thành phố</td>
                                        <td><input class="inputtext" id="tentinh" name="tentinh" value="" type="text" required="true" /></td>
                                    </tr>
                                    <tr>
                                        <td><input class="button" value="Cập nhập" type="submit" onclick="return changeData()"/></td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </div>
                    <div class="huyen">
                        <select id="huyen" class="bochon" onchange="fillData1(this.value)">
                            
                        </select>
                        <form action="UpdateHuyen" method="post">
                            <table cellspacing="10">
                                <tbody>
                                    <tr>
                                        <td>Mã huyện/quận</td>
                                        <td><input class="inputtext" id="mahuyen" name="mahuyen" value="" type="text" readonly="true" /></td>
                                    </tr>
                                    <tr>
                                        <td>Tên huyện/quận</td>
                                        <td><input class="inputtext" id="tenhuyen" name="tenhuyen" value="" type="text" required="true" /></td>
                                    </tr>
                                    <tr>
                                        <td>Phí vận chuyển</td>
                                        <td><input class="inputtext" id="phi" name="phi" value="" type="number" required="true" /></td>
                                    </tr>
                                    <tr>
                                        <td><input class="button" value="Cập nhập" type="submit" onclick="return changeData()"/></td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script src="js/tongquan.js" type="text/javascript"></script>
</html>
