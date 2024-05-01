<%@ taglib prefix="layout" uri="http://callidora.lk/jsp/template-inheritance" %>
<%@ page import="com.newtech.util.HibernateUtil" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="java.util.List" %>
<%@ page import="com.newtech.model.Category" %>
<%@ page import="com.newtech.model.SubCategory" %>
<%@ page import="com.newtech.model.TechnicalSpecification" %><%--
  Created by IntelliJ IDEA.
  User: uvind
  Date: 9/19/2023
  Time: 3:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<layout:extends name="admin_base">
    <layout:put block="contents">
        <div class="col-12 product-category-body">
            <div class="row">
                <div class="col-12 pt-3 px-5">
                    <div class="row">
                        <div class="col-6 fs-4 text-light fw-semibold">
                            <span>Product Category Setup</span>
                        </div>
                        <div class="col-6 fs-6 fw-semibold mt-1">
                            <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
                                <ol class="breadcrumb text-secondary">
                                    <li class="breadcrumb-item  ms-auto"><a href="#"
                                                                            class="text-decoration-none">Home</a></li>
                                    <li class="breadcrumb-item text-secondary" aria-current="page">Product Catgory
                                        Setup
                                    </li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
                <div class="col-12 px-4 mt-3 px-5">
                    <div class="row">
                        <div class="col-12 text-light">
                            <nav>
                                <div class="nav nav-tabs fw-bold" id="nav-tab" role="tablist">
                                    <button class="nav-link active " style="color:orange;" id="nav-category-setup-tab"
                                            data-bs-toggle="tab" data-bs-target="#nav-category-setup" type="button"
                                            role="tab"
                                            aria-controls="nav-category-tab" aria-selected="true">Category Manage
                                    </button>
                                    <button class="nav-link" style="color:orange;" id="nav-brand-setup-tab"
                                            data-bs-toggle="tab" data-bs-target="#nav-brand-setup" type="button"
                                            role="tab"
                                            aria-controls="nav-brand-tab" aria-selected="true">Brand Manage
                                    </button>
                                    <button class="nav-link " style="color:orange;" id="nav-subcategory-setup-tab"
                                            data-bs-toggle="tab" data-bs-target="#nav-subcategory-setup" type="button"
                                            role="tab" aria-controls="nav-subcategory-tab" aria-selected="true">
                                        Sub-Category
                                        Manage
                                    </button>
                                    <button class="nav-link" style="color:orange;" id="nav-technicalspecs-setup-tab"
                                            data-bs-toggle="tab" data-bs-target="#nav-technicalspecs-setup"
                                            type="button"
                                            role="tab" aria-controls="nav-technicalspecs-tab" aria-selected="false">
                                        Manage
                                        Technical Specifications
                                    </button>
                                </div>
                            </nav>
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-category-setup" role="tabpanel"
                                     aria-labelledby="nav-category-setup-tab" tabindex="0">
                                    <div class="d-flex justify-content-start ms-2">
                                        <div class="col-6">
                                            <div class="row">
                                                <div class="col-12 card mb-3 mt-3">
                                                    <div class="card-body">
                                                        <h5 class="card-title mb-3">Category Add Area</h5>
                                                        <div class="mb-3">
                                                            <label for="" class="form-label">Category Name</label>
                                                            <input type="text" class="form-control" id="categoryName"
                                                                   placeholder="category Name ... ">
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="" class="form-label">Category
                                                                Description</label>
                                                            <textarea class="form-control" id="categoryDescription"
                                                                      rows="3"></textarea>
                                                        </div>
                                                        <div>
                                                            <button class="btn btn-info" id="saveCategory">Save New
                                                                Category
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="nav-brand-setup" role="tabpanel"
                                     aria-labelledby="nav-brand-setup-tab" tabindex="0">
                                    <div class="">
                                        <div class="col-6">
                                            <div class="row">
                                                <div class="col-12 card mb-3 mt-3">
                                                    <div class="card-body">
                                                        <h5 class="card-title mb-3">Brand Add Area</h5>
                                                        <div class="mb-3">
                                                            <label for="" class="form-label">Brand Name</label>
                                                            <input type="text" class="form-control" id="brandName"
                                                                   placeholder="Brand Name ... ">
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="" class="form-label">Brand Description</label>
                                                            <textarea class="form-control" id="brandDescription"
                                                                      rows="3"></textarea>
                                                        </div>
                                                        <div>
                                                            <button class="btn btn-info" id="saveBrand">Save New Brand
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="row">
                                                <div class="col-12 card mb-3 mt-3">
                                                    <div class="card-body">
                                                        <h5 class="card-title mb-3">Add Sub-Category To Brand</h5>

                                                        <div class="mb-3">
                                                            <select class="form-select" id="setupBrandForBS">
                                                                <option selected>Select a Brand</option>
                                                            </select>
                                                        </div>

                                                        <div class="mb-3">
                                                            <label for="" class="form-label">Sub-Category</label>
                                                            <select class="form-select"
                                                                    id="setupSubCategoryForBS">
                                                                <option selected>Select a Sub-Category
                                                                </option>
                                                            </select>
                                                        </div>


                                                        <div class=" col-12">
                                                            <div class="row m-0" id="toastContainerForBS">
                                                            </div>
                                                        </div>


                                                        <div class=" toast align-items-center mb-2 me-2 border border-radius border-success shadow shadow-lg"
                                                             id="toastElementForBS" role="alert" aria-live="assertive"
                                                             aria-atomic="true" data-bs-autohide="false"
                                                             style="width: max-content;">
                                                            <div class="d-flex">
                                                                <div class="toast-body" id="toastNameForBS">
                                                                </div>
                                                                <button type="button" class="btn-close me-2 m-auto"
                                                                        data-bs-dismiss="toast"
                                                                        aria-label="Close"></button>
                                                            </div>
                                                        </div>


                                                        <div>
                                                            <button class="btn btn-info"
                                                                    id="addSubCategoryToBrand">Add Sub Category to the Brand
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="nav-subcategory-setup" role="tabpanel"
                                     aria-labelledby="nav-subcategory-setup-tab" tabindex="0">
                                    <div class="d-flex justify-content-start ms-2">
                                        <div class="col-6">
                                            <div class="row">
                                                <div class="col-12 card mb-3 mt-3">
                                                    <div class="card-body">
                                                        <h5 class="card-title mb-3">Sub-Category Add Area</h5>
                                                        <div class="mb-3">
                                                            <label for="" class="form-label">Sub-Category Name</label>
                                                            <input type="text" class="form-control" id="subCategoryName"
                                                                   placeholder="Sub-category Name ... ">
                                                        </div>

                                                        <div class="mb-3">
                                                            <label for="" class="form-label">Category Related To Sub
                                                                Category <a
                                                                        href="#" class="text-decoration-none"
                                                                        style="font-size: 13px;">Add new
                                                                    category</a></label>
                                                            <select class="form-select" aria-label=""
                                                                    id="combineCategory">
                                                                <option selected>Select a Category</option>

                                                            </select>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="" class="form-label">Sub-Category
                                                                Description</label>
                                                            <textarea class="form-control" id="subCategoryDescription"
                                                                      rows="3"></textarea>
                                                        </div>
                                                        <div>
                                                            <button class="btn btn-info" id="saveSubCategory">Save New
                                                                Sub-Category
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="nav-technicalspecs-setup" role="tabpanel"
                                     aria-labelledby="nav-technicalspecs-setup-tab" tabindex="0">
                                    <div class="">
                                        <div class="col-12">
                                            <div class="row">
                                                <div class="col-12 card mb-3 mt-3">
                                                    <div class="card-body">
                                                        <h5 class="card-title mb-3">Add Tech Specifications</h5>
                                                        <div class="mb-3">
                                                            <label for="" class="form-label">Type Technical
                                                                Specifications</label><br>
                                                            <span></span>
                                                            <textarea class="form-control" id="technicalSpecification"
                                                                      rows="3"
                                                                      placeholder='Type format = Ram,Hard Drive,Display'></textarea>
                                                        </div>
                                                        <div>
                                                            <button class="btn btn-info"
                                                                    id="saveTechnicalSpecification">Add Technical
                                                                Specifications
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="row">
                                                <div class="col-12 card mb-3 mt-3">
                                                    <div class="card-body">
                                                        <h5 class="card-title mb-3">Add Tech Specifications To A
                                                            Sub-Category</h5>

                                                        <div class="mb-3">
                                                            <label for="" class="form-label">Sub Category <a href="#"
                                                                                                             class="text-decoration-none"
                                                                                                             style="font-size: 13px;">Add
                                                                new sub category</a></label>
                                                            <select class="form-select" id="setupSubcategory">
                                                                <option selected>Select a Sub-Category</option>
                                                            </select>
                                                        </div>


                                                        <div class="mb-3">
                                                            <label for="" class="form-label">Technical
                                                                Specification </label>
                                                            <select class="form-select"
                                                                    id="setupTechnicalSpecification">
                                                                <option selected>Select a Technical Specification
                                                                </option>
                                                                    <%--                                                                <c:forEach var="specs"--%>
                                                                    <%--                                                                           items="${pageContext.getAttribute('technicalSpecifications')}">--%>
                                                                    <%--                                                                    <option value="${specs.id}">${specs.name}</option>--%>
                                                                    <%--                                                                </c:forEach>--%>
                                                            </select>
                                                        </div>


                                                        <div class=" col-12">
                                                            <div class="row m-0" id="toastContainer">

                                                            </div>
                                                        </div>


                                                        <div class=" toast align-items-center mb-2 me-2 border border-radius border-success shadow shadow-lg"
                                                             id="toastElement" role="alert" aria-live="assertive"
                                                             aria-atomic="true" data-bs-autohide="false"
                                                             style="width: max-content;">
                                                            <div class="d-flex">
                                                                <div class="toast-body" id="toastName">

                                                                </div>
                                                                <button type="button" class="btn-close me-2 m-auto"
                                                                        data-bs-dismiss="toast"
                                                                        aria-label="Close"></button>
                                                            </div>
                                                        </div>


                                                        <div>
                                                            <button class="btn btn-info"
                                                                    id="addtechnicalSpecificationsToSubCategory">Add
                                                                Technical Specification to the Sub Category
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
            </div>
        </div>
    </layout:put>
    <layout:put block="scripts" type="REPLACE">
        <script src="https://code.jquery.com/jquery-3.7.1.min.js"
                integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="${admin_assets}/productCategoryPartOfAdmin.js"></script>
    </layout:put>
</layout:extends>
