<%-- 
    Document   : header
    Created on : Feb 28, 2017, 7:29:12 PM
    Author     : michael
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="userName" value="${sessionScope.userName}"></c:set>
<c:set var="cartList" value="${sessionScope.cart}"></c:set>
    <!-- *** TOPBAR *** -->

    <div id="top">


    </div>
    <!-- *** TOP BAR END *** -->

    <!-- *** NAVBAR ***
    _________________________________________________________ -->

    <div class="navbar navbar-default yamm" role="navigation" id="navbar">
        <div class="container">
            <div class="navbar-header">

                <a class="navbar-brand home" href="index.jsp" data-animate-hover="bounce">
                    <img src="${pageContext.request.contextPath}/resources/client/img/logo.png" alt="Obaju logo" class="hidden-xs">
            </a>

        </div>
        <!--/.navbar-header -->

        <!--/.nav-collapse -->

        <div class="navbar-buttons">

            <div class="navbar-collapse collapse right" id="basket-overview">
                <ul class="nav navbar-nav navbar-right">

                    <li><a href="cart.jsp"><i class="fa fa-shopping-cart fa-2x" aria-hidden="true"></i>
                            <span class="badge">
                                <c:choose>
                                    <c:when test="${empty cartList}">
                                        <div id="items-number">0</div>
                                    </c:when>
                                    <c:otherwise>
                                        <div id="items-number">
                                          ${fn:length(cartList)}
                                        </div>
                                       
                                    </c:otherwise>    
                                </c:choose>
                            </span>
                        </a>
                    </li>
                    <c:choose>
                        <c:when test="${empty userName}">
                            <li><a href="register.jsp">Login</a>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li><a href="EditAccount"><c:out value="${userName}" /></a>
                            <li><a href="LogoutServlet">Logout</a>
                            </li>
                        </c:otherwise>    
                    </c:choose>

                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>

        <div class="collapse clearfix" id="search">

        </div>
        <!--/.nav-collapse -->

    </div>
    <!-- /.container -->
</div>
<!-- /#navbar -->

<!-- *** NAVBAR END *** -->

