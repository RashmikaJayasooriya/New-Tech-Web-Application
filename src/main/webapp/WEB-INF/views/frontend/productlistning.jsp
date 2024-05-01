<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<layout:extends name="base">
    <layout:put block="contents">
        <!-- Body Start -->
        <div class="container-fluid p-0">
            <div class="row-fluid m-0">
                <div class="col-12">
                    <div class="row  mt-3">
                        <!-- BreadCrumb -->
                        <div class="col-6 ps-4 mt-2">
                            <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="/newtech/">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Product Listning</li>
                                </ol>
                            </nav>
                        </div>
                        <div class="col-6">
                            <button class="filter-btn btn float-end" style="box-shadow: none;">Filter <i class="bi bi-funnel-fill"></i></button>
                        </div>
                    </div>
                </div>
                <!-- BODY CONTENT START -->
                <div class="col-12 mb-4">
                    <div class="d-flex flex-row">
                        <div class="filter-canvas">
                            <!-- filter-canvas content here -->
                            <div class="row px-lg-4 px-3">
                                <div class="col-12 border border-1 border-dark py-3">
                                    <div class="row ps-2">
                                        <div class="col-12">
                                            <button class="btn btn-danger btn-sm float-end filter-canvas-close-btn">X</button>
                                        </div>
                                        <div class="col-12">
                                            <p class="fs-6 mb-1 fw-bold">Category</p>
                                            <ul class="text-secondary list-unstyled">
                                                <li> <span class="filter-sub-item">Electronics</span><br></li>
                                                <li> <span class="filter-sub-item">Mobile</span><br></li>
                                                <li> <span class="filter-sub-item">Drones</span><br></li>
                                                <li> <span class="filter-sub-item">Earphones</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-12">
                                            <div class="row">
                                                <p class="fs-6 mb-1 fw-bold">Price</p>
                                                <div class="col-4 mb-3 px-0">
                                                    <input type="email" class="form-control form-control-sm" id="exampleFormControlInput1" placeholder="Min.">
                                                </div>
                                                <div class="col-1 px-1">
                                                    <span>-</span>
                                                </div>
                                                <div class="col-4 mb-3 px-0">
                                                    <input type="email" class="form-control form-control-sm" id="exampleFormControlInput1" placeholder="Max.">
                                                </div>
                                                <div class="col-1">
                                                    <button class="btn border-0 px-0 mx-0" style="box-shadow: none;"><i class="bi bi-arrow-right-circle-fill"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12 text-nowrap">
                                            <p class="fs-6 mb-1 fw-bold">Model</p>
                                            <ul class="text-secondary list-unstyled">
                                                <li>
                                                    <div class="form-check filter-sub-item">
                                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                                        <label class="form-check-label" for="flexCheckDefault">
                                                            Default checkbox
                                                        </label>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="form-check filter-sub-item">
                                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                                        <label class="form-check-label" for="flexCheckDefault">
                                                            Default checkbox
                                                        </label>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="form-check filter-sub-item">
                                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                                        <label class="form-check-label" for="flexCheckDefault">
                                                            Default checkbox
                                                        </label>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-12">
                                            <div class="row">
                                                <div class="col-auto d-grid">
                                                    <button class="btn btn-primary btn-sm">Clear All</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="list-body bg-dark overflow-x-auto">
                            <!-- list-body content here -->
                            <div class="row px-3 mx-0">
                                <div class="col-12 border border-1 border-dark py-3">
                                    <div class="row">
                                        <div class="col-12 px-0 mb-4">
                                            <div class="row mx-0  px-0 justify-content-between">
                                                <c:set var="myList"
                                                       value="camera(0),console(0),laptop(0),mobile(0),drone(0),smartHome(0),camera(0),console(0),laptop(0),mobile(0)"/>

                                                <c:forEach items="${myList}" var="item">
                                                    <div class="productlist-card px-0 mx-0 mx-md-1">
                                                        <div class="col-12">
                                                            <div class="row"></div>
                                                        </div>
                                                        <a href="singleproductview" class="text-decoration-none">
                                                            <div class="card">
                                                                <div class="col-12" height="205">
                                                                    <img src="assets/images/products/${item}.jpeg" class="productlist-card-img" alt="...">
                                                                </div>

                                                                <div class="col-5 d-inline-block product-grid">
                                                                    <ul class="productlist-links">
                                                                        <li class="productlist-link-li"><a href="wishlist" class="productlist-link-a wishlist-selected"><i class="fa fa-heart"></i></a></li>
                                                                        <li class="productlist-link-li"><a href="cart" class="productlist-link-a cart-selected"><i class="fa fa-shopping-cart"></i></a></li>
                                                                    </ul>
                                                                </div>
                                                                <div class="card-body text-center">
                                                                    <h6 class="card-title text-black">New Xiaomi Redmi Note 11 Graphite</h6>
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
                    </div>
                </div>
                <!-- BODY CONTENT END -->
            </div>
        </div>
        <!-- Body End -->
    </layout:put>
</layout:extends>
