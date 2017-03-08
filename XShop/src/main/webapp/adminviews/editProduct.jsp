<%-- 
    Document   : editProduct
    Created on : Mar 7, 2017, 8:00:04 AM
    Author     : markoiti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Lumino - Dashboard</title>

        <link href="${pageContext.request.contextPath}/resources/admin/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/admin/css/bootstrap-table.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/admin/css/styles.css" rel="stylesheet">
        <style media="screen">
            .editbtn{
                border: 1px solid #30a5ff;
                background: transparent;
                color: #30a5ff;
                padding-top: 2px;
                padding-bottom: 2px;
            }
        </style>

        <!--Icons-->
        <script src="${pageContext.request.contextPath}/resources/admin/js/lumino.glyphs.js"></script>
        <!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

    </head>

    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="AdminHome"><span>XShop</span>Admin</a>
                    <ul class="user-menu">
                        <li class="dropdown pull-right">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Admin <span></span></a>
                    </ul>
                </div>

            </div>
            <!-- /.container-fluid -->
        </nav>

        <div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
            <form role="search">

            </form>
            <ul class="nav menu">
                <li><a href="AdminHome"><svg class="glyph stroked dashboard-dial"><use xlink:href="#stroked-dashboard-dial"></use></svg> Dashboard</a></li>
                <li class="active"><a href="GetAllProducts"><svg class="glyph stroked tag"><use xlink:href="#stroked-tag"/></svg>
                        Products</a></li>
                <li><a href="GetAllUsers"><svg class="glyph stroked male user "><use xlink:href="#stroked-male-user"/></svg>
                        Users</a></li>
                <li><a href="GetAllOrders"><svg class="glyph stroked bag"><use xlink:href="#stroked-bag"></use></svg>
                        Orders</a></li>


            </ul>

        </div>
        <!--/.sidebar-->

        <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Products</h1>
                </div>
            </div>
            <!--/.row-->




            <div class="row">
                <div class="col-md-12">

                    <div class="panel panel-default chat">
                        <div class="panel-heading" id="accordion"><svg class="glyph stroked tag"><use xlink:href="#stroked-tag"/></svg> Edit Product </div>

                        <div class="col-md-12">
                            <div class="panel panel-default">
                                <div class="" style="padding: 20px">

                                    <form class="" action="UpdateProduct" method="post" enctype="multipart/form-data">
                                        <input type="hidden" name="productId" value="${requestScope.productObj.id}">
                                        <input type="hidden" name="productActive" value="${requestScope.productObj.active}">
                                        <div class="form-group">
                                            <label>Product Name</label>
                                            <input name="productName" class="form-control" value="${requestScope.productObj.name}" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Product Description</label>
                                            <textarea name="productDescription" class="form-control" rows="3"  required>${requestScope.productObj.desc}</textarea>
                                        </div>

                                        <div class="col-md-12">

                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Price</label>
                                                    <div class="input-group">
                                                        <div class="input-group-addon">$</div>
                                                        <input type="number" min="0" class="form-control" name="productPrice" id="exampleInputAmount" value="${requestScope.productObj.price}" required>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Stock</label>
                                                    <input type="number" min="0" class="form-control" name="productStock" value="${requestScope.productObj.stock}" required>
                                                </div>
                                            </div>

                                        </div>


                                        <div class="col-md-12">
                                            <div class="col-md-6">
                                                <label>Category</label>
                                                <input class="form-control" name="productCategory" value="${requestScope.productObj.category}" required>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Upload an  image </label>
                                                    <input type="file" name="productImg" size="60" />
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="text-center" style="margin-top: 20px;">
                                                <!-- <div class="form-group"> -->
                                                <button class="btn btn-primary" type="submit" name="save">Save Changes</button>
                                                <a href="GetAllProducts" class="btn btn-primary" name="cancel" style="margin-left: 10px;">Cancel</a>
                                                <!-- </div> -->

                                            </div>
                                        </div>

                                        <div class="text-center" style="margin-top: 50px;">
                                            <!-- <div class="form-group"> -->
                                            <div style="color: transparent">format</div>
                                            <!-- </div> -->

                                        </div>
                                        <input type="hidden" name="" value="">



                                    </form>

                                </div>

                            </div>

                        </div>
                    </div>

                </div>

            </div>

            <!--/.row-->
        </div>
        <!--/.main-->

        <script src="${pageContext.request.contextPath}/resources/admin/js/jquery-1.11.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/admin/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/admin/js/chart.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/admin/js/chart-data.js"></script>
        <script src="${pageContext.request.contextPath}/resources/admin/js/easypiechart.js"></script>
        <script src="${pageContext.request.contextPath}/resources/admin/js/easypiechart-data.js"></script>
        <script src="${pageContext.request.contextPath}/resources/admin/js/bootstrap-datepicker.js"></script>
        <script src="${pageContext.request.contextPath}/resources/admin/js/bootstrap-table.js"></script>
        <script>
            $('#calendar').datepicker({});

            !function ($) {
                $(document).on("click", "ul.nav li.parent > a > span.icon", function () {
                    $(this).find('em:first').toggleClass("glyphicon-minus");
                });
                $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
            }(window.jQuery);

            $(window).on('resize', function () {
                if ($(window).width() > 768)
                    $('#sidebar-collapse').collapse('show')
            })
            $(window).on('resize', function () {
                if ($(window).width() <= 767)
                    $('#sidebar-collapse').collapse('hide')
            })
        </script>
    </body>

</html>