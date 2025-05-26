<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MoonLight App</title>
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

        nav {
            width: 100%;
            background-color: #f8c8dc;
            padding: 10px;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        nav a {
            text-decoration: none;
            color: #d63384;
            margin: 0 15px;
            font-size: 18px;
            font-weight: bold;
        }

        nav a:hover {
            color: #c2185b;
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
    <header>
        <h1>Welcome to the MoonLight App</h1>
        <hr/>
    </header>

    <nav>
        <a href="/">Home</a>
        <a href="/open-registerPage">Add Customer</a>
        <a href="/get-allCustomer">Customer List</a>
    </nav>

    <div class="welcome-container">
        <h1>Discover the MoonLight App</h1>
        <p>Your journey to manage your customers starts here. 🌙</p>
    </div>

</body>
</html>
