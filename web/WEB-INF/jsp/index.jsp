
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<!--        <div class="jumbotron">
            <div class="container text-center">
                <h1>Online Store Dian</h1>
                <p>Toko Elektronik Terlengkap Dan Terpercaya</p>
            </div>
        </div>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="text-right" style="color: #ffffff">

                    <h5>${hi} ${user.firstName} </h5>
                </div>
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>

                </div>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="#">Products</a></li>
                    <li><a href="#">Deals</a></li>
                    <li><a href="#">Stores</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">

                    <li>
                        <a href="${pageContext.request.contextPath}/logout">
                            <span class="glyphicon glyphicon-log-out"></span>Logout</a>
                    </li>


                    <li class="dropdown">
                        <a href="${pageContext.request.contextPath}/login">
                            <span class="glyphicon glyphicon-log-in"></span>Login</a>
                    </li>

                    <li><a href="${pageContext.request.contextPath}/register"><span class="glyphicon glyphicon-user"></span>Register</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>

                </ul>

            </div>

        </nav>-->

        <div class="container">    
        
             <c:forEach  var="e" items="${products}">
                        
                        <img src="<c:url value="/Asset/Image/${e.imagepath}"/>" >
                    </c:forEach>
        </div>
        <br>
        <br>
        <footer class="container-fluid text-center">
            <p>Online Store Copyright</p>  
            <form class="form-inline">Get deals:
                <input type="email" class="form-control" size="50" placeholder="email"/>
                <a href="${pageContext.request.contextPath}/register" <button type="button" class="btn btn-danger">Sign Up</button></a>
            </form>
        </footer>

    </body>
</html>
