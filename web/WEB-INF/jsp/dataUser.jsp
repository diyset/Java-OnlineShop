<%-- 
    Document   : dataUser
    Created on : Dec 14, 2017, 10:56:35 PM
    Author     : user
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="<c:url value="/Asset/css/bootstrap.css"/>" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="panel panel-primary">

            <div class="panel-heading">
                Customer
            </div>
        </div>
        <div class="panel-body">
           
                <table class="table table-striped">
                    <thead style="font-style: italic">
                        <tr>
                            <th>No</th>
                            <th>Nama</th>
                            <th>City</th>
                        </tr>
                    </thead>

                    <c:forEach var="e" items="${customers}" varStatus="c">
                        <tr>
                            <td width="2">${c.count}</td> 
                            <td ><a href="${e.customerId}">${e.name}</a></td> 
                            <td>${e.city}</td> 
                            <td>

                                <div class="btn-group">
                                    <a class="btn btn-sm btn-primary" href="${e.customerId}">Detail</a>

                                </div>
                            </td>
                            <!--                <button class="btn-danger">Detail</button>-->
                        </tr>
                    </c:forEach>

                    <tfoot>
                        <tr>
                            <td></td>
                            <td>Total Customer  </td>
                            <td></td>

                            <td>${totalCustomer}</td>
                        </tr>

                    </tfoot>
                </table>    
         
        </div>

    </body>
</html>
