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
        <%
            Product p = new Data().getProduct(request.getParameter("masp"));
        %>
        <div class="form">

            <div class="title_form">
                <div class="title_form_text">Update Product</div>
                <div class="exit_button" id="exit_update_form" onclick="closeUpdate()"></div>
            </div>
            <div class="content_form">
                <form action="UpdateProduct" method="post" >
                    <input type="hidden" value="<%=p.getMaSP()%>" name="maSP" >
                    <table cellspacing="10">
                        <tbody>
                            <tr>
                                <th>Tên sản phẩm</th>
                                <td><input type="text" value="<%=p.getTenSP()%>" name="tenSP" required="" id="tenSPUpdate"></td>
                                <th>Giá</th>
                                <td><input type="text" value=" <%=p.getGia()%>"name="gia" required=""></td>
                            </tr>
                            <tr>
                                <th>Kích cỡ</th>
                                    <%
                                        String[] kcs = p.getKichCo().split(",");
                                        int [] a={0,0,0,0,0,0,0,0};
                                        for(String s:kcs){
                                            if(s.equals("5XL")){
                                                a[0]=1;
                                                continue;
                                            }else if(s.equals("4XL")){
                                                a[1]=1;
                                                continue;
                                            }else if(s.equals("3XL")){
                                                a[2]=1;
                                                continue;
                                            }else if(s.equals("2XL")){
                                                a[3]=1;
                                                continue;
                                            }else if(s.equals("XL")){
                                                a[4]=1;
                                                continue;
                                            }else if(s.equals("L")){
                                                a[5]=1;
                                                continue;
                                            }else if(s.equals("M")){
                                                a[6]=1;
                                                continue;
                                            }else if(s.equals("S")){
                                                a[7]=1;
                                            }
                                        }
                                    %>
                                <td colspan="3" align="center" valign="center" style="font-size: 20px">
                                    <input class="checkbox" type="checkbox" value="5XL" name="kichthuoc" <%= a[0]==1?"checked":"" %>> 5XL&nbsp;
                                    <input class="checkbox" type="checkbox" value="4XL" name="kichthuoc" <%= a[1]==1?"checked":"" %>> 4XL&nbsp;
                                    <input class="checkbox" type="checkbox" value="3XL" name="kichthuoc" <%= a[2]==1?"checked":"" %>> 3XL&nbsp; 
                                    <input class="checkbox" type="checkbox" value="2XL" name="kichthuoc" <%= a[3]==1?"checked":"" %>> 2XL&nbsp; 
                                    <input class="checkbox" type="checkbox" value="XL" name="kichthuoc" <%= a[4]==1?"checked":"" %>> XL&nbsp; 
                                    <input class="checkbox" type="checkbox" value="L" name="kichthuoc" <%= a[5]==1?"checked":"" %>> L&nbsp; 
                                    <input class="checkbox" type="checkbox" value="M" name="kichthuoc" <%= a[6]==1?"checked":"" %>> M&nbsp; 
                                    <input class="checkbox" type="checkbox" value="S" name="kichthuoc" <%= a[7]==1?"checked":"" %>> S
                                </td>
                            </tr>
                            <tr>
                                <th>Số lượng tồn</th>
                                <td>
                                    <input type="number" value="<%=p.getSoLuong()%>" name="soluong" required="">
                                </td>
                            </tr>
                            <tr>
                                <th>Màu sắc</th>
                                <td>
                                    <!--<input disabled="true" type="text" value="<%=p.getMau()%>">-->
                                    <select onchange="chageColor1()" id="updateColor1" name="mau">
                                        <option value="#0000FF" <%= p.getMau().equals("0000FF")?"selected":""%>>Xanh lam</option>
                                        <option value="#c8a2c8" <%= p.getMau().equals("c8a2c8")?"selected":""%>>Hoa cà</option>
                                        <option value="#E6E6FA" <%= p.getMau().equals("E6E6FA")?"selected":""%>>Oải hương</option>
                                        <option value="#50C878" <%= p.getMau().equals("50C878")?"selected":""%>>Lục bảo</option>
                                        <option value="#C41E3A" <%= p.getMau().equals("C41E3A")?"selected":""%>>Hồng y</option>
                                        <option value="#7FFF00" <%= p.getMau().equals("7FFF00")?"selected":""%>>Xanh noãn chuối</option>
                                        <option value="#40826D" <%= p.getMau().equals("40826D")?"selected":""%>>Xanh crom</option>
                                        <option value="#FF3E96" <%= p.getMau().equals("FF3E96")?"selected":""%>>Tím nhạt</option>
                                        <option value="#FFC125" <%= p.getMau().equals("FFC125")?"selected":""%>>Vàng nhạt</option>
                                        <option value="#228B22" <%= p.getMau().equals("228B22")?"selected":""%>>Xanh rêu</option>
                                        <option value="#8B4513" <%= p.getMau().equals("8B4513")?"selected":""%>>Màu nâu</option>
                                        <option value="#FF8C00" <%= p.getMau().equals("FF8C00")?"selected":""%>>Màu bò</option>
                                        <option value="#C0C0C0" <%= p.getMau().equals("C0C0C0")?"selected":""%>>Màu bạc</option>
                                        <option value="#00F5FF" <%= p.getMau().equals("00F5FF")?"selected":""%>>Xanh cổ vịt</option>
                                        <option value="#00FF00" <%= p.getMau().equals("00FF00")?"selected":""%>>Xanh lá cây</option>
                                        <option value="#000022" <%= p.getMau().equals("000022")?"selected":""%>>Xanh đen</option>
                                        <option value="#FF1493" <%= p.getMau().equals("FF1493")?"selected":""%>>Màu hồng</option>
                                        <option value="#FFFAF0" <%= p.getMau().equals("FFFAF0")?"selected":""%>>Màu kem</option>
                                        <option value="#FF4500" <%= p.getMau().equals("FF4500")?"selected":""%>>Màu cam</option>
                                        <option value="#363636" <%= p.getMau().equals("363636")?"selected":""%>>Xám đậm</option>
                                        <option value="#CFCFCF" <%= p.getMau().equals("CFCFCF")?"selected":""%>>Xám nhạt</option>
                                        <option value="#8B658B" <%= p.getMau().equals("08B658B")?"selected":""%>>Màu tím</option>
                                        <option value="#FFFF00" <%= p.getMau().equals("FFFF00")?"selected":""%>>Màu vàng</option>
                                        <option value="#E0FFFF" <%= p.getMau().equals("E0FFFF")?"selected":""%>>Blue sky</option>
                                        <option value="#0000FF" <%= p.getMau().equals("0000FF")?"selected":""%>>Màu xanh 1</option>
                                        <option value="#00C5CD" <%= p.getMau().equals("00C5CD")?"selected":""%>>Màu xanh 2</option>
                                        <option value="#770000" <%= p.getMau().equals("770000")?"selected":""%>>Đỏ đô</option>
                                        <option value="#F00000" <%= p.getMau().equals("F00000")?"selected":""%>>Màu đỏ</option>
                                        <option value="#ffffff" <%= p.getMau().equals("ffffff")?"selected":""%>>Màu trắng</option>
                                        <option value="#000000" <%= p.getMau().equals("000000")?"selected":""%>>Màu đen</option>
                                    </select>
                                </td>
                                <td>
                                    <div style="height: 25px;width: 100px; background-color:#<%=p.getMau()%>;border:1px solid black; " id="exampleColor1"></div>
                                </td>
                                <td></td>
                            </tr>
                            
                            <tr>
                                <th>Hình ảnh1</th>
                                <td><input autocomplete="off" type="text" value="<%=p.getHinhAnh().split(";").length == 0 ? p.getHinhAnh() : p.getHinhAnh().split(";")[0]%>" name="hinh" required="true" onkeyup="changeImage(this.value)" onclick="changeImage(this.value)"></td>
                                <td colspan="2" rowspan="5">
                                    <div id="imageProduct" class="imageProduct" style="background-image: url(<%=p.getHinhAnh().split(";").length == 0 ? p.getHinhAnh() : p.getHinhAnh().split(";")[0]%>)"></div>
                                </td>
                            </tr>
                            <tr>
                                <th>Hình ảnh2</th>
                                <td><input autocomplete="off" type="text" value="<%=p.getHinhAnh().split(";").length >= 2 ? p.getHinhAnh().split(";")[1] : ""%>" name="hinh" onkeyup="changeImage(this.value)" onclick="changeImage(this.value)"></td>
                            </tr>
                            <tr>
                                <th>Hình ảnh3</th>
                                <td><input autocomplete="off" type="text" value="<%=p.getHinhAnh().split(";").length >= 3 ? p.getHinhAnh().split(";")[2] : ""%>" name="hinh" onkeyup="changeImage(this.value)" onclick="changeImage(this.value)"></td>
                            </tr>
                            <tr>
                                <th>Hình ảnh4</th>
                                <td><input autocomplete="off" type="text" value="<%=p.getHinhAnh().split(";").length >= 4 ? p.getHinhAnh().split(";")[3] : ""%>" name="hinh" onkeyup="changeImage(this.value)" onclick="changeImage(this.value)"></td>
                            </tr>
                            <tr>
                                <th>Hình ảnh5</th>
                                <td><input autocomplete="off" type="text" value="<%=p.getHinhAnh().split(";").length == 5 ? p.getHinhAnh().split(";")[4] : ""%>" name="hinh" onkeyup="changeImage(this.value)" onclick="changeImage(this.value)"></td>
                            </tr>
                            <tr>
                                <th rowspan="3" valign="top">Mô tả</th>
                                <td rowspan="3" colspan="3" id="mota">
                                    <textarea rows="3" cols="40" style="height: 100px;width: 620px" required="" name="mota" id="motaSPUpdate"><%=p.getMoTa()%>
                                    </textarea>
                                </td>
                            </tr>
                            <tr></tr>
                            <tr></tr>
                            <tr>
                                <th>Nhà cung cấp</th>
                                <td>
                                    <!--<input disabled="true" type="text" value="<%=p.getTenncc()%>">-->
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
                                    <!--<input disabled="true" type="text" value="<%=p.getTenloaisp()%>">-->
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
                                    <input type="submit" value="Hoàn tất" onclick="return changeData()">
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
