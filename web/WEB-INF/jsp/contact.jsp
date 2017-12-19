<%-- 
    Document   : contact
    Created on : Dec 18, 2017, 2:31:26 PM
    Author     : user
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact</title>
        <link href="<c:url value="/Asset/css/bootstrap.css" />" rel="stylesheet"/>
        <script src="<c:url value="/Asset/js/bootstrap.js" />" type="text/javascript"></script>
        <script src="<c:url value="/Asset/js/jquery3.min.js" />" type="text/javascript"></script>
        <style>  
            footer {
                background-color: #1b6d85;
                padding: 25px;
            }
        </style>
    </head>
    <body>
        <jsp:include page="head.jsp"/>
        
        <div class="form-container">
            
            <div class="text text-left"><h1>Contact Form</h1></div>
            <form>
                Name:<br>
                <input type="text" placeholder="Nama" size="65"/><br>
                Email:<br>
                <input type="text" placeholder="email@email.com" size="65"/><br>
                Message:<br>
                <textarea placeholder="Kritik Dan Saran" cols="63" rows="5"></textarea><br>
                <input type="button" value="send" class="btn btn-primary"/>
            </form>
        </div>
        <jsp:include page="footer.jsp"/>

    </body>
</html>
