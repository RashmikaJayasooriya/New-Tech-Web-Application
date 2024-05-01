<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="en" data-bs-theme="auto">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="D.U.R.P. Jayasooriya">
    <title>Navbar Template · Bootstrap v5.3</title>
    <!--Bootstrap CSS--V5.3-->
    <link rel="stylesheet" href="assets/frameworks/css/bootstrapV5.3.min.css">
    <!--Bootstrap icons-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <!--Font awesome icons-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- Custom styles -->
    <link href="assets/admin/Admin.css" rel="stylesheet">

</head>

<body class="scrollbar">
<div class="container-fluid p-0">
    <div class="row m-0">
        <div class="col-12 p-0">
            <nav class="navbar navbar-dark navbar-custom mb-0" aria-label="Dark offcanvas navbar">
                <div class="container-fluid">
                    <div class="bg-light mt-2 ms-md-3 ms-1"><img src="assets/images/logo/New Tech (6).png"></div>
                    <div class="col-6 d-none d-md-block">
                        <form class="d-flex" role="search">
                            <div class="input-group">
                                <span class="input-group-text mx-0 pe-1 border-0" id="basic-addon1"><i class="bi bi-search"></i></span>
                                <input type="search" class="form-control form-control-sm border-0" style="box-shadow: none;" placeholder="Search..." aria-label="search" aria-describedby="search">
                            </div>
                        </form>
                    </div>
                    <ul class="list-unstyled d-flex gap-3 m-0 justify-content-center">
                        <li>
                            <a class="icon-link link-light fs-5 mt-2" type="button" id="offcanvasLink" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbarDark" aria-controls="offcanvasNavbarDark" aria-label="Toggle navigation">
                                <i class="bi bi-grid-3x3-gap-fill"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#" class=" icon-link link-light fs-5 mt-2">
                                <i class="bi bi-bell-fill"></i>
                            </a>
                        </li>
                        <li>
                            <div class=" bg-danger rounded-circle overflow-hidden bg-danger">
                                <a href="#">
                                    <img src="assets/images/userProfImgs/one.jpeg" class="rounded-circle" style="width: 45px;">
                                </a>
                            </div>
                        </li>
                        <li><a href="adminlogin" class="icon-link link-light fs-5 mt-2">
                            <i class="bi bi-box-arrow-right"></i>
                        </a>
                        </li>
                    </ul>
                    <div class="offcanvas offcanvas-start text-bg-dark" tabindex="-1" id="offcanvasNavbarDark" aria-labelledby="offcanvasNavbarDarkLabel">
                        <div class="offcanvas-header">

                            <button type="button" class="btn-close btn-close-white ms-auto" data-bs-dismiss="offcanvas" aria-label="Close">
                            </button>
                        </div>
                        <div class="offcanvas-body">
                            <ul class="navbar-nav justify-content-end flex-grow-1 pe-3 lh-lg" style="font-size: 18px;">
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="#" id="dashboard"><i class="fa-solid fa-house"></i> &nbsp;&nbsp; Dashboard</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" aria-current="page" href="#" id="customerManagement"><i class="fa-solid fa-user-gear"></i> &nbsp; Customers Management</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-bs-toggle="collapse" aria-current="page" href="#productcollapse" role="button" aria-expanded="false" aria-controls="collapseExample"><i class="bi bi-box-seam-fill"></i> &nbsp;&nbsp; Product Management</a>
                                    <div class="collapse" id="productcollapse">
                                        <div class="collapse-div">
                                            <ul class="collapse-div-items text-light">
                                                <li><a class="collapse-div-item" href="#" id="productDetails">Product Details</a></li>
                                                <li><a class="collapse-div-item" href="#" id="productAdd">Product Add</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <!-- </ul> -->
                                <!-- </div> -->
                                <!-- </div> -->
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" aria-current="page" href="#"><i class="fa-solid fa-briefcase"></i> &nbsp;&nbsp; General Management</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" aria-current="page" href="#"><i class="fa-solid fa-cart-shopping"></i> &nbsp;&nbsp; Order Management</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" aria-current="page" href="#"><i class="fa-solid fa-pen"></i>
                                        &nbsp;&nbsp; Content Management</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" aria-current="page" href="#"><i class="fa-regular fa-folder-open"></i> &nbsp;&nbsp; Reports
                                        Management</a>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
        <div class="col-12 dashboard-body d-none">
            <div class="row">
                <div class="col-12 mt-2">
                    <h2 class="mb-2 text-light ms-md-3 text-center text-md-start">Ecommerce Dashboard</h2>
                    <h5 class="fw-semi-bold text-white-50 ms-md-3  text-center text-md-start">Here’s what’s going on
                        at your business right now
                    </h5>
                </div>
                <div class="col-12 mt-4">
                    <div class="row justify-content-md-around justify-content-between gy-2">
                        <div class="col-md-2 col-6  px-3 px-md-0">
                            <div class="row admin-card text-light p-2">
                                <div class="col-9">
                                    <div class="row">
                                        <div class="col-12 mt-2 admin-card-title">CLIENTS</div>
                                        <div class="col-12 fs-3">6328</div>
                                    </div>
                                </div>
                                <div class="col-2 fs-2 mt-2">
                                    <i class="fa-solid fa-users"></i>
                                </div>
                                <div class="col-12 text-light">
                                    <div class="hr my-1 admin-card-hr"></div>
                                </div>
                                <div class="col-12">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="row">
                                                <div class="12 admin-card-subheading">
                                                    <span>TODAY CLIENTS</span>
                                                </div>
                                                <div class="col-12 fs-5">
                                                    <span>57</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="row">
                                                <div class="12  admin-card-subheading">
                                                    <span>MONTHLY CLIENTS</span>
                                                </div>
                                                <div class="col-12 fs-5">
                                                    <span>657</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2 col-6 px-3 px-md-0">
                            <div class="row admin-card text-light p-2">
                                <div class="col-9">
                                    <div class="row">
                                        <div class="col-12 mt-2 admin-card-title">ORDERS</div>
                                        <div class="col-12 fs-3">6328</div>
                                    </div>
                                </div>
                                <div class="col-2 fs-2 mt-2">
                                    <i class="bi bi-cart-fill"></i>
                                </div>
                                <div class="col-12 text-light">
                                    <div class="hr my-1 admin-card-hr"></div>
                                </div>
                                <div class="col-12">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="row">
                                                <div class="12  admin-card-subheading">
                                                    <span>TODAY ORDERS</span>
                                                </div>
                                                <div class="col-12 fs-5">
                                                    <span>57</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="row">
                                                <div class="12  admin-card-subheading">
                                                    <span>MONTHLY ORDERS</span>
                                                </div>
                                                <div class="col-12 fs-5">
                                                    <span>657</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2 col-6  px-3 px-md-0">
                            <div class="row admin-card text-light p-2">
                                <div class="col-9">
                                    <div class="row">
                                        <div class="col-12 mt-2 admin-card-title">RETURNS</div>
                                        <div class="col-12 fs-3">6328</div>
                                    </div>
                                </div>
                                <div class="col-2 fs-2 mt-2">
                                    <i class="fa-solid fa-rotate-left"></i>
                                </div>
                                <div class="col-12 text-light">
                                    <div class="hr my-1 admin-card-hr"></div>
                                </div>
                                <div class="col-12">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="row">
                                                <div class="12  admin-card-subheading">
                                                    <span>TODAY RETURNS</span>
                                                </div>
                                                <div class="col-12 fs-5">
                                                    <span>57</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="row">
                                                <div class="12  admin-card-subheading" style="font-size: 10px;">
                                                    <span>MONTHLY RETURNS</span>
                                                </div>
                                                <div class="col-12 fs-5">
                                                    <span>657</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2 col-6  px-3 px-md-0">
                            <div class="row admin-card text-light p-2">
                                <div class="col-9">
                                    <div class="row">
                                        <div class="col-12 mt-2 admin-card-title">EARNINGS</div>
                                        <div class="col-12 fs-3">6328</div>
                                    </div>
                                </div>
                                <div class="col-2 fs-2 mt-2">
                                    <i class="fa-solid fa-chart-line"></i>
                                </div>
                                <div class="col-12 text-light">
                                    <div class="hr my-1 admin-card-hr"></div>
                                </div>
                                <div class="col-12">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="row">
                                                <div class="12  admin-card-subheading">
                                                    <span>TODAY EARNINGS</span>
                                                </div>
                                                <div class="col-12 fs-5">
                                                    <span>57</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="row">
                                                <div class="12  admin-card-subheading" style="font-size: 10px;">
                                                    <span>MONTHLY EARNING</span>
                                                </div>
                                                <div class="col-12 fs-5">
                                                    <span>657</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2 col-6  px-3 px-md-0">
                            <div class="row admin-card text-light p-2">
                                <div class="col-9">
                                    <div class="row">
                                        <div class="col-12 mt-2 admin-card-title">PRODUCTS</div>
                                        <div class="col-12 fs-3">6328</div>
                                    </div>
                                </div>
                                <div class="col-2 fs-2 mt-2">
                                    <i class="fa-sharp fa-solid fa-boxes-stacked"></i>
                                </div>
                                <div class="col-12 text-light">
                                    <div class="hr my-1 admin-card-hr"></div>
                                </div>
                                <div class="col-12">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="row">
                                                <div class="12  admin-card-subheading">
                                                    <span>OUT STOCK</span>
                                                </div>
                                                <div class="col-12 fs-5">
                                                    <span>57</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="row">
                                                <div class="12  admin-card-subheading">
                                                    <span>IN STOCK</span>
                                                </div>
                                                <div class="col-12 fs-5">
                                                    <span>657</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2 col-6  px-3 px-md-0 d-md-none">
                            <div class="row admin-card text-light p-2">
                                <div class="col-9">
                                    <div class="row">
                                        <div class="col-12 mt-2 admin-card-title">EVENTS</div>
                                        <div class="col-12 fs-3">6328</div>
                                    </div>
                                </div>
                                <div class="col-2 fs-2 mt-2">
                                    <i class="fa-sharp fa-solid fa-boxes-stacked"></i>
                                </div>
                                <div class="col-12 text-light">
                                    <div class="hr my-1 admin-card-hr"></div>
                                </div>
                                <div class="col-12">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="row">
                                                <div class="12  admin-card-subheading">
                                                    <span>ON GOING</span>
                                                </div>
                                                <div class="col-12 fs-5">
                                                    <span>57</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="row">
                                                <div class="12  admin-card-subheading">
                                                    <span>UP COMMING</span>
                                                </div>
                                                <div class="col-12 fs-5">
                                                    <span>657</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 mt-3">
                    <div class="row">
                        <div class="col-12">
                            <div class="card admin-card">
                                <div class="d-flex card-header justify-content-between align-items-center">
                                    <h4 class="text-light">Revenue</h4>
                                </div>
                                <div class="card-body pt-0">
                                    <div class="chart-content-bg text-light">
                                        <div class="row text-center px-5 py-3 justify-content-md-center">
                                            <div class="col-md-3 col-6 chart-secondary-content mx-md-2">
                                                <p class="mb-0 mt-3">Current Week</p>
                                                <h2 class="fw-normal mb-3">
                                                    <small class="mdi mdi-checkbox-blank-circle text-primary align-middle me-1"></small>
                                                    <span>$58,254</span>
                                                </h2>
                                            </div>
                                            <div class="col-md-3 col-6 chart-secondary-content mx-md-2">
                                                <p class="mb-0 mt-3">Previous Week</p>
                                                <h2 class="fw-normal mb-3">
                                                    <small class="mdi mdi-checkbox-blank-circle text-success align-middle me-1"></small>
                                                    <span>$69,524</span>
                                                </h2>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="sales-chart">
                                        <div id="salesChart"></div>
                                    </div>
                                </div> <!-- end card-body-->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-12 mt-3">
                    <div class="row">
                        <div class="col-12">
                            <div class="card admin-card">
                                <div class="d-flex card-header justify-content-between align-items-center">
                                    <h4 class="text-light">TOP 10 PRODUCTS</h4>
                                </div>
                                <div class="card-body pt-0">
                                    <div class="product-chart">
                                        <div id="chart"></div>
                                    </div>
                                </div> <!-- end card-body-->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-12 mt-3">
                    <div class="row">
                        <div class="col-12">
                            <div class="card admin-card">
                                <div class="card-header">
                                    <h4 class="text-light text-center">WEEKLY SALES TARGET</h4>
                                </div>
                                <div class="card-body pt-0">
                                    <div class="product-chart">
                                        <div id="progress"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-12 mt-3">
                    <div class="row">
                        <div class="col-12">
                            <div class="card admin-card shadow">
                                <div class="card-header text-light  text-center">
                                    <h4>PRODUCT CATEGORIES</h4>
                                </div>
                                <div class="card-body">
                                    <div id="chart-donut"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-12 mt-3">
                    <div class="row">
                        <div class="col-12">
                            <div class="card admin-card shadow">
                                <div class="card-header text-light  text-center">
                                    <h4>SALES vs. PURCHASES</h4>
                                </div>
                                <div class="card-body">
                                    <div id="chart-radar"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-12 mt-3">
                    <div class="row">
                        <div class="col-12">
                            <div class="card admin-card">
                                <div class="card-header">
                                    <h4 class="text-light text-center">ACTIVE USERS</h4>
                                    <div class="bg-secondary text-center text-dark fs-1 mt-4">144</div>
                                </div>
                                <div class="card-body overflow-y-scroll" style="height: 340px;">
                                    <table class="table table-borderless text-light">
                                        <tr>
                                            <th>Active Pages</th>
                                            <th>Users</th>
                                        </tr>
                                        <?php
                                            for ($i = 0; $i < 10; $i++) {
                                            ?>
                                        <tr>
                                            <td>/products/brandix-z4</td>
                                            <td>15</td>
                                        </tr>
                                        <?php
                                            }
                                            ?>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
        <div class="col-12 product-body d-none">
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
                                        <div class="col-12 col-md-3 mb-0 order-2 order-md-1">
                                            <form class="d-flex" role="search">
                                                <div class="input-group input-group-sm">
                                                    <span class="input-group-text mx-0 pe-1 border-1 border-end-0 rounded-0 bg-transparent" id="basic-addon1"><i class="bi bi-search text-light"></i></span>
                                                    <input type="search" class="form-control border-1 border-start-0 rounded-0 border-white bg-transparent text-light search-list" style="box-shadow: none;" placeholder="Search the Products..." aria-label="search" aria-describedby="search">
                                                    <select class="form-select rounded-0" style="box-shadow: none; max-width: max-content;">
                                                        <option selected>Filter</option>
                                                        <option value="1">Name</option>
                                                        <option value="2">Category</option>
                                                        <option value="3">Price</option>
                                                    </select>
                                                </div>
                                            </form>
                                        </div>
                                        <!-- This is large screen one diplay select section -->
                                        <div class="col-12 col-md-auto flex-md-grow-1 flex-shrink-1 text-light order-3 order-md-2 d-none d-md-block">
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
                                        <div class="col-12 col-md-auto  order-1 order-md-3 text-center mb-3 mb-md-0">
                                            <button class="btn export-btn icon-link-hover  rounded-0">
                                                <i class="bi bi-file-earmark-arrow-down icon-link"></i> Export
                                            </button>
                                            <button class="btn btn-danger add-btn icon-link-hover rounded-0" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                <i class="bi bi-plus-circle-fill icon-link"></i> Add Product
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 px-2 mt-4 overflow-y-auto scrollbar" style="height: 545px;">
                                    <table class="table table-dark table-striped table-hover table-responsive text-center text-nowrap">
                                        <thead>
                                        <tr>
                                            <th><input class="form-check-input focus-ring" type="checkbox" id="checkboxNoLabel" value=""></th>
                                            <th class="position-relative">Product Name <a href="#" class="stretched-link link-light icon-link text-decoration-none" style="font-size: 10px;"><i class="fa-solid fa-sort"></i></a></th>
                                            <th class="position-relative">Category <a href="#" class="stretched-link link-light icon-link text-decoration-none" style="font-size: 10px;"><i class="fa-solid fa-sort"></i></a></th>
                                            <th class="position-relative">Added Date <a href="#" class="stretched-link link-light icon-link text-decoration-none" style="font-size: 10px;"><i class="fa-solid fa-sort"></i></a></th>
                                            <th class="position-relative">Price <a href="#" class="stretched-link link-light icon-link text-decoration-none" style="font-size: 10px;"><i class="fa-solid fa-sort"></i></a></th>
                                            <th class="position-relative">Quantity <a href="#" class="stretched-link link-light icon-link text-decoration-none" style="font-size: 10px;"><i class="fa-solid fa-sort"></i></a></th>
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
                                                    Samsung Galaxy
                                                </a>
                                            </td>
                                            <td>
                                                Smart Phones
                                            </td>
                                            <td>
                                                2022/05/79
                                            </td>
                                            <td>
                                                45.67
                                            </td>
                                            <td class="sorting_1">
                                                52
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
                                                    Samsung Galaxy
                                                </a>
                                            </td>
                                            <td>
                                                Smart Phones
                                            </td>
                                            <td>
                                                2022/05/79
                                            </td>
                                            <td>
                                                66.00
                                            </td>
                                            <td class="sorting_1">
                                                67
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
                                            <p class="mb-0 d-none d-sm-block me-3 fw-semi-bold text-900 text-light" data-list-info="data-list-info">Showing 1 to 10 <span class="text-600"> of </span>15 Products</p>
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
        <div class="col-12 product-add-body d-none">
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
                                    <li class="breadcrumb-item  ms-auto"><a href="#" class="text-decoration-none">Home</a></li>
                                    <li class="breadcrumb-item text-secondary" aria-current="page">Add a Product</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
                <div class="col-12 px-4 mt-3 px-5">
                    <div class="row">
                        <div class="col-8">
                            <div class="mb-3">
                                <label for="exampleFormControlInput1" class="form-label">Product Title</label>
                                <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Product Title ... ">
                            </div>
                            <div class="mb-3">
                                <label for="exampleFormControlTextarea1" class="form-label">Product Description</label>
                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                            </div>
<%--                            /////////////////////////////////////////////--%>
                            <div class="card">
                                <div class="card-body">
                                    <div class="dropify-wrapper">
                                        <div class="dropify-message">
                                            <span class="file-icon"><p>Drag and drop a file here or click</p></span>
                                            <p class="dropify-error">Ooops, something wrong happened.</p>
                                        </div>
                                        <div class="dropify-loader" style="display: none;"></div>
                                        <div class="dropify-errors-container"><ul></ul></div>
                                        <input type="file" class="dropify" data-default-file="assets/images/avatar/team-1.jpg">
                                        <button type="button" class="dropify-clear btn-primary">Remove</button>
                                        <div class="dropify-preview" style="display: none;">
                                            <span class="dropify-render"></span>
                                            <div class="dropify-infos">
                                                <div class="dropify-infos-inner">
                                                    <p class="dropify-filename">
                                                        <span class="file-icon"></span>
                                                        <span class="dropify-filename-inner">team-1.jpg</span>
                                                    </p>
                                                    <p class="dropify-infos-message">Drag and drop or click to replace</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        <%--                            /////////////////////////////////////////////--%>
                            <div class="mb-3">
                                <label for="formFile" class="form-label">Display Images</label>
                                <input class="form-control" type="file" id="formFile">
                            </div>
                            <div class="mb-3">
                                <div class="row justify-content-center">
                                    <div class="col-2 me-1 bg-secondary" style="height: 150px;"></div>
                                    <div class="col-2 me-1 bg-secondary" style="height: 150px;"></div>
                                    <div class="col-2 me-1 bg-secondary" style="height: 150px;"></div>
                                    <div class="col-2 me-1 bg-secondary" style="height: 150px;"></div>
                                    <div class="col-2 me-1 bg-secondary" style="height: 150px;"></div>
                                </div>
                            </div>
                            <div class="mb-3">
                                <div class="row">
                                    <div class="col-12">
                                        <span>Inventory</span>
                                    </div>
                                    <div class="col-12 py-3">
                                        <div class="row border-top border-bottom border-light">
                                            <div class="col-6">
                                                <div class="row">
                                                    <div class="col-12 position-relative border-bottom border-light py-1 active-inv">
                                                        <a href="#" class="stretched-link link-light link-underline-opacity-0">Pricing</a>
                                                    </div>
                                                    <div class="col-12 position-relative border-top border-bottom border-light py-1">
                                                        <a href="#" class="stretched-link link-light link-underline-opacity-0">Initial Stock</a>
                                                    </div>
                                                    <div class="col-12 position-relative border-top border-bottom border-light py-1">
                                                        <a href="#" class="stretched-link link-light link-underline-opacity-0">Shipping</a>
                                                    </div>
                                                    <div class="col-12 position-relative border-top border-bottom border-light py-1">
                                                        <a href="#" class="stretched-link link-light link-underline-opacity-0">Global Delivery</a>
                                                    </div>
                                                    <div class="col-12 position-relative border-top border-bottom border-light py-1">
                                                        <a href="#" class="stretched-link link-light link-underline-opacity-0">Attributes</a>
                                                    </div>
                                                    <div class="col-12 position-relative border-top border-light py-1">
                                                        <a href="#" class="stretched-link link-light link-underline-opacity-0">Advanced</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6 border-start border-light">
                                                <div class="row">
                                                    <div class="col-12 mt-3">
                                                        <div class="mb-3">
                                                            <label for="exampleFormControlInput1" class="form-label">Regular Price</label>
                                                            <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="$$$">
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <div class="mb-3">
                                                            <label for="exampleFormControlInput1" class="form-label">Sales Price</label>
                                                            <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="$$$">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="row ps-5 pe-2">
                                <div class="col-12 card mb-3">
                                    <div class="card-body">
                                        <h5 class="card-title">Organize</h5>
                                        <div class="mb-3">
                                            <label for="exampleFormControlInput1" class="form-label">Category <a href="#" class="text-decoration-none" style="font-size: 13px;">Add new category</a></label>
                                            <select class="form-select" aria-label="Default select example">
                                                <option selected>Select a Category</option>
                                                <option value="1">One</option>
                                                <option value="2">Two</option>
                                                <option value="3">Three</option>
                                            </select>
                                        </div>
                                        <div class="mb-3">
                                            <label for="exampleFormControlInput1" class="form-label">Collection <a href="#" class="text-decoration-none" style="font-size: 13px;">Add new collection</a></label>
                                            <select class="form-select" aria-label="Default select example">
                                                <option selected>Select a Collection</option>
                                                <option value="1">One</option>
                                                <option value="2">Two</option>
                                                <option value="3">Three</option>
                                            </select>
                                        </div>
                                        <div class="mb-3">
                                            <label for="exampleFormControlInput1" class="form-label">Tags <a href="#" class="text-decoration-none" style="font-size: 13px;">View all tags</a></label>
                                            <select class="form-select" aria-label="Default select example">
                                                <option selected>Select Tags</option>
                                                <option value="1">One</option>
                                                <option value="2">Two</option>
                                                <option value="3">Three</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 card">
                                    <div class="card-body">
                                        <h5 class="card-title">Variants</h5>
                                        <div class="mb-3">
                                            <label for="exampleFormControlInput1" class="form-label">Color <a href="#" class="text-decoration-none" style="font-size: 13px;"></a></label>
                                            <select class="form-select mb-1" aria-label="Default select example">
                                                <option selected>Select a Color</option>
                                                <option value="1">One</option>
                                                <option value="2">Two</option>
                                                <option value="3">Three</option>
                                            </select>
                                            <input type="text" class="form-control" id="exampleFormControlInput1">
                                        </div>
                                        <div class="mb-3">
                                            <label for="exampleFormControlInput1" class="form-label">Size <a href="#" class="text-decoration-none" style="font-size: 13px;">Add new size</a></label>
                                            <select class="form-select mb-1" aria-label="Default select example">
                                                <option selected>Select a Size</option>
                                                <option value="1">One</option>
                                                <option value="2">Two</option>
                                                <option value="3">Three</option>
                                            </select>
                                            <input type="text" class="form-control" id="exampleFormControlInput1">
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


<!--Popper JS-->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"></script>
<!--Bootstrap JS--V5.3-->
<script src="assets/frameworks/js/bootstrapV5.3.bundle.min.js"></script>
<!--Apexcharts JS-->
<!-- <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script> -->
<script src="assets/frameworks/js/apexcharts.js"></script>

<script>
    const salesOptions = {
        chart: {
            type: "line",
            stacked: true,
            animations: {
                enabled: true,
                easing: 'linear',
                // speed: 800,
                // animateGradually: {
                // enabled: true,
                // delay: 150
                // },
                dynamicAnimation: {
                    // enabled: true,
                    speed: 1000
                }
            },
            dropShadow: {
                enabled: true,
                opacity: 0.3,
                blur: 5,
                left: -7,
                top: 22
            },
            foreColor: 'white',
            toolbar: {
                show: false
            },
            zoom: {
                enabled: false
            },
            width: '100%',
            height: '100%'
        },
        colors: ['#EA1756', '#3178FC', '#f02fc2'],
        stroke: {
            // curve:"smooth",
            curve: 'straight',
            width: 5
        },
        dataLabels: {
            enabled: false
        },
        grid: {
            borderColor: "#40475D",
            padding: {
                left: 0,
                right: 0
            }
        },
        markers: {
            size: 0,
            hover: {
                size: 0
            }
        },
        series: [{
            name: "Last Week Sales",
            data: [100, 1500, 1300, 1800, 1800, 2000, 2200]
        },
            {
                name: "This Week Sales",
                data: [1800, 2000, 2200, 2400, 1200, 1500, 1300]
            }
        ],
        xaxis: {
            axisTicks: {
                color: '#333'
            },
            axisBorder: {
                color: "#333"
            },
            // type: 'category',
            categories: ["Mon", "Tue", "Wed", "Thur", "Fri", "Sat", "Sun"]
        },
        yaxis: {
            min: 0
        },
        fill: {
            type: 'gradient',
            gradient: {
                gradientToColors: ['#CD5005', '#935ED5', '#6094ea'],
                // shade: 'dark',
                // type: 'vertical',
                // shadeIntensity: 0.5,
                // inverseColors: false,
                // opacityFrom: 1,
                // opacityTo: 0.8,
                // stops: [0, 100]
            },
        },
        tooltip: {
            theme: 'dark'
        },
        // title: {
        //     text: undefined,
        //     align: 'left',
        //     margin: 10,
        //     offsetX: 0,
        //     offsetY: 0,
        //     floating: false,
        //     style: {
        //         fontSize: '14px',
        //         fontWeight: 'bold',
        //         fontFamily: undefined,
        //         color: 'white'
        //     },
        // },
        title: {
            text: 'Processes',
            align: 'left',
            style: {
                fontSize: '12px'
            }
        },
        subtitle: {
            text: '20',
            floating: true,
            align: 'right',
            offsetY: 0,
            style: {
                fontSize: '22px'
            }
        },
        legend: {
            show: true,
            floating: true,
            horizontalAlign: 'left',
            onItemClick: {
                toggleDataSeries: false
            },
            position: 'top',
            offsetY: -28,
            offsetX: 60
        },
        responsive: [{
            breakpoint: 480,
            options: {
                chart: {
                    width: "100%"
                }
            }
        }],
        // theme: {
        //     mode: 'light',
        //     palette: 'palette1',
        //     monochrome: {
        //         enabled: false,
        //         color: '#255aee',
        //         shadeTo: 'light',
        //         shadeIntensity: 0.65
        //     },
        // },
        // forecastDataPoints: {
        //     count: 0,
        //     fillOpacity: 0.5,
        //     strokeWidth: undefined,
        //     dashArray: 4,
        // },
        grid: {
            // show: true,
            // borderColor: '#e0e0e0',
            // opacity: 0.5,
            // strokeDashArray: 7,
            position: 'back',
            // xaxis: {
            //     lines: {
            //         show: false
            //     }
            // },
            // yaxis: {
            //     lines: {
            //         show: true
            //     }
            // },
            // row: {
            //     colors: undefined,
            //     opacity: 0.5
            // },
            // column: {
            //     colors: undefined,
            //     opacity: 0.5
            // },
            // padding: {
            //     top: 0,
            //     right: 0,
            //     bottom: 0,
            //     left: 0
            // },
        }

    };

    const salesChart = new ApexCharts(document.querySelector("#salesChart"), salesOptions);

    salesChart.render();
</script>

<script>
    // Example data for the top 10 products
    const productsData = [{
        name: "Product A",
        value: 500
    },
        {
            name: "Product B",
            value: 400
        },
        {
            name: "Product C",
            value: 350
        },
        {
            name: "Product D",
            value: 300
        },
        {
            name: "Product E",
            value: 250
        },
        {
            name: "Product F",
            value: 200
        },
        {
            name: "Product G",
            value: 150
        },
        {
            name: "Product H",
            value: 100
        },
        {
            name: "Product I",
            value: 75
        },
        {
            name: "Product J",
            value: 50
        },
    ];

    // Create the chart
    const chart = new ApexCharts(document.querySelector("#chart"), {
        series: [{
            name: "Top Products",
            data: productsData.map((product) => product.value),
        }, ],
        title: {
            text: 'Load Average',
            align: 'left',
            style: {
                fontSize: '12px'
            }
        },
        subtitle: {
            text: '20%',
            floating: true,
            align: 'right',
            offsetY: 0,
            style: {
                fontSize: '22px'
            }
        },
        xaxis: {
            categories: productsData.map((product) => product.name),
            axisTicks: {
                color: '#333'
            },
            axisBorder: {
                color: "#333"
            }
        },
        chart: {
            type: "bar",
            height: 350,
            toolbar: {
                show: false,
            },
            foreColor: '#fff',
            width: '100%',
            height: '100%',
            zoom: {
                enabled: false
            }
        },
        colors: ['#FCCF31', '#17ead9', '#f02fc2'],
        fill: {
            type: 'gradient',
            gradient: {
                gradientToColors: ['#F55555', '#6078ea', '#6094ea'],
                shade: 'dark',
                type: 'vertical',
                shadeIntensity: 0.5,
                inverseColors: false,
                opacityFrom: 1,
                opacityTo: 0.8,
                stops: [0, 100]
            }
        },
        stroke: {
            width: 0,
            // colors: ["white"]
        },
        dataLabels: {
            enabled: false
        },
        grid: {
            borderColor: "#40475D",
        },
        // theme: {
        //     mode: 'light',
        //     palette: 'palette1',
        //     monochrome: {
        //         enabled: false,
        //         color: '#255aee',
        //         shadeTo: 'light',
        //         shadeIntensity: 0.65
        //     },
        // },
        // plotOptions: {
        //     bar: {
        //         horizontal: false,
        //     },
        // },
        tooltip: {
            theme: 'dark',
            y: {
                formatter: function(val) {
                    return "$" + val + "K";
                },
            },
        },
        legend: {
            show: true
        },
    });


    // Render the chart
    chart.render();
</script>

<script>
    var options = {
        chart: {
            height: 400,
            type: 'radialBar',
            foreColor: "#73B7BC",
        },
        colors: ['#0091A0'],
        plotOptions: {
            radialBar: {
                hollow: {
                    // size: '70%',
                    margin: 5,
                    size: '48%',
                    background: 'transparent',
                },
                track: {
                    show: true,
                    background: '#40475D',
                    strokeWidth: '10%',
                    opacity: 1,
                    margin: 3, // margin is in pixels
                },
                dataLabels: {
                    show: true,
                    name: {
                        offsetY: -10,
                        fontSize: '22px',
                    },
                    value: {
                        color: '#73B7BC',
                        fontSize: '36px',
                        fontWeight: 'bold',
                        offsetY: 10,
                    },
                    total: {
                        show: true,
                        label: 'Progress',
                        formatter: function(w) {
                            return '50%';
                        }
                    }
                }
            }
        },
        // fill: {
        //     type: 'gradient',
        //     gradient: {
        //         inverseColors: false,
        //         gradientToColors: ['#6078ea']
        //     }
        // },
        fill: {
            type: 'gradient',
            gradient: {
                shade: 'dark',
                type: 'horizontal',
                shadeIntensity: 0.5,
                gradientToColors: ['#31FC5F'],
                inverseColors: false,
                opacityFrom: 1,
                opacityTo: 1,
                stops: [20, 100]
            }
        },
        series: [100],
        labels: ['Progress'],
    };

    var progress = new ApexCharts(document.querySelector("#progress"), options);
    progress.render();
</script>

<script>
    let optionDonut = {
        chart: {
            type: 'donut',
            width: '100%',
            height: 400,
            foreColor: 'white',
        },
        dataLabels: {
            enabled: false,
        },
        plotOptions: {
            pie: {
                customScale: 0.8,
                donut: {
                    size: '75%',
                },
                // offsetY: 20,
            },
            stroke: {
                colors: undefined
            }
        },

        // colors: colorPalette,

        series: [21, 23, 19, 14, 6],
        labels: ['Clothing', 'Food Products', 'Electronics', 'Kitchen Utility', 'Gardening'],
        legend: {
            position: 'top',
            offsetY: '0px'
        }
    };

    var donut = new ApexCharts(document.querySelector("#chart-donut"), optionDonut);
    donut.render();
</script>

<script>
    /*  Radar Chart */
    let option3 = {
        chart: {
            height: 380,
            type: 'radar',
            foreColor: 'grey',
        },
        plotOptions: {
            radar: {
                polygons: {
                    strokeColor: '#e8e8e8',
                    fill: {
                        colors: ['#f8f8f8', '#fff']
                    }
                }
            }
        },
        markers: {
            size: 5,
            hover: {
                size: 10
            }
        },
        series: [{
            name: 'Sales',
            data: [45, 52, 38, 24, 33, 10, 73, 27, 91, 23, 24, 81]
        },
            {
                name: 'Purchase',
                data: [26, 21, 20, 6, 8, 15, 29, 62, 65, 52, 74, 93]
            }
        ],
        labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'Octomber', 'November', 'December']
    };

    let chart3 = new ApexCharts(document.querySelector('#chart-radar'), option3);
    chart3.render();
</script>

<script>
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
    var tooltipList = tooltipTriggerList.map(function(tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl)
    })
</script>

<script>
    // Get the link elements and div elements
    const offcanvasLink = document.getElementById('offcanvasLink');

    const link1 = document.getElementById('dashboard');
    const link2 = document.getElementById('customerManagement');
    const link3 = document.getElementById('productDetails');
    const link4 = document.getElementById('productAdd');

    const dashboardBody = document.querySelector('.dashboard-body');
    const customerBody = document.querySelector('.customer-body');
    const productBody = document.querySelector('.product-body');
    const productAddBody = document.querySelector('.product-add-body');

    // Add event listener to link1
    link1.addEventListener('click', function(event) {
        event.preventDefault(); // Prevent the default behavior of the link

        // Remove the d-none class from dashboard-body and add it to customer-body
        dashboardBody.classList.remove('d-none');
        customerBody.classList.add('d-none');
        productBody.classList.add('d-none');
        productAddBody.classList.add('d-none');

        //Remove the active class from dashboard link in offcanvas and add it to customer link
        link1.classList.add('active');
        link2.classList.remove('active');
        link3.classList.remove('active');
        link4.classList.remove('active');

        // Trigger click event on offcanvasLink
        offcanvasLink.click();
    });

    // Add event listener to link2
    link2.addEventListener('click', function(event) {
        event.preventDefault(); // Prevent the default behavior of the link

        // Remove the d-none class from customer-body and add it to dashboard-body
        dashboardBody.classList.add('d-none');
        customerBody.classList.remove('d-none');
        productBody.classList.add('d-none');
        productAddBody.classList.add('d-none');

        //Remove the active class from customer link in offcanvas and add it to dashboard link
        link2.classList.add('active');
        link1.classList.remove('active');
        link3.classList.remove('active');
        link4.classList.remove('active');

        // Trigger click event on offcanvasLink
        offcanvasLink.click();
    });

    link3.addEventListener('click', function(event) {
        event.preventDefault(); // Prevent the default behavior of the link

        // Remove the d-none class from customer-body and add it to dashboard-body
        dashboardBody.classList.add('d-none');
        customerBody.classList.add('d-none');
        productBody.classList.remove('d-none');
        productAddBody.classList.add('d-none');

        //Remove the active class from customer link in offcanvas and add it to dashboard link
        link2.classList.remove('active');
        link1.classList.remove('active');
        link3.classList.add('active');
        link4.classList.remove('active');

        // Trigger click event on offcanvasLink
        offcanvasLink.click();
    });

    link4.addEventListener('click', function(event) {
        event.preventDefault(); // Prevent the default behavior of the link

        // Remove the d-none class from customer-body and add it to dashboard-body
        dashboardBody.classList.add('d-none');
        customerBody.classList.add('d-none');
        productBody.classList.add('d-none');
        productAddBody.classList.remove('d-none');

        //Remove the active class from customer link in offcanvas and add it to dashboard link
        link2.classList.remove('active');
        link1.classList.remove('active');
        link3.classList.remove('active');
        link4.classList.add('active');

        // Trigger click event on offcanvasLink
        offcanvasLink.click();
    });
</script>

</body>

</html>