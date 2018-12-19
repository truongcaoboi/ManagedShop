<%-- 
    Document   : detailReceipt
    Created on : Dec 19, 2018, 8:59:12 AM
    Author     : Xuan Truong PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="model.*" %>
<%@page  import="DAO.*" %>
<%@page  import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Receipt r = DataHoadon.getReceipt(request.getParameter("mahoadon"));
            Employee em = (Employee) session.getAttribute("user");
        %>
        <div class="cover_form"></div>
        <div class="form" style="">
            <div class="title_form">
                <div class="title_form_text">Detail Receipt</div>
                <div class="exit_button" id="exit_update_form" onclick="closeDetailHD()"></div>
            </div>
            <div class="content_form" style="">
                <form action="UpdateHD" method="post">
                    <input type="hidden" value="<%=em.getManv()%>" name="manv">
                    <table cellpadding="5" cellspacing="10">
                        <tbody>
                            <tr>
                                <td>Mã hóa đơn</td>
                                <td><input name="mahoadon" class="thongtin" value="<%=r.getMahoadon()%>" readonly="true"></td>
                                <td>Ngày tạo</td>
                                <td><input class="thongtin" value="<%=r.getNgaytao()%>" readonly="true"></td>
                            </tr>
                            <tr>
                                <td>Mã khách hàng</td>
                                <td><input class="thongtin" value="<%=r.getCom().getMakh()%>" readonly="true"></td>
                                <td>Tên khách hàng</td>
                                <td style="display: flex;justify-content: flex-start;align-items: center">
                                    <input class="thongtin" value="<%=r.getCom().getHoten()%>" readonly="true" style="margin-right: 3px;">
                                    <div class="iconEdit" style="width: 25px;height: 35px; background-image: url(images/detail.png);background-size: 25px 25px;" onclick="detail_consumer(<%=r.getCom().getMakh()%>)"></div>
                                </td>
                            </tr>
                            <tr>
                                <td>Mã nhân viên</td>
                                <td><input class="thongtin" value="<%=r.getEm().getManv()%>" readonly="true"></td>
                                <td>Tên nhân viên</td>
                                <td><input class="thongtin" value="<%=r.getEm().getHoten()%>" readonly="true"></td>
                            </tr>
                            <tr>
                                <td>Tên người nhận</td>
                                <td><input class="thongtin" value="<%=r.getTennguoinhan()%>" readonly="true"></td>
                                <td>Điện thoại người nhân</td>
                                <td><input class="thongtin" value="<%=r.getDienthoainguoinhan()%>" readonly="true"></td>
                            </tr>
                            <tr>
                                <td>Địa chỉ giao hàng</td>
                                <td colspan="3"><input class="thongtin" value="<%=r.getDiachigiaohang()%>" readonly="true"></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>Ngày hoàn thành</td>
                                <td><input class="thongtin" value="<%=r.getNgayhoanthanh()%>" readonly="true"></td>
                                <td>Hình thức thanh toán</td>
                                <td><input class="thongtin" value="<%=r.getHinhthucthanhtoan()%>" readonly="true"></td>
                            </tr>
                            <tr>
                                <td>Giảm giá</td>
                                <td><input class="thongtin" value="<%=r.getGiamgia()%>" readonly="true"></td>
                                <td>Phí vận chuyển</td>
                                <td><input class="thongtin" value="<%=r.getPhivanchuyen()%>" readonly="true"></td>
                            </tr>
                            <tr>
                                <td colspan="4" align="center">
                                    <div style="overflow-y: scroll;width: 750px;height: 150px;">
                                        <table style="width: 700px;" cellpadding="5" cellspacing="0" id="table_pro">
                                            <tbody>
                                                <tr>
                                                    <th width="150px" style="text-align: center">Mã sản phẩm</th>
                                                    <th width="250px" style="text-align: center">Tên sản phẩm</th>
                                                    <th width="75px" style="text-align: center">Số lượng</th>
                                                    <th width="150px" style="text-align: center">Giá bán</th>
                                                    <th width="75px" style="text-align: center">Chi tiết</th>
                                                </tr>
                                                <%
                                                    for (Product p : r.getListPro()) {
                                                %>
                                                <tr>
                                                    <td width="150px" align="center"><%=p.getMaSP()%></td>
                                                    <td width="250px"><%=p.getTenSP()%></td>
                                                    <td width="75px" align="center"><%=p.getSoluong()%></td>
                                                    <td width="150px"><%=p.getGiaban()%></td>
                                                    <td width="75px" align="center"><div class="iconEdit" style="width: 25px;height: 35px; background-image: url(images/detail.png);background-size: 25px 25px;" onclick="detail_product(<%=p.getMaSP()%>)"></div></td>
                                                </tr>
                                                <%
                                                    }
                                                %>
                                            </tbody>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th align="left" valign="top" rowspan="3">Ghi chú</th>
                                <td colspan="3" rowspan="3"><textarea id="ghichu" name="ghichu" <%= (r.getTrangthai().equals("Đã hoàn thành"))?"readonly":"" %> cols="40" rows="3" style="width: 500px;height: 100px"><%=r.getGhichu()%></textarea></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr></tr>
                            <tr></tr>
                            <tr>
                                <td>Tổng giá trị</td>
                                <td><input class="thongtin" value="<%=r.getTonggiatri()%>" readonly="true"></td>
                                <td>Trạng thái</td>
                                <td>
                                    <%
                                        String trangthai = r.getTrangthai();
                                        if (trangthai.equals("Mới tạo")) {
                                    %>
                                    <select name="trangthai" class="thongtin">
                                        <option value="1">Mới tạo</option>
                                        <option value="2">Đang thực hiện</option>
                                        <option value="3">Đã hoàn thành</option>
                                    </select>
                                    <%
                                    } else if (trangthai.equals("Đang thực hiện")) {
                                    %>
                                    <select name="trangthai" class="thongtin">
                                        <option value="2">Đang thực hiện</option>
                                        <option value="3">Đã hoàn thành</option>
                                    </select>
                                    <%
                                    } else {
                                    %>
                                    <input class="thongtin" value="<%=r.getTrangthai()%>" readonly="true">
                                    <%
                                        }
                                    %>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4"><input type="submit" value="Cập nhật" onclick="return changeData()"></td>
                            </tr>
                        </tbody>
                    </table>
                </form>
                                <script>
                                    function changeData(){
                                        //alert("ok");
                                        document.getElementById("ghichu").value=encodeURI(document.getElementById("ghichu").value);
                                        return true;
                                    }
                                </script>
            </div>
        </div>
    </body>
</html>
