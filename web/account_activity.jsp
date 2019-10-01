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
        <h2> Account Activity here </h2>
        <c:choose>
            <c:when test="${session.user != null}">
                <p>Hello${session.user.firstName.lastName}</p>
            </c:when>
            <c:otherwise>
                <p>Not Logged In</p>            
            </c:otherwise>
        </c:choose>   
    </body>
     <c:import url="/includes/footer.jsp" />
</html>
