<%@ page import="com.newtech.util.HibernateUtil" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en" data-bs-theme="auto">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="D.U.R.P. Jayasooriya">
    <title>New Tech Admin</title>
    <!--Bootstrap CSS--V5.3-->
    <link rel="stylesheet" href="assets/frameworks/css/bootstrapV5.3.min.css">
    <!--Bootstrap icons-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <!--Font awesome icons-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- Custom styles -->
    <link href="assets/admin/Admin.css" rel="stylesheet">
</head>

<body onload="productAdd.click" class="scrollbar">
<div class="container-fluid p-0">
    <div class="row m-0">
        <div class="col-12 p-0">
            <nav class="navbar navbar-dark navbar-custom mb-0" aria-label="Dark offcanvas navbar">
                <div class="container-fluid">
                    <%--     admin head bar start             --%>
                        <div class="bg-light mt-2 ms-md-3 ms-1"><img src="assets/images/logo/New Tech (6).png"></div>
                        <div class="col-6 d-none d-md-block">
                            <form class="d-flex" role="search">
                                <div class="input-group">
                                    <span class="input-group-text mx-0 pe-1 border-0" id="basic-addon1"><i class="bi bi-search"></i></span>
                                    <input type="search" class="form-control form-control-sm border-0" style="box-shadow: none;" placeholder="Search..." aria-label="search" aria-describedby="search">
                                </div>
                            </form>
                        </div>
                        <ul class="list-unstyled d-flex gap-3 m-0 justify-content-center">
                            <li>
                                <a class="icon-link link-light fs-5 mt-2" type="button" id="offcanvasLink" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbarDark" aria-controls="offcanvasNavbarDark" aria-label="Toggle navigation">
                                    <i class="bi bi-grid-3x3-gap-fill"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class=" icon-link link-light fs-5 mt-2">
                                    <i class="bi bi-bell-fill"></i>
                                </a>
                            </li>
                            <li>
                                <div class=" bg-danger rounded-circle overflow-hidden bg-danger">
                                    <a href="#">
                                        <img src="assets/images/userProfImgs/one.jpeg" class="rounded-circle" style="width: 45px;">
                                    </a>
                                </div>
                            </li>
                            <li><a href="adminlogin" class="icon-link link-light fs-5 mt-2">
                                <i class="bi bi-box-arrow-right"></i>
                            </a>
                            </li>
                        </ul>
                    <%--     admin head bar end               --%>
                    <%--     admin offcanvas menu start             --%>
                        <div class="offcanvas offcanvas-start text-bg-dark" tabindex="-1" id="offcanvasNavbarDark" aria-labelledby="offcanvasNavbarDarkLabel">
                            <div class="offcanvas-header">

                                <button type="button" class="btn-close btn-close-white ms-auto" data-bs-dismiss="offcanvas" aria-label="Close">
                                </button>
                            </div>
                            <div class="offcanvas-body">
                                <ul class="navbar-nav justify-content-end flex-grow-1 pe-3 lh-lg" style="font-size: 18px;">
                                    <li class="nav-item">
                                        <a class="nav-link active" aria-current="page" href="#" id="dashboard"><i class="fa-solid fa-house"></i> &nbsp;&nbsp; Dashboard</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" aria-current="page" href="#" id="customerManagement"><i class="fa-solid fa-user-gear"></i> &nbsp; Customers Management</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-bs-toggle="collapse" aria-current="page" href="#productcollapse" role="button" aria-expanded="false" aria-controls="collapseExample"><i class="bi bi-box-seam-fill"></i> &nbsp;&nbsp; Product Management</a>
                                        <div class="collapse" id="productcollapse">
                                            <div class="collapse-div">
                                                <ul class="collapse-div-items text-light">
                                                    <li><a class="collapse-div-item" href="#" id="productCategory">Product Category Setup</a></li>
                                                    <li><a class="collapse-div-item" href="#" id="productDetails">Product Details</a></li>
                                                    <li><a class="collapse-div-item" href="#" id="productAdd">Product Add</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" aria-current="page" href="#"><i class="fa-solid fa-briefcase"></i> &nbsp;&nbsp; General Management</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" aria-current="page" href="#"><i class="fa-solid fa-cart-shopping"></i> &nbsp;&nbsp; Order Management</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" aria-current="page" href="#"><i class="fa-solid fa-pen"></i>
                                            &nbsp;&nbsp; Content Management</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" aria-current="page" href="#"><i class="fa-regular fa-folder-open"></i> &nbsp;&nbsp; Reports
                                            Management</a>
                                    </li>

                                </ul>
                            </div>
                        </div>
                    <%--     admin offcanvas menu end               --%>
                </div>
            </nav>
        </div>
        <!-- dashboard part start -->
        <jsp:include page="dashboardPartOfAdmin.jsp" />
        <!-- dashboard part end -->
        <!-- customer body start -->
        <jsp:include page="customerPartOfAdmin.jsp" />
        <!-- customer body end -->
        <!-- product category setup start -->
        <jsp:include page="productCategoryPartOfAdmin.jsp" />
        <!-- product category setup end -->
        <!-- product body start -->
        <jsp:include page="productDetailsPartOfAdmin.jsp" />
        <!-- product body end -->
        <!-- product add body start -->
        <jsp:include page="productAddPartOfAdmin.jsp" />
        <!-- product add body end -->
    </div>
</div>


<!--Popper JS-->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"></script>
<!--Bootstrap JS--V5.3-->
<script src="assets/frameworks/js/bootstrapV5.3.bundle.min.js"></script>
<!--Apexcharts JS-->
<!-- <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script> -->
<script src="assets/frameworks/js/apexcharts.js"></script>
<script src="assets/admin/Admin.js"></script>


</body>

</html>