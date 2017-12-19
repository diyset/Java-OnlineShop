<%-- 
    Document   : detailproduct
    Created on : Dec 15, 2017, 5:04:30 PM
    Author     : user
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <div class="container">

            <div class="panel panel-body panel-default">
                <img src="<c:url value="/Asset/Image/${products.imagepath}"/>">
                ${products.description}
                <br/>
                <fmt:formatNumber type="currency" value="${products.purchaseCost}"/>
                <a href="add/${products.productId}">
                    <button>
                        <span class="glyphicon glyphicon-shopping-cart">

                        </span>Add to Card </button>
                </a>
            </div>
        </div>
                <jsp:include page="footer.jsp"/>
    </body>
</html>
