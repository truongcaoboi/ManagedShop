<%-- 
    Document   : updateSuplier
    Created on : Dec 14, 2018, 5:15:24 PM
    Author     : Xuan Truong PC
--%>

<%@page import="model.Suplier"%>
<%@page import="DAO.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Suplier s=new Data().getSuplier(request.getParameter("ma"));
        %>
        <div class="cover_form"></div>
        <div class="form">
            <div class="title_form">
                <div class="title_form_text">Cập nhập nhà cung cấp</div>
                <div class="exit_button" id="exit_update_form" onclick="closeUpdate()"></div>
            </div>
            <div class="content_form">
                <form action="UpdateSuplier" method="post">
                    <input type="hidden" value="<%=s.getMa()%>" name="ma">
                    <table cellspacing="10">
                        <tr>
                            <th>Tên công ty</th>
                            <td colspan="3"><input class="dai" type="text" value="<%=s.getTen()%>" name="txtTenUpdate" id="txtTenUpdate" required="true"></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <th>Mã số thuế</th>
                            <td>
                                <input type="text" value="<%=s.getMaSoThue()%>" name="txtThueUpdate" required="" pattern="^[0-9]{10}$">
                                <p id="msg"></p>
                            </td>
                            <th>Số điện thoại</th>
                            <td><input type="text" value="<%=s.getDienthoai()%>" name="txtDTUpdate" required="true" pattern="^[0-9]{10}$"></td>                                
                        </tr>
                        <tr>
                            <th>Địa chỉ</th>
                            <td colspan="3"><input class="dai" type="text" value="<%=s.getDiachi()%>" name="txtDCUpdate" id="txtDCUpdate" required="true"></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <th>Email</th>
                            <td colspan="3"><input class="dai" type="text" value="<%=s.getEmail()%>" name="txtEmailUpdate" pattern="^[a-zA-Z0-9]{1,}((_|\.)[a-zA-Z0-9]{1,}){0,}(@)[a-z]{1,}(\.[a-z]{1,}){0,}((\.com)|(\.com\.vn))$"></td>
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
    </body>
</html>
