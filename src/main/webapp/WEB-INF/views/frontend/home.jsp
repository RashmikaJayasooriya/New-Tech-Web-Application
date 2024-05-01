<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.newtech.util.HibernateUtil" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="com.newtech.model.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%
    Session session1 = HibernateUtil.getSessionFactory().openSession();
    List<Product> product_l = session1.createQuery("select l from Product l LEFT JOIN l.subCategory.categoryValue c where c.id=: id", Product.class).setParameter("id",4).getResultList();
    pageContext.setAttribute("laptops",product_l);
    session1.close();
%>

<layout:extends name="base">
    <layout:put block="contents">
        <!-- Carousel Start -->
        <div class="col-12">
            <div class="row mx-0">
                <!-- Carousel Start -->
                <div class="col-12 mt-2 text-center carousel-wrapper">
                    <div class="row">
                        <div id="homeMainSlide" class="carousel slide mb-1" data-bs-ride="carousel"
                             data-bs-pause="false">
                            <div class="carousel-indicators">
                                <button type="button" data-bs-target="#homeMainSlide" data-bs-slide-to="0"
                                        class="active" aria-current="true" aria-label="Slide 1"></button>
                                <button type="button" data-bs-target="#homeMainSlide" data-bs-slide-to="1"
                                        aria-label="Slide 2"></button>
                                <button type="button" data-bs-target="#homeMainSlide" data-bs-slide-to="2"
                                        aria-label="Slide 3"></button>
                                <button type="button" data-bs-target="#homeMainSlide" data-bs-slide-to="3"
                                        aria-label="Slide 4"></button>
                                <button type="button" data-bs-target="#homeMainSlide" data-bs-slide-to="4"
                                        aria-label="Slide 5"></button>
                            </div>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <div class="ratio" style="--bs-aspect-ratio: 33%;">
                                        <img src="assets/images/MainSlide/6.jpg" alt="slide_image-2"
                                             class="d-block w-100">
                                    </div>
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5 class="animate__animated animate__lightSpeedInRight  animate__delay-1s">
                                            Graff Collection</h5>
                                        <h3
                                                class="carousel-caption-description animate__animated animate__heartBeat  animate__delay-1s">
                                            LENOVO LEGION SERIES<br>NEW GAMING EXPERIENCE</h3>
                                        <h5
                                                class="carousel-caption-price animate__animated animate__backInLeft  animate__delay-1s">
                                            Price Only: $300</h5>
                                        <!-- <button class=" btn carousel-caption-btn animate__animated animate__bounceIn  animate__delay-1s">SHOP -->
                                        <!-- NOW</button> -->
                                        <button class="bg-transparent border-0 mt-3">
                                            <div class="carousel-caption-btn"><a href="#">SHOP NOW</a></div>
                                        </button>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="ratio" style="--bs-aspect-ratio: 33%;">
                                        <img src="assets/images/MainSlide/10.jpg" alt="slide_image-3"
                                             class="d-block w-100">
                                    </div>
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5 class="animate__animated animate__lightSpeedInRight  animate__delay-1s">
                                            Step Ahead Technology</h5>
                                        <h3
                                                class="carousel-caption-description animate__animated animate__heartBeat  animate__delay-1s">
                                            NIKON 2.0 COLLECTION <br>DIRECTMARKET</h3>
                                        <h5
                                                class="carousel-caption-price animate__animated animate__backInLeft  animate__delay-1s">
                                            Price Only: $300</h5>
                                        <button class="bg-transparent border-0 mt-3">
                                            <div class="carousel-caption-btn"><a href="#">SHOP NOW</a></div>
                                        </button>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="ratio" style="--bs-aspect-ratio: 33%;">
                                        <img src="assets/images/MainSlide/11.jpg" alt="slide_image-1"
                                             class="d-block w-100">
                                    </div>

                                    <div class="carousel-caption d-none d-md-block">
                                        <h5 class="animate__animated animate__lightSpeedInRight  animate__delay-1s">
                                            Save up to $300</h5>
                                        <h3
                                                class="carousel-caption-description animate__animated animate__heartBeat  animate__delay-1s">
                                            INSTANTLY ON THE <br>GALAXY S8 AND NOTES</h3>
                                        <h5
                                                class="carousel-caption-price animate__animated animate__backInLeft  animate__delay-1s">
                                            Price Only: $300</h5>
                                        <button class="bg-transparent border-0 mt-3">
                                            <div class="carousel-caption-btn"><a href="#">SHOP NOW</a></div>
                                        </button>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="ratio" style="--bs-aspect-ratio: 33%;">
                                        <img src="assets/images/MainSlide/4.jpg" alt="slide_image-3"
                                             class="d-block w-100">
                                    </div>
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5 class="animate__animated animate__lightSpeedInRight  animate__delay-1s">
                                            Highly Trusted</h5>
                                        <h3
                                                class="carousel-caption-description animate__animated animate__heartBeat  animate__delay-1s">
                                            ELECTRONIC ACCESSORIES <br>NEW TECHNOLOGY</h3>
                                        <h5
                                                class="carousel-caption-price animate__animated animate__backInLeft  animate__delay-1s">
                                            Price Only: $300</h5>
                                        <button class="bg-transparent border-0 mt-3">
                                            <div class="carousel-caption-btn"><a href="#">SHOP NOW</a></div>
                                        </button>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="ratio" style="--bs-aspect-ratio: 33%;">
                                        <img src="assets/images/MainSlide/5.jpg" alt="slide_image-3"
                                             class="d-block w-100">
                                    </div>
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5 class="animate__animated animate__lightSpeedInRight  animate__delay-1s">
                                            Suit For New Generation</h5>
                                        <h3
                                                class="carousel-caption-description animate__animated animate__heartBeat  animate__delay-1s">
                                            SMART ACCESSORIES <br>NEW-TECH</h3>
                                        <h5
                                                class="carousel-caption-price animate__animated animate__backInLeft  animate__delay-1s">
                                            Price Only: $300</h5>
                                        <button class="bg-transparent border-0 mt-3">
                                            <div class="carousel-caption-btn"><a href="#">SHOP NOW</a></div>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#homeMainSlide"
                                    data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#homeMainSlide"
                                    data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                </div>
                <!-- Carousel End -->
            </div>
        </div>
        <!-- Carousel End -->
        <!-- Body Start -->
        <div class="col-12 mt-3">
            <div class="row m-0 px-3">
                <!-- Left Start -->
                <div class="col-xl-2 col-md-3 left-space px-0 pe-3">
                    <div class="row mx-1 mx-sm-5 mx-md-0">
                        <div class="col-12 px-0 order-1 order-md-0">
                            <div class="row mx-0">
                                <!-- deals -->
                                <div class="col-12 deal-space position-relative px-0 mb-4">
                                    <span>Deal of the week</span>
                                </div>
                                <!-- deal body -->
                                <div class="col-12 px-0 mb-4">
                                    <div id="dealSlide" class="carousel slide" data-bs-ride="carousel"
                                         data-bs-pause="hover" data-bs-interval="4000" dat-bs-touch="true">
                                        <div class="carousel-inner">
                                            <c:forEach var="i" begin="0" end="9">
                                                <c:choose>
                                                    <c:when test="${i == 0}">
                                                        <div class="carousel-item active deal-product-container">
                                                            <div class="card d-none d-md-block">
                                                                <div class="card-body">
                                                                    <h5 class="card-title">Camera</h5>
                                                                    <h6 class="card-subtitle mb-2 text-muted">Blue Yeti
                                                                        USB
                                                                        Microphone Blackout Edition</h6>
                                                                    <div class="position-relative deal-product-space mb-3">
                                                                        <img src="assets/images/products/product(${i}).jpeg"
                                                                             alt="deal_product-1" class="card-img">
                                                                        <div class="deal-product"><span>-</span>$25
                                                                        </div>
                                                                    </div>
                                                                    <span class="product-currentprice">Rs.1900.00</span>
                                                                    <span class="product-beforeprice"
                                                                          style="font-size: 13px;">Rs.2900.00</span>
                                                                    <div class="mt-1">
                                                                        <ul class="d-flex list-unstyled">
                                                                            <li><i class="fa fa-star rated"></i></li>
                                                                            <li><i class="fa fa-star rated"></i></li>
                                                                            <li><i class="fa fa-star rated"></i></li>
                                                                            <li><i class="fa fa-star rated"></i></li>
                                                                            <li><i class="fa fa-star"></i></li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="col-12 text-center"
                                                                         style="font-size:15px;">
                                                                        <div data-countdown="2023/03/23"
                                                                             class="row px-0">
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-12 text-center"
                                                                         style="font-size:15px;">
                                                                        <div class="row px-0">
                                                                            <span class="col-3 mx-0 px-0">Day</span>
                                                                            <span class="col-3 mx-0 px-0">Hour</span>
                                                                            <span class="col-3 mx-0 px-0">Min</span>
                                                                            <span class="col-3 mx-0 px-0">Sec</span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="card d-block d-md-none">
                                                                <div class="row g-0">
                                                                    <div class="col-7">
                                                                        <div class="card-body">
                                                                            <h5 class="card-title">Camera</h5>
                                                                            <h6 class="card-subtitle mb-2 text-muted">
                                                                                Blue Yeti
                                                                                USB Microphone Blackout Edition</h6>
                                                                            <span class="product-currentprice"
                                                                                  style="font-size: 20px;">Rs.1900.00</span>
                                                                            <span class="product-beforeprice"
                                                                                  style="font-size: 14px;">Rs.2900.00</span>
                                                                            <div class="mt-1">
                                                                                <ul class="d-flex list-unstyled m-0"
                                                                                    style="font-size: 20px;">
                                                                                    <li><i class="fa fa-star rated"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-star rated"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-star rated"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-star rated"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-star"></i></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-5 my-auto p-1">
                                                                        <div class="position-relative deal-product-space">
                                                                            <img src="assets/images/products/product(${i}).jpeg"
                                                                                 alt="Dproduct" class="card-img">
                                                                            <div class="deal-product"><span>-</span>$25
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-12 px-4">
                                                                        <div class="col-12 text-center"
                                                                             style="font-size:15px;">
                                                                            <div data-countdown="2023/03/25"
                                                                                 class="row px-0">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-12 text-center"
                                                                             style="font-size:15px;">
                                                                            <div class="row px-0">
                                                                                <span class="col-3 mx-0 px-0">Day</span>
                                                                                <span class="col-3 mx-0 px-0">Hour</span>
                                                                                <span class="col-3 mx-0 px-0">Min</span>
                                                                                <span class="col-3 mx-0 px-0">Sec</span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <div class="carousel-item deal-product-container">
                                                            <div class="card d-none d-md-block">
                                                                <div class="card-body">
                                                                    <h5 class="card-title">Camera</h5>
                                                                    <h6 class="card-subtitle mb-2 text-muted">Blue Yeti
                                                                        USB
                                                                        Microphone Blackout Edition</h6>
                                                                    <div class="position-relative deal-product-space mb-3">
                                                                        <img src="assets/images/products/product(${i}).jpeg"
                                                                             alt="deal_product-1" class="card-img">
                                                                        <div class="deal-product"><span>-</span>$25
                                                                        </div>
                                                                    </div>
                                                                    <span class="product-currentprice">Rs.1900.00</span>
                                                                    <span class="product-beforeprice"
                                                                          style="font-size: 13px;">Rs.2900.00</span>
                                                                    <div class="mt-1">
                                                                        <ul class="d-flex list-unstyled">
                                                                            <li><i class="fa fa-star rated"></i></li>
                                                                            <li><i class="fa fa-star rated"></i></li>
                                                                            <li><i class="fa fa-star rated"></i></li>
                                                                            <li><i class="fa fa-star rated"></i></li>
                                                                            <li><i class="fa fa-star"></i></li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="col-12 text-center"
                                                                         style="font-size:15px;">
                                                                        <div data-countdown="2023/03/23"
                                                                             class="row px-0">
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-12 text-center"
                                                                         style="font-size:15px;">
                                                                        <div class="row px-0">
                                                                            <span class="col-3 mx-0 px-0">Day</span>
                                                                            <span class="col-3 mx-0 px-0">Hour</span>
                                                                            <span class="col-3 mx-0 px-0">Min</span>
                                                                            <span class="col-3 mx-0 px-0">Sec</span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="card d-block d-md-none">
                                                                <div class="row g-0">
                                                                    <div class="col-7">
                                                                        <div class="card-body">
                                                                            <h5 class="card-title">Camera</h5>
                                                                            <h6 class="card-subtitle mb-2 text-muted">
                                                                                Blue Yeti
                                                                                USB Microphone Blackout Edition</h6>
                                                                            <span class="product-currentprice"
                                                                                  style="font-size: 20px;">Rs.1900.00</span>
                                                                            <span class="product-beforeprice"
                                                                                  style="font-size: 14px;">Rs.2900.00</span>
                                                                            <div class="mt-1">
                                                                                <ul class="d-flex list-unstyled m-0"
                                                                                    style="font-size: 20px;">
                                                                                    <li><i class="fa fa-star rated"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-star rated"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-star rated"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-star rated"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-star"></i></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-5 my-auto p-1">
                                                                        <div class="position-relative deal-product-space">
                                                                            <img src="assets/images/products/product(${i}).jpeg"
                                                                                 alt="Dproduct" class="card-img">
                                                                            <div class="deal-product"><span>-</span>$25
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-12 px-4">
                                                                        <div class="col-12 text-center"
                                                                             style="font-size:15px;">
                                                                            <div data-countdown="2023/03/25"
                                                                                 class="row px-0">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-12 text-center"
                                                                             style="font-size:15px;">
                                                                            <div class="row px-0">
                                                                                <span class="col-3 mx-0 px-0">Day</span>
                                                                                <span class="col-3 mx-0 px-0">Hour</span>
                                                                                <span class="col-3 mx-0 px-0">Min</span>
                                                                                <span class="col-3 mx-0 px-0">Sec</span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- information div -->
                        <div class="col-12 px-0 order-0 order-md-1 mb-3">
                            <div class="row mx-0">
                                <!-- info -->
                                <div class="col-12 px-0 border border-secondary">
                                    <div class="info-div-container scrollbar">
                                        <div class="info-div">
                                            <div class="row mx-0 px-2">
                                                <div
                                                        class="col-3 col-sm-3 col-md-12 info-space px-1 text-sm-center text-md-start">
                                                    <div class="row py-3">
                                                        <div
                                                                class="col-3 col-sm-12 col-md-3 text-center my-auto px-1 mb-sm-2 mb-md-0">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="30"
                                                                 height="30" fill="currentColor"
                                                                 class="bi bi-file-earmark-text" viewBox="0 0 16 16">
                                                                <path
                                                                        d="M5.5 7a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5zM5 9.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm0 2a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5z"/>
                                                                <path
                                                                        d="M9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V4.5L9.5 0zm0 1v2A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5z"/>
                                                            </svg>
                                                        </div>
                                                        <div
                                                                class="col-7 col-sm-12 col-md-9 my-auto px-0 px-sm-1 lh-sm info-desc">
                                                            <span>FREE DELIVERY</span><br>
                                                            <span>On order over Rs.50.00</span>
                                                        </div>
                                                        <div class="col-1 d-block d-sm-none">
                                                            <div class="vertical-line"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div
                                                        class="col-3 col-sm-3 col-md-12 info-space px-1 text-sm-center text-md-start">
                                                    <div class="row py-3">
                                                        <div
                                                                class="col-3 col-sm-12 col-md-3 text-center my-auto px-1 mb-sm-2 mb-md-0">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="30"
                                                                 height="30" fill="currentColor"
                                                                 class="bi bi-shield-shaded" viewBox="0 0 16 16">
                                                                <path fill-rule="evenodd"
                                                                      d="M8 14.933a.615.615 0 0 0 .1-.025c.076-.023.174-.061.294-.118.24-.113.547-.29.893-.533a10.726 10.726 0 0 0 2.287-2.233c1.527-1.997 2.807-5.031 2.253-9.188a.48.48 0 0 0-.328-.39c-.651-.213-1.75-.56-2.837-.855C9.552 1.29 8.531 1.067 8 1.067v13.866zM5.072.56C6.157.265 7.31 0 8 0s1.843.265 2.928.56c1.11.3 2.229.655 2.887.87a1.54 1.54 0 0 1 1.044 1.262c.596 4.477-.787 7.795-2.465 9.99a11.775 11.775 0 0 1-2.517 2.453 7.159 7.159 0 0 1-1.048.625c-.28.132-.581.24-.829.24s-.548-.108-.829-.24a7.158 7.158 0 0 1-1.048-.625 11.777 11.777 0 0 1-2.517-2.453C1.928 10.487.545 7.169 1.141 2.692A1.54 1.54 0 0 1 2.185 1.43 62.456 62.456 0 0 1 5.072.56z"/>
                                                            </svg>
                                                        </div>
                                                        <div
                                                                class="col-7 col-sm-12 col-md-9 my-auto px-1 lh-sm info-desc">
                                                            <span>ORDER PROTECTION</span><br>
                                                            <span>Encrypt Information</span>
                                                        </div>
                                                        <div class="col-1 d-block d-sm-none">
                                                            <div class="vertical-line"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div
                                                        class="col-3 col-sm-3 col-md-12 info-space px-1 text-sm-center text-md-start">
                                                    <div class="row py-3">
                                                        <div
                                                                class="col-3 col-sm-12 col-md-3 text-center my-auto px-1 mb-sm-2 mb-md-0">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="30"
                                                                 height="30" fill="currentColor"
                                                                 class="bi bi-gift-fill" viewBox="0 0 16 16">
                                                                <path
                                                                        d="M3 2.5a2.5 2.5 0 0 1 5 0 2.5 2.5 0 0 1 5 0v.006c0 .07 0 .27-.038.494H15a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h2.038A2.968 2.968 0 0 1 3 2.506V2.5zm1.068.5H7v-.5a1.5 1.5 0 1 0-3 0c0 .085.002.274.045.43a.522.522 0 0 0 .023.07zM9 3h2.932a.56.56 0 0 0 .023-.07c.043-.156.045-.345.045-.43a1.5 1.5 0 0 0-3 0V3zm6 4v7.5a1.5 1.5 0 0 1-1.5 1.5H9V7h6zM2.5 16A1.5 1.5 0 0 1 1 14.5V7h6v9H2.5z"/>
                                                            </svg>
                                                        </div>
                                                        <div
                                                                class="col-7 col-sm-12 col-md-9 my-auto px-1 lh-sm info-desc">
                                                            <span>PROMOTION GIFTS</span><br>
                                                            <span>Special offers!</span>
                                                        </div>
                                                        <div class="col-1 d-block d-sm-none">
                                                            <div class="vertical-line"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div
                                                        class="col-3 col-sm-3 col-md-12 px-1 text-sm-center text-md-start">
                                                    <div class="row py-3">
                                                        <div
                                                                class="col-3 col-sm-12 col-md-3 text-center my-auto px-1 mb-sm-2 mb-md-0">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="30"
                                                                 height="30" fill="currentColor"
                                                                 class="bi bi-cash-coin" viewBox="0 0 16 16">
                                                                <path fill-rule="evenodd"
                                                                      d="M11 15a4 4 0 1 0 0-8 4 4 0 0 0 0 8zm5-4a5 5 0 1 1-10 0 5 5 0 0 1 10 0z"/>
                                                                <path
                                                                        d="M9.438 11.944c.047.596.518 1.06 1.363 1.116v.44h.375v-.443c.875-.061 1.386-.529 1.386-1.207 0-.618-.39-.936-1.09-1.1l-.296-.07v-1.2c.376.043.614.248.671.532h.658c-.047-.575-.54-1.024-1.329-1.073V8.5h-.375v.45c-.747.073-1.255.522-1.255 1.158 0 .562.378.92 1.007 1.066l.248.061v1.272c-.384-.058-.639-.27-.696-.563h-.668zm1.36-1.354c-.369-.085-.569-.26-.569-.522 0-.294.216-.514.572-.578v1.1h-.003zm.432.746c.449.104.655.272.655.569 0 .339-.257.571-.709.614v-1.195l.054.012z"/>
                                                                <path
                                                                        d="M1 0a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h4.083c.058-.344.145-.678.258-1H3a2 2 0 0 0-2-2V3a2 2 0 0 0 2-2h10a2 2 0 0 0 2 2v3.528c.38.34.717.728 1 1.154V1a1 1 0 0 0-1-1H1z"/>
                                                                <path
                                                                        d="M9.998 5.083 10 5a2 2 0 1 0-3.132 1.65 5.982 5.982 0 0 1 3.13-1.567z"/>
                                                            </svg>
                                                        </div>
                                                        <div
                                                                class="col-7 col-sm-12 col-md-9 my-auto px-1 lh-sm info-desc">
                                                            <span>MONEY BACK</span><br>
                                                            <span>Return over 30 days</span>
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
                </div>
                <!-- Left End -->
                <!-- Right Start -->
                <div class="col-xl-10 col-md-9 overflow-hidden rightSpace">
                    <div class="row mx-0">
                        <div class="col-12 px-0">
                            <div class="row mx-0">
                                <!-- top categories head -->
                                <div class="col-12 top-category-space position-relative px-0 mb-4">
                                    <span class="">Top Categories</span>
                                </div>
                                <!-- top categories body-->
                                <div class="col-12 px-0 mb-5">
                                    <div class="top-category-container  d-xl-flex justify-content-center scrollbar">
                                        <div class="top-category py-2">
                                            <div class="row mx-0">
                                                <div class="col-2">
                                                    <a href="productlistning"
                                                       class="text-decoration-none link-dark">
                                                        <div class="card text-center">
                                                            <img class="card-img" alt="top category image"
                                                                 src="assets/images/products/product(12).jpeg"
                                                                 height="145px">
                                                            <span class="card-header">Laptops</span>
                                                        </div>
                                                    </a>
                                                </div>
                                                <div class="col-2">
                                                    <a href="productlistning"
                                                       class="text-decoration-none link-dark">
                                                        <div class="card text-center">
                                                            <img class="card-img" alt="top category image"
                                                                 src="assets/images/products/product(0).jpeg"
                                                                 height="145px">
                                                            <span class="card-header">Cellphones</span>
                                                        </div>
                                                    </a>
                                                </div>
                                                <div class="col-2">
                                                    <a href="productlistning"
                                                       class="text-decoration-none link-dark">
                                                        <div class="card text-center">
                                                            <img class="card-img" alt="top category image"
                                                                 src="assets/images/products/product(4).jpeg"
                                                                 height="145px">
                                                            <span class="card-header">Cameras</span>
                                                        </div>
                                                    </a>
                                                </div>
                                                <div class="col-2">
                                                    <a href="productlistning"
                                                       class="text-decoration-none link-dark">
                                                        <div class="card text-center">
                                                            <img class="card-img" alt="top category image"
                                                                 src="assets/images/products/product(5).jpeg"
                                                                 height="145px">
                                                            <span class="card-header">Drones</span>
                                                        </div>
                                                    </a>
                                                </div>
                                                <div class="col-2">
                                                    <a href="productlistning"
                                                       class="text-decoration-none link-dark">
                                                        <div class="card text-center">
                                                            <img class="card-img" alt="top category image"
                                                                 src="assets/images/products/product(7).jpeg"
                                                                 height="145px">
                                                            <span class="card-header">Consoles</span>
                                                        </div>
                                                    </a>
                                                </div>
                                                <div class="col-2">
                                                    <a href="productlistning"
                                                       class="text-decoration-none link-dark">
                                                        <div class="card text-center">
                                                            <img class="card-img" alt="top category image"
                                                                 src="assets/images/products/product(16).jpeg"
                                                                 height="145px">
                                                            <span class="card-header">Smart Home</span>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 px-0">
                            <div class="row mx-0">
                                <!-- best rated head -->
                                <div class="col-12 best-rated-space position-relative px-0 mb-4">
                                    <span class="">Best Rated Items</span>
                                    <div class="float-end">
                                        <a class="mb-3 text-decoration-none" href="#bestRatedItems" role="button"
                                           data-bs-slide="prev">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="23" height="23"
                                                 fill="#00154c" class="bi bi-arrow-left-square-fill"
                                                 viewBox="0 0 16 16">
                                                <path
                                                        d="M16 14a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12zm-4.5-6.5H5.707l2.147-2.146a.5.5 0 1 0-.708-.708l-3 3a.5.5 0 0 0 0 .708l3 3a.5.5 0 0 0 .708-.708L5.707 8.5H11.5a.5.5 0 0 0 0-1z"/>
                                            </svg>
                                        </a>
                                        <a class="mb-3 " href="#bestRatedItems" role="button" data-bs-slide="next">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="23" height="23"
                                                 fill="#00154c" class="bi bi-arrow-right-square-fill"
                                                 viewBox="0 0 16 16">
                                                <path
                                                        d="M0 14a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2a2 2 0 0 0-2 2v12zm4.5-6.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5a.5.5 0 0 1 0-1z"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <!-- best rated body -->
                                <div class="col-12 px-0 mb-4">
                                    <div class="row mx-0">
                                        <div id="bestRatedItems" class="carousel slide px-1" data-bs-ride="carousel"
                                             data-bs-interval="false">
                                            <div class="carousel-inner px-1">

                                                <c:forEach var="i" begin="0" end="6">
                                                    <c:choose>
                                                        <c:when test="${i == 0}">
                                                            <!-- Code to execute when i == 0 (first iteration) -->
                                                            <div class="carousel-item active">
                                                                <div class="row px-2">
                                                                    <div class="col-12 col-lg-6 px-0">
                                                                        <div class="card mb-3 shadow"
                                                                             style="max-width: 525px;">
                                                                            <div class="row g-0">
                                                                                <div
                                                                                        class="offset-3 offset-md-0 col-6 col-md-4 my-auto overflow-hidden">
                                                                                    <img src="assets/images/products/product(<c:out value="${i}" />).jpeg"
                                                                                         class="best-rated-img rounded-start"
                                                                                         alt="...">
                                                                                </div>
                                                                                <div class="col-md-8">
                                                                                    <div class="card-body">
                                                                                        <h5 class="card-title">Samsung
                                                                                            Galaxy
                                                                                            S10+ Plus G975U1 Sprint
                                                                                            Verizon</h5>
                                                                                        <div class="mt-1">
                                                                                            <ul
                                                                                                    class="d-flex list-unstyled mb-1">
                                                                                                <li><i
                                                                                                        class="fa fa-star rated"></i>
                                                                                                </li>
                                                                                                <li><i
                                                                                                        class="fa fa-star rated"></i>
                                                                                                </li>
                                                                                                <li><i
                                                                                                        class="fa fa-star rated"></i>
                                                                                                </li>
                                                                                                <li><i
                                                                                                        class="fa fa-star rated"></i>
                                                                                                </li>
                                                                                                <li>
                                                                                                    <i class="fa fa-star"></i>
                                                                                                </li>
                                                                                                <li><span
                                                                                                        class="text-success">&nbsp;(899)</span>
                                                                                                </li>
                                                                                                <li><span
                                                                                                        class="mx-2"><i
                                                                                                        class="fa-solid fa-ellipsis-vertical"></i></span>
                                                                                                </li>
                                                                                                <li><span><i
                                                                                                        class="fa-brands fa-gripfire"
                                                                                                        data-bs-toggle="popover"
                                                                                                        data-bs-trigger="hover focus"
                                                                                                        data-bs-content="Current Views: 213"></i></span>
                                                                                                </li>
                                                                                                <li><span
                                                                                                        class="mx-2"><i
                                                                                                        class="fa-solid fa-ellipsis-vertical"></i></span>
                                                                                                </li>
                                                                                                <li><span><i
                                                                                                        class="fa-brands fa-product-hunt"
                                                                                                        data-bs-toggle="popover"
                                                                                                        data-bs-trigger="hover focus"
                                                                                                        data-bs-content="Sold: 627"></i></span>
                                                                                                </li>
                                                                                            </ul>
                                                                                        </div>
                                                                                        <span
                                                                                                class="product-currentprice fs-5">Rs.5000.00</span>
                                                                                        <div class="row mt-2">
                                                                                            <div class="col-12">
                                                                                                <div class="row">
                                                                                                    <div
                                                                                                            class="col-4 d-grid pe-0">
                                                                                                        <button
                                                                                                                class="btn btn-sm product-outline shadow-none">
                                                                                                            <i
                                                                                                                    class="fa-solid fa-bag-shopping"></i><span
                                                                                                                class="d-inline d-lg-none d-xl-inline">
                                                                                                        Buy
                                                                                                        Now</span>
                                                                                                        </button>
                                                                                                    </div>
                                                                                                    <div
                                                                                                            class="col-5 d-grid ps-2">
                                                                                                        <button
                                                                                                                class="btn btn-sm product-outline shadow-none">
                                                                                                            <i
                                                                                                                    class="fa-solid fa-cart-shopping"></i><span
                                                                                                                class="d-inline d-lg-none d-xl-inline">
                                                                                                        Add to
                                                                                                        Cart</span>
                                                                                                        </button>
                                                                                                    </div>
                                                                                                    <div
                                                                                                            class="col-3 d-grid ps-0">
                                                                                                        <button
                                                                                                                class="btn btn-sm product-outline shadow-none">
                                                                                                            <i
                                                                                                                    class="fa-solid fa-heart"></i><span
                                                                                                                class="d-inline d-lg-none d-xl-inline">
                                                                                                        Fav</span>
                                                                                                        </button>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-12 col-lg-6 px-0">
                                                                        <div class="card mb-3 shadow"
                                                                             style="max-width: 525px;">
                                                                            <div class="row g-0">
                                                                                <div
                                                                                        class="offset-3 offset-md-0 col-6 col-md-4">
                                                                                    <img src="assets/images/products/product(<c:out value="${i+1}" />).jpeg"
                                                                                         class="best-rated-img rounded-start"
                                                                                         alt="...">
                                                                                </div>
                                                                                <div class="col-md-8">
                                                                                    <div class="card-body">
                                                                                        <h5 class="card-title">Samsung
                                                                                            Galaxy
                                                                                            S10+ Plus G975U1 Sprint
                                                                                            Verizon
                                                                                        </h5>
                                                                                        <div class="mt-1">
                                                                                            <ul
                                                                                                    class="d-flex list-unstyled mb-1">
                                                                                                <li><i
                                                                                                        class="fa fa-star rated"></i>
                                                                                                </li>
                                                                                                <li><i
                                                                                                        class="fa fa-star rated"></i>
                                                                                                </li>
                                                                                                <li><i
                                                                                                        class="fa fa-star rated"></i>
                                                                                                </li>
                                                                                                <li><i
                                                                                                        class="fa fa-star rated"></i>
                                                                                                </li>
                                                                                                <li>
                                                                                                    <i class="fa fa-star"></i>
                                                                                                </li>
                                                                                                <li><span
                                                                                                        class="text-success">&nbsp;(899)</span>
                                                                                                </li>
                                                                                                <li><span
                                                                                                        class="mx-2"><i
                                                                                                        class="fa-solid fa-ellipsis-vertical"></i></span>
                                                                                                </li>
                                                                                                <li><span><i
                                                                                                        class="fa-brands fa-gripfire"
                                                                                                        data-bs-toggle="popover"
                                                                                                        data-bs-trigger="hover focus"
                                                                                                        data-bs-content="Current Views: 213"></i></span>
                                                                                                </li>
                                                                                                <li><span
                                                                                                        class="mx-2"><i
                                                                                                        class="fa-solid fa-ellipsis-vertical"></i></span>
                                                                                                </li>
                                                                                                <li><span><i
                                                                                                        class="fa-brands fa-product-hunt"
                                                                                                        data-bs-toggle="popover"
                                                                                                        data-bs-trigger="hover focus"
                                                                                                        data-bs-content="Sold: 627"></i></span>
                                                                                                </li>
                                                                                            </ul>
                                                                                        </div>
                                                                                        <span
                                                                                                class="product-currentprice fs-5">Rs.5000.00</span>
                                                                                        <div class="row mt-2">
                                                                                            <div class="col-12">
                                                                                                <div class="row">
                                                                                                    <div
                                                                                                            class="col-4 d-grid pe-0">
                                                                                                        <button
                                                                                                                class="btn btn-sm product-outline">
                                                                                                            <i
                                                                                                                    class="fa-solid fa-bag-shopping"></i><span
                                                                                                                class="d-inline d-lg-none d-xl-inline">
                                                                                                        Buy
                                                                                                        Now</span>
                                                                                                        </button>
                                                                                                    </div>
                                                                                                    <div
                                                                                                            class="col-5 d-grid ps-2">
                                                                                                        <button
                                                                                                                class="btn btn-sm product-outline">
                                                                                                            <i
                                                                                                                    class="fa-solid fa-cart-shopping"></i><span
                                                                                                                class="d-inline d-lg-none d-xl-inline">
                                                                                                        Add to
                                                                                                        Cart</span>
                                                                                                        </button>
                                                                                                    </div>
                                                                                                    <div
                                                                                                            class="col-3 d-grid ps-0">
                                                                                                        <button
                                                                                                                class="btn btn-sm product-outline">
                                                                                                            <i
                                                                                                                    class="fa-solid fa-heart"></i><span
                                                                                                                class="d-inline d-lg-none d-xl-inline">
                                                                                                        Fav</span>
                                                                                                        </button>
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
                                                            </div>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <!-- Code to execute for subsequent iterations (i != 0) -->
                                                            <div class="carousel-item">
                                                                <div class="row px-2">
                                                                    <div class="col-12 col-md-6 px-0">
                                                                        <div class="card mb-3 shadow"
                                                                             style="max-width: 525px;">
                                                                            <div class="row g-0">
                                                                                <div
                                                                                        class="offset-3 offset-md-0 col-6 col-md-4">
                                                                                    <img src="assets/images/products/product(<c:out value="${i}" />).jpeg"
                                                                                         class="best-rated-img rounded-start"
                                                                                         alt="...">
                                                                                </div>
                                                                                <div class="col-md-8">
                                                                                    <div class="card-body">
                                                                                        <h5 class="card-title">Samsung
                                                                                            Galaxy
                                                                                            S10+ Plus G975U1 Sprint
                                                                                            Verizon
                                                                                        </h5>
                                                                                        <div class="mt-1">
                                                                                            <ul
                                                                                                    class="d-flex list-unstyled mb-1">
                                                                                                <li><i
                                                                                                        class="fa fa-star rated"></i>
                                                                                                </li>
                                                                                                <li><i
                                                                                                        class="fa fa-star rated"></i>
                                                                                                </li>
                                                                                                <li><i
                                                                                                        class="fa fa-star rated"></i>
                                                                                                </li>
                                                                                                <li><i
                                                                                                        class="fa fa-star rated"></i>
                                                                                                </li>
                                                                                                <li>
                                                                                                    <i class="fa fa-star"></i>
                                                                                                </li>
                                                                                                <li><span
                                                                                                        class="text-success">&nbsp;(899)</span>
                                                                                                </li>
                                                                                                <li><span
                                                                                                        class="mx-2"><i
                                                                                                        class="fa-solid fa-ellipsis-vertical"></i></span>
                                                                                                </li>
                                                                                                <li><span><i
                                                                                                        class="fa-brands fa-gripfire"
                                                                                                        data-bs-toggle="popover"
                                                                                                        data-bs-trigger="hover focus"
                                                                                                        data-bs-content="Current Views: 213"></i></span>
                                                                                                </li>
                                                                                                <li><span
                                                                                                        class="mx-2"><i
                                                                                                        class="fa-solid fa-ellipsis-vertical"></i></span>
                                                                                                </li>
                                                                                                <li><span><i
                                                                                                        class="fa-brands fa-product-hunt"
                                                                                                        data-bs-toggle="popover"
                                                                                                        data-bs-trigger="hover focus"
                                                                                                        data-bs-content="Sold: 627"></i></span>
                                                                                                </li>
                                                                                            </ul>
                                                                                        </div>
                                                                                        <span
                                                                                                class="product-currentprice fs-5">Rs.5000.00</span>
                                                                                        <div class="row mt-2">
                                                                                            <div class="col-12">
                                                                                                <div class="row">
                                                                                                    <div
                                                                                                            class="col-4 d-grid pe-0">
                                                                                                        <button
                                                                                                                class="btn btn-sm product-outline">
                                                                                                            <i
                                                                                                                    class="fa-solid fa-bag-shopping"></i>
                                                                                                            Buy Now
                                                                                                        </button>
                                                                                                    </div>
                                                                                                    <div
                                                                                                            class="col-5 d-grid ps-2">
                                                                                                        <button
                                                                                                                class="btn btn-sm product-outline">
                                                                                                            <i
                                                                                                                    class="fa-solid fa-cart-shopping"></i>
                                                                                                            Add to
                                                                                                            Cart
                                                                                                        </button>
                                                                                                    </div>
                                                                                                    <div
                                                                                                            class="col-3 d-grid ps-0">
                                                                                                        <button
                                                                                                                class="btn btn-sm product-outline">
                                                                                                            <i
                                                                                                                    class="fa-solid fa-heart"></i>
                                                                                                            Fav
                                                                                                        </button>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6 px-0">
                                                                        <div class="card mb-3 shadow"
                                                                             style="max-width: 525px;">
                                                                            <div class="row g-0">
                                                                                <div
                                                                                        class="offset-3 offset-md-0 col-6 col-md-4">
                                                                                    <img src="assets/images/products/product(<c:out value="${i+1}" />).jpeg"
                                                                                         class="best-rated-img rounded-start"
                                                                                         alt="...">
                                                                                </div>
                                                                                <div class="col-md-8">
                                                                                    <div class="card-body">
                                                                                        <h5 class="card-title">Samsung
                                                                                            Galaxy
                                                                                            S10+ Plus G975U1 Sprint
                                                                                            Verizon
                                                                                        </h5>
                                                                                        <div class="mt-1">
                                                                                            <ul
                                                                                                    class="d-flex list-unstyled mb-1">
                                                                                                <li><i
                                                                                                        class="fa fa-star rated"></i>
                                                                                                </li>
                                                                                                <li><i
                                                                                                        class="fa fa-star rated"></i>
                                                                                                </li>
                                                                                                <li><i
                                                                                                        class="fa fa-star rated"></i>
                                                                                                </li>
                                                                                                <li><i
                                                                                                        class="fa fa-star rated"></i>
                                                                                                </li>
                                                                                                <li>
                                                                                                    <i class="fa fa-star"></i>
                                                                                                </li>
                                                                                                <li><span
                                                                                                        class="text-primary">&nbsp;(899)</span>
                                                                                                </li>
                                                                                                <li><span
                                                                                                        class="mx-2"><i
                                                                                                        class="fa-solid fa-ellipsis-vertical"></i></span>
                                                                                                </li>
                                                                                                <li><span><i
                                                                                                        class="fa-brands fa-gripfire"></i></span>
                                                                                                </li>
                                                                                                <li><span
                                                                                                        class="mx-2"><i
                                                                                                        class="fa-solid fa-ellipsis-vertical"></i></span>
                                                                                                </li>
                                                                                                <li><span><i
                                                                                                        class="fa-brands fa-product-hunt"></i></span>
                                                                                                </li>
                                                                                            </ul>
                                                                                        </div>
                                                                                        <span
                                                                                                class="product-currentprice fs-5">Rs.5000.00</span>
                                                                                        <div class="row mt-2">
                                                                                            <div class="col-12">
                                                                                                <div class="row">
                                                                                                    <div
                                                                                                            class="col-4 d-grid pe-0">
                                                                                                        <button
                                                                                                                class="btn btn-sm product-outline">
                                                                                                            <i
                                                                                                                    class="fa-solid fa-bag-shopping"></i>
                                                                                                            Buy Now
                                                                                                        </button>
                                                                                                    </div>
                                                                                                    <div
                                                                                                            class="col-5 d-grid ps-2">
                                                                                                        <button
                                                                                                                class="btn btn-sm product-outline">
                                                                                                            <i
                                                                                                                    class="fa-solid fa-cart-shopping"></i>
                                                                                                            Add to
                                                                                                            Cart
                                                                                                        </button>
                                                                                                    </div>
                                                                                                    <div
                                                                                                            class="col-3 d-grid ps-0">
                                                                                                        <button
                                                                                                                class="btn btn-sm product-outline">
                                                                                                            <i
                                                                                                                    class="fa-solid fa-heart"></i>
                                                                                                            Fav
                                                                                                        </button>
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
                                                            </div>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:forEach>


                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 px-0">
                            <div class="row mx-0">
                                <!-- ADs -->
                                <div class="col-12">
                                    <div class="ratio" style="--bs-aspect-ratio: 17%;">
                                        <img src="assets/images/banners/ASUS-TUF-Gaming-FX505DY_Hero-Banner_Gold-Steel_PC_2000x720.webp"
                                             style="object-fit: cover;" alt="advertisement">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Right End -->
            </div>
            <div class="row m-0 px-4 mt-3">
                <div class="col-12 px-0">
                    <div class="row mx-0">
                        <!-- new arrivals head -->
                        <div class="col-12 new-arrival-space position-relative px-0 mb-4">
                            <span class="">New Arrivals</span>
                        </div>
                        <!-- new arrivals body -->
                        <div class="col-12 px-0 mb-4">
                            <div class="row mx-0  px-0 justify-content-between">

                                <c:set var="myList"
                                       value="camera(0),console(0),laptop(0),mobile(0),drone(0),smartHome(0)"/>

                                <c:forEach items="${myList}" var="item">
                                    <div class="product-card px-0 mx-0 mx-md-1">
                                        <a href="singleproductview" class="text-decoration-none">
                                            <div class="card">
                                                <div class="col-12" height="205">
                                                    <img src="assets/images/products/${item}.jpeg"
                                                         class="product-card-img" alt="Product Image">
                                                </div>

                                                <div class="col-5 d-inline-block product-grid">
                                                    <ul class="product-links">
                                                        <li class="product-link-li"><a href="wishlist"
                                                                                       class="product-link-a wishlist-selected"><i
                                                                class="fa fa-heart"></i></a></li>
                                                        <li class="product-link-li"><a href="cart"
                                                                                       class="product-link-a cart-selected"><i
                                                                class="fa fa-shopping-cart"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="card-body text-center">
                                                    <h6 class="card-title text-black">New Xiaomi Redmi Note 11 Graphite
                                                    </h6>
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

                                <c:forEach items="${myList}" var="item">
                                    <div class="product-card px-0 mx-0 mx-md-1">
                                        <a href="singleproductview" class="text-decoration-none">
                                            <div class="card">
                                                <div class="col-12" height="205">
                                                    <img src="assets/images/products/${item}.jpeg"
                                                         class="product-card-img" alt="Product Image">
                                                </div>

                                                <div class="col-5 d-inline-block product-grid">
                                                    <ul class="product-links">
                                                        <li class="product-link-li"><a href="wishlist"
                                                                                       class="product-link-a wishlist-selected"><i
                                                                class="fa fa-heart"></i></a></li>
                                                        <li class="product-link-li"><a href="cart"
                                                                                       class="product-link-a cart-selected"><i
                                                                class="fa fa-shopping-cart"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="card-body text-center">
                                                    <h6 class="card-title text-black">New Xiaomi Redmi Note 11 Graphite
                                                    </h6>
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

                <div class="col-12 px-0">
                    <div class="row mx-0">
                        <!-- Laptop product head -->
                        <div class="col-12 product-space position-relative px-0 mb-4">
                            <span class="">Laptops</span>
                        </div>
                        <!-- Laptop product body -->
                        <div class="col-12 px-0 mb-4">
                            <div class="row mx-0  px-0 justify-content-between">

                                <c:forEach var="laptop" items="${pageContext.getAttribute('laptops')}">
                                    <div class="product-card px-0 mx-0 mx-md-1">
                                        <a href="singleproductview" class="text-decoration-none">
                                            <div class="card">
                                                <div class="col-12" height="205">

                                                    <img src="assets/images/products/laptop(1).jpeg"
                                                         class="product-card-img" alt="...">
                                                </div>
                                                <div class="col-5 d-inline-block product-grid">
                                                    <ul class="product-links">
                                                        <li class="product-link-li"><a href="wishlist"
                                                                                       class="product-link-a wishlist-select"><i
                                                                class="fa fa-heart"></i></a></li>
                                                        <li class="product-link-li"><a href="cart"
                                                                                       class="product-link-a cart-select"><i
                                                                class="fa fa-shopping-cart"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="card-body text-center">
                                                    <h6 class="card-title text-black">${laptop.name}</h6>
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
                                                    <c:set var="formattedPrice" value="${String.format('Rs.%.2f', laptop.price)}" />


                                                    <button class="product-btn text-white">
<%--                                                        <span class="product-btn-text-one">Rs.5000.00 ${laptop.price}</span>--%>
                                                        <span class="product-btn-text-one"> ${formattedPrice} </span>
                                                        <span class="product-btn-text-two">Buy Now</span>
                                                    </button>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </c:forEach>

<%--                                <c:forEach var="i" begin="0" end="5">--%>
<%--                                    <div class="product-card px-0 mx-0 mx-md-1">--%>
<%--                                        <a href="singleproductview" class="text-decoration-none">--%>
<%--                                            <div class="card">--%>
<%--                                                <div class="col-12" height="205">--%>
<%--                                                    <img src="assets/images/products/laptop(${i}).jpeg"--%>
<%--                                                         class="product-card-img" alt="...">--%>
<%--                                                </div>--%>
<%--                                                <div class="col-5 d-inline-block product-grid">--%>
<%--                                                    <ul class="product-links">--%>
<%--                                                        <li class="product-link-li"><a href="wishlist"--%>
<%--                                                                                       class="product-link-a wishlist-select"><i--%>
<%--                                                                class="fa fa-heart"></i></a></li>--%>
<%--                                                        <li class="product-link-li"><a href="cart"--%>
<%--                                                                                       class="product-link-a cart-select"><i--%>
<%--                                                                class="fa fa-shopping-cart"></i></a></li>--%>
<%--                                                    </ul>--%>
<%--                                                </div>--%>
<%--                                                <div class="card-body text-center">--%>
<%--                                                    <h6 class="card-title text-black">MSI Crosshair 15 15.6 144Hz Gaming--%>
<%--                                                        Core i7-11800H 16GB RAM 1TB SSD RTX 3060 6GB</h6>--%>
<%--                                                    <div class="mt-1">--%>
<%--                                                        <ul class="d-flex list-unstyled mb-1 justify-content-center">--%>
<%--                                                            <li><i class="fa fa-star rated"></i></li>--%>
<%--                                                            <li><i class="fa fa-star rated"></i></li>--%>
<%--                                                            <li><i class="fa fa-star rated"></i></li>--%>
<%--                                                            <li><i class="fa fa-star rated"></i></li>--%>
<%--                                                            <li><i class="fa fa-star"></i></li>--%>
<%--                                                            <li><span class="text-success">&nbsp;(899)</span>--%>
<%--                                                            </li>--%>
<%--                                                        </ul>--%>
<%--                                                    </div>--%>
<%--                                                    <button class="product-btn text-white">--%>
<%--                                                        <span class="product-btn-text-one">Rs.5000.00</span>--%>
<%--                                                        <span class="product-btn-text-two">Buy Now</span>--%>
<%--                                                    </button>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </a>--%>
<%--                                    </div>--%>
<%--                                </c:forEach>--%>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 px-0">
                    <div class="row mx-0">
                        <!-- Mobile product head -->
                        <div class="col-12 product-space position-relative px-0 mb-4">
                            <span class="">Cellphones</span>
                        </div>
                        <!-- Mobile product body -->
                        <div class="col-12 px-0 mb-4">
                            <div class="row mx-0  px-0 justify-content-between">
                                <c:forEach var="i" begin="0" end="5">
                                    <div class="product-card px-0 mx-0 mx-md-1">
                                        <a href="singleproductview" class="text-decoration-none">
                                            <div class="card">
                                                <div class="col-12" height="205">
                                                    <img src="assets/images/products/mobile(${i}).jpeg"
                                                         class="product-card-img" alt="...">
                                                </div>
                                                <div class="col-5 d-inline-block product-grid">
                                                    <ul class="product-links">
                                                        <li class="product-link-li"><a href="wishlist"
                                                                                       class="product-link-a wishlist-select"><i
                                                                class="fa fa-heart"></i></a></li>
                                                        <li class="product-link-li"><a href="cart"
                                                                                       class="product-link-a cart-select"><i
                                                                class="fa fa-shopping-cart"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="card-body text-center">
                                                    <h6 class="card-title text-black">Huawei P30 Pro p30 p30 lite 128GB
                                                    </h6>
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
                <div class="col-12 px-0">
                    <div class="row mx-0">
                        <!-- Cameras product head -->
                        <div class="col-12 product-space position-relative px-0 mb-4">
                            <span class="">Cameras</span>
                        </div>
                        <!-- Cameras product body -->
                        <div class="col-12 px-0 mb-4">
                            <div class="row mx-0  px-0 justify-content-between">
                                <c:forEach var="i" begin="0" end="5">
                                    <div class="product-card px-0 mx-0 mx-md-1">
                                        <a href="singleproductview" class="text-decoration-none">
                                            <div class="card">
                                                <div class="col-12" height="205">
                                                    <img src="assets/images/products/camera(${i}).jpeg"
                                                         class="product-card-img" alt="...">
                                                </div>
                                                <div class="col-5 d-inline-block product-grid">
                                                    <ul class="product-links">
                                                        <li class="product-link-li"><a href="wishlist"
                                                                                       class="product-link-a wishlist-select"><i
                                                                class="fa fa-heart"></i></a></li>
                                                        <li class="product-link-li"><a href="cart"
                                                                                       class="product-link-a cart-select"><i
                                                                class="fa fa-shopping-cart"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="card-body text-center">
                                                    <h6 class="card-title text-black">Sony NEX-5R Compact 16.1mp Digital
                                                        Camera Body Only Black</h6>
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
                <div class="col-12 px-0">
                    <div class="row mx-0">
                        <!-- Drone product head -->
                        <div class="col-12 product-space position-relative px-0 mb-4">
                            <span class="">Drones</span>
                        </div>
                        <!-- Drone product body -->
                        <div class="col-12 px-0 mb-4">
                            <div class="row mx-0  px-0 justify-content-between">
                                <c:forEach var="i" begin="0" end="5">
                                    <div class="product-card px-0 mx-0 mx-md-1">
                                        <a href="singleproductview" class="text-decoration-none">
                                            <div class="card">
                                                <div class="col-12" height="205">
                                                    <img src="assets/images/products/drone(${i}).jpeg"
                                                         class="product-card-img" alt="...">
                                                </div>
                                                <div class="col-5 d-inline-block product-grid">
                                                    <ul class="product-links">
                                                        <li class="product-link-li"><a href="wishlist"
                                                                                       class="product-link-a wishlist-select"><i
                                                                class="fa fa-heart"></i></a></li>
                                                        <li class="product-link-li"><a href="cart"
                                                                                       class="product-link-a cart-select"><i
                                                                class="fa fa-shopping-cart"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="card-body text-center">
                                                    <h6 class="card-title text-black">DJI Mavic 3 Fly More Combo -
                                                        Camera Drone</h6>
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
                <div class="col-12 px-0">
                    <div class="row mx-0">
                        <!-- Smart Home product head -->
                        <div class="col-12 product-space position-relative px-0 mb-4">
                            <span class="">Smart Home</span>
                        </div>
                        <!-- Smart Home product body -->
                        <div class="col-12 px-0 mb-4">
                            <div class="row mx-0  px-0 justify-content-between">
                                <c:forEach var="i" begin="0" end="5">
                                    <div class="product-card px-0 mx-0 mx-md-1">
                                        <a href="singleproductview" class="text-decoration-none">
                                            <div class="card">
                                                <div class="col-12" height="205">
                                                    <img src="assets/images/products/smartHome(${i}).jpeg"
                                                         class="product-card-img" alt="...">
                                                </div>
                                                <div class="col-5 d-inline-block product-grid">
                                                    <ul class="product-links">
                                                        <li class="product-link-li"><a href="wishlist"
                                                                                       class="product-link-a wishlist-select"><i
                                                                class="fa fa-heart"></i></a></li>
                                                        <li class="product-link-li"><a href="cart"
                                                                                       class="product-link-a cart-select"><i
                                                                class="fa fa-shopping-cart"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="card-body text-center">
                                                    <h6 class="card-title text-black">Sonoff Smart Home ZigBee Bridge
                                                        Temperature Humidity Motion Door Window Sensor</h6>
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
        <!-- Body End -->
    </layout:put>
</layout:extends>
