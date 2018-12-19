<%-- 
    Document   : nhanvien
    Created on : Dec 17, 2018, 10:38:13 AM
    Author     : Xuan Truong PC
--%>

<%@page import="DAO.DataEmployee"%>
<%@page import="model.Employee"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/nhanvien.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include  file="header.jsp" %>
        <div class="cover">
            <%@include file="slidebar.jsp" %>
            <div class="content">
                <div class="titile">Danh mục nhân viên</div>
                <div class="toolbar">
                    <ul>
                        <a href="#">
                            <li class="item_tool" onclick="insert()">
                                <div class="cover_tool">
                                    <div class="image_tool" style="background-image: url(images/add.png)"></div>
                                    <div class="content_tool">
                                        <div>Thêm nhân viên</div>
                                    </div>
                                </div>
                            </li>
                        </a>
                        <a href="#">
                            <li class="item_tool" onclick="update()">
                                <div class="cover_tool">
                                    <div class="image_tool" style="background-image: url(images/update.png)"></div>
                                    <div class="content_tool">
                                        <div>Cập nhập nhân viên</div>
                                    </div>
                                </div>
                            </li>
                        </a>
                    </ul>
                </div>
                <div  class="data">
                    <div class="search">
                        <form action="SearchEmployee" method="post">
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
                    <table cellspacing="0" style="width: 1530px">
                        <tbody class="title_column">
                            <tr>
                                <th width="150px">Mã nhân viên</th>
                                <th width="250px">Tên đăng nhập</th>
                                <th width="300px">Họ và tên</th>
                                <th width="150px">Giới tính</th>
                                <th width="100px">Admin</th>
                                <th width="100px">Reset mật khẩu</th>
                            </tr>
                        </tbody>
                        <tbody id="table-data">
                            <%
                                Vector<Employee> ems = (Vector<Employee>) request.getAttribute("ems");
//                                try{
//                                    out.print(ems.size());
//                                }catch(Exception e){
//                                    out.print(e.getMessage());
//                                }
                                if (ems == null) {
                                    ems = DataEmployee.getAllEmployee();
                                }
                                for (Employee e1 : ems) {
                            %>
                            <tr>
                                <td align="center"><%=e1.getManv()%></td>
                                <td><%=e1.getTendangnhap()%></td>
                                <td><%=e1.getHoten()%></td>
                                <td align="center"><%=e1.getGioitinh()%></td>
                                <td align="center" valign="center"><input type="checkbox" value="<%=e1.getVaitro()%>" <%=e1.getVaitro() == 1 ? "checked" : ""%> onchange="updateRole(<%=e1.getManv()%>, this.value, this)"></td>
                                <td align="center" valign="center"><div class="iconEdit" style="width: 25px;height: 35px; background-image: url(images/edit.png);background-size: 25px 25px;" onclick="resetPass(<%=e1.getManv()%>)"></div></td>
                            </tr>
                            <%
                                }
                                request.removeAttribute("ems");
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div id="addEmployee" style="display: none;">
            <div class="cover_form"></div>
            <div class="form" style="height:255px;min-height: 255px;">
                <div class="title_form">
                    <div class="title_form_text">Insert Employee</div>
                    <div class="exit_button" id="exit_update_form" onclick="closeInsEmp()"></div>
                </div>
                <div class="content_form" style="height:200px;min-height: 200px;">
                    <form action="InsertEmployee" method="post">
                        <table align="center" cellspacing="10">
                            <tr>
                                <td>Tên đăng nhập</td>
                                <td colspan="3">
                                    <input name="tendn" type="text" value="" onblur="checkDuplicate(this.value, 'nhanvien', 'tendangnhap')" required="true" pattern="^[a-zA-Z0-9_]+$" style="height: 30px;width: 600px">
                                    <p id="msg"></p>
                                </td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>Tên đầy đủ</td>
                                <td colspan="3">
                                    <input name="ht" type="text" value="" class="nhaplieu" required="true" style="height: 30px;width: 600px">
                                    <!--pattern="^[a-zA-Z]+( [a-zA-Z]+)*$"-->
                                </td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>Giới tính</td>
                                <td>
                                    <select name="gioitinh" style="height: 30px;width: 250px">
                                        <option value="1">Nam</option>
                                        <option value="0">Nữ</option>
                                    </select>
                                </td>
                                <td>Vai trò</td>
                                <td>
                                    <select name="role" style="height: 30px;width: 250px">
                                        <option value="1">Quản lý</option>
                                        <option value="0">Nhân viên</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4" align="center"><input type="submit" onclick="return changeData()" value="Hoàn tất"></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </body>
    <script src="js/nhanvien.js" type="text/javascript"></script>
</html>
