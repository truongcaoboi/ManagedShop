<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Danh mục bên trái -->
<ul class="sidebar navbar-nav">
    
    <li class="nav-item active">
        <a class="nav-link" href="../index.jsp">
            <i class="fas fa-fw fa-home"></i>
            <span>Trang chủ</span>
        </a>
    </li>
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-list-alt"></i>
            <span>Quản lý sản phẩm</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item" href="../dienthoai.jsp">Điện thoại</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="../tablet.jsp">Tablet</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="../phukien.jsp">Phụ kiện</a>

        </div>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="../thongkedonhang.jsp">
            <i class="fas fa-fw fa-clipboard-list"></i>
            <span>Quản lý đơn hàng</span>
        </a>
    </li>
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-address-book"></i>
            <span>Quản lý tài khoản</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item" href="../nhanvien.jsp">Nhân viên</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="../khachhang.jsp">Khách hàng</a>
        </div>
    </li>
       
    <li class="nav-item">
        <a class="nav-link" href="../thongtin.jsp">
            <i class="fas fa-fw fa-info"></i>
            <span>Thông tin tài khoản</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="LogoutServlet">
            <i class="fas fa-fw fa-sign-out-alt"></i>
            <span>Đăng xuất</span>
        </a>
    </li>
</ul>