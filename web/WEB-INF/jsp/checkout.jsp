<%-- 
    Document   : checkout
    Created on : Dec 18, 2017, 9:46:05 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<c:url value="/Asset/css/bootstrap.css" />" rel="stylesheet"/>
        <script src="<c:url value="/Asset/js/bootstrap.js" />" type="text/javascript"></script>
        <script src="<c:url value="/Asset/js/jquery-3.2.1.min.js" />" type="text/javascript"></script>
        <style>  
            footer {
                background-color: #1b6d85;
                padding: 25px;
            }
        </style>

    </head>
    <body>
        <jsp:include page="head.jsp"/>
        <c:if test="${not empty sessionScope.user}">
            <h1>Terima Kasih Sudah Membeli Di Toko Kami</h1>
            <h3>Total Harga : Rp. ${totalHarga}</h3>
           
        </c:if>
        <c:if test="${empty sessionScope.user}">
            <h1>${errMsg} <a href="${pageContext.request.contextPath}/login">Login</a> Terlebih Dahulu</h1>
        </c:if>
    </body>
</html>
