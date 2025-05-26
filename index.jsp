<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ladies Saloon - Home</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #fff0f5, #ffe4e1);
        color: #333;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    header {
        width: 100%;
        background-color: #f8c8dc;
        color: white;
        padding: 20px;
        text-align: center;
        font-size: 32px;
        font-weight: bold;
        box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        border-bottom: 5px solid #f08080;
    }

    .welcome-container {
        margin-top: 100px;
        background-color: #ffffffcc;
        padding: 40px;
        border-radius: 20px;
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        text-align: center;
        animation: fadeIn 1.2s ease-in-out;
    }

    .welcome-container h1 {
        color: #d63384;
        font-size: 36px;
        margin-bottom: 10px;
    }

    .welcome-container p {
        font-size: 18px;
        color: #555;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
    }

    .welcome-container:hover {
        background-color: #ffeef2;
        transform: scale(1.01);
        transition: all 0.3s ease-in-out;
    }
</style>

</head>
<body>

<%@ include file="header.jsp"%> <!-- This will include the navigation links defined in header.jsp -->

<div class="welcome-container">
    <h1>Welcome to Our Ladies Saloon</h1>
    <p>Feel beautiful, feel confident, feel you 💖</p>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>
