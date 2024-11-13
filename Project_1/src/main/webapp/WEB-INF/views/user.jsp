<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<c:url value='/resources/CSS/TrangChu.css' />" type="text/css">
<title>Trang chủ</title>
</head>
<body>

    <header>
        <nav>
            <a href="#">Trang chủ</a>
            <a href="<c:url value='/user/danhSachSP' />">Sản phẩm</a>
            <a class="dropDown">
                <span>Tìm kiếm</span>
                <div class="dropDown-content">
                    <div class="inputSearch">
                        <input class="Search" type="submit" placeholder="Tìm kiếm sản phầm ..." name="tenSP"
                            action="timKiemSP" method="post">

                    </div>
                </div>
            </a>
            <c:choose>
                <c:when test="${isAdmin}">
                    <a href="<c:url value='/admin/Welcome' />">Trang quản trị viên</a>
                </c:when>
                <c:otherwise>
                    <a href="<c:url value='/loginRegister1' />">Trang quản trị viên</a>
                    <!-- Chuyển đến trang login nếu không có quyền -->
                </c:otherwise>
            </c:choose>
            <form action="<c:url value='/DangXuat' />" method="post">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                <input type="submit" value="Đăng xuất" />
            </form>
        </nav>
    </header>

    <div class="slider">
        <div class="list">
            <div class="item">
                <img src="<c:url value='/resources/Ảnh/img2.jpg' />" alt="Image 1">
                <div class="content">
                    <div class="title" style="font-size: 30px; color: rgb(0, 255, 255)">Xin chào: ${TenUser.tenND}</div>
                    <div class="title">MAGIC SLIDER</div>
                    <div class="type">FLOWER</div>
                    <div class="description">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Deleniti temporibus quis eum
                        consequuntur voluptate quae doloribus distinctio. Possimus, sed recusandae. Lorem ipsum dolor
                        sit amet consectetur adipisicing elit. Sequi, aut.
                    </div>
                    <div class="button">
                        <button>SEE MORE</button>
                    </div>
                </div>
            </div>

            <div class="item">
                <img src="<c:url value='/resources/Ảnh/img1.jpg' />" alt="Image 2">
                <div class="content">
                    <div class="title">MAGIC SLIDER</div>
                    <div class="type">NATURE</div>
                    <div class="description">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Deleniti temporibus quis eum
                        consequuntur voluptate quae doloribus distinctio. Possimus, sed recusandae. Lorem ipsum dolor
                        sit amet consectetur adipisicing elit. Sequi, aut.
                    </div>
                    <div class="button">
                        <button>SEE MORE</button>
                    </div>
                </div>
            </div>

            <div class="item">
                <img src="<c:url value='/resources/Ảnh/img3.jpg' />" alt="Image 3">
                <div class="content">
                    <div class="title">MAGIC SLIDER</div>
                    <div class="type">PLANT</div>
                    <div class="description">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Deleniti temporibus quis eum
                        consequuntur voluptate quae doloribus distinctio. Possimus, sed recusandae. Lorem ipsum dolor
                        sit amet consectetur adipisicing elit. Sequi, aut.
                    </div>
                    <div class="button">
                        <button>SEE MORE</button>
                    </div>
                </div>
            </div>

            <div class="item">
                <img src="<c:url value='/resources/Ảnh/img4.jpg' />" alt="Image 4">
                <div class="content">
                    <div class="title">MAGIC SLIDER</div>
                    <div class="type">NATURE</div>
                    <div class="description">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Deleniti temporibus quis eum
                        consequuntur voluptate quae doloribus distinctio. Possimus, sed recusandae. Lorem ipsum dolor
                        sit amet consectetur adipisicing elit. Sequi, aut.
                    </div>
                    <div class="button">
                        <button>SEE MORE</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="thumbnail">
            <div class="item">
                <img src="<c:url value='/resources/Ảnh/img2.jpg' />" alt="Image 1">
            </div>
            <div class="item">
                <img src="<c:url value='/resources/Ảnh/img1.jpg' />" alt="Image 2">
            </div>
            <div class="item">
                <img src="<c:url value='/resources/Ảnh/img3.jpg' />" alt="Image 3">
            </div>
            <div class="item">
                <img src="<c:url value='/resources/Ảnh/img4.jpg' />" alt="Image 4">
            </div>
        </div>

        <div class="nextPrevArrows">
            <button class="prev">
                < </button>
                    <button class="next"> > </button>
        </div>
    </div>

    <script src="<c:url value='/resources/JS/TrangChu.js' />"></script>
</body>
</html>
