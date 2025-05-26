<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Customer by Contact</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <h2>Search Customer by Contact Number</h2>

    <!-- Form for searching the customer by contact number -->
    <form action="/search-customer-by-contact" method="get">
        <label for="number">Contact Number:</label>
        <input type="text" id="number" name="number" required>
        <button type="submit">Search</button>
    </form>

    <br><br>

    <!-- If message is not empty, show the message -->
    <c:if test="${not empty msg}">
        <div class="alert">${msg}</div>
    </c:if>

    <!-- If customer is found, show the customer details -->
    <c:if test="${not empty customer}">
        <h3>Customer Details:</h3>
        <p>Name: ${customer.name}</p>
        <p>Email: ${customer.email}</p>
        <p>Contact Number: ${customer.number}</p>
        <p>Service: ${customer.service}</p>
        <p>Total: ${customer.total}</p>
        <p>Gvn Bill: ${customer.gvnbill}</p>
        <p>Rmn Bill: ${customer.rmnBill}</p>
    </c:if>
</body>
</html>
