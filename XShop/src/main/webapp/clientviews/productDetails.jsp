<%-- 
    Document   : productDetails
    Created on : Mar 6, 2017, 12:46:42 PM
    Author     : Merna
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="col-md-9">

    <div class="row" id="productMain">
        <div class="col-sm-6">
            <div id="mainImage">
                <img src="img/detailbig1.jpg" alt="" class="img-responsive">
            </div>

        </div>
        <div class="col-sm-6">
            <div class="box">
                <h1 class="text-center">${requestScope.productObj.name}</h1>
                <p class="text-center">${requestScope.productObj.desc}</a>
                </p>

                <p class="price">${requestScope.productObj.price}</p>
               
                <c:choose>
                    <c:when test="${requestScope.productObj.stock gt 0}">
                        <p class="text-center" style="color: green;">IN STOCK</p>
                    </c:when>
                    <c:otherwise>
                        <p class="text-center" style="color: red;">OUT OF STOCK</p>
                    </c:otherwise>   
                </c:choose>

                <p class="text-center buttons">
                    <a href="basket.html" class="btn btn-primary <c:if test="${requestScope.productObj.stock lt 1}">disabled</c:if>" ><i class="fa fa-shopping-cart"></i> Add to cart</a>

                </p>


            </div>


        </div>

    </div>



</div>
<!-- /.col-md-9 -->