<%-- 
    Document   : registerproduct
    Created on : Dec 14, 2017, 11:29:33 PM
    Author     : user
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<c:url value="/Asset/css/bootstrap.css" />" rel="stylesheet">
        <script src="<c:url value="/Asset/js/jquery-3.2.1.min.js" />" type="text/javascript"></script>
        <script src="<c:url value="/Asset/js/bootstrap.js" />" type="text/javascript"></script>

        <script src="<c:url value="/Asset/js/template.js" />" type="text/javascript">

        </script>
        <script type="text/javascript">
            function validateForm()
            {
                if (document.frm.username.value == "")
                {
                    alert("User Name should be left blank");
                    document.frm.username.focus();
                    return false;
                } else if (document.frm.pwd.value == "")
                {
                    alert("Password should be left blank");
                    document.frm.pwd.focus();
                    return false;
                }
            }
        </script>


    </head>
    <body>
        <jsp:include page="head.jsp"/> 
        <div class="container">
            <form:form name="frm" action="registerproduct/save" modelAttribute="registerBean" 
                       method="POST" class="well form-horizontal" id="contact_form" >
                <fieldset>
                    <legend>
                        <center>
                            <h2><b>Registration Form Product</b></h2>
                        </center>
                    </legend>
                    <br>

                    <div class="form-group">
                        <form:label path="description" class="col-md-4 control-label">
                            Description
                        </form:label>
                        <div class="col-md-4 input-groupContainer">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="glyphicon glyphicon-save-file"></i>
                                </span>
                                <form:input name="description" path="description" class="form-control"/>  
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <form:label path="quantityOnHand" class="col-md-4 control-label">
                            Stock Barang
                        </form:label>
                        <div class="col-md-4 input-groupContainer">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="glyphicon glyphicon-gift"></i>
                                </span>
                                <form:input name="quantityOnHand" path="quantityOnHand" class="form-control"/>  
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <form:label path="purchaseCost" class="col-md-4 control-label">
                            Cost
                        </form:label>
                        <div class="col-md-4 input-groupContainer">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="glyphicon glyphicon-bitcoin"></i>
                                </span>
                                <form:input name="purchaseCost" path="purchaseCost" class="form-control"/>  
                            </div>
                        </div>
                    </div>


                    <div class="form-group">
                        <form:label path="available" class="col-md-4 control-label">
                            Available
                        </form:label>
                        <div class="col-md-4 input-groupContainer">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="glyphicon glyphicon-map-marker"></i>
                                </span>
                                <form:input path="available" class="form-control"/>  
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <form:label path="imagepath" class="col-md-4 control-label">
                            Imagepath
                        </form:label>
                        <div class="col-md-4 input-groupContainer">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="glyphicon glyphicon-briefcase"></i>
                                </span>
                                <form:input path="imagepath" class="form-control"/>  
                            </div>
                        </div>
                    </div>
                   
                    ${message}
                    <div class="form-group">
                        <label class="col-md-4 control-label"></label>
                        <div class="col-md-4">
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            <br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            <form:button type="submit" value="Submit" class="btn btn-warning">
                                <span class="glyphicon glyphicon-send"></span>
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

                                Submit
                            </form:button>
                        </div>
                    </div>
                </fieldset>

            </form:form>
        </div>
    </div>



</body>
</html>
