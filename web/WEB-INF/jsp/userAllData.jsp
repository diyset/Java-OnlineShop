<%-- 
    Document   : userAllData
    Created on : Dec 14, 2017, 6:44:44 PM
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
                        <th>Alamat Jalan</th>
                        <th>Username</th>
                        <th>Password</th>
                    </tr>
                </thead>

                <c:forEach var="e" items="${users}" varStatus="c">
                    <tr>
                        <td width="2">${c.count}</td> 
                        <td ><a href="${e.userId}">${e.firstName} ${e.lastName}</a></td> 
                        <td>${e.kota}</td>
                        <td>${e.alamatJalan}</td>
                        <td>${e.username}</td>
                        <td>${e.password}</td>
                        <td>

                            <div class="btn-group">
                                <a class="btn btn-sm btn-primary" href="${e.userId}">Edit</a>
                                <div class="col-sm-2"></div>
                                <a class="btn btn-sm btn-danger" href="${e.userId}">Remove</a>

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
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>${totalusers}</td>
                    </tr>

                </tfoot>
            </table>    

        </div>

    </body>
</html>

