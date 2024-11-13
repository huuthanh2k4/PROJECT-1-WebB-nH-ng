<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<c:url value='/resources/CSS/account.css' />" type="text/css">
<link rel="stylesheet" href="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css' />"  type="text/css">

<title>Trang đăng nhập</title>
</head> 
<body>
	 <div class="container" id="container">
        <div class="form-container sign-up">
            <f:form modelAttribute="dung" method="post" action="FormDK">
                <h1>Tạo tài khoản mới</h1>
                <div class="social-icons">
                    <a href="#" class="icon"><i class="fa-brands fa-google"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-github"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-linkedin-in"></i></a>
                </div>
                <span>Đăng nhập bằng cách khác</span>
                <f:input path="TenND" placeholder="Họ tên" />
                <div class="radio-group">
                    <label>
                        <f:radiobutton path="GioiTinh" value="1" />
                        Nam
                    </label>
                    <label>
                        <f:radiobutton path="GioiTinh" value="0" />
                        Nữ
                    </label>
                </div>
                <f:input path="NgaySinh" type="date" />
                <f:input path="SoDT" placeholder="Số điện thoại" pattern="[0-9]{10}"
                    title="Vui lòng nhập số điện thoại" />
                <f:input path="gmail" placeholder="Gmail" />
                <f:input path="QueQuan" placeholder="Địa chỉ" />
                <f:input path="TaiKhoan" placeholder="Tài khoản" />
                <f:password path="MatKhau" placeholder="Mật khẩu" />
                <f:hidden path="TrangThai" value="1" />
                <button>Tạo tài khoản mới</button>
            </f:form>
        </div>
        <div class="form-container sign-in">
            <form name='loginForm' action="<c:url value='DangNhap' />" method='POST'>
                <h1>Đăng nhập</h1>
                <h2 style="color: red">${mess}</h2>
                <h2 style="color: red">${loi}</h2>
                <h2 style="color: red">${loiDK}</h2>
                <h2 style="color: green">${re}</h2>
                <h2 style="color: green">${TC}</h2>
                <h2 style="color: blue">${a}</h2>
                <div class="social-icons">
                    <a href="#" class="icon"><i class="fa-brands fa-google"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-github"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-linkedin-in"></i></a>
                </div>
                <span>Đăng nhập bằng cách khác</span>
                <input type="text" placeholder="Email" name='TaiKhoan'>
                <input type="password" placeholder="Password" name='MatKhau'>
                <a href="#">Quên mật khẩu</a>
                <button name="submit" type="submit" value="login">Đăng nhập</button>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            </form>
        </div>
        <div class="toggle-container">
            <div class="toggle">
                <div class="toggle-panel toggle-left">
                    <h1>Chào mừng bạn đến với cửa hàng của chúng tôi</h1>
                    <p>Hãy nhập thông tin của bạn vào đây</p>
                    <button class="hidden" id="login">Sign In</button>
                </div>
                <div class="toggle-panel toggle-right">
                    <h1>Xin chào! Mừng bạn trở lại</h1>
                    <p>Hãy đăng nhập để sử dụng dịch vụ của chúng tôi</p>
                    <button class="hidden" id="register">Sign Up</button>
                </div>
            </div>
        </div>
    </div>
    <script src="<c:url value='/resources/JS/account.js' />"></script>
</body>
</html>