<%--
  Created by IntelliJ IDEA.
  User: uvind
  Date: 9/19/2023
  Time: 3:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="col-12 customer-body d-none">
    <div class="row">
        <div class="col-12 pt-1 px-5">
            <div class="row">
                <div class="col-6 fs-4 text-light fw-semibold">
                    <span>Customers</span>
                </div>
                <div class="col-6 fs-6 fw-semibold mt-1">
                    <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
                        <ol class="breadcrumb text-secondary">
                            <li class="breadcrumb-item  ms-auto"><a href="#" class="text-decoration-none">Home</a></li>
                            <li class="breadcrumb-item text-secondary" aria-current="page">Customers</li>
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
                                <div class="col-12 col-md-3 mb-0 order-2 order-md-1">
                                    <form class="d-flex" role="search">
                                        <div class="input-group input-group-sm">
                                            <span class="input-group-text mx-0 pe-1 border-1 border-end-0 rounded-0 bg-transparent" id="basic-addon1"><i class="bi bi-search text-light"></i></span>
                                            <input type="search" class="form-control border-1 border-start-0 rounded-0 border-white bg-transparent text-light search-list" style="box-shadow: none;" placeholder="Search the Customers..." aria-label="search" aria-describedby="search">
                                            <select class="form-select rounded-0" style="box-shadow: none; max-width: max-content;">
                                                <option selected>Filter</option>
                                                <option value="1">Name</option>
                                                <option value="2">Email</option>
                                                <option value="3">Mobile</option>
                                            </select>
                                        </div>
                                    </form>
                                </div>
                                <!-- This is large screen one diplay select section -->
                                <div class="col-12 col-md-auto flex-md-grow-1 flex-shrink-1 text-light order-3 order-md-2 d-none d-md-block">
                                    <label class="">Display </label>
                                    <div class="d-inline-block">
                                        <select class="form-select form-select-sm ms-1 me-1">
                                            <option value="10">10</option>
                                            <option value="20">20</option>
                                            <option value="-1">All</option>
                                        </select>
                                    </div>
                                    <label>&nbsp;Customers</label>

                                </div>
                                <div class="col-12 col-md-auto  order-1 order-md-3 text-center mb-3 mb-md-0">
                                    <button class="btn export-btn icon-link-hover  rounded-0">
                                        <i class="bi bi-file-earmark-arrow-down icon-link"></i> Export
                                    </button>
                                    <button class="btn btn-danger add-btn icon-link-hover rounded-0" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                        <i class="bi bi-plus-circle-fill icon-link"></i> Add Customer
                                    </button>
                                </div>
                            </div>
                        </div>
                        <!-- Add Customer Modal -->
                        <!-- Modal -->
                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog  modal-dialog-centered">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="exampleModalLabel">Add Customer</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form class="row g-3">
                                            <div class="col-md-6">
                                                <label class="form-label">Customer Name</label>
                                                <input type="text" class="form-control">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="inputPassword4" class="form-label">Password</label>
                                                <input type="password" class="form-control" id="inputPassword4">
                                            </div>
                                            <div class="col-12">
                                                <label for="inputAddress" class="form-label">Address</label>
                                                <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
                                            </div>
                                            <div class="col-12">
                                                <label for="inputAddress2" class="form-label">Address 2</label>
                                                <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="inputCity" class="form-label">City</label>
                                                <input type="text" class="form-control" id="inputCity">
                                            </div>
                                            <div class="col-md-4">
                                                <label for="inputState" class="form-label">State</label>
                                                <select id="inputState" class="form-select">
                                                    <option selected>Choose...</option>
                                                    <option>...</option>
                                                </select>
                                            </div>
                                            <div class="col-md-2">
                                                <label for="inputZip" class="form-label">Zip</label>
                                                <input type="text" class="form-control" id="inputZip">
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary">Save changes</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Modal -->
                        <div class="col-12 px-2 mt-4 overflow-y-auto scrollbar" style="height: 545px;">
                            <table class="table table-dark table-striped table-hover table-responsive text-center text-nowrap">
                                <thead>
                                <tr>
                                    <th><input class="form-check-input focus-ring" type="checkbox" id="checkboxNoLabel" value=""></th>
                                    <th class="position-relative">Customer Name <a href="#" class="stretched-link link-light icon-link text-decoration-none" style="font-size: 10px;"><i class="fa-solid fa-sort"></i></a></th>
                                    <th class="position-relative">Email <a href="#" class="stretched-link link-light icon-link text-decoration-none" style="font-size: 10px;"><i class="fa-solid fa-sort"></i></a></th>
                                    <th class="position-relative">Phone <a href="#" class="stretched-link link-light icon-link text-decoration-none" style="font-size: 10px;"><i class="fa-solid fa-sort"></i></a></th>
                                    <th class="position-relative">Location <a href="#" class="stretched-link link-light icon-link text-decoration-none" style="font-size: 10px;"><i class="fa-solid fa-sort"></i></a></th>
                                    <th class="position-relative">Create Date <a href="#" class="stretched-link link-light icon-link text-decoration-none" style="font-size: 10px;"><i class="fa-solid fa-sort"></i></a></th>
                                    <th class="position-relative">Status <a href="#" class="stretched-link link-light icon-link text-decoration-none" style="font-size: 10px;"><i class="fa-solid fa-sort"></i></a></th>
                                    <th class="position-relative">Action <a href="#" class="stretched-link link-light icon-link text-decoration-none" style="font-size: 10px;"><i class="fa-solid fa-sort"></i></a></th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php
                                                for ($i = 0; $i < 5; $i++) {
                                                ?>
                                <tr class="">
                                    <td class="">
                                        <input class="form-check-input focus-ring" type="checkbox" id="checkboxNoLabel" value="">
                                    </td>
                                    <td class="table-user">
                                        <a href="#" class="text-light text-decoration-none fw-semibold">
                                            <img src="assets/images/userProfImgs/one.jpeg" alt="table-user" class="me-2 rounded-circle" style="width: 2rem; height: 2rem;">
                                            Rory Seekamp
                                        </a>
                                    </td>
                                    <td>
                                        078 5054 8877
                                    </td>
                                    <td>
                                        roryamp@dayrep.com
                                    </td>
                                    <td>
                                        United States
                                    </td>
                                    <td class="sorting_1">
                                        03/24/2018
                                    </td>
                                    <td>
                                        <span class="badge blocked-state-badge text-danger">Blocked</span>
                                    </td>

                                    <td class="">
                                        <a href="javascript:void(0);" class="action-icon text-info mx-1 text-decoration-none" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit">
                                            <i class="far fa-pen-to-square"></i>
                                        </a>
                                        <a href="javascript:void(0);" class="action-icon text-danger mx-1 text-decoration-none" data-bs-toggle="tooltip" data-bs-placement="top" title="Block">
                                            <i class="far fa-circle-xmark"></i>
                                        </a>
                                        <a href="javascript:void(0);" class="action-icon text-success mx-1 text-decoration-none" data-bs-toggle="tooltip" data-bs-placement="top" title="Unblock">
                                            <i class="far fa-circle-check"></i>
                                        </a>
                                    </td>

                                </tr>
                                <tr class="">
                                    <td class="">
                                        <input class="form-check-input focus-ring" type="checkbox" id="checkboxNoLabel" value="">
                                    </td>
                                    <td class="table-user">
                                        <a href="#" class="text-light text-decoration-none fw-semibold">
                                            <img src="assets/images/userProfImgs/one.jpeg" alt="table-user" class="me-2 rounded-circle" style="width: 2rem; height: 2rem;">
                                            Rory Seekamp
                                        </a>
                                    </td>
                                    <td>
                                        078 5054 8877
                                    </td>
                                    <td>
                                        roryamp@dayrep.com
                                    </td>
                                    <td>
                                        United States
                                    </td>
                                    <td class="sorting_1">
                                        03/24/2018
                                    </td>
                                    <td>
                                        <span class="badge active-state-badge text-success">Active</span>
                                    </td>

                                    <td class="">
                                        <a href="javascript:void(0);" class="action-icon text-info  mx-1 text-decoration-none" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit">
                                            <i class="far fa-pen-to-square"></i>
                                        </a>
                                        <a href="javascript:void(0);" class="action-icon text-danger  mx-1 text-decoration-none" data-bs-toggle="tooltip" data-bs-placement="top" title="Block">
                                            <i class="far fa-circle-xmark"></i>
                                        </a>
                                        <a href="javascript:void(0);" class="action-icon text-success  mx-1 text-decoration-none" data-bs-toggle="tooltip" data-bs-placement="top" title="Unblock">
                                            <i class="far fa-circle-check"></i>
                                        </a>
                                    </td>

                                </tr>
                                <?php
                                                }
                                                ?>
                                </tbody>
                            </table>
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
                                    <p class="mb-0 d-none d-sm-block me-3 fw-semi-bold text-900 text-light" data-list-info="data-list-info">Showing 1 to 10 <span class="text-600"> of </span>15 Customers</p>
                                </div>
                                <div class="col-auto d-flex">
                                    <a href="#" class=" icon-link icon-link-hover link-light" style="--bs-icon-link-transform: translate3d(-.300rem, 0, 0);"><i class="bi bi-chevron-left"></i></a>
                                    <ul class="mb-0 pagination">
                                        <li class="active"><button class="btn btn-primary text-light fw-semibold px-2 py-0 mx-1 mt-2 mb-0" type="button" data-i="1" data-page="10">1</button></li>
                                        <li><button class="btn text-light px-2 py-0  mt-2 mb-0" type="button" data-i="2" data-page="10">2</button></li>
                                    </ul>
                                    <a href="#" class=" icon-link icon-link-hover text-light fw-semibold mx-1"><i class="bi bi-chevron-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
