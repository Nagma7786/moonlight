<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>

<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: #fdf3f8;
        margin: 0;
        padding: 0;
        text-align: center;
    }

    h2 {
        color: #d63384;
        margin-top: 50px;
    }

    .msg {
        margin: 20px auto;
        font-size: 18px;
        color: #6c757d;
    }

    .btn {
        padding: 10px 20px;
        background-color: #d63384;
        color: white;
        border: none;
        border-radius: 5px;
        text-decoration: none;
        font-size: 16px;
        margin-top: 20px;
        display: inline-block;
        transition: background-color 0.3s;
    }

    .btn:hover {
        background-color: #c2185b;
    }
</style>
</head>
<body>

    <h2>Welcome... page</h2>
    <div class="msg">${msg}</div>

    <a href="/" class="btn">Go to Home</a>

</body>
</html>
