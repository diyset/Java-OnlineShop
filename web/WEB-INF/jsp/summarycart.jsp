<%-- 
    Document   : summarycart
    Created on : Dec 15, 2017, 5:38:57 PM
    Author     : user
--%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="df" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<c:url value="/Asset/css/bootstrap.css" />" rel="stylesheet"/>
        <script src="<c:url value="/Asset/js/bootstrap.js" />" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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

        <c:if test="${empty sessionScope.user}">
            <h1>Harap Melakukan<a href="${pageContext.request.contextPath}/login" >Login</a> Terlebih Dahulu</h1>
        </c:if>
        <c:if test="${not empty sessionScope.user}">
            <div class="container">
                <h1>Summary Cart</h1>
                <h3>Total Items : ${h} </h3>
                <table class="table table-responsive">
                    <thead> 
                        <tr>
                            <th>No</th>
                            <th>Product ID</th>
                            <th>Product Name</th>
                            <th>Harga</th>
                            <th>Quantity</th>
                            <th>Sub Total Harga</th> 

                        </tr>
                    </thead>
                    <br/>

                    <tbody>
                        <c:set var="s" value="0"></c:set>
                        <c:set var="h" value="0"></c:set>
                        <c:forEach var="e" items="${sessionScope.carts.cartItems.values()}" varStatus="c">
                            <c:set var="s" value="${s +e.quantity * e.product.purchaseCost }"></c:set>
                            <c:set var="h" value="${h + e.quantity  }"></c:set>

                                <tr>
                                    <th>${c.count}</th>
                                <td><label>${e.product.productId}</label></td> 
                                <td><label>${e.product.description}</label></td>    
                                <td><label><fmt:formatNumber type="currency" value="${e.product.purchaseCost}"/></label></td>
                                <td><label>${e.quantity}</label></td>
                                <td><label><fmt:formatNumber type="currency" value="${e.quantity * e.product.purchaseCost}"/></label></td>
                                <td><a href="${pageContext.request.contextPath}/detailproduct/delete/${e.product.productId}"><button class="btn btn-danger"><span class="glyphicon glyphicon-remove"> Delete</span></button></a>
                                <td><a href="${pageContext.request.contextPath}/detailproduct/deleteItem/${e.product.productId}"><button class="btn btn-danger"><span class="glyphicon glyphicon-remove"> DeleteItem</span></button></a>

                            <tr/>



                        </c:forEach>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td>Total Harga Keseluruhan</td>
                            <td/>
                            <td/>
                            <td/>
                            <td/>
                            <td><fmt:formatNumber type="currency" value="${s}"/></td>
                        <!--<td>${totalHarga}</td> untuk testing DecimalFormat--> 
                        <tr/>
                        <tr>
                            <td> Total Items:</td>
                            <td/>
                            <td/>
                            <td/>
                            <td/>
                            <td>${h}</td>
                        </tr>
                    </tfoot>
                </table>
            </div>
            <div class="container">
                <div class="col-sm-offset-4">

                    <a href="${pageContext.request.contextPath}/detailproduct/checkout/save" class="btn-group btn-danger" ><span class="glyphicon glyphicon-send"> CheckOut</span></a>
                </div>
            </div>
        </div>
        <br/>
    </c:if>
    <jsp:include page="footer.jsp"/>
</body>
</html>
