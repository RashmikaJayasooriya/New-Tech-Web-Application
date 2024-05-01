<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<layout:extends name="base">
    <layout:put block="contents">
        <div class="container-fluid p-0">
            <div class="row-fluid m-0">
                <!-- BreadCrumb -->
                <div class="col-12 ps-4 mt-3">
                    <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="/newtech/">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Advanced Search</li>
                        </ol>
                    </nav>
                </div>
                <div class="col-12 px-4 mt-3 mb-3">
                    <div class="card shadow">
                        <div class="card-header bg-secondary text-white fs-4 text-center">Advanced Search <i class="fa-brands fa-searchengin"></i></div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-12">
                                    <label for="exampleFormControlInput1" class="form-label fw-bold">Enter Keywords</label>
                                    <div class="mb-3 position-relative d-flex">
                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Enter keyword to search">
                                        <span class="position-absolute btn btn-primary" style="right: 0px; top:0px;"><span class="fw-bold">Search  </span><i class="fa-solid fa-magnifying-glass"></i></span>
                                    </div>
                                    <hr>
                                </div>
                                <div class="col-12">
                                    <label for="exampleFormControlInput1" class="form-label fw-bold">Search Includes</label>
                                    <select class="form-select mb-3" aria-label="Default select example">
                                        <option selected>Select Category</option>
                                        <option value="1">One</option>
                                        <option value="2">Two</option>
                                        <option value="3">Three</option>
                                    </select>
                                    <select class="form-select mb-3" aria-label="Default select example">
                                        <option selected>Select Brand</option>
                                        <option value="1">One</option>
                                        <option value="2">Two</option>
                                        <option value="3">Three</option>
                                    </select>
                                    <select class="form-select mb-3" aria-label="Default select example">
                                        <option selected>Select Model</option>
                                        <option value="1">One</option>
                                        <option value="2">Two</option>
                                        <option value="3">Three</option>
                                    </select>
                                    <select class="form-select mb-3" aria-label="Default select example">
                                        <option selected>Select Color</option>
                                        <option value="1">One</option>
                                        <option value="2">Two</option>
                                        <option value="3">Three</option>
                                    </select>
                                    <div class="col-12">
                                        <label for="exampleFormControlInput1" class="form-label fw-bold">Price Range</label>
                                        <div class="row">
                                            <div class="col-12 col-md-6">
                                                <div class="mb-3 position-relative d-flex">
                                                    <input type="number" class="form-control" id="exampleFormControlInput1" placeholder="Price From">
                                                </div>
                                            </div>
                                            <div class="col-12 col-md-6">
                                                <div class="mb-3 position-relative d-flex">
                                                    <input type="number" class="form-control" id="exampleFormControlInput1" placeholder="Price To">
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
</layout:extends>
