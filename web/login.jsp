<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <h2> Login </h2>
        <form action="AuthServlet" method="post"> 
            <input type="hidden" name="action" value="add">   
            <label class="pad_top">Username:</label>
            <input type="text" name="Username"><br>
            <label class="pad_top">Password:</label>
            <input type="text" name="Password"><br> 
            <label>&nbsp;</label>
            <input type="submit" value="Login" class="margin_left">
        </form>            
        <a href="password_reset.jsp"> Password Reset</a>
        <a href="new_customer.jsp">New Customer Application</a>
    </body>
     <c:import url="/includes/footer.jsp" />
</html>
