<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Customer</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

<header>
    <h1>Edit Customer Details</h1>
</header>

<div class="form-container">
    <form action="update-customer" method="post">
        <h2>Edit Customer</h2>

        <label for="id">Customer ID:</label>
        <input type="text" id="id" name="id" value="${customer.id}" readonly />
        <br><br>

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${customer.name}" required />
        <br><br>

        <label for="date">Date:</label>
        <input type="date" id="date" name="date" value="${customer.date}" required />
        <br><br>

        <label for="number">Number:</label>
        <input type="number" id="number" name="number" value="${customer.number}" required />
        <br><br>

        <label for="service">Service:</label>
        <input type="text" id="service" name="service" value="${customer.service}" required />
        <br><br>

        <label for="total">Total:</label>
        <input type="number" step="0.01" id="total" name="total" value="${customer.total}" required />
        <br><br>

        <label for="gvnbill">GVN Bill:</label>
        <input type="number" step="0.01" id="gvnbill" name="gvnbill" value="${customer.gvnbill}" required />
        <br><br>

        <label for="rmnBill">RMN Bill:</label>
        <input type="number" step="0.01" id="rmnBill" name="rmnBill" value="${customer.rmnBill}" required />
        <br><br>

        <input type="submit" value="Update Customer" />
    </form>
</div>

<footer>
    &copy; 2025 Customer Management System
</footer>

</body>
</html>
