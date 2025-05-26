<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Privacy Policy</title>
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

<!-- Privacy Policy Content -->
<div class="container">
    <h2>Privacy Policy</h2>
    <p>
        This Privacy Policy outlines how we collect, use, and protect your personal information. Your privacy is important to us, and we are committed to ensuring that your data is handled securely.
    </p>

    <h3>1. Information We Collect</h3>
    <p>
        We may collect the following types of personal information when you interact with our services:
    </p>
    <ul>
        <li>Contact information such as your name, email, and phone number.</li>
        <li>Account details such as login credentials.</li>
        <li>Transaction information such as billing details and payment history.</li>
    </ul>

    <h3>2. How We Use Your Information</h3>
    <p>
        The information we collect is used to provide, maintain, and improve our services. This includes:
    </p>
    <ul>
        <li>To process transactions and provide customer support.</li>
        <li>To send relevant notifications and updates regarding your account.</li>
        <li>To improve the functionality and performance of our services.</li>
    </ul>

    <h3>3. Information Sharing</h3>
    <p>
        We will not share your personal information with third parties unless it is necessary to provide services to you or as required by law. We may share information with service providers who help with payment processing, technical support, or other operational functions.
    </p>

    <h3>4. Data Security</h3>
    <p>
        We use a variety of security measures to protect your personal information from unauthorized access or alteration. However, no method of transmission over the Internet is 100% secure, and we cannot guarantee absolute security.
    </p>

    <h3>5. Your Rights</h3>
    <p>
        You have the right to:
    </p>
    <ul>
        <li>Access, update, or delete your personal information at any time.</li>
        <li>Request a copy of the information we hold about you.</li>
        <li>Object to the processing of your data, subject to certain exceptions.</li>
    </ul>

    <h3>6. Changes to This Privacy Policy</h3>
    <p>
        We may update this Privacy Policy from time to time. When changes are made, we will update the date at the bottom of this page. Please review this policy periodically to stay informed about how we are protecting your information.
    </p>

    <h3>Contact Us</h3>
    <p>
        If you have any questions about this Privacy Policy or our practices, please contact us at support@customersystem.com.
    </p>

    <a class="btn-back" href="/">Back to Home</a>
</div>

</body>
</html>
