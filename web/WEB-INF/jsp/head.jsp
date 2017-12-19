<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="jumbotron">
    <div class="container text-center">
        <c:forEach var="pr" items="${sessionScope.carts.cartItems.values()}">
            <c:set var="s" value="${s + pr.quantity}"></c:set>
        </c:forEach>

        <h1>Online Store Dian</h1>
        <p>Toko Elektronik Terlengkap Dan Terpercaya</p>
    </div>
</div>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="text-right" style="color: #ffffff">

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
            <li><a href="${pageContext.request.contextPath}">Home</a></li>
            <li><a href="${pageContext.request.contextPath}/product">Products</a></li>
            <li><a href="#">Deals</a></li>
            <li><a href="#">Stores</a></li>
            <li><a href="${pageContext.request.contextPath}/welcome/contact">Contact</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <c:if test="${empty sessionScope.user}">

                <li class="dropdown">
                    <a href="${pageContext.request.contextPath}/login">
                        <span class="glyphicon glyphicon-log-in"></span>Login</a>

                </li>

                <li><a href="${pageContext.request.contextPath}/register"><span class="glyphicon glyphicon-user"></span>Register</a></li>
                </c:if>
                <c:if test="${not empty sessionScope.user}">
                <div class="dropdown">
                    <button class="btn btn-primary dropdown-toggle " type="button" data-toggle="dropdown">Hi,${user.username}
                        <span class="caret"></span></button>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/register/editprofile">Edit Profile</a></li>
                        <li><a href="#">History Transaction</a></li>
                      
                    </ul>
                </div>
              
                <li>

                    <a href="${pageContext.request.contextPath}/logout">
                        <span class="glyphicon glyphicon-log-out"></span>Logout</a>

                </li>
            </c:if>

            <li><a href="${pageContext.request.contextPath}/detailproduct/show"><span class="glyphicon glyphicon-shopping-cart"></span> Cart : ${0+s}</a></li>


        </ul>

    </div>

</nav>
