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
            max-width: 1000px; /* Chiều rộng tối đa của khung sản phẩm */
            margin: 0 auto; /* Đặt khung ở giữa màn hình */
            box-sizing: border-box; /* Đảm bảo padding không vượt quá max-width */
        }
        
        .product-container {
            display: flex;
            background-color: #ffffff;
            border-radius: 10px;
            margin-bottom: 20px;
            flex-wrap: wrap;
        }
        
        .image-section {
            flex: 2; /* Tăng từ flex: 1 lên flex: 2 để chiếm nhiều không gian hơn */
            min-width: 300px;
            flex-direction: column;
            align-items: center;
            padding: 20px;
            position: relative;
        }
        
        .main-image-container {
            position: relative;
            width: 100%;
            max-width: 800px; /* Tăng từ 500px lên 800px */
            overflow: hidden; /* Ẩn các phần ảnh vượt ra ngoài */
        }
        
        .main-image-container img {
            width: 100%;
            height: auto; /* Giữ tỷ lệ ảnh */
            border-radius: 10px;
            display: block; /* Loại bỏ khoảng cách dưới ảnh */
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
            font-size: 1.5rem; /* Tăng kích thước font để nút lớn hơn */
            z-index: 1; /* Đảm bảo nút nằm trên ảnh */
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
            width: 100%; /* Đảm bảo thumbnails chiếm toàn bộ chiều rộng */
            justify-content: center; /* Căn giữa các thumbnails */
        }
        
        .thumbnail {
            width: 80px; /* Tăng kích thước thumbnails */
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
        
        .size-btn:hover, .size-btn.active {
            background-color: #2c3e50;
            color: #fff;
        }
        
        .actions {
            display: flex;
            gap: 10px;
            margin-bottom: 20px;
            flex-wrap: wrap;
        }
        
        .buy-now, .add-to-bag {
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
        
        .buy-now:hover, .add-to-bag:hover {
            transform: translateY(-2px);
        }
        
        .buy-now:focus, .add-to-bag:focus, .nav-button:focus, .size-btn:focus, .thumbnail:focus {
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
                width: 60px; /* Giảm kích thước thumbnails trên màn hình nhỏ */
                height: 60px;
            }
            .product-form {
                padding-left: 0; /* Bỏ khoảng cách khi màn hình nhỏ */
                padding-right: 0; /* Bỏ khoảng cách khi màn hình nhỏ */
            }
        }
        
        .technical-specs {
    background-color: #ffffff;
    border-radius: 10px;
    padding: 15px;
    box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
    max-width: 600px;
    margin: 20px auto;
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
    transition:  background-color 0.3s ease;

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
        
</style>
<title>Danh sach sản phẩm</title>

</head>
<body>
		<header>
        <div class="button-container">
            <a href="<c:url value='/user/Home' />" class="link"><h1>LUNDEV</h1></a>
		            <div class="dropdown">
		        <button class="button sang">
		            <svg
		              class="icon"
		              stroke="currentColor"
		              fill="currentColor"
		              stroke-width="0"
		              viewBox="0 0 1024 1024"
		              height="1em"
		              width="1em"
		              xmlns="http://www.w3.org/2000/svg"
		            >
		              <path
		                d="M946.5 505L560.1 118.8l-25.9-25.9a31.5 31.5 0 0 0-44.4 0L77.5 505a63.9 63.9 0 0 0-18.8 46c.4 35.2 29.7 63.3 64.9 63.3h42.5V940h691.8V614.3h43.4c17.1 0 33.2-6.7 45.3-18.8a63.6 63.6 0 0 0 18.7-45.3c0-17-6.7-33.1-18.8-45.2zM568 868H456V664h112v204zm217.9-325.7V868H632V640c0-22.1-17.9-40-40-40H432c-22.1 0-40 17.9-40 40v228H238.1V542.3h-96l370-369.7 23.1 23.1L882 542.3h-96.1z"
		              ></path>
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
		            <svg
		              class="icon"
		              stroke="currentColor"
		              fill="none"
		              stroke-width="2"
		              viewBox="0 0 24 24"
		              aria-hidden="true"
		              height="1em"
		              width="1em"
		              xmlns="http://www.w3.org/2000/svg"
		            >
		              <path
		                stroke-linecap="round"
		                stroke-linejoin="round"
		                d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"
		              ></path>
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
		            <svg
		              class="icon"
		              stroke="currentColor"
		              fill="currentColor"
		              stroke-width="0"
		              viewBox="0 0 24 24"
		              height="1em"
		              width="1em"
		              xmlns="http://www.w3.org/2000/svg"
		            >
		              <path
		                d="M12 2.5a5.5 5.5 0 0 1 3.096 10.047 9.005 9.005 0 0 1 5.9 8.181.75.75 0 1 1-1.499.044 7.5 7.5 0 0 0-14.993 0 .75.75 0 0 1-1.5-.045 9.005 9.005 0 0 1 5.9-8.18A5.5 5.5 0 0 1 12 2.5ZM8 8a4 4 0 1 0 8 0 4 4 0 0 0-8 0Z"
		              ></path>
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
              <svg
                class="icon"
                stroke="currentColor"
                fill="none"
                stroke-width="2"
                viewBox="0 0 24 24"
                stroke-linecap="round"
                stroke-linejoin="round"
                height="1em"
                width="1em"
                xmlns="http://www.w3.org/2000/svg"
              >
                <circle cx="9" cy="21" r="1"></circle>
                <circle cx="20" cy="21" r="1"></circle>
                <path
                  d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"
                ></path>
              </svg>
               <span class="cart-count">0</span>
            </button>

            <button class="Btn1" style="margin-right: 60px; ">
  
                <div class="sign"><svg viewBox="0 0 512 512"><path d="M377.9 105.9L500.7 228.7c7.2 7.2 11.3 17.1 11.3 27.3s-4.1 20.1-11.3 27.3L377.9 406.1c-6.4 6.4-15 9.9-24 9.9c-18.7 0-33.9-15.2-33.9-33.9l0-62.1-128 0c-17.7 0-32-14.3-32-32l0-64c0-17.7 14.3-32 32-32l128 0 0-62.1c0-18.7 15.2-33.9 33.9-33.9c9 0 17.6 3.6 24 9.9zM160 96L96 96c-17.7 0-32 14.3-32 32l0 256c0 17.7 14.3 32 32 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32l-64 0c-53 0-96-43-96-96L0 128C0 75 43 32 96 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32z"></path></svg></div>
                
                <div class="text">Logout</div>
              </button>            
          </div>        
    </header>
<button class="filter-toggle">></button>
<div class="filters"></div>

	  <form class="product-form">
        <div class="product-container">
            <div class="image-section">
                <div class="main-image-container">
    <button type="button" class="nav-button prev-button" aria-label="Previous Image">&lt;</button>
    <img src="<c:url value='/resources/Ảnh/iphone-15-pro-max-1-titan đen.jpg' />" alt="iPhone 15 Pro Max Titan Đen" id="main-image" loading="lazy">
    <button type="button" class="nav-button next-button" aria-label="Next Image">&gt;</button>
</div>

<div class="thumbnails">
    <div class="thumbnail active" data-index="0">
        <img src="<c:url value='/resources/Ảnh/iphone-15-pro-max-1-titan đen.jpg' />" alt="iPhone 15 Pro Max Titan Đen">
    </div>
    <div class="thumbnail" data-index="1">
        <img src="<c:url value='/resources/Ảnh/iphone-15-pro-max-1-titan trắng.jpg' />" alt="iPhone 15 Pro Max Titan Trắng">
    </div>
    <div class="thumbnail" data-index="2">
        <img src="<c:url value='/resources/Ảnh/iphone-15-pro-max-1-titan tự nhiên.jpg' />" alt="iPhone 15 Pro Max Titan Tự Nhiên">
    </div>
    <div class="thumbnail" data-index="3">
        <img src="<c:url value='/resources/Ảnh/iphone-15-pro-max-1-titan xanh.jpg' />" alt="iPhone 15 Pro Max Titan Xanh">
    </div>
    <div class="thumbnail" data-index="4">
        <img src="<c:url value='/resources/Ảnh/iphone-15-pro-max-2-titan đen.jpg' />" alt="iPhone 15 Pro Max 2 Titan Đen">
    </div>
    <div class="thumbnail" data-index="5">
        <img src="<c:url value='/resources/Ảnh/iphone-15-pro-max-2-titan trắng.jpg' />" alt="iPhone 15 Pro Max 2 Titan Trắng">
    </div>
    <div class="thumbnail" data-index="6">
        <img src="<c:url value='/resources/Ảnh/iphone-15-pro-max-2-titan tự nhiên.jpg' />" alt="iPhone 15 Pro Max 2 Titan Tự Nhiên">
    </div>
    <div class="thumbnail" data-index="7">
        <img src="<c:url value='/resources/Ảnh/iphone-15-pro-max-2-titan xanh.jpg' />" alt="iPhone 15 Pro Max 2 Titan Xanh">
    </div>
    <div class="thumbnail" data-index="8">
    <img src="<c:url value='/resources/Ảnh/iphone-15-pro-max-1-titan xanh.jpg' />" alt="iPhone 15 Pro Max 9">
</div>
<div class="thumbnail" data-index="9">
    <img src="<c:url value='/resources/Ảnh/iphone-15-pro-max-3-titan đen.jpg' />" alt="iPhone 15 Pro Max 10">
</div>
<div class="thumbnail" data-index="10">
    <img src="<c:url value='/resources/Ảnh/iphone-15-pro-max-2-titan đen.jpg' />" alt="iPhone 15 Pro Max 11">
</div>
<div class="thumbnail" data-index="11">
    <img src="<c:url value='/resources/Ảnh/iphone-15-pro-max-1-titan đen.jpg' />" alt="iPhone 15 Pro Max 12">
</div>
<div class="thumbnail" data-index="12">
    <img src="<c:url value='/resources/Ảnh/iphone-15-pro-max-3-titan trắng.jpg' />" alt="iPhone 15 Pro Max 13">
</div>
<div class="thumbnail" data-index="13">
    <img src="<c:url value='/resources/Ảnh/iphone-15-pro-max-2-titan trắng.jpg' />" alt="iPhone 15 Pro Max 14">
</div>
<div class="thumbnail" data-index="14">
    <img src="<c:url value='/resources/Ảnh/iphone-15-pro-max-1-titan trắng.jpg' />" alt="iPhone 15 Pro Max 15">
</div>
<div class="thumbnail" data-index="15">
    <img src="<c:url value='/resources/Ảnh/iphone-15-pro-max-titan trắng.jpg' />" alt="iPhone 15 Pro Max 16">
</div>
<div class="thumbnail" data-index="16">
    <img src="<c:url value='/resources/Ảnh/iphone-15-pro-max-5.jpg' />" alt="iPhone 15 Pro Max 17">
</div>
<div class="thumbnail" data-index="17">
    <img src="<c:url value='/resources/Ảnh/iphone-15-pro-max-8.jpg' />" alt="iPhone 15 Pro Max 18">
</div>
<div class="thumbnail" data-index="18">
    <img src="<c:url value='/resources/Ảnh/iphone-15-pro-max-7.jpg' />" alt="iPhone 15 Pro Max 19">
</div>
<div class="thumbnail" data-index="19">
    <img src="<c:url value='/resources/Ảnh/iphone-15-pro-max-6.jpg' />" alt="iPhone 15 Pro Max 20">
</div>
</div>

            </div>
    
            <div class="details-section">
                <h1>IPHONE 16 PROMAX</h1> 
                <p class="price">$110.00</p>
                <p class="stock">Còn hàng</p>
    
                <div class="sizes">
                    <button type="button" class="size-btn active" aria-pressed="true" data-size="XS">XS</button>
                    <button type="button" class="size-btn" aria-pressed="false" data-size="S">S</button>
                    <button type="button" class="size-btn" aria-pressed="false" data-size="M">M</button>
                    <button type="button" class="size-btn" aria-pressed="false" data-size="L">L</button>
                    <button type="button" class="size-btn" aria-pressed="false" data-size="XL">XL</button>
                </div>
    
                <div class="actions">
                    <button type="submit" class="buy-now">Mua ngay</button>
                    <button type="button" class="add-to-bag">Thêm vào giỏ</button>
                </div>
    
                <p class="shipping-info">Miễn phí vận chuyển cho tất cả đơn hàng trong nước.</p>
            </div>
        </div>
    
        <div class="product-description">
            <h2>Chi Tiết Sản Phẩm</h2>
            <p class="description-text">
                Đây là phần mô tả chi tiết về sản phẩm, nơi bạn có thể ghi rõ các thông số kỹ thuật, tính năng nổi bật và thông tin bổ sung cho sản phẩm. Nội dung ở đây có thể dài tới 1000 từ, hoặc thậm chí nhiều hơn, tùy thuộc vào cách bạn dán dữ liệu vào. Hãy chắc chắn rằng phần mô tả này đủ rõ ràng và chi tiết để người dùng có cái nhìn sâu hơn về sản phẩm của bạn.
            </p>
        </div>
    </form>

	<div class="technical-specs">
        <h2 style="text-align: center;">Thông số kỹ thuật</h2>
        <div class="spec-section">
            <button class="spec-button" onclick="toggleSection('spec-details')">Cấu hình & Bộ nhớ</button>
            <div id="spec-details" class="spec-details" style="display: none;">
                <p><strong>Hệ điều hành:</strong> iOS 18</p>
                <p><strong>Chip xử lý (CPU):</strong> Apple A18 Pro 6 nhân</p>
                <p><strong>Tốc độ CPU:</strong> Hãng không công bố</p>
                <p><strong>Chip đồ họa (GPU):</strong> Apple GPU 6 nhân</p>
                <p><strong>RAM:</strong> 8 GB</p>
                <p><strong>Dung lượng lưu trữ:</strong> 256 GB</p>
                <p><strong>Dung lượng còn lại (khả dụng) khoảng:</strong> 241 GB</p>
                <p><strong>Danh bạ:</strong> Không giới hạn</p>
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
		
	<script type="text/javascript">
	// Lấy các nút "Thêm vào giỏ" và phần tử hiển thị số lượng sản phẩm
	const addToCartButtons = document.querySelectorAll('.add-to-bag'); 
	const cartCount = document.querySelector('.cart-count');

	// Lặp qua từng nút và thêm sự kiện click
	addToCartButtons.forEach(button => {
	  button.addEventListener('click', () => {
	    // Lấy giá trị hiện tại của cartCount và chuyển đổi thành số
	    let currentCount = parseInt(cartCount.textContent) || 0;
	    // Tăng số lượng sản phẩm lên 1
	    currentCount++;
	    cartCount.textContent = currentCount;
	  });
	});

	 // JavaScript cho Image Carousel và Thumbnails

    // Lấy tất cả các thumbnail từ DOM
    const thumbnailElements = document.querySelectorAll('.thumbnail img');

    // Tạo mảng images dựa trên src của các thumbnail
    const images = Array.from(thumbnailElements).map(img => img.src);

    // Khởi tạo chỉ số hiện tại
    let currentIndex = 0;

    // Lấy các phần tử cần thiết từ DOM
    const mainImage = document.getElementById('main-image');
    const prevButton = document.querySelector('.prev-button');
    const nextButton = document.querySelector('.next-button');
    const thumbnails = document.querySelectorAll('.thumbnail');

    // Hàm cập nhật hình ảnh chính và thumbnail active
    function updateImage(index) {
        mainImage.src = images[index];
        mainImage.alt = `Utility Jacket Image ${index + 1}`;
        // Cập nhật thumbnail active
        thumbnails.forEach(thumb => thumb.classList.remove('active'));
        thumbnails[index].classList.add('active');
    }

    // Thêm sự kiện cho nút Previous
    prevButton.addEventListener('click', () => {
        currentIndex = (currentIndex - 1 + images.length) % images.length;
        updateImage(currentIndex);
    });

    // Thêm sự kiện cho nút Next
    nextButton.addEventListener('click', () => {
        currentIndex = (currentIndex + 1) % images.length;
        updateImage(currentIndex);
    });

    // Thêm sự kiện cho các thumbnail
    thumbnails.forEach(thumb => {
        thumb.addEventListener('click', () => {
            const index = parseInt(thumb.getAttribute('data-index'));
            currentIndex = index;
            updateImage(currentIndex);
        });
    });

    // Thêm sự kiện cho bàn phím (Optional)
    document.addEventListener('keydown', (e) => {
        if (e.key === 'ArrowLeft') {
            prevButton.click();
        } else if (e.key === 'ArrowRight') {
            nextButton.click();
        }
    });

    // Khởi tạo carousel với hình ảnh đầu tiên
    updateImage(currentIndex);
    
    // JavaScript để xử lý chọn kích thước và gửi form
    const sizeButtons = document.querySelectorAll('.size-btn');
    const sizeInput = document.createElement('input');
    sizeInput.type = 'hidden';
    sizeInput.name = 'size';
    sizeInput.value = 'XS'; // Giá trị mặc định
    document.querySelector('.product-form').appendChild(sizeInput);
    
    sizeButtons.forEach(button => {
        button.addEventListener('click', function () {
            sizeButtons.forEach(btn => {
                btn.classList.remove('active');
                btn.setAttribute('aria-pressed', 'false');
            });
            this.classList.add('active');
            this.setAttribute('aria-pressed', 'true');
            sizeInput.value = this.getAttribute('data-size');
        });
    });
    
    function toggleSection(id) {
        const section = document.getElementById(id);
        section.style.display = section.style.display === "none" ? "block" : "none";
    }
	</script>
</body>
</html>