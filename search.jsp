<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Customer</title>
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

        h2 {
            text-align: center;
            color: #d63384;
            margin: 30px 0;
        }

        .search-container {
            text-align: center;
            margin: 30px;
        }

        .search-container input {
            padding: 10px;
            font-size: 16px;
            width: 50%;
            border: 2px solid #ddd;
            border-radius: 5px;
        }

        .search-container button {
            padding: 10px 20px;
            background-color: #d63384;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            margin-left: 10px;
        }

        .search-container button:hover {
            background-color: #c2185b;
        }

        table {
            width: 90%;
            margin: auto;
            border-collapse: collapse;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            background-color: white;
        }

        th, td {
            padding: 12px 15px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f8d7e9;
            color: #6c0733;
        }

        tr:hover {
            background-color: #ffe6f0;
        }

        a {
            text-decoration: none;
            color: #d63384;
            font-weight: bold;
        }

        a:hover {
            color: #c2185b;
        }

        .btn-container {
            text-align: center;
            margin: 40px 0;
        }

        .btn-back {
            display: inline-block;
            background-color: #d63384;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .btn-back:hover {
            background-color: #c2185b;
            text-decoration: none;
        }
    </style>
</head>
<body>

<header>
    <div class="nav">
        <a href="/">Home</a>
        <a href="/open-registerPage">Add Customer</a>
        <a href="/get-allCustomer">Customer List</a>
    </div>
</header>

<h2>Search Customer by Name</h2>

<div class="search-container">
    <form action="/search-customer" method="get">
        <input type="text" name="name" placeholder="Enter customer name" required/>
        <button type="submit">Search</button>
    </form>
</div>

<c:if test="${not empty customerList}">
    <table>
        <tr>
            <th>Customer ID</th>
            <th>Name</th>
            <th>Date of Service Taken</th>
            <th>Contact Number</th>
            <th>Service</th>
            <th>Total Spent</th>
            <th>GVN Bill</th>
            <th>RMN Bill</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>

        <c:forEach var="customer" items="${customerList}">
            <tr>
                <td>${customer.id}</td>
                <td>${customer.name}</td>
                <td>${customer.date}</td>
                <td>${customer.number}</td>
                <td>${customer.service}</td>
                <td>${customer.total}</td>
                <td>${customer.gvnbill}</td>
                <td>${customer.total - customer.gvnbill}</td>
                <td><a href="edit-customer?id=${customer.id}">Update</a></td>
                <td><a href="delete-customer?id=${customer.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>

<c:if test="${empty customerList}">
    <p style="text-align: center; color: #888;">No customers found matching your search criteria.</p>
</c:if>

<div class="btn-container">
    <a class="btn-back" href="/">Back to Home</a>
</div>

<%@ include file="footer.jsp"%>

</body>
</html>
