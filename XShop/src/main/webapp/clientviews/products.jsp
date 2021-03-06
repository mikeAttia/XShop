<%-- 
    Document   : index
    Created on : Feb 20, 2017, 11:59:13 AM
    Author     : mosta
--%>

<%@page import="com.jetsmad.xshop.util.beans.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.jetsmad.xshop.util.database.DBController"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="productsList" value="${requestScope.products_list}"></c:set>

<c:forEach var="prdct" items="${productsList}">
    <c:if test="${prdct.active==true}">
        <div class="product-holder col-md-4">
            <div class="product-item text-center">
                <c:choose>
                    <c:when test="${empty prdct.img}">		
                        <img class="custom-img product-img img-responsive" src="${pageContext.request.contextPath}/resources/client/img/detailbig1.jpg" />		
                    </c:when>		
                    <c:otherwise>		
                        <img src="resources/images/${prdct.img}" alt="" class="custom-img img-responsive">		
                    </c:otherwise>   		
                </c:choose>
                <h3 class="product-title"><c:out value="${prdct.name}"></c:out></h3>
                    <div class="h4 product-price">
                        <span>$<c:out value="${prdct.price}"></c:out></span>
                    </div>
                    <div class="buttons-holder">
                        <a class="btn btn-default btn-quick-view hidden-xs eye-btn" name="${prdct.id}" rel="tooltip" title="Quick View" href=""><i class="fa fa-eye"></i></a>
                    <input type="hidden" name="productId" value="1" />
                    <a class="btn btn-danger btn-add-cart cart-btn" name="${prdct.id}" href="#" data-ajax-handler="shop:onAddToCart" data-ajax-update="#mini-cart=shop-minicart, #navbar-totals=shop-minicart-totals, #product-page=shop-product">Add to Cart</a>
                </div>
            </div>
        </div>
    </c:if>
</c:forEach>
<!-- *****  pagination ***** -->
<!--                    <div class="myPagination col-md-4 col-md-offset-8">
                        <ul class="pagination">
                            <li class="disabled"><a href="#">&laquo;</a></li>
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">&raquo;</a></li>
                        </ul>
                    </div>-->
<!-- *****  End pagination ***** -->
