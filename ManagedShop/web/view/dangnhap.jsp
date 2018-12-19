<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>    
        <jsp:include page="header.jsp" />
        <title>Admin - Đăng nhập</title>
    </head>

    <body class="bg-dark">
        
        <div class="container">
            <div class="card card-login mx-auto mt-5">
                <div class="card-header">Đăng nhập</div>
                <div class="card-body">
                    <form action="LoginServlet" method="post">
                        <div class="form-group">
                            <div class="form-label-group">
                                <input type="text" id="inputEmail" class="form-control" name="txtuser" placeholder="Email address" required="required" autofocus="autofocus">
                                <label for="inputEmail">Tên đăng nhập hoặc email</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-label-group">
                                <input type="password" id="inputPassword" class="form-control" name="txtpass" placeholder="Password" required="required">
                                <label for="inputPassword">Mật khẩu</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="remember-me">
                                    Nhớ mật khẩu
                                </label>
                            </div>
                        </div>
                        <input class="btn btn-primary btn-block" type="submit" value="Đăng nhập"/>
                      
                    </form>
                    <div class="text-center">
                        <a class="d-block small mt-3" href="taotaikhoan.jsp">Tạo tài khoản</a>
                        <a class="d-block small" href="quenmatkhau.jsp">Quên mật khẩu?</a>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp" />

    </body>

</html>
