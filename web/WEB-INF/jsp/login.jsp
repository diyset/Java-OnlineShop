<%-- 
    Document   : login
    Created on : Dec 14, 2017, 11:53:35 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<c:url value="/Asset/css/bootstrap.css" />" rel="stylesheet">

        <script type="text/javascript" src="${pageContext.request.contextPath}/Asset/js/jquery3.min.js"/></script>       
    <script >
        $(function () {

            $('#login-form-link').click(function (e) {
                $("#login-form").delay(100).fadeIn(100);
                $("#register-form").fadeOut(100);
                $('#register-form-link').removeClass('active');
                $(this).addClass('active');
                e.preventDefault();
            });
            $('#register-form-link').click(function (e) {
                $("#register-form").delay(100).fadeIn(100);
                $("#login-form").fadeOut(100);
                $('#login-form-link').removeClass('active');
                $(this).addClass('active');
                e.preventDefault();
            });

        });
    </script>
</head>
<body>

    <div class="fullscreen_bg" id="fullscreen_bg">

        <div class="regContainer" id="regContainer">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div class="panel panel-login">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form:form id="login-form" action="${pageContext.request.contextPath}/login/check" modelAttribute="loginBean"  method="post" role="form" style="display: block;">
                                        <div class="form-group">
                                            <form:label path="username">Username</form:label>
                                            <form:input path="username" type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" />
                                        </div>
                                        <div class="form-group">
                                            <form:label path="password">Password</form:label>
                                            <form:password  name="password" path="password" id="password" tabindex="2" class="form-control" placeholder="Password"/>
                                        </div>
                                        <div class="form-group text-center">
                                            <input type="checkbox" tabindex="3" class="" name="remember" id="remember">
                                            <label for="remember"> Remember Me</label>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <form:button type="submit" name="submitButton" id="login-submit" tabindex="4" class="form-control btn btn-login" >Login</form:button>
                                                    </div>

                                                    <div class="col-lg-4"></div>


                                            </form:form>
                                            <div class="col-lg-4">
                                                <a class="btn btn-danger" href="${pageContext.request.contextPath}/welcome"><span class="glyphicon glyphicon-alert"> Cancel</span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        </body>
                        </html>
