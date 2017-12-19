<%-- 
    Document   : successlogin
    Created on : Dec 14, 2017, 12:48:44 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="3, url=${pageContext.request.contextPath}" />
        <title>JSP Page</title>
        <link href="<c:url value="/Asset/css/bootstrap.css" />" rel="stylesheet">

    </head>
    <body>
      
        <h1>${user.username}, Anda berhasil Login</h1>
        
    </body>
</html>
