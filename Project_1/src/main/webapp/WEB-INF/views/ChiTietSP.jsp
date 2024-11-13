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
	<style type="text/css">
.product-form {
            max-width: 1000px;
            /* Chiều rộng tối đa của khung sản phẩm */
            margin: 0 auto;
            /* Đặt khung ở giữa màn hình */
            box-sizing: border-box;
            /* Đảm bảo padding không vượt quá max-width */
        }

        .product-container {
            display: flex;
            background-color: #ffffff;
            border-radius: 10px;
            margin-bottom: 20px;
            flex-wrap: wrap;
        }

        .image-section {
            flex: 2;
            /* Tăng từ flex: 1 lên flex: 2 để chiếm nhiều không gian hơn */
            min-width: 300px;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
            position: relative;
        }

        .main-image-container {
            position: relative;
            width: 100%;
            max-width: 800px;
            /* Tăng từ 500px lên 800px */
            overflow: hidden;
            /* Ẩn các phần ảnh vượt ra ngoài */
        }

        .main-image-container img {
            width: 100%;
            height: auto;
            /* Giữ tỷ lệ ảnh */
            border-radius: 10px;
            display: block;
            /* Loại bỏ khoảng cách dưới ảnh */
        }

        /* Navigation Buttons */
        .nav-button {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            background-color: rgba(44, 62, 80, 0.7);
            border: none;
            color: #fff;
            padding: 10px;
            border-radius: 50%;
            cursor: pointer;
            font-size: 1.5rem;
            /* Tăng kích thước font để nút lớn hơn */
            z-index: 1;
            /* Đảm bảo nút nằm trên ảnh */
        }

        .nav-button:hover {
            background-color: rgba(44, 62, 80, 0.9);
        }

        .prev-button {
            left: 10px;
        }

        .next-button {
            right: 10px;
        }

        /* Thumbnail Images */
        .thumbnails {
            display: flex;
            gap: 10px;
            margin-top: 15px;
            overflow-x: auto;
            padding-bottom: 10px;
            width: 100%;
            /* Đảm bảo thumbnails chiếm toàn bộ chiều rộng */
            justify-content: center;
            /* Căn giữa các thumbnails */
        }

        .thumbnail {
            width: 80px;
            /* Tăng kích thước thumbnails */
            height: 80px;
            border: 2px solid transparent;
            border-radius: 5px;
            cursor: pointer;
            flex-shrink: 0;
            transition: border 0.3s;
        }

        .thumbnail img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: 5px;
        }

        .thumbnail.active {
            border: 2px solid #2980b9;
        }

        .details-section {
            flex: 1;
            padding: 20px;
            min-width: 300px;
        }

        .details-section h1 {
            font-size: 2rem;
            color: #2c3e50;
        }

        .price {
            font-size: 1.5rem;
            color: #27ae60;
            margin: 10px 0;
            display: flex;
        }

        .stock {
            font-size: 1rem;
            color: #34495e;
            margin-bottom: 15px;
        }

        .sizes {
            display: flex;
            gap: 10px;
            margin-bottom: 20px;
            flex-wrap: wrap;
        }

        .size-btn {
            background-color: #ecf0f1;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s, color 0.3s;
        }

        .size-btn:hover,
        .size-btn.active {
            background-color: #2c3e50;
            color: #fff;
        }



        .buy-now,
        .add-to-bag {
            padding: 12px 30px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            transition: transform 0.3s, background-color 0.3s, color 0.3s;
        }

        .buy-now {
            background-color: #27ae60;
            color: white;
        }

        .add-to-bag {
            background-color: #ffffff;
            border: 1px solid #2980b9;
            color: #2980b9;
        }

        .buy-now:hover,
        .add-to-bag:hover {
            transform: translateY(-2px);
        }

        .buy-now:focus,
        .add-to-bag:focus,
        .nav-button:focus,
        .size-btn:focus,
        .thumbnail:focus {
            outline: 2px solid #2980b9;
            outline-offset: 2px;
        }

        .shipping-info {
            font-size: 0.9rem;
            color: #7f8c8d;
        }

        /* Product Description */
        .product-description {
            padding: 20px;
            border-top: 1px solid #dcdde1;
            background-color: #fafafa;
        }

        .product-description h2 {
            font-size: 1.8rem;
            color: #2c3e50;
            margin-bottom: 10px;
        }

        .description-text {
            font-size: 1rem;
            line-height: 1.6;
            color: #2c503a;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .product-container {
                flex-direction: column;
            }

            .details-section {
                padding: 10px;
            }

            .main-image-container {
                max-width: 100%;
            }

            .thumbnail {
                width: 60px;
                /* Giảm kích thước thumbnails trên màn hình nhỏ */
                height: 60px;
            }

            .product-form {
                padding-left: 0;
                /* Bỏ khoảng cách khi màn hình nhỏ */
                padding-right: 0;
                /* Bỏ khoảng cách khi màn hình nhỏ */
            }
        }

        .technical-specs {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 15px;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: 20px auto;
            max-height: 700px; /* Đặt chiều cao tối đa cho bảng */
            overflow-y: auto;
        }

        .spec-section {
            margin-top: 10px;
        }

        .spec-button {
            background-color: #f2f2f2;
            width: 100%;
            padding: 10px;
            border: none;
            font-size: 1rem;
            font-weight: bold;
            text-align: left;
            cursor: pointer;
            color: #2980b9;
            transition: background-color 0.3s ease;

        }

        .spec-button:hover {
            background-color: #e0e0e0;
        }

        .spec-details p {
            padding: 8px 0;
            color: #2c3e50;
            font-size: 0.95rem;
            border-bottom: 1px solid #e0e0e0;
        }

        .color-btn {
            border: 1px solid #ccc;
            padding: 8px 12px;
            background-color: transparent;
            /* Không hiển thị màu nền khi chưa chọn */
            color: #000;
            transition: background-color 0.3s, color 0.3s;
            /* Thêm hiệu ứng mượt */
        }

        /* Đổi màu nền khi nút được chọn */
        .color-btn.active {
            color: #FFF;
            /* Màu chữ khi nút có màu nền */
        }
        .can{
        display: flex;
  align-items: center; /* Căn giữa theo chiều dọc */
        }
	</style>
	<title>Danh sach sản phẩm</title>
	
	</head>
	<body>
			<header>
	        <div class="button-container">
	            <a href="<c:url value='/user/user' />" class="link">
	                <h1>LUNDEV</h1>
	            </a>
	            <div class="dropdown">
	                <button class="button sang">
	                    <svg class="icon" stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 1024 1024"
	                        height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
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
	
	    <form class="product-form">
	        <div class="product-container">
	            <div class="image-section">
	                <div class="main-image-container">
	                    <button type="button" class="nav-button prev-button" aria-label="Previous Image">&lt;</button>
	                    <img src="<c:url value='/resources/Ảnh/${SP.img1}' />" alt="iPhone 15 Pro Max Titan Đen"
	                        id="main-image" loading="lazy">
	                    <button type="button" class="nav-button next-button" aria-label="Next Image">&gt;</button>
	                </div>
	
	                <div class="thumbnails">
	                    <div class="thumbnail active" data-index="0">
	                        <img src="<c:url value='/resources/Ảnh/${SP.img1}' />" alt="iPhone 15 Pro Max 1">
	                    </div>
	                    <div class="thumbnail" data-index="1">
	                        <img src="<c:url value='/resources/Ảnh/${SP.img2}' />" alt="iPhone 15 Pro Max 2">
	                    </div>
	                    <div class="thumbnail" data-index="2">
	                        <img src="<c:url value='/resources/Ảnh/${SP.img3}' />" alt="iPhone 15 Pro Max 3">
	                    </div>
	                    <div class="thumbnail" data-index="3">
	                        <img src="<c:url value='/resources/Ảnh/${SP.img4}' />" alt="iPhone 15 Pro Max 4">
	                    </div>
	                    <div class="thumbnail" data-index="4">
	                        <img src="<c:url value='/resources/Ảnh/${SP.img5}' />" alt="iPhone 15 Pro Max 5">
	                    </div>
	                    <div class="thumbnail" data-index="5">
	                        <img src="<c:url value='/resources/Ảnh/${SP.img6}' />" alt="iPhone 15 Pro Max 6">
	                    </div>
	                    <div class="thumbnail" data-index="6">
	                        <img src="<c:url value='/resources/Ảnh/${SP.img7}' />" alt="iPhone 15 Pro Max 7">
	                    </div>
	                    <div class="thumbnail" data-index="7">
	                        <img src="<c:url value='/resources/Ảnh/${SP.img8}' />" alt="iPhone 15 Pro Max 8">
	                    </div>
	                    <div class="thumbnail" data-index="8">
	                        <img src="<c:url value='/resources/Ảnh/${SP.img9}' />" alt="iPhone 15 Pro Max 9">
	                    </div>
	                    <div class="thumbnail" data-index="9">
	                        <img src="<c:url value='/resources/Ảnh/${SP.img10}' />" alt="iPhone 15 Pro Max 10">
	                    </div>
	                    <div class="thumbnail" data-index="10">
	                        <img src="<c:url value='/resources/Ảnh/${SP.img11}' />" alt="iPhone 15 Pro Max 11">
	                    </div>
	                    <div class="thumbnail" data-index="11">
	                        <img src="<c:url value='/resources/Ảnh/${SP.img12}' />" alt="iPhone 15 Pro Max 12">
	                    </div>
	                    <div class="thumbnail" data-index="12">
	                        <img src="<c:url value='/resources/Ảnh/${SP.img13}' />" alt="iPhone 15 Pro Max 13">
	                    </div>
	                    <div class="thumbnail" data-index="13">
	                        <img src="<c:url value='/resources/Ảnh/${SP.img14}' />" alt="iPhone 15 Pro Max 14">
	                    </div>
	                    <div class="thumbnail" data-index="14">
	                        <img src="<c:url value='/resources/Ảnh/${SP.img15}' />" alt="iPhone 15 Pro Max 15">
	                    </div>
	                    <div class="thumbnail" data-index="15">
	                        <img src="<c:url value='/resources/Ảnh/${SP.img16}' />" alt="iPhone 15 Pro Max 16">
	                    </div>
	                    <div class="thumbnail" data-index="16">
	                        <img src="<c:url value='/resources/Ảnh/${SP.img17}' />" alt="iPhone 15 Pro Max 17">
	                    </div>
	                    <div class="thumbnail" data-index="17">
	                        <img src="<c:url value='/resources/Ảnh/${SP.img18}' />" alt="iPhone 15 Pro Max 18">
	                    </div>
	                    <div class="thumbnail" data-index="18">
	                        <img src="<c:url value='/resources/Ảnh/${SP.img19}' />" alt="iPhone 15 Pro Max 19">
	                    </div>
	                    <div class="thumbnail" data-index="19">
	                        <img src="<c:url value='/resources/Ảnh/${SP.img20}' />" alt="iPhone 15 Pro Max 20">
	                    </div>
	                </div>
	            </div>
	
	
			<div>
			<div class="details-section" >
			<h1>${DS.tenSP}</h1>
			<c:forEach var="CH" items="${CH}" >
                 <!-- Chỉ hiển thị giá nếu chưa được hiển thị -->
    <c:if test="${!isPriceDisplayed}">
        <p class="price" id="price">${CH.giaSP} VNĐ</p> <!-- Giá mặc định -->
        <!-- Chọn màu sắc -->
                <div class="colors" id="colors" >
                    <button type="button" class="color-btn" data-color="Đen">Đen</button>
                    <button type="button" class="color-btn" data-color="Trắng">Trắng</button>
                    <button type="button" class="color-btn" data-color="Xanh">Xanh</button>
                    <button type="button" class="color-btn" data-color="Vàng">Vàng</button>
                </div> <br>
        <c:set var="isPriceDisplayed" value="true" />
    </c:if>
                <!-- Chọn dung lượng -->
                <div class="sizes" id="sizes">
                    <button type="button" class="size-btn"  data-price="${CH.giaSP}">${CH.LR.tenLoaiRAM}</button>
                </div>
                
                </c:forEach>
			
                
            </div>
            

            <div class="actions">
                <button type="submit" class="buy-now">Mua ngay</button>
                <button type="button" class="add-to-bag">Thêm vào giỏ</button>
            </div>
        </div>
			</div>
	    	

            <p class="shipping-info">Miễn phí vận chuyển cho tất cả đơn hàng trong nước.</p>
   
        
	

	    </form>
	
	<div class="can">
  <div class="technical-specs" id="product-list">
    <c:forEach var="CHCH" items="${CH}">
      <div data-id="csbvc">
        <h2 style="text-align: center;">Thông số kỹ thuật</h2>
        <div class="spec-section">
          <button class="spec-button" onclick="toggleSection('spec-details-1')">Cấu hình & Bộ nhớ</button>
          <div id="spec-details-1" class="spec-details" style="display: none;">
          	<p><strong>Tên sản phẩm:</strong>${CHCH.DSSP.tenSP}</p>
            <p><strong>Chip xử lý (CPU):</strong>${CHCH.c.tenChip}</p>
            <p><strong>Độ phân giải:</strong> ${CHCH.DPG.doPhanGiai}</p>
            <p><strong>Tần số quét:</strong>${CHCH.TSQ.loaiTangSoQuet}</p>
            <p><strong>RAM:</strong>${CHCH.r.dungLuongRAM}</p>
            <p><strong>Dung lượng lưu trữ:</strong>${CHCH.LR.tenLoaiRAM}</p>
            <p><strong>Độ rộng màn:</strong>${CHCH.doRongMan}</p>
            <p><strong>Tính Năng:</strong> ${CHCH.TN.tenTinhNang}</p>
            <p><strong>Sạc :</strong> ${CHCH.s.tenMauSac}</p>
            <p><strong>Danh bạ:</strong> Không giới hạn</p>
            <p><strong>Số lượng:</strong>${CHCH.soLuongTon}</p>
            <p><strong>Chi Tiết Sản Phẩm:</strong> ${DS.moTaSP}</p>
          </div>
        </div>
      </div>
    </c:forEach>
  </div>

  <div class="technical-specs" ">
    <h2>Thông số kỹ thuật</h2>
    <div class="spec-section">
      <button class="spec-button" onclick="toggleSection('spec-details-2')">So sánh sản phẩm</button>
      <div id="spec-details-2" class="spec-details" style="display: none;">
      <p>
      	<form action="chitiet1" method="post"">
      	<div>
  <label for="brand">Thương hiệu:</label>
  <input type="text" id="brandInput" placeholder="Nhập tên sản phẩm..." oninput="filterBrands()">
  <select id="brand" name="ten" required>
    <option value="">Vui lòng chọn sản phẩm</option>
    <c:forEach items="${DSSP}" var="m">
    <option value="${m.tenSP }">${m.tenSP }</option>
	</c:forEach>
  </select>

  <button type="submit" id="searchButton" disabled >Tìm kiếm</button>
</div>
      	</form>
      </p>
        	<c:forEach items="${CH1}" var="CH1">
        	<p><strong>Tên sản phẩm:</strong>${CH1.DSSP.tenSP}</p>
            <p><strong>Chip xử lý (CPU):</strong>${CH1.c.tenChip}</p>
            <p><strong>Độ phân giải:</strong> ${CH1.DPG.doPhanGiai}</p>
            <p><strong>Tần số quét:</strong>${CH1.TSQ.loaiTangSoQuet}</p>
            <p><strong>RAM:</strong>${CH1.r.dungLuongRAM}</p>
            <p><strong>Dung lượng lưu trữ:</strong>${CH1.LR.tenLoaiRAM}</p>
            <p><strong>Độ rộng màn:</strong>${CH1.doRongMan}</p>
            <p><strong>Tính Năng:</strong> ${CH1.TN.tenTinhNang}</p>
            <p><strong>Sạc :</strong> ${CH1.s.tenMauSac}</p>
            <p><strong>Danh bạ:</strong> Không giới hạn</p>
            <p><strong>Số lượng:</strong>${CH1.soLuongTon}</p>
            <p><strong>Chi Tiết Sản Phẩm:</strong> ${CH1.DSSP.moTaSP}</p>
        	</c:forEach>
      </div>
    </div>
  </div>
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
		<script src="<c:url value='/resources/JS/ChiTietSP.js' />"></script>
	    <script type="text/javascript">
	    document.addEventListener("DOMContentLoaded", function() {
            // Lấy tất cả các sản phẩm
            const products = document.querySelectorAll("#product-list div");
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


        //phần tìm kiếm sản phẩm
         const brandSelect = document.getElementById('brand');
  const searchButton = document.getElementById('searchButton');
  const brandInput = document.getElementById('brandInput');

  brandInput.addEventListener('input', () => {
    filterBrands();
  });

  function filterBrands() {
    const filter = brandInput.value.toLowerCase();
    const options = brandSelect.options;

    // Đặt lại danh sách tùy chọn
    for (let i = options.length - 1; i >= 0; i--) {
      const optionText = options[i].text.toLowerCase();
      if (optionText.includes(filter) || filter === "") {
        options[i].style.display = ""; // Hiện tùy chọn
      } else {
        options[i].style.display = "none"; // Ẩn tùy chọn
      }
    }

    // Kích hoạt nút tìm kiếm nếu có lựa chọn
    searchButton.disabled = brandSelect.value === "";
  }

  brandSelect.addEventListener('change', () => {
    if (brandSelect.value !== "") {
      searchButton.disabled = false;
    } else {
      searchButton.disabled = true;
    }
  });

  searchButton.addEventListener('click', () => {
    const selectedBrand = brandSelect.value;
    // Thực hiện tìm kiếm sản phẩm với selectedBrand
    console.log('Thương hiệu:', selectedBrand);
    // ... (code để xử lý tìm kiếm) ...
  });
	    
	    </script>
	</body>
	</html>