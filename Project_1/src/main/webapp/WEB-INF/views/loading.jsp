<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>Loading page!!!</title>
<style>
        /* Thiết lập video để hiển thị toàn màn hình */
        body, html {
            margin: 0;
            padding: 0;
            height: 100%; 
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: black;
            overflow: hidden; /* Ẩn thanh cuộn nếu có */
        }

        video {
            position: absolute;
            top: 50%;
            left: 50%;
            width: 100%;
            height: 100%;
            object-fit: cover; /* Đảm bảo video bao phủ toàn màn hình mà không bị méo */
            transform: translate(-50%, -50%); /* Căn giữa video */
        }
    </style>
</head>
<body>

	<video id="loadingVideo" autoplay muted>
    <!-- Đảm bảo rằng tên tệp video và đường dẫn là chính xác -->
    <source src="<c:url value='/resources/Ảnh/Untitled video - Made with Clipchamp.mp4' />" type="video/webm">
</video>

<script>
    const video = document.getElementById('loadingVideo');

    // Chuyển hướng đến trang chính sau khi video kết thúc
    video.addEventListener('ended', function() {
    	window.location.href = "<c:url value='/user/Home' />";   // Thay thế "trang-chinh.html" bằng URL của trang chính của bạn
    });
</script>

</body>
</html>