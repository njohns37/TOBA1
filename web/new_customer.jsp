<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
        <h1>TOBA Titan Online Banking</h1>
        <a href="index.jsp">Home</a>
        <a href="login.jsp">Login</a>
        <a href="transaction.jsp">Transactions</a>
        
        <h2>Register</h2>
        
        <p><i>${message}</i></p>
        <form action="RegistrationServlet" method="post">
            <input type="hidden" name="action" value="add">        
            <label class="pad_top">First Name:</label>
            <input type="text" name="FirstName" value="${user.firstName}"><br><br>
            <label class="pad_top">Last Name:</label>
            <input type="text" name="LastName" value="${user.lastName}"><br><br>
            <label class="pad_top">Phone:</label>
            <input type="text" name="Phone" value="${user.phone}"><br><br>
            <label class="pad_top">Address:</label>
            <input type="text" name="Address" value="${user.address}"><br><br>
            <label class="pad_top">City:</label>
            <input type="text" name="City" value="${user.city}"><br><br>
            <label class="pad_top">State:</label>
            <input type="text" name="State" value="${user.state}"><br><br>
            <label class="pad_top">Zipcode:</label>
            <input type="text" name="Zipcode" value="${user.zipcode}"><br><br>
            <label class="pad_top">Email:</label>
            <input type="text" name="Email" value="${user.email}"><br><br>
            <label>&nbsp;</label>
            <input type="submit" value="Join Now" class="margin_left">
    </form>
    </body>
    <c:import url="/includes/footer.jsp" />
</html>
