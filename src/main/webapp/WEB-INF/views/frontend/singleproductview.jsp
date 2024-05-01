<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<layout:extends name="base">
    <layout:put block="baseCss" type="REPLACE">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.0/font/bootstrap-icons.css">
        <link rel="stylesheet" href="assets/frameworks/css/bootstrapV5.3.min.css">
        <link rel="stylesheet" href="assets/frameworks/css/style.css">
        <!-- product zoom -->
        <script src="assets/frameworks/js/jquery.js"></script>
        <script type="text/javascript" src="assets/frameworks/js/xzoom.min.js"></script>
        <link rel="stylesheet" type="text/css" href="assets/frameworks/css/xzoom.css" media="all" />
    </layout:put>
    <layout:put block="contents">
        <div class="container-fluid p-0">
            <div class="row-fluid m-0">
                <!-- BreadCrumb -->
                <div class="col-12 ps-4 my-3">
                    <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);"
                         aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0">
                            <li class="breadcrumb-item"><a href="/newtech/">Home</a></li>
                            <li class="breadcrumb-item"><a href="productlistning">Product Listning</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Single Product View</li>
                        </ol>
                    </nav>
                </div>
                <div class="col-12">
                    <div class="row d-flex justify-content-evenly mx-0">
                        <div class="row m-0 px-0">
                            <!-- Images section-->
                            <div class="col-xl-4 col-lg-5 col-md-6 mt-0 px-4">
                                <section id="lens">
                                    <div class="xzoom-container w-100">
                                        <img class="xzoom3 img-fluid w-100"
                                             src="assets/images/gallery/preview/01_b_car.jpg"
                                             xoriginal="assets/images/gallery/original/01_b_car.jpg"/>
                                        <div class="xzoom-thumbs mt-2 d-flex justify-content-center overflow-auto">
                                            <a href="assets/images/gallery/original/01_b_car.jpg"><img
                                                    class="xzoom-gallery3" width="80"
                                                    src="assets/images/gallery/thumbs/01_b_car.jpg"
                                                    xpreview="assets/images/gallery/preview/01_b_car.jpg"
                                                    title="The description goes here"></a>
                                            <a href="assets/images/gallery/original/02_o_car.jpg"><img
                                                    class="xzoom-gallery3" width="80"
                                                    src="assets/images/gallery/preview/02_o_car.jpg"
                                                    title="The description goes here"></a>
                                            <a href="assets/images/gallery/original/03_r_car.jpg"><img
                                                    class="xzoom-gallery3" width="80"
                                                    src="assets/images/gallery/preview/03_r_car.jpg"
                                                    title="The description goes here"></a>
                                            <a href="assets/images/gallery/original/04_g_car.jpg"><img
                                                    class="xzoom-gallery3" width="80"
                                                    src="assets/images/gallery/preview/04_g_car.jpg"
                                                    title="The description goes here"></a>
                                        </div>
                                    </div>
                                </section>
                            </div>
                            <!-- Middle section -->
                            <div class="col-xl-4 col-lg-4 col-md-6 px-xl-5">
                                <div class="row px-xl-5">
                                    <div class="col-12">
                                        <div class="row">
                                            <div class="col-12 mb-0 text-start">
                                                <div class="mb-0"><span
                                                        class="text-uppercase text-muted brand">Lenovo</span>
                                                    <h5 class="text-uppercase mb-0 fw-bold">Lenovo Legion 5 Pro</h5>
                                                </div>
                                                <div class="mx-1 d-inline-block">
                                                    <li class="fa fa-star mt-1 text-warning fs-6"></li>
                                                    <li class="fa fa-star mt-1 text-warning fs-6"></li>
                                                    <li class="fa fa-star mt-1 text-warning fs-6"></li>
                                                    <li class="fa fa-star mt-1 text-dark fs-6"></li>
                                                    <li class="fa fa-star mt-1 text-dark fs-6"></li>
                                                </div>

                                                <div class="mx-1 d-inline-block">
                                                    <a href="#" class="">Read Reviews</a>
                                                </div>
                                                <div>
                                                    <span class="text-decoration-line-through text-danger">Rs.200000</label></span>
                                                    <span>|20% off</span>
                                                    <span class="mx-1 fs-4">Rs.160000.00</span>
                                                </div>
                                            </div>
                                            <div class="col-12 text-start mt-3 mt-md-3 mb-5 mb-md-0">
                                                <div class="sizes mt-3">
                                                    <h6 class="text-uppercase mx-0">1.Color</h6> <label class="radio">
                                                    <input class="" type="radio" name="size" value="S" checked> <span
                                                        class="me-2">Grey</span> </label> <label class="radio">
                                                    <input class="" type="radio" name="size" value="M"> <span
                                                        class="me-2">Blue</span> </label><label class="radio">
                                                    <input class="" type="radio" name="size" value="L"> <span
                                                        class="me-2">Red</span> </label> <label class="radio">
                                                    <input class="" type="radio" name="size" value="XL"> <span
                                                        class="me-2"> Black</span> </label> <label class="radio">
                                                    <input class="" type="radio" name="size" value="XXL"> <span
                                                        class="me-2">White</span> </label>
                                                </div>
                                                <div class="sizes mt-2">
                                                    <h6 class="text-uppercase mx-0">2.RAM</h6> <label class="radio">
                                                    <input type="radio" name="size" value="S" checked> <span
                                                        class="me-2">4GB</span> </label> <label class="radio">
                                                    <input type="radio" name="size" value="M"> <span
                                                        class="me-2">8GB</span> </label><label class="radio">
                                                    <input type="radio" name="size" value="L"> <span
                                                        class="me-2">16GB</span>
                                                </div>
                                                <div class="sizes mt-2">
                                                    <h6 class="text-uppercase mx-0">3.HardDrive</h6> <label
                                                        class="radio">
                                                    <input type="radio" name="size" value="S" checked> <span
                                                        class="me-2">1TB SSD</span> </label> <label class="radio">
                                                    <input type="radio" name="size" value="M"> <span class="me-2">1TB
                                                        SSD</span> </label><label class="radio">
                                                    <input type="radio" name="size" value="L"> <span class="me-2">500GB
                                                        SSD + 500GB HDD</span>
                                                </div>
                                            </div>
                                            <!-- About product summary -->
                                            <div class="col-12 mt-2 mt-md-5">
                                                <div class="row">
                                                    <div class="col-12 text-start">
                                                    <span class="fs-5 bg-primary text-white" style="font-weight: 500;">&nbsp;Summary About
                                                        This Product:&nbsp;</span><br>
                                                    </div>
                                                    <div class="col-12 d-flex justify-content-start">
                                                        <ul class="mt-2" style="list-style: disc;">
                                                            <li><span class="text-primary">Brand :</span>
                                                                <span>Lenovo</span><br>
                                                            </li>
                                                            <li><span class="text-primary">Model:</span>
                                                                <span>Legion 5 15ACH6</span><br>
                                                            </li>
                                                            <li><span class="text-primary">Colour:</span>
                                                                <span>Jet Black</span><br>
                                                            </li>
                                                            <li><span class="text-primary">Deliver Fee
                                                                Within Colombo:</span>
                                                                <span>1000</span><br>
                                                            </li>
                                                            <li><span class="text-primary">Deliver Fee Out
                                                                Of Colombo:</span>
                                                                <span>2000</span><br>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End section -->
                            <div class="col-xl-4 col-lg-3 col-md-12 mt-3 mt-lg-0">
                                <div class="row p-xl-5 p-lg-0 p-md-4">
                                    <div class="col-12 product-price-view-div p-3">
                                        <div class="row">
                                            <div class="col-12 mb-3">
                                                <h5 class="text-danger">
                                                    Rs.160000.00
                                                </h5>
                                                <p class="my-1">&plus; Rs. 1000.00 Shipping</p>
                                                <p class="my-1">&equals; Rs. 161000.00 <b class="text-primary">Total</b>
                                                </p>
                                            </div>
                                            <div class="col-12">
                                                Est. Arrives : <b>July 20-26</b>
                                            </div>
                                            <div class="col-12 mt-3">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                     fill="currentColor" class="bi bi-geo-alt" viewBox="0 0 16 16">
                                                    <path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z"/>
                                                    <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                                                </svg>
                                                <a href="#">Deliver to Sri Lanka</a>
                                            </div>
                                            <div class="col-12 mb-1 d-grid lg-content  mt-4">
                                                <button class="btn btn-outline-danger"><i
                                                        class="bi bi-suit-heart-fill"></i> Add to Wishlist
                                                </button>
                                            </div>
                                            <div class="col-12 mb-1 d-grid lg-content">
                                                <button class="btn btn-outline-success"><i class="bi bi-cart3"></i> Add
                                                    to Chart
                                                </button>
                                            </div>
                                            <div class="col-12 mb-3 d-grid lg-content">
                                                <button class="buy-btn" id="payhere-payment" type="submit"><a
                                                        href="invoice"
                                                        class="text-decoration-none link-light fw-bold"><i
                                                        class="bi bi-bag-fill"></i> Buy Now</a></button>
                                            </div>
                                            <div class="col-12 lh-1 mb-2">
                                                <div class="row">
                                                    <div class="col-4 text-center">
                                                        <p><a href="#" class="link-danger text-decoration-none">100%
                                                            buyer satisfaction</a></p>
                                                    </div>
                                                    <div class="offset-1 col-3 text-center">
                                                        <p>
                                                            <a href="#"
                                                               class="link-success text-decoration-none">100</a><br>
                                                            items left
                                                        </p>
                                                    </div>
                                                    <div class="offset-1 col-2 text-center">
                                                        <p><a href="#" class="link-success text-decoration-none">216</a>
                                                            sold
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <p>Returns: Free 7 Day Returns | <a href="#" class="fs-6">see
                                                    details</a></p>
                                                <div class="d-flex">
                                                    <p class="my-auto">Payments:</p>
                                                    <div class="ms-4 mt-0">
                                                        <img class="img-fluid"
                                                             src="assets/images/paymentImages/american_express_img.png"
                                                             alt="">
                                                        <img class="img-fluid"
                                                             src="assets/images/paymentImages/mastercard_img.png"
                                                             alt="">
                                                        <img class="img-fluid"
                                                             src="assets/images/paymentImages/paypal_img.png" alt="">
                                                        <img class="img-fluid"
                                                             src="assets/images/paymentImages/visa_img.png" alt="">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Item specification -->
                <div class="col-12 mt-5">
                    <div class="row">
                        <div class="col-12 px-5">
                            <ul class="nav nav-tabs" id="singleProductViewTabs">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#review">Reviews</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#productDetails">Product Details</a>
                                </li>
                            </ul>

                            <div class="tab-content border border-1 row">
                                <div id="review" class="tab-pane fade show active">
                                    <div class="card-body">
                                        <div class="row clearfix g-2">
                                            <div class="col-lg-4 col-md-12">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <h2 class=" display-6 fw-bold mb-0">4.5</h2>
                                                        <small class="text-muted">based on 1,032 ratings</small>
                                                        <div class="d-flex align-items-center">
                                                        <span class="mb-2 me-3">
                                                            <a href="#" class="rating-link active"><i
                                                                    class="bi bi-star-fill text-warning"></i></a>
                                                            <a href="#" class="rating-link active"><i
                                                                    class="bi bi-star-fill text-warning"></i></a>
                                                            <a href="#" class="rating-link active"><i
                                                                    class="bi bi-star-fill text-warning"></i></a>
                                                            <a href="#" class="rating-link active"><i
                                                                    class="bi bi-star-fill text-warning"></i></a>
                                                            <a href="#" class="rating-link active"><i
                                                                    class="bi bi-star-half text-warning"></i></a>
                                                        </span>
                                                        </div>
                                                        <div class="progress-count mt-2">
                                                            <div class="d-flex justify-content-between align-items-center mb-1">
                                                                <h6 class="mb-0 fw-bold d-flex align-items-center">5<i
                                                                        class="bi bi-star-fill text-warning ms-1 small-11 pb-1"></i>
                                                                </h6>
                                                                <span class="small text-muted">661</span>
                                                            </div>
                                                            <div class="progress" style="height: 10px;">
                                                                <div class="progress-bar" role="progressbar"
                                                                     style="width: 92%" aria-valuenow="92"
                                                                     aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </div>
                                                        <div class="progress-count mt-2">
                                                            <div class="d-flex justify-content-between align-items-center mb-1">
                                                                <h6 class="mb-0 fw-bold d-flex align-items-center">4<i
                                                                        class="bi bi-star-fill text-warning ms-1 small-11 pb-1"></i>
                                                                </h6>
                                                                <span class="small text-muted">237</span>
                                                            </div>
                                                            <div class="progress" style="height: 10px;">
                                                                <div class="progress-bar" role="progressbar"
                                                                     style="width: 60%" aria-valuenow="60"
                                                                     aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </div>
                                                        <div class="progress-count mt-2">
                                                            <div class="d-flex justify-content-between align-items-center mb-1">
                                                                <h6 class="mb-0 fw-bold d-flex align-items-center">3<i
                                                                        class="bi bi-star-fill text-warning ms-1 small-11 pb-1"></i>
                                                                </h6>
                                                                <span class="small text-muted">76</span>
                                                            </div>
                                                            <div class="progress" style="height: 10px;">
                                                                <div class="progress-bar" role="progressbar"
                                                                     style="width: 40%" aria-valuenow="40"
                                                                     aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </div>
                                                        <div class="progress-count mt-2">
                                                            <div class="d-flex justify-content-between align-items-center mb-1">
                                                                <h6 class="mb-0 fw-bold d-flex align-items-center">2<i
                                                                        class="bi bi-star-fill text-warning ms-1 small-11 pb-1"></i>
                                                                </h6>
                                                                <span class="small text-muted">19</span>
                                                            </div>
                                                            <div class="progress" style="height: 10px;">
                                                                <div class="progress-bar" role="progressbar"
                                                                     style="width: 15%" aria-valuenow="15"
                                                                     aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </div>
                                                        <div class="progress-count mt-2">
                                                            <div class="d-flex justify-content-between align-items-center mb-1">
                                                                <h6 class="mb-0 fw-bold d-flex align-items-center">1<i
                                                                        class="bi bi-star-fill text-warning ms-1 small-11 pb-1"></i>
                                                                </h6>
                                                                <span class="small text-muted">39</span>
                                                            </div>
                                                            <div class="progress" style="height: 10px;">
                                                                <div class="progress-bar" role="progressbar"
                                                                     style="width: 10%" aria-valuenow="10"
                                                                     aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </div>
                                                        <div class="customer-like mt-5">
                                                            <h6 class="mb-0 fw-bold ">What Customers Like</h6>
                                                            <ul class="list-group mt-3">
                                                                <li class="list-group-item d-flex">
                                                                    <div class="number border-end pe-2 fw-bold">
                                                                        <strong class="color-light-success">1</strong>
                                                                    </div>
                                                                    <div class="cs-text flex-fill ps-2">
                                                                        <span>Fun Factor</span>
                                                                    </div>
                                                                    <div class="vote-text">
                                                                        <span class="text-muted">72 votes</span>
                                                                    </div>
                                                                </li>
                                                                <li class="list-group-item d-flex">
                                                                    <div class="number border-end pe-2 fw-bold">
                                                                        <strong class="color-light-success">2</strong>
                                                                    </div>
                                                                    <div class="cs-text flex-fill ps-2">
                                                                        <span>Great Value</span>
                                                                    </div>
                                                                    <div class="vote-text">
                                                                        <span class="text-muted">52 votes</span>
                                                                    </div>
                                                                </li>
                                                                <li class="list-group-item d-flex">
                                                                    <div class="number border-end pe-2 fw-bold">
                                                                        <strong class="color-light-success">3</strong>
                                                                    </div>
                                                                    <div class="cs-text flex-fill ps-2">
                                                                        <span>eBazar</span>
                                                                    </div>
                                                                    <div class="vote-text">
                                                                        <span class="text-muted">35 votes</span>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="customer-like mt-5">
                                                            <h6 class="mb-0 fw-bold ">What Need Improvement</h6>
                                                            <ul class="list-group mt-3">
                                                                <li class="list-group-item d-flex">
                                                                    <div class="number border-end pe-2 fw-bold">
                                                                        <strong class="color-careys-pink">1</strong>
                                                                    </div>
                                                                    <div class="cs-text flex-fill ps-2">
                                                                        <span>Value for Money</span>
                                                                    </div>
                                                                    <div class="vote-text">
                                                                        <span class="text-muted">12 votes</span>
                                                                    </div>
                                                                </li>
                                                                <li class="list-group-item d-flex">
                                                                    <div class="number border-end pe-2 fw-bold">
                                                                        <strong class="color-careys-pink">2</strong>
                                                                    </div>
                                                                    <div class="cs-text flex-fill ps-2">
                                                                        <span>Customer service</span>
                                                                    </div>
                                                                    <div class="vote-text">
                                                                        <span class="text-muted">8 votes</span>
                                                                    </div>
                                                                </li>
                                                                <li class="list-group-item d-flex">
                                                                    <div class="number border-end pe-2 fw-bold">
                                                                        <strong class="color-careys-pink">3</strong>
                                                                    </div>
                                                                    <div class="cs-text flex-fill ps-2">
                                                                        <span>Product Item</span>
                                                                    </div>
                                                                    <div class="vote-text">
                                                                        <span class="text-muted">2 votes</span>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-8 col-md-12">
                                                <ul class="list-unstyled mb-4">
                                                    <li class="card mb-2">
                                                        <div class="card-body p-lg-4 p-3">
                                                            <div class="d-flex mb-3 pb-3 border-bottom flex-wrap">
                                                                <img class="review-avatar rounded"
                                                                     src="assets/images/userProfImgs/three.jpeg" alt="">
                                                                <div class="flex-fill ms-3 text-truncate">
                                                                    <h6 class="mb-0"><span>Joan Dyer</span></h6>
                                                                    <span class="text-muted">3 hours ago</span>
                                                                </div>
                                                                <div class="d-flex align-items-center">
                                                                <span class="mb-2 me-3">
                                                                    <a href="#" class="rating-link active"><i
                                                                            class="bi bi-star-fill text-warning"></i></a>
                                                                    <a href="#" class="rating-link active"><i
                                                                            class="bi bi-star-fill text-warning"></i></a>
                                                                    <a href="#" class="rating-link active"><i
                                                                            class="bi bi-star-fill text-warning"></i></a>
                                                                    <a href="#" class="rating-link active"><i
                                                                            class="bi bi-star-fill text-warning"></i></a>
                                                                    <a href="#" class="rating-link active"><i
                                                                            class="bi bi-star-half text-warning"></i></a>
                                                                </span>
                                                                </div>
                                                            </div>
                                                            <div class="timeline-item-post">
                                                                <h6 class="">Top-Oculus VR</h6>
                                                                <p> A good fit for many households, this Oculus VR has a
                                                                    movable deli drawer and door shelves that can
                                                                    accommodate gallon containers.Though its low price
                                                                    means fewer features, this pick is quiet and an
                                                                    energy-saving option, resulting in a lower energy
                                                                    bill.</p>
                                                            </div>
                                                        </div>
                                                    </li> <!-- .Card End -->
                                                    <li class="card mb-2">
                                                        <div class="card-body p-lg-4 p-3">
                                                            <div class="d-flex mb-3 pb-3 border-bottom flex-wrap">
                                                                <img class="review-avatar rounded"
                                                                     src="assets/images/userProfImgs/three.jpeg" alt="">
                                                                <div class="flex-fill ms-3 text-truncate">
                                                                    <h6 class="mb-0"><span>Phil Glover</span></h6>
                                                                    <span class="text-muted">1 Day ago</span>
                                                                </div>
                                                                <div class="d-flex align-items-center">
                                                                <span class="mb-2 me-3">
                                                                    <a href="#" class="rating-link active"><i
                                                                            class="bi bi-star-fill text-warning"></i></a>
                                                                    <a href="#" class="rating-link active"><i
                                                                            class="bi bi-star-fill text-warning"></i></a>
                                                                    <a href="#" class="rating-link active"><i
                                                                            class="bi bi-star-fill text-warning"></i></a>
                                                                    <a href="#" class="rating-link active"><i
                                                                            class="bi bi-star-fill text-warning"></i></a>
                                                                    <a href="#" class="rating-link active"><i
                                                                            class="bi bi-star-half text-warning"></i></a>
                                                                </span>
                                                                </div>
                                                            </div>
                                                            <div class="timeline-item-post">
                                                                <h6 class="">Oculus VR Full 3D</h6>
                                                                <p>I purchased this Oculus from elsewhere, on last
                                                                    Dipawali. As this Oculus contains in-built DDB(
                                                                    means you need not to install a separate set-top
                                                                    box), there is less number of wire hanging around
                                                                    the set and single remote required. Great full HD
                                                                    picture quality. Sound quality of the set is far
                                                                    better than most of the sets of the so called big
                                                                    brands.</p>
                                                            </div>
                                                        </div>
                                                    </li> <!-- .Card End -->
                                                    <li class="card mb-2">
                                                        <div class="card-body p-lg-4 p-3">
                                                            <div class="d-flex mb-3 pb-3 border-bottom flex-wrap">
                                                                <img class="review-avatar rounded"
                                                                     src="assets/images/userProfImgs/three.jpeg" alt="">
                                                                <div class="flex-fill ms-3 text-truncate">
                                                                    <h6 class="mb-0"><span>Victor Rampling</span></h6>
                                                                    <span class="text-muted">5 Day ago</span>
                                                                </div>
                                                                <div class="d-flex align-items-center">
                                                                <span class="mb-2 me-3">
                                                                    <a href="#" class="rating-link active"><i
                                                                            class="bi bi-star-fill text-warning"></i></a>
                                                                    <a href="#" class="rating-link active"><i
                                                                            class="bi bi-star-fill text-warning"></i></a>
                                                                    <a href="#" class="rating-link active"><i
                                                                            class="bi bi-star-fill text-warning"></i></a>
                                                                    <a href="#" class="rating-link active"><i
                                                                            class="bi bi-star-fill text-warning"></i></a>
                                                                    <a href="#" class="rating-link active"><i
                                                                            class="bi bi-star-half text-warning"></i></a>
                                                                </span>
                                                                </div>
                                                            </div>
                                                            <div class="timeline-item-post">
                                                                <h6 class="">Oculus VR Wireless Bluetooth</h6>
                                                                <p>The build quality feels really premium.Sound quality
                                                                    is quite great compared to its price point.Sound
                                                                    quality is quite great compared to its price
                                                                    point.</p>
                                                                <div>
                                                                    <div class="d-flex mt-3 pt-3 border-top">
                                                                        <img class="avatar rounded"
                                                                             src="assets/images/xs/avatar12.svg" alt="">
                                                                        <div class="flex-fill ms-3 text-truncate">
                                                                            <p class="mb-0"><span>Karen Clark</span>
                                                                                <small class="msg-time text-muted">5 Day
                                                                                    ago</small></p>
                                                                            <span class="text-muted">Hd quality is quite great compared to its price point.</span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="mt-4">
                                                                    <textarea class="form-control"
                                                                              placeholder="Replay"></textarea>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li> <!-- .Card End -->
                                                </ul>
                                                <nav aria-label="...">
                                                    <ul class="pagination justify-content-end">
                                                        <li class="page-item disabled">
                                                            <span class="page-link">Previous</span>
                                                        </li>
                                                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                                                        <li class="page-item active" aria-current="page">
                                                            <span class="page-link">2</span>
                                                        </li>
                                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                        <li class="page-item">
                                                            <a class="page-link" href="#">Next</a>
                                                        </li>
                                                    </ul>
                                                </nav>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="productDetails" class="tab-pane fade">
                                    <div class="card-body">
                                        lorem1000
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Recomended -->
                <div class="col-12 px-4 mt-5">
                    <div class="row mx-0">
                        <!-- product head -->
                        <div class="col-12 product-space position-relative px-0 mb-4">
                            <span class="">Recomended to You</span>
                        </div>
                        <!-- product body -->
                        <div class="col-12 px-0 mb-4">
                            <div class="row mx-0  px-0 justify-content-between">
                                <c:forEach var="i" begin="0" end="5">
                                    <div class="product-card px-0 mx-0 mx-md-1">
                                        <a href="singleproductview" class="text-decoration-none">
                                            <div class="card">
                                                <img src="assets/images/products/Apple-12-Smartphones-491901535-i-1-1200Wx1200H-300Wx300H.jpg"
                                                     class="product-card-img" alt="...">
                                                <div class="col-5 d-inline-block product-grid">
                                                    <ul class="product-links">
                                                        <li class="product-link-li"><a href="wishlist"
                                                                                       class="product-link-a"><i
                                                                class="fa fa-heart"></i></a></li>
                                                        <li class="product-link-li"><a href="cart"
                                                                                       class="product-link-a"><i
                                                                class="fa fa-shopping-cart"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="card-body text-center">
                                                    <h6 class="card-title text-black">Huawei P30 Pro p30 p30 lite 128GB</h6>
                                                    <div class="mt-1">
                                                        <ul class="d-flex list-unstyled mb-1 justify-content-center">
                                                            <li><i class="fa fa-star rated"></i></li>
                                                            <li><i class="fa fa-star rated"></i></li>
                                                            <li><i class="fa fa-star rated"></i></li>
                                                            <li><i class="fa fa-star rated"></i></li>
                                                            <li><i class="fa fa-star"></i></li>
                                                            <li><span class="text-success">&nbsp;(899)</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <button class="product-btn text-white">
                                                        <span class="product-btn-text-one">Rs.5000.00</span>
                                                        <span class="product-btn-text-two">Buy Now</span>
                                                    </button>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </layout:put>
    <layout:put block="baseStyle" type="REPLACE">
        <script>
            function change_image(image) {

                var container = document.getElementById("main-image");

                container.src = image.src;
            }
            document.addEventListener("DOMContentLoaded", function(event) {});

            $(document).ready(function() {
                $("#singleProductViewTabs a").click(function(e) {
                    e.preventDefault();
                    $(this).tab('show');
                });
            });
        </script>
        <script src="assets/frameworks/js/script.js"></script>
        <script src="assets/frameworks/js/bootstrap.bundle.min.js"></script>
        <!-- product zoom -->
        <script src="assets/frameworks/js/setup.js"></script>
    </layout:put>
</layout:extends>