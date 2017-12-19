<%-- 
    Document   : welcome
    Created on : Dec 14, 2017, 10:53:09 AM
    Author     : user
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<c:url value="/Asset/css/bootstrap.css" />" rel="stylesheet"/>
        <script src="<c:url value="/Asset/js/bootstrap.js" />" type="text/javascript"></script>
        <script src="<c:url value="/Asset/js/bootstrap.min.js" />" type="text/javascript"></script>
        <script src="<c:url value="/Asset/js/jquery.min.js" />" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
            <c:forEach  var="e" items="${products}">


                <div class="container">    
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="panel panel-primary">
                                <div class="panel-heading">${e.description}</div>
                                <div class="panel-body">
                                    <a href="${pageContext.request.contextPath}/detailproduct/${e.productId}">
                                        <img height="200" width="100" src="<c:url value="/Asset/Image/${e.imagepath}"/>" class="img-rounded center-block" alt="Image">
                                    </a>
                                </div>
                                        <div class="panel-footer text-center"><fmt:formatNumber type="currency" value="${e.purchaseCost}"/>
                                            <a href="${pageContext.request.contextPath}/detailproduct/add/${e.productId}">
                                                <span class="glyphicon glyphicon-shopping-cart">AddCart</span></a></div>
                            </div>
                        </div>



                    </c:forEach> 
                </div>
                <br>
                <br>

                <jsp:include page="footer.jsp"/>

                </body>
                </html>
