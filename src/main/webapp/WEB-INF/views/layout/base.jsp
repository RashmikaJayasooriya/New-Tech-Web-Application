<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="D.U.R.P. Jayasooriya">
    <title>New-Tech | Home</title>
    <layout:block name="baseCss">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
              integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
              crossorigin="anonymous" referrerpolicy="no-referrer"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.0/font/bootstrap-icons.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
        <link rel="stylesheet" href="assets/frameworks/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/frameworks/css/style.css">
    </layout:block>
</head>

<body class="scrollbar" onload="toast();">
<div class="container-fluid p-0 overflow-hidden">
    <div class="row-fluid m-0">
        <!-- sales strip -->
        <div class="col-12">
            <img src="assets/images/salesStrip/topSaleStrip.jpg" alt="sale" class="ratio ratio-21x9">
        </div>
        <!-- header start -->
        <header>
            <div class="col-12">
                <div class="row mx-0">
                    <!-- User Strip Start -->
                    <div class="col-12 user-strip">
                        <div class="row d-flex flex-row float-end text-nowrap">
                            <div class="col order-sm-2">
                                <ul class="list-unstyled d-flex gap-3 m-0 py-2 justify-content-center">
                                    <li><a href="useraccount" class="text-white text-decoration-none"><i
                                            class="icon fa fa-user"></i>My Account</a></li>
                                    <li><a href="wishlist" class="text-white text-decoration-none"><i
                                            class="icon fa fa-heart"></i>Wishlist</a></li>
                                    <li><a href="cart" class="text-white text-decoration-none"><i
                                            class="icon fa fa-shopping-cart"></i>My Cart</a></li>
                                    <li><a href="purchasehistory"
                                           class="text-white text-decoration-none d-none d-sm-block"><i
                                            class="icon fa fa-check"></i>Purchased History</a></li>
                                    <li><a href="login" class="text-white text-decoration-none d-none d-sm-block"><i
                                            class="icon fa fa-lock"></i>Login</a></li>
                                </ul>
                            </div>
                            <div class="col">
                                <ul class="list-unstyled d-flex justify-content-center gap-2 m-0 py-2">
                                    <li class="dropdown dropdown-small">
                                        <a href="#" class="dropdown-toggle text-white text-decoration-none"
                                           data-bs-hover="dropdown" data-bs-toggle="dropdown"><span>LKR</span></a>
                                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-dark"
                                            style="max-width: 200px !important; min-width: 10px !important;">
                                            <li><a href="#" class="dropdown-item text-white">LKR</a></li>
                                            <li><a href="#" class="dropdown-item text-white">USD</a></li>
                                            <li><a href="#" class="dropdown-item text-white">GBP</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown dropdown-small">
                                        <a href="#" class="dropdown-toggle text-white text-decoration-none"
                                           data-bs-hover="dropdown" data-bs-toggle="dropdown"><span>English
                                                </span></a>
                                        <ul class="dropdown-menu  dropdown-menu-end dropdown-menu-dark"
                                            style="max-width: 200px !important; min-width: 10px !important;">
                                            <li><a href="#" class="dropdown-item text-white">English</a></li>
                                            <li><a href="#" class="dropdown-item text-white">Russian</a></li>
                                            <li><a href="#" class="dropdown-item text-white">German</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- USer Strip End -->
                    <!-- Header Start -->
                    <div class="col-12 col-sm-11 col-md-12 header-row">
                        <div class="row mt-1">
                            <div class="offset-0 offset-md-0 col-8 col-sm-4 col-md-2 pt-0 text-center order-1 header-logo-container">
                                <img src="assets/images/logo/New Tech (5).png" alt="logo" class="img-fluid"/>
                            </div>
                            <div class="col-12 col-sm-6 col-md-7 mt-sm-3 pt-2 order-4 order-sm-2 header-searchfield-container">
                                <div class="input-group mb-md-3 position-relative">
                                    <button class="dropdown-toggle searchfield-category  d-none d-sm-block fs-6"
                                            type="button" data-bs-toggle="dropdown" aria-expanded="false">All Category
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="#">Laptops</a></li>
                                        <li><a class="dropdown-item" href="#">Cellphones</a></li>
                                        <li><a class="dropdown-item" href="#">Camera</a></li>
                                        <li><a class="dropdown-item" href="#">Drones</a></li>
                                        <li><a class="dropdown-item" href="#">Consoles</a></li>
                                        <li><a class="dropdown-item" href="#">Smart Home</a></li>
                                    </ul>
                                    <input type="text" class="form-control searchfield-text"/>
                                    <a href="advancedsearch"
                                       class="text-decoration-none rounded-0 position-absolute"
                                       style="right: 42px; top: 0;"><span
                                            class="input-group-text searchfield-btn bg-white text-dark rounded-0"
                                            style="font-size: 10px; line-height: 12px;">Advanced</br>
                                        Search</span></a>
                                    <span class="input-group-text btn searchfield-btn position-absolute"
                                          style="right: 0px; top: 0px;"><i class="icon fa fa-search"></i></span>
                                </div>
                            </div>
                            <div class="col-2 col-sm-1 col-md-3 order-2 order-sm-3 header-minicart-container">
                                <div class="row">
                                    <div class="minicart-div">
                                            <span class="minicart-icon">
                                                <img src="assets/images/header/cart.png" alt="" width="50" height="50"
                                                     class="img-fluid"/>
                                            </span>
                                        <span class="minicart-num" id="topActionCartNumber"
                                              style="display: block;">2</span>
                                        <div class="d-inline d-md-none ms-5">
                                            <button class="navbar-toggler position-absolute ms-0 mt-2 toggle-btn shadow-none p-0"
                                                    type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#navbarScroll" aria-controls="navbarScroll"
                                                    aria-expanded="false" aria-label="Toggle navigation">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
                                                     fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
                                                    <path fill-rule="evenodd"
                                                          d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
                                                </svg>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="minicart-price-div d-none d-md-block">
                                        <div class="row">
                                            <div class="col-12 p-0 pt-1">
                                                <span class="fw-bold minicart-price-text">Your Cart</span>
                                            </div>
                                            <div class="col-12 p-0">
                                                <span class="minicart-price">$0.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Header End -->
                    <!-- Responsive Navbar Start -->
                    <div class="col-12 px-0">
                        <div class="row mx-0">
                            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                                <div class="container-fluid px-0">
                                    <div class="collapse navbar-collapse row position-relative mx-0" id="navbarScroll">
                                        <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll col-12 justify-content-between"
                                            style="--bs-scroll-height: 200px;">
                                            <li class="nav-item">
                                                <a class="nav-link nav-active" aria-current="page" href="#">Home</a>
                                            </li>
                                            <li class="nav-item dropdown" onmouseenter="drop();">
                                                <a class="nav-link dropdown-toggle" href="#"
                                                   id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown"
                                                   aria-expanded="false">
                                                    Laptop & Accessories
                                                </a>
                                                <ul class="dropdown-menu menu"
                                                    aria-labelledby="navbarScrollingDropdown">
                                                    <li><a class="dropdown-item" href="productlistning">Asus</a>
                                                    </li>
                                                    <li><a class="dropdown-item" href="productlistning">MSI</a>
                                                    </li>
                                                    <li><a class="dropdown-item" href="productlistning">Lenovo</a>
                                                    </li>
                                                    <li><a class="dropdown-item" href="productlistning">Dell</a>
                                                    </li>
                                                    <li><a class="dropdown-item" href="productlistning">HP</a>
                                                    </li>
                                                    <li><a class="dropdown-item" href="productlistning">Dynabook</a>
                                                    </li>
                                                    <li><a class="dropdown-item" href="productlistning">Apple</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle" href="#"
                                                   id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown"
                                                   aria-expanded="false">
                                                    Cellphones & Accessories
                                                </a>
                                                <ul class="dropdown-menu menu"
                                                    aria-labelledby="navbarScrollingDropdown">
                                                    <li><a class="dropdown-item" href="productlistning">Samsung</a>
                                                    </li>
                                                    <li><a class="dropdown-item" href="productlistning">Xiaomi</a>
                                                    </li>
                                                    <li><a class="dropdown-item" href="productlistning">Huawei</a>
                                                    </li>
                                                    <li><a class="dropdown-item" href="productlistning">Razor</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle" href="#"
                                                   id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown"
                                                   aria-expanded="false">
                                                    Cameras
                                                </a>
                                                <ul class="dropdown-menu menu"
                                                    aria-labelledby="navbarScrollingDropdown">
                                                    <li><a class="dropdown-item" href="productlistning">Nikon</a>
                                                    </li>
                                                    <li><a class="dropdown-item" href="productlistning">Canon</a>
                                                    </li>
                                                    <li><a class="dropdown-item" href="productlistning">Fujifilm</a>
                                                    </li>
                                                    <li><a class="dropdown-item" href="productlistning">Sony</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle" href="#"
                                                   id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown"
                                                   aria-expanded="false">
                                                    Drones
                                                </a>
                                                <ul class="dropdown-menu menu"
                                                    aria-labelledby="navbarScrollingDropdown">
                                                    <li><a class="dropdown-item" href="productlistning">DJI</a>
                                                    </li>
                                                    <li><a class="dropdown-item" href="productlistning">Yuneec</a>
                                                    </li>
                                                    <li><a class="dropdown-item" href="productlistning">Kespry.</a>
                                                    </li>
                                                    <li><a class="dropdown-item" href="productlistning">Autel
                                                        Robotics</a></li>
                                                </ul>
                                            </li>
                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle" href="#"
                                                   id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown"
                                                   aria-expanded="false">
                                                    Video Game Consoles
                                                </a>
                                                <ul class="dropdown-menu menu"
                                                    aria-labelledby="navbarScrollingDropdown">
                                                    <li><a class="dropdown-item"
                                                           href="productlistning">Microsoft</a></li>
                                                    <li><a class="dropdown-item" href="productlistning">Sony</a>
                                                    </li>
                                                    <li><a class="dropdown-item" href="productlistning">Nintendo</a>
                                                    </li>
                                                    <li><a class="dropdown-item" href="productlistning">Sega</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle" href="#"
                                                   id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown"
                                                   aria-expanded="false">
                                                    Smart Home
                                                </a>
                                                <ul class="dropdown-menu menu"
                                                    aria-labelledby="navbarScrollingDropdown">
                                                    <li><a class="dropdown-item" href="productlistning">Nest</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                           href="productlistning">SmartThings</a></li>
                                                    <li><a class="dropdown-item" href="productlistning">Philips
                                                        Hue</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </nav>
                        </div>
                    </div>
                    <!-- Responsive Navbar End -->
                </div>
            </div>
        </header>
        <!-- header end -->

        <!-- Body Start -->
        <layout:block name="contents"></layout:block>
        <!-- Body End -->


        <!-- Footter Start -->
        <div class="col-12">
            <footer class="text-light pt-5 pb-4 sticky-footer footer">
                <div class="row mx-0">
                    <div class="col-12 px-5 mb-3">
                        <div class="row">
                            <div class="col-12 text-center mb-4" style="line-height: 10px;">
                                <p class="text-light fs-4 fw-bold lh-1">SUBSCRIBE TO OUR NEWSLETTER</p>
                                <p class="text-secondary lh-1">Get the latest updates on new products and upcoming
                                    sales</p>
                                <div class="row">
                                    <div class="col-12 col-md-6 offset-md-3">
                                        <div class="input-group mb-3">
                                            <input type="text" class="form-control"
                                                   placeholder="Enter You Email Address"
                                                   aria-describedby="button-addon2">
                                            <button class="btn btn-outline-secondary" type="button" id="button-addon2">
                                                Submit
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-3 text-center text-md-start mb-3 mb-md-0">
                                <div class="row justify-content-center justify-content-md-start">
                                    <div class="col-12 py-2 ms-md-0 text-center mb-3">
                                        <img src="assets/images/logo/ezgif.com-gif-maker (1).gif" class="img-fluid">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <p style="text-align: justify;">
                                            Here we are the newTech.lk&trade; to support you for accomplish your
                                            desire by selling high quality products.
                                        </p>
                                    </div>
                                    <div class="col-12 ps-md-5 d-block d-md-none">
                                        <p>Follow us on Social Media</p>
                                    </div>
                                    <div class="col-12 ps-md-0">
                                        <ul class="list-unstyled  d-flex justify-content-md-evenly justify-content-center">
                                            <li class="mx-lg-0 mx-1">
                                                <a href="#" class="form-floating btn-sm text-primary card text-nuro"
                                                   style="font-size: 19px;">
                                                    <i class="bi bi-facebook px-1"></i>
                                                </a>
                                            </li>
                                            <li class="mx-lg-0 mx-1">
                                                <a href="#" class="form-floating btn-sm text-danger card text-nuro"
                                                   style="font-size: 19px;">
                                                    <i class="bi bi-youtube px-1"></i>
                                                </a>
                                            </li>
                                            <li class="mx-lg-0 mx-1">
                                                <a href="#" class="form-floating btn-sm text-info card text-nuro"
                                                   style="font-size: 19px;">
                                                    <i class="bi bi-twitter px-1"></i>
                                                </a>
                                            </li>
                                            <li class="mx-lg-0 mx-1">
                                                <a href="#" class="form-floating btn-sm text-danger card text-nuro"
                                                   style="font-size: 19px;">
                                                    <i class="bi bi-google px-1"></i>
                                                </a>
                                            </li>
                                            <li class="mx-lg-0 mx-1">
                                                <a href="#" class="form-floating btn-sm text-primary-50 card text-nuro"
                                                   style="font-size: 19px;">
                                                    <i class="bi bi-linkedin px-1"></i>
                                                </a>
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-3 d-none d-md-block">
                                <div class="row">
                                    <div class="col-12 ps-5 mb-3 border border-3 border-bottom-0 border-end-0 border-top-0 border-primary">
                                        <span class="fw-bold">Site Map</span>
                                    </div>
                                    <div class="col-12 text-white-50 ps-3  lh-lg">
                                        <ul style="list-style: none;">
                                            <li><a class="footerlink" href="index">Home</a></li>
                                            <li><a class="footerlink" href="wishlist">Wishlist</a></li>
                                            <li><a class="footerlink" href="cart">Cart</a></li>
                                            <li><a class="footerlink" href="invoice">Invoice</a></li>
                                            <li><a class="footerlink" href="purchasehistory">Purchase
                                                History</a></li>
                                            <li><a class="footerlink" href="advancedsearch">Advanced Search</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-3 d-none d-md-block">
                                <div class="row">
                                    <div class="col-12 ps-5 mb-3 border border-3 border-bottom-0 border-end-0 border-top-0 border-primary">
                                        <span class="fw-bold">Shop</span>
                                    </div>
                                    <div class="col-12 text-white-50 ps-3 lh-lg">
                                        <ul style="list-style: none;">
                                            <li><a class="footerlink" href="index">Electronics</a></li>
                                            <li><a class="footerlink" href="wishlist">Computers & Laptops</a>
                                            </li>
                                            <li><a class="footerlink" href="cart">Drones</a></li>
                                            <li><a class="footerlink" href="invoice">Earphones</a></li>
                                            <li><a class="footerlink" href="purchasehistory">Smart Phones</a>
                                            </li>
                                            <li><a class="footerlink" href="advancedSearch">Cameras</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-3 text-center text-md-start">
                                <div class="row">
                                    <div class="col-12 ps-4 mb-3 border border-3 border-bottom-0 border-end-0 border-top-0 border-primary d-none d-md-block">
                                        <span class="fw-bold">Contact</span>
                                    </div>
                                    <div class="col-12 mb-3 d-block d-md-none">
                                        <span class="fw-bold">Contact</span>
                                    </div>
                                    <div class="col-12 ps-0 ps-md-4  lh-lg" style="color: rgb(81, 150, 196);">
                                        <p>
                                            <i class="bi bi-house-fill pe-1"></i>Udahamullah, Nugegoda, Sri Lanka
                                        </p>
                                        <p>
                                            <i class="bi bi-envelope-fill pe-1"></i>newTech@gmail.com
                                        </p>
                                        <p>
                                            <i class="bi bi-telephone-fill pe-1"></i>+94243546724
                                        </p>
                                        <p>
                                            <i class="bi bi-printer-fill pe-1"></i>+94243546724
                                        </p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="col-12">
                        <div class="d-flex justify-content-center mb-5 px-3">
                            <img src="assets/images/otherAppImages/trust_551fa8e0-5f24-4fbc-bf22-74c01b859a01.webp"
                                 alt="" class="img-fluid">
                        </div>
                    </div>
                    <hr>
                    <div class="col-12 text-center">
                            <span>
                                Copyright &copy;2021 newTech All Rights Reserved.
                            </span>
                    </div>
                </div>
            </footer>
        </div>
        <!-- Footter End -->

        <!-- Cookie Accept Start -->
        <!-- <div class="position-fixed bottom-0 start-0 p-3" style="z-index: 11">
            <div class="toast show bg-dark text-white" role="alert" aria-live="assertive" aria-atomic="false" id="toast">
                <div class="toast-header bg-dark text-white">
                    <strong class="me-auto fs-5">Allow Cookies</strong>
                    <button type="button" class="btn-close" data-bs-dismiss="toast" style="color: whitesmoke !important; background-color: white;" onclick="closeToast();"></button>
                </div>
                <div class="toast-body d-grid">
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eveniet, magnam!</p>
                    <button class="btn btn-success btn-sm rounded-3" onclick="closeToast();">Allow Cookies</button>
                </div>
            </div>
        </div> -->
        <!-- Cookie Accept End -->

        <!-- Scrolltop button -->
        <button class="scroll-top-btn" onclick="toTop()" id="scrollTopBtn">
            <i class="bi bi-caret-up-fill"></i>
        </button>
    </div>
</div>
<!-- scripts for timer -->
<layout:block name="baseStyle">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="assets/frameworks/js/jquery.countdown.min.js"></script>
    <script>
        //Deal-Space-Timer
        $('[data-countdown]').each(function () {
            var $this = $(this),
                finalDate = $(this).data('countdown');
            $this.countdown(finalDate, function (event) {
                $this.html(event.strftime('<div class="col-3 me-0 px-0 deal-timer">' + '%D' + '<br></div>' +
                    '<div class="col-3 mx-0 px-0 deal-timer">' + '%H' + '<br></div>' +
                    '<div class="col-3 mx-0 px-0 deal-timer">' + '%M' + '<br></div>' +
                    '<div class="col-3 mx-0 px-0 deal-timer">' + '%S' + '<br></div>'));
            });
        });
    </script>
    <script src="assets/frameworks/js/bootstrap.bundle.min.js "></script>
    <script src="assets/frameworks/js/script.js "></script>
</layout:block>
</body>

</html>