<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<layout:extends name="base">
    <layout:put block="contents">
        <div class="container-fluid p-0">
            <div class="row-fluid m-0">
                <div class="col-12">
                    <div class="row mx-0">
                        <!-- BreadCrumb -->
                        <div class="text-center mt-3">
                            <div class="col-12 ps-4 mt-3">
                                <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
                                    <ol class="breadcrumb mb-0">
                                        <li class="breadcrumb-item"><a href="/newtech/">Home</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">MyAccount</li>
                                    </ol>
                                </nav>
                            </div>
                            <span class="fw-bold fs-3"><i class="bi bi-person-bounding-box"></i> My Account</span>
                        </div>
                        <div class="col-12">
                            <div class="row">
                                <div class="col-lg-3 col-md-4 col-sm-5 col-12 mb-2">
                                    <div class="card my-2">
                                        <div class="card-header d-flex justify-content-between icon-link">
                                            <span class="">Profile</span>
                                            <button class="btn btn-sm btn-outline-danger">Logout <i class="bi bi-box-arrow-right"></i></button>
                                        </div>
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-12 text-center">
                                                    <img src="assets/images/userProfImgs/three.jpeg" class="img-thumbnail" style="width: 100px; height: 100px;">
                                                </div>
                                                <div class="col-12 mt-2">
                                                    <span><i class="bi bi-person-lines-fill"></i> Mr.Rashmika Jayasooriya</span>
                                                    <br /><span><i class="bi bi-calendar-event"></i> 2001/04/05</span>
                                                    <br /><span><i class="bi bi-telephone-fill"></i> 202-555-0174</span>
                                                    <br /><span><i class="bi bi-envelope-fill"></i> adrianallan@gmail.com</span>
                                                    <br /><span><i class="bi bi-signpost-fill"></i> 2734 West Fork Street,EASTON 02334.</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-footer">
                                            <div class="row">
                                                <div class="col-12">
                                                    <a href="#" class="icon-link icon-link-hover link-underline link-underline-opacity-0"><i class="icon-link bi bi-suit-heart-fill"></i> My Wishlist</a><br />
                                                    <a href="#" class="icon-link icon-link-hover link-underline link-underline-opacity-0"><i class="icon-link bi bi-cart3"></i> My Cart</a><br />
                                                    <a href="#" class="icon-link icon-link-hover link-underline link-underline-opacity-0"><i class="icon-link bi bi-truck"></i> My Orders</a><br />
                                                    <a href="#" class="icon-link icon-link-hover link-underline link-underline-opacity-0"><i class="bi bi-clock-history"></i> My Purchase History</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-header">
                                            <span>Payment Method</span>
                                        </div>
                                        <div class="card-body">
                                            <i class="bi bi-credit-card-2-back fs-3"></i><span> Visa *******7548</span></br>
                                            <span>Next billing charged $48</span><br />
                                            <span>Autopay on July 20, 2021</span><a href="#" class="link-warning text-decoration-none ms-2" style="font-size: 14px;">Edit Payment Info</a><br />
                                            <button class="btn btn-primary btn-sm mt-1">Add Payment Info</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-9 col-md-8 col-sm-7 col-12 mb-2">
                                    <div class="card my-2">
                                        <div class="card-header">
                                            <span>Profile Settings</span>
                                        </div>
                                        <div class="card-body">
                                            <div class="accordion" id="accordionExample">
                                                <div class="accordion-item">
                                                    <h2 class="accordion-header">
                                                        <button class="accordion-button text-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                            Account Detalis
                                                        </button>
                                                    </h2>
                                                    <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
                                                        <div class="accordion-body">
                                                            <div class="row g-3">
                                                                <div class="col-md-6">
                                                                    <label for="" class="form-label">First Name</label>
                                                                    <input type="text" class="form-control" id="">
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label for="" class="form-label">Last Name</label>
                                                                    <input type="text" class="form-control" id="">
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label for="inputEmail4" class="form-label">Email</label>
                                                                    <input type="email" class="form-control" id="inputEmail4">
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label for="inputPassword4" class="form-label">Password</label>
                                                                    <input type="password" class="form-control" id="inputPassword4">
                                                                </div>
                                                                <div class="col-6">
                                                                    <label for="" class="form-label">Date Of Birth</label>
                                                                    <input type="date" class="form-control" id="" placeholder="">
                                                                </div>
                                                                <div class="col-6">
                                                                    <label for="" class="form-label">Mobile No.</label>
                                                                    <input type="text" class="form-control" id="" placeholder="">
                                                                </div>

                                                                <div class="col-12">
                                                                    <button type="submit" class="btn btn-sm btn-success mt-2">Update Details</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="accordion-item">
                                                    <h2 class="accordion-header">
                                                        <button class="accordion-button text-primary collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                            Change Password
                                                        </button>
                                                    </h2>
                                                    <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                                                        <div class="accordion-body">
                                                            <div class="row g-3">

                                                                <div class="col-md-6">
                                                                    <label for="inputPassword4" class="form-label">Current Password</label>
                                                                    <input type="password" class="form-control" id="inputPassword4">
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label for="inputPassword4" class="form-label">New Password</label>
                                                                    <input type="password" class="form-control" id="inputPassword4">
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label for="inputPassword4" class="form-label">Confirm New Password</label>
                                                                    <input type="password" class="form-control" id="inputPassword4">
                                                                </div>

                                                                <div class="col-12">
                                                                    <button type="submit" class="btn btn-sm btn-success mt-2">Update Password</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="accordion-item">
                                                    <h2 class="accordion-header">
                                                        <button class="accordion-button collapsed text-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                            Addresses
                                                        </button>
                                                    </h2>
                                                    <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                                                        <div class="accordion-body">
                                                            <div class="row">
                                                                <div class="col-12 border border-1 p-3">
                                                                    <div class="row g-3">
                                                                        <div>
                                                                            <span>Billing Address</span>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <label for="" class="form-label">Name</label>
                                                                            <input type="text" class="form-control" id="">
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

                                                                        <div class="col-12">
                                                                            <button type="submit" class="btn btn-sm btn-success mt-2">Update Billing Address</button>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-12  border border-1 p-3 mt-1">
                                                                    <div class="row g-3">
                                                                        <div>
                                                                            <span>Shipping Address</span>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <label for="" class="form-label">Name</label>
                                                                            <input type="text" class="form-control" id="">
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

                                                                        <div class="col-12">
                                                                            <button type="submit" class="btn btn-sm btn-success mt-2">Update Shipping Address</button>
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
                    </div>
                </div>
            </div>
        </div>
    </layout:put>
</layout:extends>