<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>Search Customer</title></head>
<body>
    <h2>Search Customer by Contact Number</h2>
    <form action="search-customer-by-contact" method="get">
        Contact Number: <input type="text" name="contactNumber" required />
        <input type="submit" value="Search" />
    </form>

    <c:if test="${not empty msg}">
        <p style="color:red">${msg}</p>
    </c:if>
</body>
</html>
