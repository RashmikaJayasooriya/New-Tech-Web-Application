<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<layout:extends name="base">
    <layout:put block="contents">
        <div class="container-fluid p-0">
            <div class="row-fluid m-0">
                <div class="col-12">
                    <div class="row">
                        <!-- BreadCrumb -->
                        <div class="col-12 ps-4 mt-3">
                            <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);"
                                 aria-label="breadcrumb">
                                <ol class="breadcrumb mb-0">
                                    <li class="breadcrumb-item"><a href="/newtech/">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Purchased History</li>
                                </ol>
                            </nav>
                        </div>
                        <div class="col-12 text-center mb-3">
                            <span class="fw-bold fs-3">Transaction Hist<i class="bi bi-clock-history"></i>ry</span>
                        </div>
                        <div class="col-12">
                            <div class="table-responsive px-5 mt-3 scrollbar">
                                <table class="table table-striped table-hover table-light table-bordered">
                                    <thead>
                                    <tr>
                                        <th scope="col" class="text-nowrap">#</th>
                                        <th scope="col" class="text-nowrap">Invoice Number</th>
                                        <th scope="col" class="text-nowrap">Item Image</th>
                                        <th scope="col" class="text-nowrap">Ordered Item Details</th>
                                        <th scope="col">Date</th>
                                        <th scope="col">Unit Price</th>
                                        <th scope="col">Quantity</th>
                                        <th scope="col">Total Price</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">Manage</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:set var="myList"
                                           value="camera(0),console(0),laptop(0),mobile(0),drone(0),smartHome(0)"/>

                                    <c:forEach items="${myList}" var="item">
                                        <tr>
                                            <td scope="row"><span><?php echo $i + 1; ?></span></td>
                                            <td scope="row"><span>18eca633987a</span></td>
                                            <td class="text-center">
                                                <img src="assets/images/products/${item}.jpeg" class="img-fluid" width="100" height="10">
                                            </td>
                                            <td>
                                                <ol>
                                                    <li>Product Name:- Huawei P30 Pro p30 p30 lite</li>
                                                    <li>Product Description:- Lorem, ipsum dolor sit amet consectetur
                                                        adipisicing elit. Veritatis, commodi.
                                                    </li>
                                                </ol>
                                            </td>
                                            <td>2001/04/05</td>
                                            <td>Rs.2500.00</td>
                                            <td>2</td>
                                            <td>Rs.5500.00</td>
                                            <td>Packing</td>
                                            <td>
                                                <div class="row-fluid">
                                                    <div class="col">
                                                        <div class="row-fluid">
                                                            <div class="offset col d-grid">
                                                                <button class="btn btn-sm btn-success rounded d-flex my-1 "
                                                                        onclick="addfeedback();"><i
                                                                        class="bi bi-info-circle-fill"></i> &nbsp;Feedback
                                                                </button>
                                                            </div>
                                                            <div class="offset col d-grid">
                                                                <button class="btn btn-sm btn-danger rounded d-flex my-1 "
                                                                        onclick="deletefrompurchasehistory();"><i
                                                                        class="bi bi-trash-fill"></i> &nbsp;Delete
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- Pagination -->
                        <div class="col-12 d-flex justify-content-center mt-2 mb-4">
                            <nav>
                                <ul class="pagination">
                                    <li class="page-item">
                                        <a class="page-link">Previous</a>
                                    </li>
                                    <li class="page-item"><a class="page-link shadow-none" href="#">1</a></li>
                                    <li class="page-item pagination-active" aria-current="page">
                                        <a class="page-link shadow-none" href="#">2</a>
                                    </li>
                                    <li class="page-item shadow-none"><a class="page-link shadow-none" href="#">3</a>
                                    </li>
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
    </layout:put>
</layout:extends>
