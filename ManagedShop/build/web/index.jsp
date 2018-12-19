<%-- 
    Document   : index
    Created on : Dec 13, 2018, 7:21:18 AM
    Author     : Xuan Truong PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.util.*" %>
<%@page  import="model.*" %>
<%@page  import="DAO.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <!--phần header-->
        <%@include  file="header.jsp" %>
        <!--end header-->

        <!--start body-->
        <div class="cover">
            <!--start menu-->
            <%@include file="slidebar.jsp" %>
            <!--end menu-->
            <!--start content-->
            <div class="content">
                <div class="titile">Danh mục sản phẩm</div>
                <!--start toolbar-->
                <div class="toolbar">
                    <ul>
                        <a href="#">
                            <li class="item_tool" onclick="insert()">
                                <div class="cover_tool">
                                    <div class="image_tool" style="background-image: url(images/add.png)"></div>
                                    <div class="content_tool">
                                        <div>Thêm sản phẩm</div>
                                    </div>
                                </div>
                            </li>
                        </a>
                        <a href="#">
                            <li class="item_tool" onclick="detail()">
                                <div class="cover_tool">
                                    <div class="image_tool" style="background-image: url(images/detail.png)"></div>
                                    <div class="content_tool">
                                        <div>Xem chi tiết</div>
                                    </div>
                                </div>
                            </li>
                        </a>
                        <a href="#">
                            <li class="item_tool" onclick="update()">
                                <div class="cover_tool">
                                    <div class="image_tool" style="background-image: url(images/edit.png)"></div>
                                    <div class="content_tool">
                                        <div>Cập nhật sản phẩm</div>
                                    </div>
                                </div>
                            </li>
                        </a>
                        <a href="#">
                            <li class="item_tool" onclick="insertType()">
                                <div class="cover_tool">
                                    <div class="image_tool" style="background-image: url(images/add1.png)"></div>
                                    <div class="content_tool">
                                        <div>Thêm loại sản phẩm</div>
                                    </div>
                                </div>
                            </li>
                        </a>
                    </ul>
                </div>
                <!--end toolbar-->
                <!--start data-->
                <div class="data">
                    <table cellspacing='0' cellpadding='5' width='1550px'>
                        <!--tiêu đề-->
                        <tbody class="title_column">
                            <tr>
                                <th width='150px'>Mã sản phẩm</th>
                                <th width='250px'>Tên sản phẩm</th>
                                <th width='150px'>Giá</th>
                                <th width='150px'>Kích cỡ</th>
                                <th width='150px'>Màu sắc</th>
                                <th width='150px'>Số lượng tồn kho</th>
                                <th width='250px'>Nhà cung cấp</th>
                                <th width='200px'>Loại sản phẩm</th>
                                <th width='100px'>Cập nhập</th>
                            </tr>
                            <tr>
                                <td><input type="text" class="require require150" onkeyup="filter()" id='txtMaSP'></td>
                                <td><input type="text" class="require require250" onkeyup="filter()" id="txtTenSP"></td>
                                <td></td>
                                <td>
                                    <select class="require require150" onchange="filter()" id='kichCo'>
                                        <option value="">Tất cả</option>
                                        <option value='5XL'>5XL</option>
                                        <option value="4XL">4XL</option>
                                        <option value="3XL">3XL</option>
                                        <option value="2XL">2XL</option>
                                        <option value="XL">XL</option>
                                        <option value="L">L</option>
                                        <option value="M">M</option>
                                        <option value="S">S</option>
                                    </select>
                                </td>
                                <td>
                                    <!--                                    <select class="require require150" onchange="filter()" id="maMau">
                                                                            <option value="">Tất cả</option>
                                    <%
                                        Vector<String> maus = new Data().getMaus();
                                        for (String s : maus) {
                                    %>
                                    <option value='<%=s%>' style="height: 30px;"><%=s%></option>
                                    <%
                                        }
                                    %>
                                </select>-->
                                    <select class="require require150" onchange="filter()" id="maMau">
                                        <option value="">Tất cả</option>
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
                                        <option value="#E0FFFF">Blue Sky</option>
                                        <option value="#0000FF">Màu xanh 1</option>
                                        <option value="#00C5CD">Màu xanh 2</option>
                                        <option value="#770000">Đỏ đô</option>
                                        <option value="#F00000">Màu đỏ</option>
                                        <option value="#FFFFFF">Màu trắng</option>
                                        <option value="#000000">Màu đen</option>
                                    </select>
                                </td>
                                <td></td>
                                <td>
                                    <select class="require require250" onchange="filter()" id="maNCC">
                                        <option value="0">Tất cả</option>
                                        <%
                                            Vector<Suplier> supliers = new Data().getSupliers();
                                            for (Suplier s : supliers) {
                                        %>
                                        <option value="<%=s.getMa()%>" style="height: 30px;"><%=s.getTen()%></option>
                                        <%
                                            }
                                        %>
                                    </select>
                                </td>
                                <td>
                                    <select class="require require200" onchange="filter()" id='maLoai'>
                                        <option value="0">Tất cả</option>
                                        <%
                                            Vector<TypeProduct> typess = new Data().getTypes();
                                            for (TypeProduct t : typess) {
                                        %>
                                        <option value="<%=t.getMa()%>" style="height: 30px;"><%=t.getName()%></option>
                                        <%
                                            }
                                        %>
                                    </select>
                                </td>
                                <td></td>
                            </tr>
                        </tbody>
                        <!--nội dung-->
                        <input type="hidden" value="" id="masp">
                        <tbody class="table_data" id="table-data">
                        
                        <%
                            Vector<Product> products = new Data().getProducts(0, "", "", "", 0, 0);
                            if (products.size() == 0) {
                                out.print("no results");
                            } else {
                                //out.print(new Data().getProducts1(0, "M", "", "", 0, 0));
                                for (Product p : products) {
                        %>
                        <tr onclick="choose(<%=p.getMaSP()%>, this)" class="row_data">
                            <td widtd='150px'><%= p.getMaSP()%></td>
                            <td widtd='250px'><%= p.getTenSP()%></td>
                            <td widtd='150px'><%=p.getGia()%></td>
                            <td widtd='150px'><%=p.getKichCo()%></td>
                            <td widtd='150px' align="center"><div style="height: 20px; width: 100px; background-color: #<%=p.getMau()%>"></div></td>
                            <td widtd='150px'><%=(int) p.getSoLuong()%></td>
                            <td widtd='250px'><%=p.getTenncc()%></td>
                            <td widtd='200px'><%=p.getTenloaisp()%></td>
                            <td align="center" valign="center"><div class="iconEdit" style="width: 25px;height: 35px; background-image: url(images/edit.png);background-size: 25px 25px;" onclick="update1(<%=p.getMaSP()%>)"></div></td>
                        </tr>
                        <%
                                }
                            }
                        %>
                        </tbody>
                    </table>
                </div>
                <!--end data-->
<!--                <div class="phan_trang">
                    <a href="#"><div class="button">Prev</div></a>
                    <input type="text" value="1" disabled="true" class="button">
                    <a href="#"><div class="button">Next</div></a>
                    <div class="song">
                        <div>Số dòng trên một trang</div> 
                        <select class="button">
                            <option value="10" selected="true">10</option>
                            <option value="20">20</option>
                            <option value="30">30</option>
                        </select>
                    </div>
                </div>-->
            </div>
            <!--end content-->
        </div>
        <!--end body-->
        <!--form update-->
        <div id="update_form" style="display:none">
            <%--<%@include  file="updateForm.jsp" %>--%>
        </div>

        <div id="insert_form" style="display: none;">
            <%@include  file="insertForm.jsp" %>
        </div>

        <div id="detail_form" style="display: none;">
            <%--<%@include  file="detailForm.jsp" %>--%>
        </div>
        <div id="addType" style="display: none;">
            <div class="cover_form"></div>
            <div class="form" style="height:250px;min-height: 250px;">
                <div class="title_form">
                    <div class="title_form_text">Insert Type Product</div>
                    <div class="exit_button" id="exit_update_form" onclick="closeInsType()"></div>
                </div>
                <div class="content_form" style="height:200px;min-height: 200px;">
                    <form action="InsertTypeProduct" method="post">
                        <table align="center" cellspacing="10" style="margin-left:150px">
                            <tr>
                                <th>Tên loại sản phẩm</th>
                                <td>
                                    <input type="text" value="" name="txtType" id="txtType" style="height: 30px;width: 300px" required="" onblur="checkDuplicate(this.value,'loaisanpham','tenloai')">
                                    <p id="msg" style="color: red"></p>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center"><input type="submit" onclick="return changeData1()" value="Hoàn tất"></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </body>
    <script src="js/indexJS.js" type="text/javascript"></script>
</html>
