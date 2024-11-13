<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<c:url value='/resources/CSS/FontendSP.css' />" type="text/css">
<link rel="stylesheet" href="<c:url value='https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css' />" type="text/css">
<title>Danh sach sản phẩm</title>

</head>
<body>
	<div class="link">
        <header>
            <div class="button-container">
                <a href="<c:url value='/user/user' />" class="link">
                    <h1>LUNDEV</h1>
                </a>
                <div class="dropdown">
                    <button class="button sang">
                        <svg class="icon" stroke="currentColor" fill="currentColor" stroke-width="0"
                            viewBox="0 0 1024 1024" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M946.5 505L560.1 118.8l-25.9-25.9a31.5 31.5 0 0 0-44.4 0L77.5 505a63.9 63.9 0 0 0-18.8 46c.4 35.2 29.7 63.3 64.9 63.3h42.5V940h691.8V614.3h43.4c17.1 0 33.2-6.7 45.3-18.8a63.6 63.6 0 0 0 18.7-45.3c0-17-6.7-33.1-18.8-45.2zM568 868H456V664h112v204zm217.9-325.7V868H632V640c0-22.1-17.9-40-40-40H432c-22.1 0-40 17.9-40 40v228H238.1V542.3h-96l370-369.7 23.1 23.1L882 542.3h-96.1z">
                            </path>
                        </svg>
                    </button>
                    <div class="dropdown-content">
                        <a href="#home" class="link1">Trang Chủ</a>
                        <a href="#about" class="link1">Giới Thiệu</a>
                        <a href="#services" class="link1">Dịch Vụ</a>
                        <a href="#contact" class="link1">Liên Hệ</a>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="button sang">
                        <svg class="icon" stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24"
                            aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
                        </svg>
                    </button>
                    <div class="dropdown-content">
                        <a href="#home" class="link1">Trang Chủ</a>
                        <a href="#about" class="link1">Giới Thiệu</a>
                        <a href="#services" class="link1">Dịch Vụ</a>
                        <a href="#contact" class="link1">Liên Hệ</a>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="button sang">
                        <svg class="icon" stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 24 24"
                            height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M12 2.5a5.5 5.5 0 0 1 3.096 10.047 9.005 9.005 0 0 1 5.9 8.181.75.75 0 1 1-1.499.044 7.5 7.5 0 0 0-14.993 0 .75.75 0 0 1-1.5-.045 9.005 9.005 0 0 1 5.9-8.18A5.5 5.5 0 0 1 12 2.5ZM8 8a4 4 0 1 0 8 0 4 4 0 0 0-8 0Z">
                            </path>
                        </svg>
                    </button>
                    <div class="dropdown-content">
                        <a href="#home" class="link1">Trang Chủ</a>
                        <a href="#about" class="link1">Giới Thiệu</a>
                        <a href="#services" class="link1">Dịch Vụ</a>
                        <a href="#contact" class="link1">Liên Hệ</a>
                    </div>
                </div>

                <button class="button sang">
                    <svg class="icon" stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24"
                        stroke-linecap="round" stroke-linejoin="round" height="1em" width="1em"
                        xmlns="http://www.w3.org/2000/svg">
                        <circle cx="9" cy="21" r="1"></circle>
                        <circle cx="20" cy="21" r="1"></circle>
                        <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path>
                    </svg>
                    <span class="cart-count">0</span>
                </button>

                <button class="Btn1" style="margin-right: 60px; ">

                    <div class="sign"><svg viewBox="0 0 512 512">
                            <path
                                d="M377.9 105.9L500.7 228.7c7.2 7.2 11.3 17.1 11.3 27.3s-4.1 20.1-11.3 27.3L377.9 406.1c-6.4 6.4-15 9.9-24 9.9c-18.7 0-33.9-15.2-33.9-33.9l0-62.1-128 0c-17.7 0-32-14.3-32-32l0-64c0-17.7 14.3-32 32-32l128 0 0-62.1c0-18.7 15.2-33.9 33.9-33.9c9 0 17.6 3.6 24 9.9zM160 96L96 96c-17.7 0-32 14.3-32 32l0 256c0 17.7 14.3 32 32 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32l-64 0c-53 0-96-43-96-96L0 128C0 75 43 32 96 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32z">
                            </path>
                        </svg></div>

                    <div class="text">Logout</div>
                </button>

            </div>

        </header>

        <main>
            <button class="filter-toggle">></button>
            <div class="filters">
                <h2>Bộ lọc tìm kiếm</h2>
                <form onsubmit="removeDotsBeforeSubmit()" action="timkiem" method="post">
                    <div>
                        <label for="product-name">Tên sản phẩm:</label>
                        <input type="text" id="product-name" name="ten">
                    </div>

                    <div>
                        <label for="min-price">Giá từ:</label>
                        <input type="range" id="min-price" name="minGia" min="0" max="50000000" step="1000000" value="0"
                            oninput="updateMinPriceValue(this.value)">
                        <span id="min-price-value">0</span> VND
                    </div>
                    <div>
                        <label for="max-price">Giá đến:</label>
                        <input type="range" id="max-price" name="maxGia" min="0" max="50000000" step="1000000"
                            value="50000000" oninput="updateMaxPriceValue(this.value)">
                        <span id="max-price-value">50.000.000</span> VND
                    </div>
                    <div>
                        <label for="brand">Thương hiệu:</label>
                        <select id="brand" name="tenThuongHieu">
                            <option value="">Tất cả</option>
                            <c:forEach items="${thuongHieus}" var="th">
                                <option value="${th.tenThuongHieu}">${th.tenThuongHieu}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <button type="submit">Tìm kiếm</button>
                </form>
            </div>


            <div class="product-grid" id="product-list">
                <c:forEach items="${danhSachSPs}" var="p">
                    
                        <div class="product" data-id="${p.idSP}">
							<a href="<c:url value='/user/chitiet?idSP=${p.idSP}'/>" class="link">
                            <img src="<c:url value='/resources/Ảnh/${p.img}' />" alt="LD01 Lounge Chair"></a>
                            <p>
                                <c:forEach items="${p.cauHinhSPs}" var="cauHinh" begin="0" end="0">
                                    <f:formatNumber value="${cauHinh.giaSP}" pattern="#,##0" currencySymbol="" /> VNĐ

                                </c:forEach>
                            </p>

                            <h4 style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">${p.tenSP}</h4>

                            <button class="add-to-cart">
                                <span class="btn-text-one">Thêm giỏ hàng</span>
                            </button>
                            <div class="heart-container" title="Like">
                                <input type="checkbox" class="checkbox" id="Give-It-An-Id">
                                <div class="svg-container">
                                    <svg viewBox="0 0 24 24" class="svg-outline" xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M17.5,1.917a6.4,6.4,0,0,0-5.5,3.3,6.4,6.4,0,0,0-5.5-3.3A6.8,6.8,0,0,0,0,8.967c0,4.547,4.786,9.513,8.8,12.88a4.974,4.974,0,0,0,6.4,0C19.214,18.48,24,13.514,24,8.967A6.8,6.8,0,0,0,17.5,1.917Zm-3.585,18.4a2.973,2.973,0,0,1-3.83,0C4.947,16.006,2,11.87,2,8.967a4.8,4.8,0,0,1,4.5-5.05A4.8,4.8,0,0,1,11,8.967a1,1,0,0,0,2,0,4.8,4.8,0,0,1,4.5-5.05A4.8,4.8,0,0,1,22,8.967C22,11.87,19.053,16.006,13.915,20.313Z">
                                        </path>
                                    </svg>
                                    <svg viewBox="0 0 24 24" class="svg-filled" xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M17.5,1.917a6.4,6.4,0,0,0-5.5,3.3,6.4,6.4,0,0,0-5.5-3.3A6.8,6.8,0,0,0,0,8.967c0,4.547,4.786,9.513,8.8,12.88a4.974,4.974,0,0,0,6.4,0C19.214,18.48,24,13.514,24,8.967A6.8,6.8,0,0,0,17.5,1.917Z">
                                        </path>
                                    </svg>
                                    <svg class="svg-celebrate" width="50" height="50"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <polygon points="10,10 20,20"></polygon>
                                        <polygon points="10,50 20,50"></polygon>
                                        <polygon points="20,80 30,70"></polygon>
                                        <polygon points="90,10 80,20"></polygon>
                                        <polygon points="90,50 80,50"></polygon>
                                        <polygon points="80,80 70,70"></polygon>
                                    </svg>
                                </div>
                            </div>
                        </div>
                    
                </c:forEach>
            </div>
            </a>
        </main>
    </div>
    <br><br>

    <footer>
        <span class="footer-title">My Page</span>
        <ul class="socials">
            <li><a href="#" class="footer-link"><i class="bi bi-facebook"></i></a></li>
            <li><a href="#" class="footer-link"><i class="bi bi-twitter"></i></a></li>
            <li><a href="#" class="footer-link"><i class="bi bi-instagram"></i></a></li>
            <li><a href="#" class="footer-link"><i class="bi bi-heart"></i></a></li>
        </ul>
        <div class="info">
            <ul>
                <li class="footer-list_header">Offers</li>
                <li><a href="#" class="footer-link">Products</a></li>
                <li><a href="#" class="footer-link">Services</a></li>
                <li><a href="#" class="footer-link">Categories</a></li>
                <li><a href="#" class="footer-link">Contact</a></li>
            </ul>
            <ul>
                <li class="footer-list_header">Documents</li>
                <li><a href="#" class="footer-link">About</a></li>
                <li><a href="#" class="footer-link">Privacy Policy</a></li>
                <li><a href="#" class="footer-link">Terms of Service</a></li>
                <li><a href="#" class="footer-link">Cookies</a></li>
            </ul>
            <ul>
                <li class="footer-list_header">For You</li>
                <li><a href="#" class="footer-link">Manuals</a></li>
                <li><a href="#" class="footer-link">Tutorials</a></li>
                <li><a href="#" class="footer-link">Tips & Tricks</a></li>
                <li><a href="#" class="footer-link">FAQ</a></li>
            </ul>
            <ul>
                <li class="footer-list_header">Work with us</li>
                <li><a href="#" class="footer-link">Affiliate</a></li>
                <li><a href="#" class="footer-link">Collaborations</a></li>
                <li><a href="#" class="footer-link">Sponsorships</a></li>
                <li><a href="#" class="footer-link">Partnerships</a></li>
            </ul>
        </div>
        <p>&copy; 2020 My Website</p>
    </footer>

    <script src="<c:url value='/resources/JS/FontendSP.js' />"></script>
    <script type="text/javascript">
        document.addEventListener("DOMContentLoaded", function () {
            // Lấy tất cả các sản phẩm
            const products = document.querySelectorAll("#product-list .product");
            const seenIds = new Set();

            products.forEach(product => {
                // Lấy giá trị của `data-id` để xác định sản phẩm
                const productId = product.getAttribute("data-id");

                // Nếu `data-id` đã xuất hiện, ẩn sản phẩm hiện tại
                if (seenIds.has(productId)) {
                    product.style.display = "none";
                } else {
                    // Nếu `data-id` chưa xuất hiện, thêm vào `seenIds`
                    seenIds.add(productId);
                }
            });
        });

    </script>
</body>
</html>