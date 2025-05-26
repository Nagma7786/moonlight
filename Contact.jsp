<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Us</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #fff5f8;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #f8c8dc;
            color: white;
            padding: 20px 0;
            font-size: 28px;
            font-weight: bold;
            border-bottom: 5px solid #f08080;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .nav {
            display: flex;
            justify-content: center;
            gap: 50px;
        }

        .nav a {
            color: white;
            text-decoration: none;
            font-weight: 600;
            font-size: 18px;
            transition: color 0.3s ease;
        }

        .nav a:hover {
            color: #6a1b4d;
            text-decoration: underline;
        }

        .container {
            max-width: 900px;
            margin: 40px auto;
            padding: 30px;
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        h2 {
            color: #d63384;
            text-align: center;
            margin-bottom: 20px;
        }

        p, li {
            font-size: 18px;
            line-height: 1.7;
            color: #333;
        }

        ul {
            padding-left: 20px;
        }

        .btn-back {
            display: block;
            width: fit-content;
            margin: 30px auto 0;
            padding: 10px 20px;
            background-color: #d63384;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .btn-back:hover {
            background-color: #c2185b;
        }
    </style>
</head>
<body>

<!-- Header -->
<header>
    <div class="nav">
        <a href="/">Home</a>
        <a href="/open-registerPage">Add Customer</a>
        <a href="/get-allCustomer">Customer List</a>
    </div>
</header>

<!-- Contact Us Content -->
<div class="container">
    <h2>Contact Us</h2>
    <p>
        We'd love to hear from you! If you have any questions, feedback, or issues, feel free to reach out.
    </p>
    <ul>
        <li><strong>Email:</strong> moonlightsalon1788@gmail.com</li>
        <li><strong>Phone:</strong> +91-9970724710</li>
         <a class="btn-back" href="/">Back to Home</a>
         
         </ul>
         
         </div>
