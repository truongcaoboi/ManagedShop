<%-- 
    Document   : updateForm
    Created on : Dec 14, 2018, 5:59:42 AM
    Author     : Xuan Truong PC
--%>

<%@page import="model.Product"%>
<%@page import="model.Suplier"%>
<%@page import="java.util.Vector"%>
<%@page import="DAO.Data"%>
<%@page import="model.TypeProduct"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="cover_form">

        </div>
        <div class="form">
            <%
                Product p=new Data().getProduct(request.getParameter("masp"));
            %>
            <input type="hidden" value="" id="maSP">
            <div class="title_form">
                <div class="title_form_text">Detail Product (Mã sản phẩm: <%=p.getMaSP()%>)</div>
                <div class="exit_button" id="exit_update_form" onclick="closeDetail()"></div>
            </div>
            <div class="content_form">
                <form>
                    <table cellspacing="10">
                        <tbody>
                            <tr>
                                <th>Tên sản phẩm</th>
                                <td><input type="text" value="<%= p.getTenSP()%>" name="tenSP" required="" disabled=""></td>
                                <th>Giá</th>
                                <td><input type="number" value="<%=p.getGia()%>"name="gia" required="" disabled=""></td>
                            </tr>
                            <tr>
                                <th>Kích cỡ</th>
                                <td>
                                    <input type="text" value="<%=p.getKichCo()%>" disabled="true">
                                </td>
                                <th>Số lượng tồn</th>
                                <td>
                                    <input type="number" value="<%=p.getSoLuong() %>" name="" id="soluong" disabled="true">
                                </td>
                            </tr>
                            <tr>
                                <th>Màu sắc</th>
                                <td>
                                     <input type="text" value="<%=p.getMau()%>" disabled="true">
                                </td>
                                <td>
                                    <div style="height: 25px;width: 100px; background-color:#<%=p.getMau()%>;border:1px solid black; "></div>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <th rowspan="3" valign="top">Mô tả</th>
                                <td rowspan="3" colspan="3" id="mota">
                                    <textarea rows="3" cols="40" style="height: 100px;width: 620px" disabled="true"><%=p.getMoTa()%>
                                    </textarea>
                                </td>
                            </tr>
                            <tr></tr>
                            <tr></tr>
                            <tr>
                                <th>Hình ảnh1</th>
                                <td><input readonly="true" type="text" value="<%=p.getHinhAnh().split(";").length==0?p.getHinhAnh():p.getHinhAnh().split(";")[0] %>" name="hinh" required="true" onclick="changeImage1(this.value)"></td>
                                <td colspan="2" rowspan="5">
                                    <div id="imageProduct1" class="imageProduct" style="background-image: url(<%=p.getHinhAnh().split(";").length==0?p.getHinhAnh():p.getHinhAnh().split(";")[0] %>)"></div>
                                </td>
                            </tr>
                            <tr>
                                <th>Hình ảnh2</th>
                                <td><input readonly="true" type="text" value="<%=p.getHinhAnh().split(";").length>=2?p.getHinhAnh().split(";")[1]:"" %>" name="hinh"  onclick="changeImage1(this.value)"></td>
                            </tr>
                            <tr>
                                <th>Hình ảnh3</th>
                                <td><input readonly="true" type="text" value="<%=p.getHinhAnh().split(";").length>=3?p.getHinhAnh().split(";")[2]:""%>" name="hinh"  onclick="changeImage1(this.value)"></td>
                            </tr>
                            <tr>
                                <th>Hình ảnh4</th>
                                <td><input readonly="true" type="text" value="<%=p.getHinhAnh().split(";").length>=4?p.getHinhAnh().split(";")[3]:"" %>" name="hinh"  onclick="changeImage1(this.value)"></td>
                            </tr>
                            <tr>
                                <th>Hình ảnh5</th>
                                <td><input readonly="true" type="text" value="<%=p.getHinhAnh().split(";").length==5?p.getHinhAnh().split(";")[4]:"" %>" name="hinh" onkeyup="changeImage(this.value)" onclick="changeImage(this.value)"></td>
                            </tr>
                            <tr>
                                <th>Nhà cung cấp</th>
                                <td>
                                    <input disabled="true" type="text" value="<%=p.getTenncc()%>">
                                </td>
                                <th>
                                    Loại sản phẩm
                                </th>
                                <td>
                                    <input disabled="true" type="text" value="<%=p.getTenloaisp()%>">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
