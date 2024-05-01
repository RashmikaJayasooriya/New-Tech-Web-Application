<%@ taglib prefix="layout" uri="http://callidora.lk/jsp/template-inheritance" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.newtech.util.HibernateUtil" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="java.util.List" %>
<%@ page import="com.newtech.model.Category" %>
<%@ page import="com.newtech.model.SubCategory" %>
<%@ page import="com.newtech.model.Brand" %>
<%@ page import="com.newtech.model.ProductColor" %>
<%@ page import="com.newtech.model.ProductColor" %>
<%--
  Created by IntelliJ IDEA.
  User: uvind
  Date: 9/19/2023
  Time: 3:05 PM
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
    Session session3 = HibernateUtil.getSessionFactory().openSession();
    List<Brand> selectBFromBrandB = session3.createQuery("select b from Brand b", Brand.class).getResultList();
    pageContext.setAttribute("productBrand", selectBFromBrandB);
    session3.close();%>
<%
    Session session4 = HibernateUtil.getSessionFactory().openSession();
    List<ProductColor> productColorC = session4.createQuery("select c from ProductColor c", ProductColor.class).getResultList();
    pageContext.setAttribute("productColor", productColorC);
    session4.close();
%>

<layout:extends name="admin_base">
    <layout:put block="contents">
        <div class="col-12 product-add-body">
            <div class="row">
                <div class="col-12 pt-3 px-5">
                    <div class="row">
                        <div class="col-6 fs-4 text-light fw-semibold">
                            <span>Add a Product</span>
                            <!-- bg-card-secondary-color -->
                        </div>
                        <div class="col-6 fs-6 fw-semibold mt-1">
                            <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
                                <ol class="breadcrumb text-secondary">
                                    <li class="breadcrumb-item  ms-auto"><a href="#"
                                                                            class="text-decoration-none">Home</a></li>
                                    <li class="breadcrumb-item text-secondary" aria-current="page">Add a Product</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
                <div class="col-12 px-4 mt-3 px-5">
                    <div class="row">
                        <div class="col-12 text-light">
                            <nav>
                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                    <a class="nav-link fw-bold active" style="color:orange" id="nav-category-tab"
                                       data-bs-toggle="tab" href="#nav-category" role="tab" aria-controls="nav-category"
                                       aria-selected="true">Category</a>
                                    <a class="nav-link fw-bold disabled" style="color:orange" id="nav-description-tab"
                                       data-bs-toggle="tab" href="#nav-description" role="tab"
                                       aria-controls="nav-description"
                                       aria-selected="false">Product Description</a>
                                    <a class="nav-link fw-bold disabled" style="color:orange"
                                       id="nav-ImagesAndColors-tab"
                                       data-bs-toggle="tab" href="#nav-ImagesAndColors" role="tab"
                                       aria-controls="nav-ImagesAndColors" aria-selected="false">Pricing and Images</a>
                                </div>
                            </nav>
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-category" role="tabpanel"
                                     aria-labelledby="nav-category-tab">
                                    <p class="mt-3">Select Product Category and Sub-Category From Here.</p>
                                    <div class="d-flex justify-content-start">
                                        <div class="col-6">
                                            <div class="row">
                                                <div class="col-12 card mb-3 mt-3">
                                                    <div class="card-body">
                                                        <h5 class="card-title">Categorize</h5>

                                                        <div class="mb-3">
                                                            <label for="" class="form-label">Category <a href="#"
                                                                                                         class="text-decoration-none"
                                                                                                         style="font-size: 13px;">Add
                                                                new category</a></label>
                                                            <select class="form-select" aria-label=""
                                                                    id="productCategorySelect" required>
                                                                <option selected>Select a Category</option>
                                                                    <%--                                                                <c:forEach var="category"--%>
                                                                    <%--                                                                           items="${pageContext.getAttribute('productCategory')}">--%>
                                                                    <%--                                                                    <option value="${category.id}">${category.name}</option>--%>
                                                                    <%--                                                                </c:forEach>--%>
                                                            </select>
                                                        </div>

                                                        <div class="mb-3">
                                                            <label for="" class="form-label">Sub
                                                                Category <a href="#" class="text-decoration-none"
                                                                            style="font-size: 13px;">Add new sub
                                                                    category</a></label>
                                                            <select class="form-select" aria-label=""
                                                                    id="productSubCategorySelect"
                                                                    required>
                                                                <option selected>Select a Category To Get
                                                                    Sub-Categories
                                                                </option>
                                                            </select>
                                                        </div>

                                                        <div class="mb-3">
                                                            <label for="" class="form-label">Brand <a href="#"
                                                                                                      class="text-decoration-none"
                                                                                                      style="font-size: 13px;">Add
                                                                new brand</a></label>
                                                            <select class="form-select" aria-label=""
                                                                    id="productBrandSelect"
                                                                    required>
                                                                <option selected>Select a Sub-Category To Get Brands
                                                                </option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 d-flex justify-content-end">
                                        <button class="btn btn-primary next-tab" data-tab="nav-description"
                                                data-tab2="nav-category">Proceed to Next <i
                                                class="bi bi-arrow-right"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="nav-description" role="tabpanel"
                                     aria-labelledby="nav-description-tab">
                                    <p class="mt-3">Describe the Product Here.</p>
                                    <div class="d-flex justify-content-start">
                                        <div class="col-10 offset-1">
                                            <div class="row">
                                                <div class="col-12 card mb-3 mt-1">
                                                    <div class="card-body">
                                                        <div class="mb-3">
                                                            <label for="" class="form-label">Product Name /
                                                                Title</label>
                                                            <input type="text" class="form-control" id="productTitle"
                                                                   placeholder="Product Title ... " required>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="" class="form-label">Product Description</label>
                                                            <textarea class="form-control" id="productDescription"
                                                                      rows="3"
                                                                      required></textarea>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="" class="form-label">Product SKU (Stock Keeping
                                                                Unit
                                                                No.)</label>
                                                            <input type="text" class="form-control" id="productSKU"
                                                                   placeholder="Product SKU ... " required>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="" class="form-label">Product Price</label>
                                                            <input type="text" class="form-control" id="productPrice"
                                                                   placeholder="Product Price ... " required>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="" class="form-label">Product Initial Stock
                                                                Quantity
                                                                (Optional Can Set Now or Later)</label>
                                                            <input type="text" class="form-control" id="productInitQty"
                                                                   placeholder="Product Initial Stock Qty ... "
                                                                   required>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="" class="form-label">Product Minimum Stock
                                                                treshold
                                                                (Optional Can Set Now or Later)</label>
                                                            <input type="text" class="form-control"
                                                                   id="productMinStockThresh"
                                                                   placeholder="Product Minimum Stock treshold ... "
                                                                   required>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 d-flex justify-content-end">
                                        <button class="btn btn-secondary prev-tab me-1" data-tab="nav-category"
                                                data-tab2="nav-description"><i class="bi bi-arrow-left"></i> Back
                                        </button>
                                        <button class="btn btn-primary next-tab" data-tab="nav-ImagesAndColors"
                                                data-tab2="nav-description">Proceed to Next <i
                                                class="bi bi-arrow-right"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="nav-ImagesAndColors" role="tabpanel"
                                     aria-labelledby="nav-ImagesAndColors-tab">
                                    <p class="mt-3">Set Product Color Images and Color variants Here.</p>
                                    <div class="d-flex justify-content-start">
                                        <div class="col-10 offset-1">
                                            <div class="row image-row">
                                                <div class="mb-3">
                                                    <button class="add-variant-btn btn btn-success">Add a
                                                        Variant
                                                    </button>
                                                </div>
                                                <div class="col-12 image-row-card card mb-3 mt-1" id="variant0">
                                                    <div class="card-body  variant-card">
                                                        <div id="image_picker" class="row"></div>
                                                        <div class="mb-3">
                                                            <label for="" class="form-label">Product Color Related
                                                                to the Image <a href="#"
                                                                                class="text-decoration-none"
                                                                                style="font-size: 13px;">Add a Product
                                                                    Color</a></label>
                                                            <select class="form-select mb-2" aria-label=""
                                                                    id="productColorSelect"
                                                                    required>
                                                                <option selected>Select a Product Color</option>
                                                                <c:forEach var="pcolor"
                                                                           items="${pageContext.getAttribute('productColor')}">
                                                                    <option value="${pcolor.id}">${pcolor.name}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 d-flex justify-content-end">
                                        <button class="btn btn-secondary prev-tab" data-tab="nav-description"
                                                data-tab2="nav-ImagesAndColors"><i class="bi bi-arrow-left"></i>
                                            Back
                                        </button>
                                        <button class="btn btn-info ms-1" id="saveProduct"><i
                                                class="bi bi-arrow-right"></i>Save
                                        </button>
                                        <button class="btn btn-info ms-1" id="saveProducteeee"><i
                                                class="bi bi-arrow-right" onclick="uploadImages(1)"></i>testSave
                                        </button>
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
        <script src="https://code.jquery.com/jquery-3.7.1.min.js"
                integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script type="text/javascript" src="${admin_assets}/spartan-multi-image-picker.js"></script>
        <script src="${admin_assets}/productAddPartOfAdmin.js"></script>
    </layout:put>
</layout:extends>