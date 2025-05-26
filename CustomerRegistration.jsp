<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Registration</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #fff0f5, #ffe4e1);
        color: #333;
    }

    header {
        width: 100%;
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

    h2 {
        text-align: center;
        margin-top: 40px;
        color: #d63384;
        font-size: 30px;
    }

    .form-container {
        width: 50%;
        margin: 40px auto;
        padding: 30px;
        background-color: #ffffffcc;
        border-radius: 20px;
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        animation: fadeIn 1.2s ease-in-out;
    }

    form h2 {
        text-align: center;
        color: #d63384;
        margin-bottom: 20px;
    }

    label {
        display: block;
        margin-bottom: 8px;
        font-weight: 600;
        color: #444;
    }

    input[type="text"],
    input[type="number"],
    input[type="date"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 10px;
        margin-bottom: 20px;
        font-size: 15px;
    }

    input[type="submit"] {
        width: 100%;
        padding: 12px;
        background-color: #d63384;
        color: white;
        border: none;
        font-size: 16px;
        border-radius: 12px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #c2185b;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(30px); }
        to { opacity: 1; transform: translateY(0); }
    }
</style>

</head>
<body>

<!-- Header with nav links -->
<header>
    <div class="nav">
        <a href="/">Home</a>
        <a href="/open-registerPage">Add Customer</a>
        <a href="/get-allCustomer">Customer List</a>
    </div>
</header>

<h2>Customer Registration Form</h2>

<div class="form-container">
    <form action="/add-customer" method="post">
        <h2>Enter Customer Details</h2>

        <label for="id">Customer ID:</label>
        <input type="number" id="id" name="id" required />

        <label for="name">Customer Name:</label>
        <input type="text" id="name" name="name" required />

        <label for="date">Date:</label>
        <input type="date" id="date" name="date" required />

        <label for="number">Number:</label>
        <input type="text" id="number" name="number" pattern="[0-9]{10}" required title="Enter a valid 10-digit number" />

        <label for="service">Service:</label>
        <input type="text" id="service" name="service" required />

        <label for="total">Total:</label>
        <input type="number" id="total" name="total" step="0.01" required />

        <label for="gvnbill">GVN Bill:</label>
        <input type="number" id="gvnbill" name="gvnbill" step="0.01" required />

        <label for="rmnBill">RMN Bill:</label>
        <input type="number" id="rmnBill" name="rmnBill" step="0.01" required />

        <input type="submit" value="Register Customer" />
    </form>
</div>

<%@ include file="footer.jsp"%>
</body>
</html>
