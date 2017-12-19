<%-- 
    Document   : editprofileuser
    Created on : Dec 18, 2017, 5:30:29 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
        <div class="container">
            <form:form name="frm" action="editprofile/save" modelAttribute="registerBean" 
                       method="POST" class="well form-horizontal" id="contact_form" >
                <fieldset>
                    <legend>
                        <center>
                            <h2><b>Registration Form</b></h2>
                        </center>
                    </legend>
                    <br>
                    <div class="form-group">
                        <form:label path="firstName" class="col-md-4 control-label">
                            First Name
                        </form:label>
                        <div class="col-md-4 input-groupContainer">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="glyphicon glyphicon-user"></i>
                                </span>
                                <form:input name="first_name" path="firstName" class="form-control"/>  
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <form:label path="lastName" class="col-md-4 control-label">
                            Last Name
                        </form:label>
                        <div class="col-md-4 input-groupContainer">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="glyphicon glyphicon-user"></i>
                                </span>
                                <form:input name="last_name" path="lastName" class="form-control"/>  
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <form:label path="email" class="col-md-4 control-label">
                            Email
                        </form:label>
                        <div class="col-md-4 input-groupContainer">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="glyphicon glyphicon-envelope"></i>
                                </span>
                                <form:input name="email" path="email" class="form-control"/>  
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <form:label path="noHp" class="col-md-4 control-label">
                            No HP
                        </form:label>
                        <div class="col-md-4 input-groupContainer">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="glyphicon glyphicon-phone"></i>
                                </span>
                                <form:input path="noHp" class="form-control" placeholder="(+62)"/>  
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <form:label path="alamatJalan" class="col-md-4 control-label">
                            Alamat Jalan
                        </form:label>
                        <div class="col-md-4 input-groupContainer">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="glyphicon glyphicon-map-marker"></i>
                                </span>
                                <form:input path="alamatJalan" class="form-control"/>  
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <form:label path="kota" class="col-md-4 control-label">
                            Kota
                        </form:label>
                        <div class="col-md-4 input-groupContainer">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="glyphicon glyphicon-map-marker"></i>
                                </span>
                                <form:input path="kota" class="form-control"/>  
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <form:label path="username" class="col-md-4 control-label">
                            User Name
                        </form:label>
                        <div class="col-md-4 input-groupContainer">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="glyphicon glyphicon-user"></i>
                                </span>
                                <form:input name="username" path="username" class="form-control"/>  
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <form:label path="password" class="col-md-4 control-label">
                            Password
                        </form:label>
                        <div class="col-md-4 input-groupContainer">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="glyphicon glyphicon-user"></i>
                                </span>
                                <form:password name="pwd"  path="password" class="form-control"/> 

                            </div>
                        </div>

                    </div>


                    <div class="form-group">
                        <label class="col-md-4 control-label"></label>
                        <div class="col-md-4">
                            <label class="col-md-4 control-label"></label>
                            <div  class="col-lg-4">

                                <form:button type="submit" value="Submit" class="btn btn-warning">
                                    <span class="glyphicon glyphicon-send"></span>

                                    Submit
                                </form:button>
                            </div>
                            <div class="col-lg2 visible-lg">

                                <a href="${pageContext.request.contextPath}"<form:button  class="btn btn-danger">
                                        <span class="glyphicon glyphicon-remove"></span>

                                        Cancel
                                    </form:button></a>
                            </div>
                        </div>
                    </div>

                </fieldset>

            </form:form>
            ${message}
        </div>

    </body>
</html>
