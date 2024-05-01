<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<layout:extends name="base">
    <layout:put block="contents">
        <div class="container-fluid p-0">
            <div class="row-fluid m-0">
                <div class="col-12 text-center my-3">
                    <span class="fw-bold fs-3"><i class="bi bi-activity"></i><i class="fa-solid fa-heart"></i><i
                            class="bi bi-activity"></i>Wishlist<i class="bi bi-activity"></i></span>
                </div>
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="row d-flex justify-content-center pb-5">
                                <div class="col-md-3 col-xl-3 offset-xl-0">
                                    <div class="row">
                                        <!-- Side Div -->
                                        <div class="col-12 mb-5" style="border-right: 2px solid #FF6D00;;">
                                            <!-- BreadCrumb -->
                                            <div class="col-12 ps-4 mt-0">
                                                <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);"
                                                     aria-label="breadcrumb">
                                                    <ol class="breadcrumb">
                                                        <li class="breadcrumb-item"><a href="/newtech/">Home</a></li>
                                                        <li class="breadcrumb-item active" aria-current="page">
                                                            Wishlist
                                                        </li>
                                                    </ol>
                                                </nav>
                                            </div>
                                            <nav class="nav nav-pills flex-column">
                                                <a class="nav-link link-font"
                                                   style="background-color: #23487f; color:whitesmoke;"
                                                   aria-current="page" href="wishlist"><span class="text-light">My Wishlist</span></a>
                                                <a class="nav-link link-font text-white" href="cart">My Cart</a>
                                                <a class="nav-link link-font text-white link-warning" href="#">Recently
                                                    Viewed</a>
                                            </nav>
                                        </div>
                                        <!-- information div -->
                                        <div class="col-12 px-0 order-0 order-md-1 mb-3">
                                            <div class="row mx-0">
                                                <!-- info -->
                                                <div class="col-12 px-0 border border-secondary">
                                                    <div class="info-div-container scrollbar">
                                                        <div class="info-div">
                                                            <div class="row mx-0 px-2">
                                                                <div class="col-3 col-sm-3 col-md-12 info-space px-1 text-sm-center text-md-start">
                                                                    <div class="row py-3">
                                                                        <div class="col-3 col-sm-12 col-md-3 text-center my-auto px-1 mb-sm-2 mb-md-0">
                                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                                 width="30" height="30"
                                                                                 fill="currentColor"
                                                                                 class="bi bi-file-earmark-text"
                                                                                 viewBox="0 0 16 16">
                                                                                <path d="M5.5 7a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5zM5 9.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm0 2a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5z"/>
                                                                                <path d="M9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V4.5L9.5 0zm0 1v2A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5z"/>
                                                                            </svg>
                                                                        </div>
                                                                        <div class="col-7 col-sm-12 col-md-9 my-auto px-0 px-sm-1 lh-sm info-desc">
                                                                            <span>FREE DELIVERY</span><br>
                                                                            <span>On order over Rs.50.00</span>
                                                                        </div>
                                                                        <div class="col-1 d-block d-sm-none">
                                                                            <div class="vertical-line"></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-3 col-sm-3 col-md-12 info-space px-1 text-sm-center text-md-start">
                                                                    <div class="row py-3">
                                                                        <div class="col-3 col-sm-12 col-md-3 text-center my-auto px-1 mb-sm-2 mb-md-0">
                                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                                 width="30" height="30"
                                                                                 fill="currentColor"
                                                                                 class="bi bi-shield-shaded"
                                                                                 viewBox="0 0 16 16">
                                                                                <path fill-rule="evenodd"
                                                                                      d="M8 14.933a.615.615 0 0 0 .1-.025c.076-.023.174-.061.294-.118.24-.113.547-.29.893-.533a10.726 10.726 0 0 0 2.287-2.233c1.527-1.997 2.807-5.031 2.253-9.188a.48.48 0 0 0-.328-.39c-.651-.213-1.75-.56-2.837-.855C9.552 1.29 8.531 1.067 8 1.067v13.866zM5.072.56C6.157.265 7.31 0 8 0s1.843.265 2.928.56c1.11.3 2.229.655 2.887.87a1.54 1.54 0 0 1 1.044 1.262c.596 4.477-.787 7.795-2.465 9.99a11.775 11.775 0 0 1-2.517 2.453 7.159 7.159 0 0 1-1.048.625c-.28.132-.581.24-.829.24s-.548-.108-.829-.24a7.158 7.158 0 0 1-1.048-.625 11.777 11.777 0 0 1-2.517-2.453C1.928 10.487.545 7.169 1.141 2.692A1.54 1.54 0 0 1 2.185 1.43 62.456 62.456 0 0 1 5.072.56z"/>
                                                                            </svg>
                                                                        </div>
                                                                        <div class="col-7 col-sm-12 col-md-9 my-auto px-1 lh-sm info-desc">
                                                                            <span>ORDER PROTECTION</span><br>
                                                                            <span>Encrypt Information</span>
                                                                        </div>
                                                                        <div class="col-1 d-block d-sm-none">
                                                                            <div class="vertical-line"></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-3 col-sm-3 col-md-12 info-space px-1 text-sm-center text-md-start">
                                                                    <div class="row py-3">
                                                                        <div class="col-3 col-sm-12 col-md-3 text-center my-auto px-1 mb-sm-2 mb-md-0">
                                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                                 width="30" height="30"
                                                                                 fill="currentColor"
                                                                                 class="bi bi-gift-fill"
                                                                                 viewBox="0 0 16 16">
                                                                                <path d="M3 2.5a2.5 2.5 0 0 1 5 0 2.5 2.5 0 0 1 5 0v.006c0 .07 0 .27-.038.494H15a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h2.038A2.968 2.968 0 0 1 3 2.506V2.5zm1.068.5H7v-.5a1.5 1.5 0 1 0-3 0c0 .085.002.274.045.43a.522.522 0 0 0 .023.07zM9 3h2.932a.56.56 0 0 0 .023-.07c.043-.156.045-.345.045-.43a1.5 1.5 0 0 0-3 0V3zm6 4v7.5a1.5 1.5 0 0 1-1.5 1.5H9V7h6zM2.5 16A1.5 1.5 0 0 1 1 14.5V7h6v9H2.5z"/>
                                                                            </svg>
                                                                        </div>
                                                                        <div class="col-7 col-sm-12 col-md-9 my-auto px-1 lh-sm info-desc">
                                                                            <span>PROMOTION GIFTS</span><br>
                                                                            <span>Special offers!</span>
                                                                        </div>
                                                                        <div class="col-1 d-block d-sm-none">
                                                                            <div class="vertical-line"></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-3 col-sm-3 col-md-12 px-1 text-sm-center text-md-start">
                                                                    <div class="row py-3">
                                                                        <div class="col-3 col-sm-12 col-md-3 text-center my-auto px-1 mb-sm-2 mb-md-0">
                                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                                 width="30" height="30"
                                                                                 fill="currentColor"
                                                                                 class="bi bi-cash-coin"
                                                                                 viewBox="0 0 16 16">
                                                                                <path fill-rule="evenodd"
                                                                                      d="M11 15a4 4 0 1 0 0-8 4 4 0 0 0 0 8zm5-4a5 5 0 1 1-10 0 5 5 0 0 1 10 0z"/>
                                                                                <path d="M9.438 11.944c.047.596.518 1.06 1.363 1.116v.44h.375v-.443c.875-.061 1.386-.529 1.386-1.207 0-.618-.39-.936-1.09-1.1l-.296-.07v-1.2c.376.043.614.248.671.532h.658c-.047-.575-.54-1.024-1.329-1.073V8.5h-.375v.45c-.747.073-1.255.522-1.255 1.158 0 .562.378.92 1.007 1.066l.248.061v1.272c-.384-.058-.639-.27-.696-.563h-.668zm1.36-1.354c-.369-.085-.569-.26-.569-.522 0-.294.216-.514.572-.578v1.1h-.003zm.432.746c.449.104.655.272.655.569 0 .339-.257.571-.709.614v-1.195l.054.012z"/>
                                                                                <path d="M1 0a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h4.083c.058-.344.145-.678.258-1H3a2 2 0 0 0-2-2V3a2 2 0 0 0 2-2h10a2 2 0 0 0 2 2v3.528c.38.34.717.728 1 1.154V1a1 1 0 0 0-1-1H1z"/>
                                                                                <path d="M9.998 5.083 10 5a2 2 0 1 0-3.132 1.65 5.982 5.982 0 0 1 3.13-1.567z"/>
                                                                            </svg>
                                                                        </div>
                                                                        <div class="col-7 col-sm-12 col-md-9 my-auto px-1 lh-sm info-desc">
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
                                <div class="col-md-9 col-xl-9 mb-4 mb-md-0">
                                    <div class="row">
                                        <div class="col-12">
                                            <!-- cart cards start -->
                                            <c:set var="myList"
                                                   value="camera(0),console(0),laptop(0)"/>

                                            <c:forEach items="${myList}" var="item">
                                                <div class="card shadow-0 border rounded-3 mt-3">
                                                    <div class="card-body">
                                                        <div class="row">
                                                            <div class="col-6 col-lg-3 col-xl-3 mb-4 mb-lg-0">
                                                                <div class="bg-image rounded">
                                                                    <img src="assets/images/products/${item}.jpeg"
                                                                         class="w-100"/>
                                                                    <a href="#!">
                                                                        <div class="hover-overlay">
                                                                            <div class="mask"
                                                                                 style="background-color: rgba(253, 253, 253, 0.15);"></div>
                                                                        </div>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="col-6 col-lg-6 col-xl-6">
                                                                <h5>DJI Mavic 3 Fly More Combo - Camera Drone</h5>
                                                                <div class="d-flex flex-row">
                                                                    <div class="text-danger mb-1 me-2">
                                                                        <i class="fa fa-star rated"></i>
                                                                        <i class="fa fa-star rated"></i>
                                                                        <i class="fa fa-star rated"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="mb-2 text-muted small">
                                                                    <span>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, doloribus.</span>
                                                                    <span>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam sit magni totam quidem esse ratione quibusdam id asperiores similique minus!</span>
                                                                </div>
                                                                <div class="border border-start-0 border-end-0 border-bottom-0 pt-2 border-top">
                                                                    <div class="form-outline d-flex">
                                                                        <label class="form-label me-3"
                                                                               for="formControlReadonly">Quantity</label>
                                                                        <span class="fs-5"><a href="#"
                                                                                              class="link-dark"><i
                                                                                class="bi bi-plus"></i></a></span>
                                                                        <input class="form-control form-control-sm shadow-none"
                                                                               style="width: 50px;"
                                                                               id="formControlReadonly" type="text"
                                                                               placeholder="10"
                                                                               aria-label="readonly input example"
                                                                               readonly/>
                                                                        <span class="fs-5"><a href="#"
                                                                                              class="link-dark"><i
                                                                                class="bi bi-dash"></i></a></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-lg-3 col-xl-3 border-sm-start-none border-start">
                                                                <div class="d-flex flex-row align-items-center mb-1">
                                                                    <h4 class="mb-1 me-1">Rs.100.00</h4>
                                                                    <span class="text-danger text-decoration-line-through">Rs20.00</span>
                                                                </div>
                                                                <h6 class="text-success">Free shipping</h6>
                                                                <div class="d-flex flex-column mt-4">
                                                                    <button class="btn shadow-none btn-primary product-btn btn-sm"
                                                                            type="button">Checkout
                                                                    </button>
                                                                    <button class="btn shadow-none product-outline btn-sm mt-1"
                                                                            type="button">
                                                                        Add to Shopping Cart
                                                                    </button>
                                                                    <button class="btn btn-outline-danger shadow-none btn-sm mt-1"
                                                                            type="button">
                                                                        Remove
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>


                                            <!-- cart card end -->
                                        </div>
                                        <!-- Pagination -->
                                        <div class="col-12 d-flex justify-content-center mt-5">
                                            <nav>
                                                <ul class="pagination">
                                                    <li class="page-item">
                                                        <a class="page-link">Previous</a>
                                                    </li>
                                                    <li class="page-item"><a class="page-link shadow-none"
                                                                             href="#">1</a></li>
                                                    <li class="page-item pagination-active" aria-current="page">
                                                        <a class="page-link shadow-none" href="#">2</a>
                                                    </li>
                                                    <li class="page-item shadow-none"><a class="page-link shadow-none"
                                                                                         href="#">3</a></li>
                                                    <li class="page-item">
                                                        <a class="page-link shadow-none" href="#">Next</a>
                                                    </li>
                                                </ul>
                                            </nav>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </layout:put>
</layout:extends>
</html>
