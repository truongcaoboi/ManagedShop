<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="dto.*" %>
<% TaiKhoan tk = (TaiKhoan)session.getAttribute("tendangnhap"); %>        

<nav class="navbar navbar-expand navbar-dark bg-dark static-top">

    <a class="navbar-brand mr-1" href="../index.jsp">TRANG ADMIN</a>

    <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fas fa-bars"></i>
    </button>

    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="Tìm kiếm..." aria-label="Search" aria-describedby="basic-addon2">
            <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                    <i class="fas fa-search"></i>
                </button>
            </div>
        </div>
    </form>


    <ul class="navbar-nav ml-auto ml-md-0">
        <li class="nav-link">
            <i class="fas fa-user-circle fa-fw"></i>
            <% if(tk == null){
                RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/dangnhap.jsp");
                dispatch.forward(request, response);

            %>       
            <% } else { %> <span><%=tk.getTentaikhoan() %></span> <% } %>
        </li>
    </ul>

</nav>
