<%-- 
    Document   : index
    Created on : Dec 13, 2018, 7:21:18 AM
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
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/suplierCSS.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include  file="header.jsp" %>
        <div class="cover">
            <%@include file="slidebar.jsp" %>
            <div class="content">
                <div class="titile">Danh mục nhà cung cấp</div>
                <div class="toolbar">
                    <ul>
                        <a href="#">
                            <li class="item_tool" onclick="insert()">
                                <div class="cover_tool">
                                    <div class="image_tool" style="background-image: url(images/add.png)"></div>
                                    <div class="content_tool">
                                        <div>Thêm nhà cung cấp</div>
                                    </div>
                                </div>
                            </li>
                        </a>
                        <!--                        <a href="#">
                                                    <li class="item_tool">
                                                        <div class="cover_tool">
                                                            <div class="image_tool" style="background-image: url(images/detail.png)"></div>
                                                            <div class="content_tool">
                                                                <div>Xem chi tiết</div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </a>-->
                        <a href="#">
                            <li class="item_tool" onclick="update()">
                                <div class="cover_tool">
                                    <div class="image_tool" style="background-image: url(images/update.png)"></div>
                                    <div class="content_tool">
                                        <div>Cập nhập nhà cung cấp</div>
                                    </div>
                                </div>
                            </li>
                        </a>
                        <!--                        <a href="#">
                                                    <li class="item_tool">
                                                        <div class="cover_tool">
                                                            <div class="image_tool"></div>
                                                            <div class="content_tool">
                                                                <div>Thêm loại sản phẩm</div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </a>-->
                    </ul>
                </div>
                <div  class="data">
                    <table cellspacing="0" style="width: 1530px">
                        <tbody class="title_column">
                            <tr>
                                <th width='150px'>Mã công ty</th>
                                <th width='350px'>Tên công ty</th>
                                <th width='200px'>Mã số thuế</th>
                                <th width='500px'>Địa chỉ</th>
                                <th width='150px'>Số điện thoại</th>
                                <th width="100px">Cập nhập</th>
                            </tr>
                            <tr>
                                <th width='150px'><input id="txtMa" type="text" class="require require150" onkeyup="filter()"></th>
                                <th width='350px'><input id="txtTen" type="text" class="require require350" onkeyup="filter()"></th>
                                <th width='200px'><input id="txtThue" type="text" class="require require200" onkeyup="filter()"></th>
                                <th width='500px'><input id="txtDC" type="text" class="require require500" readonly="true"></th>
                                <th width='150px'><input id="txtDT" type="text" class="require require150" onkeyup="filter()"></th>
                                <th width='100px'></th>
                            </tr>
                        </tbody>
                        <tbody id="table-data">
                        <input type="hidden" value="" id="ma">
                        <%
                            Vector<Suplier> supliers = new Data().getSupliers();
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
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div id="insert_ncc" style="display: none">
            <div class="cover_form"></div>
            <div class="form">
                <div class="title_form">
                    <div class="title_form_text">Thêm mới nhà cung cấp</div>
                    <div class="exit_button" id="exit_update_form" onclick="closeInsert()"></div>
                </div>
                <div class="content_form">
                    <form action="InsertSuplier" method="post">
                        <table cellspacing="10">
                            <tr>
                                <th>Tên công ty</th>
                                <td colspan="3"><input type="text" value="" name="txtTenInsert" id="txtTenInsert" class="dai" required=""></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Mã số thuế</th>
                                <td>
                                    <input type="text" value="" name="txtThueInsert" required="" pattern="^[0-9]{10}$" onblur="checkDuplicate(this.value,'nhacungcap','masothue')">
                                    <p id="msg"></p>
                                </td>
                                <th>Số điện thoại</th>
                                <td><input type="text" value="" name="txtDTInsert" required="" pattern="^[0-9]{10}$"></td>                                
                            </tr>
                            <tr>
                                <th>Địa chỉ</th>
                                <td colspan="3"><input class="dai" type="text" value="" name="txtDCInsert" id="txtDCInsert" required=""></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Email</th>
                                <td colspan="3"><input class="dai" type="text" value="" name="txtEmailInsert" pattern="^[a-zA-Z0-9]{1,}((_|\.)[a-zA-Z0-9]{1,}){0,}(@)[a-z]{1,}(\.[a-z]{1,}){0,}((\.com)|(\.com\.vn))$"></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td colspan="2" align="right"><input type="submit" value="Hoàn tất" onclick="return changeData()"</td>
                                <td colspan="2" align="left"><input type="reset" value="Làm mới"></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>

        <div id="update_ncc" style="display: none">
            
        </div>
    </body>
    <script src="js/suplierJS.js" type="text/javascript"></script>
</html>
