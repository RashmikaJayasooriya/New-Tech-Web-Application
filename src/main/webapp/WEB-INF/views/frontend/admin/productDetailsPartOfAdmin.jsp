<%@ taglib prefix="layout" uri="http://callidora.lk/jsp/template-inheritance" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.newtech.util.HibernateUtil" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Objects" %>
<%@ page import="com.newtech.model.*" %>
<%--
  Created by IntelliJ IDEA.
  User: uvind
  Date: 9/19/2023
  Time: 3:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Session session1 = HibernateUtil.getSessionFactory().openSession();
    List<Category> selectCFromCategory = session1.createQuery("select c from Category c", Category.class).getResultList();
    pageContext.setAttribute("productCategory", selectCFromCategory);
    session1.close();
%>
<%
    Session session2 = HibernateUtil.getSessionFactory().openSession();
    List<SubCategory> selectSFromSubCategoryS = session2.createQuery("select s from SubCategory s", SubCategory.class).getResultList();
    pageContext.setAttribute("productSubCategory", selectSFromSubCategoryS);
    session2.close();
%>
<%
    Session session5 = HibernateUtil.getSessionFactory().openSession();
    List<Product> productList = session5.createQuery("SELECT p FROM Product p LEFT JOIN p.subCategory sc LEFT JOIN p.subCategory.categoryValue c LEFT JOIN p.brand b LEFT JOIN p.productColor pc LEFT JOIN p.status ps", Product.class).getResultList();

    pageContext.setAttribute("products", productList);
    session5.close();
%>
<%
    Session session3 = HibernateUtil.getSessionFactory().openSession();
    List<Brand> selectBFromBrandB = session3.createQuery("select b from Brand b", Brand.class).getResultList();
    pageContext.setAttribute("productBrand", selectBFromBrandB);
    session3.close();
%>
<%
    Session session4 = HibernateUtil.getSessionFactory().openSession();
    List<ProductColor> colorList = session4.createQuery("select c from ProductColor c", ProductColor.class).getResultList();
    pageContext.setAttribute("productColor", colorList);
    session4.close();
%>



<layout:extends name="admin_base">
    <layout:put block="contents">
        <div class="col-12 product-body">
            <div class="row">
                <div class="col-12 pt-1 px-5">
                    <div class="row">
                        <div class="col-6 fs-4 text-light fw-semibold">
                            <span>Products</span>
                        </div>
                        <div class="col-6 fs-6 fw-semibold mt-1">
                            <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
                                <ol class="breadcrumb text-secondary">
                                    <li class="breadcrumb-item  ms-auto"><a href="#" class="text-decoration-none">Home</a></li>
                                    <li class="breadcrumb-item text-secondary" aria-current="page">Products</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
                <div class="col-12 px-4">
                    <div class="card bg-card-secondary-color my-0 py-0" style="width: 100%;">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-12">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="row">
                                                <div class="col-2">
                                                    <input class="py-2 form-control form-control-sm border-1 rounded-0 bg-transparent text-light search-list"
                                                           type="text" placeholder="Search By Name" id="searchName">
                                                </div>
                                                <div class="col-2">
                                                    <input class="py-2 form-control form-control-sm border-1 rounded-0 bg-transparent text-light search-list"
                                                           type="text" placeholder="Search By Description" id="searchDescription">
                                                </div>
                                                <div class="col-2">
                                                    <input class="py-2 form-control form-control-sm border-1 rounded-0 bg-transparent text-light search-list"
                                                           type="text" placeholder="Search By Category" id="searchCategory">
                                                </div>
                                                <div class="col-2">
                                                    <input class="py-2 form-control form-control-sm border-1 rounded-0 bg-transparent text-light search-list"
                                                           type="text" placeholder="Search By Sub-Category" id="searchSubCategory">
                                                </div>
                                                <div class="col-2">
                                                    <input class="py-2 form-control form-control-sm border-1 rounded-0 bg-transparent text-light search-list"
                                                           type="text" placeholder="Search By Brand" id="searchBrand">
                                                </div>

                                                    <%--                                        <div class="col-2">--%>
                                                    <%--                                            <select class="form-select border-1 rounded-0 bg-dark text-light search-list"--%>
                                                    <%--                                                    aria-label=""--%>
                                                    <%--                                                    id="searchCategory"--%>
                                                    <%--                                                    name="productCategorySelectModal" required>--%>
                                                    <%--                                                <option>Select a Category</option>--%>
                                                    <%--                                                <c:forEach var="category"--%>
                                                    <%--                                                           items="${pageContext.getAttribute('productCategory')}">--%>
                                                    <%--                                                    <option value="${category.id}">${category.name}</option>--%>
                                                    <%--                                                </c:forEach>--%>
                                                    <%--                                            </select>--%>
                                                    <%--                                        </div>--%>



                                                    <%--                                        <div class="col-2">--%>
                                                    <%--                                            <select class="form-select  border-1 rounded-0 bg-dark text-light search-list"--%>
                                                    <%--                                                    aria-label=""--%>
                                                    <%--                                                    id="searchSubCategory"--%>
                                                    <%--                                                    name="productSubCategorySelectModal" required>--%>
                                                    <%--                                                <option>Select a Sub Category</option>--%>
                                                    <%--                                                <c:forEach var="subCategory"--%>
                                                    <%--                                                           items="${pageContext.getAttribute('productSubCategory')}">--%>
                                                    <%--                                                    <option value="${subCategory.id}">${subCategory.name}</option>--%>
                                                    <%--                                                </c:forEach>--%>
                                                    <%--                                            </select>--%>
                                                    <%--                                        </div>--%>
                                                <div class="col-2 ms-auto">
                                                    <button class="btn btn-light"  id="searchProduct"> <i class="bi bi-search"></i> Search Combination</button>
                                                </div>

                                            </div>
                                        </div>
                                        <!-- This is large screen one diplay select section -->
                                            <%--                                <div class="col-12 col-md-auto flex-md-grow-1 flex-shrink-1 text-light order-3 order-md-2 d-none d-md-block">--%>
                                            <%--                                    <label class="">Display </label>--%>
                                            <%--                                    <div class="d-inline-block">--%>
                                            <%--                                        <select class="form-select form-select-sm ms-md-1 me-md-1">--%>
                                            <%--                                            <option value="10">10</option>--%>
                                            <%--                                            <option value="20">20</option>--%>
                                            <%--                                            <option value="-1">All</option>--%>
                                            <%--                                        </select>--%>
                                            <%--                                    </div>--%>
                                            <%--                                    <label class="">&nbsp;Products</label>--%>
                                            <%--                                </div>--%>
                                    </div>
                                </div>
                                <div class="col-12 px-2 mt-4 overflow-y-auto scrollbar-table" style="height: 545px;">
                                        <%--                            <%--%>
                                        <%--                                Session session5 = HibernateUtil.getSessionFactory().openSession();--%>
                                        <%--                                List<Product> productList = session5.createQuery("select c from Product c", Product.class).getResultList();--%>
                                        <%--                                pageContext.setAttribute("products", productList);--%>
                                        <%--                                session5.close();--%>
                                        <%--                            %>--%>

                                    <div onload="">
                                        <table class="table table-dark table-striped table-hover table-responsive text-center text-nowrap">
                                            <thead>
                                            <tr>

                                                <th class="position-relative">Product Name <a href="#"
                                                                                              class="stretched-link link-light icon-link text-decoration-none"
                                                                                              style="font-size: 10px;"><i
                                                        class="fa-solid fa-sort"></i></a></th>
                                                <th class="position-relative">Category <a href="#"
                                                                                          class="stretched-link link-light icon-link text-decoration-none"
                                                                                          style="font-size: 10px;"><i
                                                        class="fa-solid fa-sort"></i></a></th>
                                                <th class="position-relative">Sub Category <a href="#"
                                                                                              class="stretched-link link-light icon-link text-decoration-none"
                                                                                              style="font-size: 10px;"><i
                                                        class="fa-solid fa-sort"></i></a></th>
                                                <th class="position-relative">Brand<a href="#"
                                                                                      class="stretched-link link-light icon-link text-decoration-none"
                                                                                      style="font-size: 10px;"><i
                                                        class="fa-solid fa-sort"></i></a></th>
                                                <th class="position-relative">Description <a href="#"
                                                                                             class="stretched-link link-light icon-link text-decoration-none"
                                                                                             style="font-size: 10px;"><i
                                                        class="fa-solid fa-sort"></i></a></th>
                                                <th class="position-relative">Price <a href="#"
                                                                                       class="stretched-link link-light icon-link text-decoration-none"
                                                                                       style="font-size: 10px;"><i
                                                        class="fa-solid fa-sort"></i></a></th>
                                                <th class="position-relative">Quantity <a href="#"
                                                                                          class="stretched-link link-light icon-link text-decoration-none"
                                                                                          style="font-size: 10px;"><i
                                                        class="fa-solid fa-sort"></i></a></th>
                                                <th class="position-relative">SKU <a href="#"
                                                                                     class="stretched-link link-light icon-link text-decoration-none"
                                                                                     style="font-size: 10px;"><i
                                                        class="fa-solid fa-sort"></i></a></th>
                                                <th class="position-relative">Min Stock Threshold<a href="#"
                                                                                                    class="stretched-link link-light icon-link text-decoration-none"
                                                                                                    style="font-size: 10px;"><i
                                                        class="fa-solid fa-sort"></i></a></th>
                                                <th class="position-relative">Color<a href="#"
                                                                                      class="stretched-link link-light icon-link text-decoration-none"
                                                                                      style="font-size: 10px;"><i
                                                        class="fa-solid fa-sort"></i></a></th>
                                                <th class="position-relative">Status <a href="#"
                                                                                        class="stretched-link link-light icon-link text-decoration-none"
                                                                                        style="font-size: 10px;"><i
                                                        class="fa-solid fa-sort"></i></a></th>
                                                <th class="position-relative">Action <a href="#"
                                                                                        class="stretched-link link-light icon-link text-decoration-none"
                                                                                        style="font-size: 10px;"><i
                                                        class="fa-solid fa-sort"></i></a></th>
                                            </tr>
                                            </thead>
                                            <tbody id="productBody">
                                            <c:forEach var="product" items="${pageContext.getAttribute('products')}">
                                                <tr class="">

                                                    <td class="table-user">
                                                        <a href="#" class="text-light text-decoration-none fw-semibold">
                                                                <%--                                                    <img src="assets/images/userProfImgs/one.jpeg" alt="table-user"--%>
                                                                <%--                                                         class="me-2 rounded-circle" style="width: 2rem; height: 2rem;">--%>
                                                                ${product.name}
                                                        </a>
                                                    </td>
                                                    <td>
                                                            ${product.subCategory.categoryValue.name}
                                                    </td>
                                                    <td>
                                                            ${product.subCategory.name}
                                                    </td>
                                                    <td>
                                                            ${product.brand.name}
                                                    </td>
                                                    <td>
                                                            ${product.description}
                                                    </td>
                                                    <td class="sorting_1">
                                                            ${product.price}
                                                    </td>
                                                    <td class="sorting_1">
                                                            ${product.stockQuantity}
                                                    </td>
                                                    <td class="sorting_1">
                                                            ${product.SKU}
                                                    </td>
                                                    <td class="sorting_1">
                                                            ${product.minStockTreshold}
                                                    </td>
                                                    <td class="sorting_1">
                                                            ${product.productColor.name}
                                                    </td>
                                                    <td>
                                                        <!-- Check the value of product.status.name -->
                                                        <c:choose>
                                                            <c:when test="${product.status.name eq 'Available'}">
                                                                <span class="badge active-state-badge text-success">Available</span>
                                                            </c:when>
                                                            <c:when test="${product.status.name eq 'Blocked'}">
                                                                <span class="badge blocked-state-badge text-danger">Blocked</span>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <span class="badge blocked-state-badge text-warning">Not Available</span>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </td>

                                                    <td class="">

                                                        <button type="button" class="btn btn-sm btn-light update-button"
                                                                data-bs-toggle="modal" data-bs-target="#staticBackdrop"
                                                                data-product-id="${product.id}"
                                                                data-product-name="${product.name}"
                                                                data-category-value="${product.subCategory.categoryValue.name}"
                                                                data-selected-category-id="${product.subCategory.categoryValue.id}"
                                                                data-sub-category="${product.subCategory.name}"
                                                                data-sub-category-id="${product.subCategory.id}"
                                                                data-brand-name="${product.brand.name}"
                                                                data-brand-name-id="${product.brand.id}"
                                                                data-description="${product.description}"
                                                                data-price="${product.price}"
                                                                data-stock-quantity="${product.stockQuantity}"
                                                                data-sku="${product.SKU}"
                                                                data-minStock="${product.minStockTreshold}"
                                                                data-color="${product.productColor.id}"
                                                                data-status="${product.status.name}">
                                                            <i class="far fa-pen-to-square"></i> Update
                                                        </button>

                                                        <a href="javascript:void(0);"
                                                           class="action-icon text-danger mx-1 text-decoration-none product-delete"
                                                           data-bs-toggle="tooltip" data-bs-placement="top" title="Delete" id="${product.id}">
                                                            <i class="far fa-circle-xmark"></i>
                                                        </a>
                                                        <a href="javascript:void(0);"
                                                           class="action-icon text-success mx-1 text-decoration-none"
                                                           data-bs-toggle="tooltip" data-bs-placement="top" title="Unblock">
                                                            <i class="far fa-circle-check"></i>
                                                        </a>
                                                    </td>

                                                </tr>
                                            </c:forEach>

                                            <!-- Modal Start-->
                                            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
                                                 data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel"
                                                 aria-hidden="true">
                                                <div class="modal-dialog modal-dialog-scrollable">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h1 class="modal-title fs-5" id="staticBackdropLabel">Product
                                                                Update</h1>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                                    aria-label="Close"></button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <form>
                                                                <div class="mb-3">
                                                                    <label for="productIdInput" class="form-label">Product
                                                                        Id</label>
                                                                    <input type="text" class="form-control"
                                                                           id="productIdInput" readonly>
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label for="productNameInput" class="form-label">Product
                                                                        Name</label>
                                                                    <input type="text" class="form-control"
                                                                           id="productNameInput">
                                                                </div>

                                                                <div class="mb-3">
                                                                    <label for="productCategorySelectModal" class="form-label">Category</label>
                                                                    <select class="form-select" aria-label=""
                                                                            id="productCategorySelectModal"
                                                                            name="productCategorySelectModal" required>
                                                                        <option>Select a Category</option>
                                                                        <c:forEach var="category"
                                                                                   items="${pageContext.getAttribute('productCategory')}">
                                                                            <option value="${category.id}">${category.name}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div>


                                                                <div class="mb-3">
                                                                    <label for="productSubCategorySelectModal"
                                                                           class="form-label">Sub
                                                                        Category</label>
                                                                    <select class="form-select" aria-label=""
                                                                            id="productSubCategorySelectModal"
                                                                            name="productSubCategorySelectModal" required>
                                                                        <option>Select a Sub Category</option>
                                                                        <c:forEach var="subCategory"
                                                                                   items="${pageContext.getAttribute('productSubCategory')}">
                                                                            <option value="${subCategory.id}">${subCategory.name}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div>



                                                                <div class="mb-3">
                                                                    <label for="productBrandSelectModal"
                                                                           class="form-label">Brand</label>
                                                                    <select class="form-select" aria-label=""
                                                                            id="productBrandSelectModal"
                                                                            name="productBrandSelectModal" required>
                                                                        <option>Select a Brand</option>
                                                                        <c:forEach var="brand"
                                                                                   items="${pageContext.getAttribute('productBrand')}">
                                                                            <option value="${brand.id}">${brand.name}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div>

                                                                <div class="mb-3">
                                                                    <label for="" class="form-label">Description
                                                                        Value</label>
                                                                    <input type="text" class="form-control"
                                                                           id="descriptionInput">
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label for="" class="form-label">Price
                                                                        Value</label>
                                                                    <input type="text" class="form-control" id="priceInput">
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label for="" class="form-label">Stock
                                                                        Quantity</label>
                                                                    <input type="text" class="form-control"
                                                                           id="stockQuantityInput">
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label for="" class="form-label">Stock Keeping Unit
                                                                        No.</label>
                                                                    <input type="text" class="form-control" id="skuInput">
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label for="" class="form-label">Min. Stock
                                                                        Threshold</label>
                                                                    <input type="text" class="form-control"
                                                                           id="minStockThreshInput">
                                                                </div>



                                                                <div class="mb-3">
                                                                    <label for="productColorSelectModal"
                                                                           class="form-label">Color</label>
                                                                    <select class="form-select" aria-label=""
                                                                            id="productColorSelectModal"
                                                                            name="productBrandSelectModal" required>
                                                                        <option>Select a Color</option>
                                                                        <c:forEach var="pcolor"
                                                                                   items="${pageContext.getAttribute('productColor')}">
                                                                            <option value="${pcolor.id}">${pcolor.name}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div>

                                                                <div class="mb-3">
                                                                    <label for="categoryValueInput"
                                                                           class="form-label">Status</label>
                                                                    <input type="text" class="form-control" id="statusInput">
                                                                </div>
                                                                <!-- Add input fields for other product details here -->
                                                            </form>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary"
                                                                    data-bs-dismiss="modal" id="closeButton">
                                                                Close
                                                            </button>
                                                            <button type="button" class="btn btn-primary" id="updateProduct">
                                                                Update
                                                                Product
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Modal End-->

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <!-- This is small screen one diplay select section -->
                                <div class="col-6 text-light mt-3 d-block d-md-none">
                                    <label class="">Display </label>
                                    <div class="d-inline-block">
                                        <select class="form-select form-select-sm ms-md-1 me-md-1">
                                            <option value="10">10</option>
                                            <option value="20">20</option>
                                            <option value="-1">All</option>
                                        </select>
                                    </div>
                                    <label class="">&nbsp;Products</label>
                                </div>
                                <div class="col-6 col-md-12 mt-2 mt-md-0">
                                    <div class="row align-items-center justify-content-between pe-0">
                                        <div class="col-auto d-flex">
                                            <p class="mb-0 d-none d-sm-block me-3 fw-semi-bold text-900 text-light"
                                               data-list-info="data-list-info">Showing 1 to 10 <span
                                                    class="text-600"> of </span>15 Products</p>
                                        </div>
                                        <div class="col-auto d-flex">
                                            <a href="#" class=" icon-link icon-link-hover link-light"
                                               style="--bs-icon-link-transform: translate3d(-.300rem, 0, 0);"><i
                                                    class="bi bi-chevron-left"></i></a>
                                            <ul class="mb-0 pagination">
                                                <li class="active">
                                                    <button class="btn btn-primary text-light fw-semibold px-2 py-0 mx-1 mt-2 mb-0"
                                                            type="button" data-i="1" data-page="10">1
                                                    </button>
                                                </li>
                                                <li>
                                                    <button class="btn text-light px-2 py-0  mt-2 mb-0" type="button" data-i="2"
                                                            data-page="10">2
                                                    </button>
                                                </li>
                                            </ul>
                                            <a href="#" class=" icon-link icon-link-hover text-light fw-semibold mx-1"><i
                                                    class="bi bi-chevron-right"></i></a>
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
    <layout:put block="scripts" type="REPLACE">
        <script src="${admin_assets}/productDetailsPartOfAdmin.js"></script>
    </layout:put>
</layout:extends>

