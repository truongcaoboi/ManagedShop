<%-- 
    Document   : updateForm
    Created on : Dec 14, 2018, 5:59:42 AM
    Author     : Xuan Truong PC
--%>

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
            <div class="title_form">
                <div class="title_form_text">Insert Product</div>
                <div class="exit_button" id="exit_update_form" onclick="closeInsert()"></div>
            </div>
            <div class="content_form">
                <form action="InsertProduct" method="post">
                    <table cellspacing="10">
                        <tbody>
                            <tr>
                                <th widtd='150px'>Tên sản phẩm</th>
                                <td><input id="tenSPInsert" type="text" name="ten" required="" autocomplete="off"></td>
                                <th>Giá</th>
                                <td><input type="number" name="gia" required=""></td>
                            </tr>
                            <tr>
                                <th widtd='150px'>Kích thước</th>
                                <td colspan="3" align="center" valign="center" style="font-size: 20px">
                                    <input class="checkbox" type="checkbox" value="5XL" name="kichthuoc"> 5XL&nbsp;
                                    <input class="checkbox" type="checkbox" value="4XL" name="kichthuoc"> 4XL&nbsp;
                                    <input class="checkbox" type="checkbox" value="3XL" name="kichthuoc"> 3XL&nbsp; 
                                    <input class="checkbox" type="checkbox" value="2XL" name="kichthuoc"> 2XL&nbsp; 
                                    <input class="checkbox" type="checkbox" value="XL" name="kichthuoc"> XL&nbsp; 
                                    <input class="checkbox" type="checkbox" value="L" name="kichthuoc"> L&nbsp; 
                                    <input class="checkbox" type="checkbox" value="M" name="kichthuoc"> M&nbsp; 
                                    <input class="checkbox" type="checkbox" value="S" name="kichthuoc"> S
                                </td>
                                
                            </tr>
                            <tr>
                                <th>Số lượng tồn</th>
                                <td>
                                    <input type="number" value="" name="soluong" required="">
                                </td>
                            </tr>
                            <tr>
                                <th>Chọn màu</th>
                                <td>
                                    <select onchange="chageColor()" id="updateColor" name="mau">
                                        <option value="#0000FF">Xanh lam</option>
                                        <option value="#c8a2c8">Hoa cà</option>
                                        <option value="#E6E6FA">Oải hương</option>
                                        <option value="#50C878">Lục bảo</option>
                                        <option value="#C41E3A">Hồng y</option>
                                        <option value="#7FFF00">Xanh noãn chuối</option>
                                        <option value="#40826D">Xanh crom</option>
                                        <option value="#FF3E96">Tím nhạt</option>
                                        <option value="#FFC125">Vàng nhạt</option>
                                        <option value="#228B22">Xanh rêu</option>
                                        <option value="#8B4513">Màu nâu</option>
                                        <option value="#FF8C00">Màu bò</option>
                                        <option value="#C0C0C0">Màu bạc</option>
                                        <option value="#00F5FF">Xanh cổ vịt</option>
                                        <option value="#00FF00">Xanh lá cây</option>
                                        <option value="#000022">Xanh đen</option>
                                        <option value="#FF1493">Màu hồng</option>
                                        <option value="#FFFAF0">Màu kem</option>
                                        <option value="#FF4500">Màu cam</option>
                                        <option value="#363636">Xám đậm</option>
                                        <option value="#CFCFCF">Xám nhạt</option>
                                        <option value="#8B658B">Màu tím</option>
                                        <option value="#FFFF00">Màu vàng</option>
                                        <option value="#E0FFFF">Blue sky</option>
                                        <option value="#0000FF">Màu xanh 1</option>
                                        <option value="#00C5CD">Màu xanh 2</option>
                                        <option value="#770000">Đỏ đô</option>
                                        <option value="#F00000">Màu đỏ</option>
                                        <option value="#FFFFFF">Màu trắng</option>
                                        <option value="#000000">Màu đen</option>
                                    </select>
                                </td>
                                <td>
                                    <div style="height: 25px;width: 100px; background-color:#0000FF;border:1px solid black; " id="exampleColor"></div>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <th rowspan="3" valign="top">Mô tả</th>
                                <td rowspan="3" colspan="3">
                                    <textarea id="motaSPInsert" rows="3" cols="40" style="height: 100px;width: 620px" required="" name="mota"></textarea>
                                </td>
                            </tr>
                            <tr></tr>
                            <tr></tr>
                            <tr>
                                <th>Hình ảnh 1</th>
                                <td colspan="3"><input autocomplete="off" id="hinhSPInsert" type="text" value="" name="hinh" style="height: 30px;width: 620px" required=""></td>
                            </tr>
                            <tr>
                                <th>Hình ảnh 2</th>
                                <td colspan="3"><input autocomplete="off" id="hinhSPInsert" type="text" value="" name="hinh" style="height: 30px;width: 620px"></td>
                            </tr>
                            <tr>
                                <th>Hình ảnh 3</th>
                                <td colspan="3"><input autocomplete="off" id="hinhSPInsert" type="text" value="" name="hinh" style="height: 30px;width: 620px"></td>
                            </tr>
                            <tr>
                                <th>Hình ảnh 4</th>
                                <td colspan="3"><input autocomplete="off" id="hinhSPInsert" type="text" value="" name="hinh" style="height: 30px;width: 620px"></td>
                            </tr>
                            <tr>
                                <th>Hình ảnh 5</th>
                                <td colspan="3"><input autocomplete="off" id="hinhSPInsert" type="text" value="" name="hinh" style="height: 30px;width: 620px"></td>
                            </tr>
                            <tr>
                                <th>Nhà cung cấp</th>
                                <td>
                                    <select name="maNcc">
<!--                                        <option value="0">Tất cả</option>-->
                                        <%
                                            Vector<Suplier> supliers2 = new Data().getSupliers();
                                            for (Suplier s : supliers2) {
                                        %>
                                        <option value="<%=s.getMa()%>" style="height: 30px;"><%=s.getTen()%></option>
                                        <%
                                            }
                                        %>
                                    </select>
                                </td>
                                <th>
                                    Loại sản phẩm
                                </th>
                                <td>
                                    <select name="loai">
<!--                                        <option value="0">Tất cả</option>-->
                                        <%
                                            Vector<TypeProduct> typess2 = new Data().getTypes();
                                            for (TypeProduct t : typess2) {
                                        %>
                                        <option value="<%=t.getMa()%>" style="height: 30px;"><%=t.getName()%></option>
                                        <%
                                            }
                                        %>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="right">
                                    <input type="submit" value="Hoàn tất" onclick="return changeData2()">
                                </td>
                                <td colspan="2" align="left">
                                    <input type="reset" value="Hủy bỏ">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
