<%-- 
    Document   : successregistration
    Created on : Dec 14, 2017, 12:49:56 PM
    Author     : user
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<c:url value="/Asset/css/bootstrap.css" />" rel="stylesheet">

    </head>
    <body>
        <h1>Registrasi berhasil</h1>
        ${data.firstName} ${data.lastName}
        <p>
            <a href="${pageContext.request.contextPath}/login">Please Login</a>
        </p>
    </body>
</html>
