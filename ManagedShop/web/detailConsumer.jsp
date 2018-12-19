<%-- 
    Document   : detailConsumer
    Created on : Dec 18, 2018, 2:26:45 PM
    Author     : Xuan Truong PC
--%>

<%@page import="java.util.function.Consumer"%>
<%@page import="DAO.DataKH"%>
<%@page import="model.Comsumer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            String makh = request.getParameter("makh");
            Comsumer kh = DataKH.getKH(makh);
        %>
        <div class="cover_form">

        </div>
        <div class="form">
            <div class="title_form">
                <div class="title_form_text">Detail Consumer</div>
                <div class="exit_button" id="exit_update_form" onclick="closeDetail()"></div>
            </div>
            <div class="content_form">
                <form>
                    <table cellspacing="10">
                        <tbody>
                            <tr>
                                <td>Mã khách hàng</td>
                                <td><input class="detailCom" type="text" value="<%=kh.getMakh()%>" disabled=""></td>
                            </tr>
                            <tr>
                                <td>Tên khách hàng</td>
                                <td><input class="detailCom" type="text" value="<%=kh.getHoten() %>" disabled=""></td>
                            </tr>
                            <tr>
                                <td>Số điện thoại</td>
                                <td><input class="detailCom" type="text" value="<%=kh.getDienthoai() %>" disabled=""></td>
                            </tr>
                            <tr>
                                <td>Giới tinh</td>
                                <td><input class="detailCom" type="text" value="<%=kh.getGioitinh() %>" disabled=""></td>
                            </tr>
                            <tr>
                                <td>Địa chỉ</td>
                                <td colspan="3"><input class="detailCom" type="text" value="<%=kh.getDiachi() %>" disabled=""></td>
                            </tr>
                            <tr>
                                <td>Email</td>
                                <td colspan="3"><input class="detailCom" type="text" value="<%=kh.getEmail() %>" disabled=""></td>
                            </tr>
                            <tr>
                                <td>Điểm số</td>
                                <td><input type="text" class="detailCom" value="<%=kh.getDiemso() %>" disabled=""></td>
                            </tr>
                            <tr>
                                <td>Số đơn đặt hàng mới</td>
                                <td><input type="text" class="detailCom" value="<%=kh.getDonmoi() %>" disabled=""></td>
                            </tr>
                            <tr>
                                <td>Số đơn đặt hàng đang thực hiện</td>
                                <td><input type="text" class="detailCom"class="detailCom" value="<%=kh.getDondangthuchien() %>" disabled=""></td>
                            </tr>
                            <tr>
                                <td>Số đơn đặt hàng hoàn thành</td>
                                <td><input type="text" class="detailCom" value="<%=kh.getDondahoanthanh() %>" disabled=""></td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
