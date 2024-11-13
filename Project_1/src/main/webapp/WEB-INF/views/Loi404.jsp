<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css' />"  type="text/css">
<title>404 - Trang Không Tồn Tại</title>
<style>
        /* Reset CSS */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
 
        body {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(135deg, #ece9e6, #ffffff);
            font-family: 'Poppins', sans-serif;
            color: #333;
        }

        .container {
            text-align: center;
            max-width: 600px;
            padding: 20px;
        }

        .container h1 {
            font-size: 10rem;
            font-weight: 700;
            color: #ff6b6b;
            animation: pulse 2s infinite;
        }

        .container h2 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        .container p {
            font-size: 1.2rem;
            margin-bottom: 30px;
            color: #666;
        }

        .container a {
            display: inline-block;
            padding: 12px 30px;
            background-color: #3498db;
            color: #fff;
            text-decoration: none;
            border-radius: 30px;
            font-size: 1rem;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .container a:hover {
            background-color: #2980b9;
            transform: translateY(-3px);
        }

        /* Animation */
        @keyframes pulse {
            0% {
                transform: scale(1);
            }
            50% {
                transform: scale(1.1);
            }
            100% {
                transform: scale(1);
            }
        }

        /* Responsive */
        @media (max-width: 600px) {
            .container h1 {
                font-size: 6rem;
            }

            .container h2 {
                font-size: 2rem;
            }

            .container p {
                font-size: 1rem;
            }

            .container a {
                padding: 10px 20px;
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>404</h1>
        <h2>Trang Không Tồn Tại</h2>
        <p>Rất tiếc! Trang bạn đang tìm kiếm không tồn tại hoặc đã bị di chuyển.</p>
        <a href="<c:url value='/user/user' />" ">Quay Về Trang Chủ</a>
        
    </div>

</body>
</html>