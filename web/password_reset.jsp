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
        <a href="transaction.jsp">Transactions</a><br><br>
        <h2>Password Reset</h2>
        <form>
        <label class="pad_top">Password:</label>
        <input type="text" name="Password"><br>
        <label class="pad_top">ReEnter Password:</label>
        <input type="text" name="RePassword"><br>
        <label>&nbsp;</label>
        <input type="submit" value="Submit" class="margin_left">
    </form>
        <form action="/PasswordResetServlet" method="post">

        </form>
    </body>
   
    <c:import url="/includes/footer.jsp" />
</html>
