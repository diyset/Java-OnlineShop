<%-- 
    Document   : productlist
    Created on : Dec 15, 2017, 1:01:04 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="<c:url value="/Asset/css/bootstrap.css" />" rel="stylesheet"/>
        <script src="<c:url value="/Asset/js/bootstrap.js" />" type="text/javascript"></script>
        <script src="<c:url value="/Asset/js/jquery-3.2.1.min.js" />" type="text/javascript"></script>
        <style>  
            footer {
                background-color: #1b6d85;
                padding: 25px;
            }
        </style>
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="head.jsp"/>
    <div class="panel panel-primary">

            <div class="panel-heading">
                <h4>Product List</h4>
            </div>
        </div>
        <div class="panel-body">

            <table class="table table-striped">
                <thead style="font-style: italic">
                    <tr>
                        <th>No</th>
                        <th>Produk ID</th>
                        <th>Nama Produk</th>
                        <th>Quantity</th>
                        <th>Harga Barang</th>
                        <th>Ketersediaan</th>
                  
                    </tr>
                </thead>

                <c:forEach var="e" items="${products}" varStatus="c">
                    <tr>
                        <td width="2">${c.count}</td> 
                        <td>${e.productId}</td>
                        <td ><a href=#>${e.description}</a></td> 
                        <td>${e.quantityOnHand}</td>
                        <td>${e.purchaseCost}</td>
                        <td>${e.available}</td>
                      
                        <td>

                            <div class="btn-group">
                                <a class="btn btn-sm btn-primary" href="#">Add Cart</a>
                                <div class="col-sm-2"></div>


                            </div>
                        </td>
                        <!--                <button class="btn-danger">Detail</button>-->
                    </tr>
                </c:forEach>

                <tfoot>
                    <tr>
                        <td></td>
                        <td>Total Product </td>
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
