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
                    <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);"
                         aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="/newtech/">Home</a></li>
                            <li class="breadcrumb-item"><a href="productlistning">Product Listning</a></li>
                            <li class="breadcrumb-item"><a href="singleproductview">single Product View</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Advanced Search</li>
                        </ol>
                    </nav>
                </div>
                <div class="col-12 mt-3">
                    <!--Saving Methods-->
                    <div class="col-12 btn-toolbar justify-content-end">
                        <button class="btn btn-dark me-2" onclick="printDiv();"><i class="bi bi-printer-fill">
                            Print </i></button>
                        <button class="btn btn-danger me-2" id="generatePDF"><i class="bi bi-file-earmark-pdf-fill">
                            Save As PDF</i></button>
                    </div>
                    <div class="col-12">
                        <hr class="" style="border:1px solid #FF6D00 !important;">
                    </div>
                    <div id="GFG">
                        <!--invoice header-->
                        <div class="col-12">
                            <div class="row">
                                <!--img-->
                                <div class="col-6 ps-4">
                                    <div class="invoiceheaderimg"></div>
                                </div>
                                <!--text-->
                                <div class="col-6">
                                    <div class="row">
                                        <div class="col-12 text-end fw-bold text-decoration-underline text-primary pe-4">
                                            <div class="">
                                                <img src="assets/images/logo/New Tech (5).png" alt="logo"
                                                     class="img-fluid">
                                            </div>
                                        </div>
                                        <div class="col-12 text-end fw-bold pe-5">
                                            <span>No 104,<br/> Udahamullah,</br> Nugegoda</span><br/>
                                            <span>+94760391109</span><br/>
                                            <span>newTech@outlook.com</span><br/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <hr class="" style="border:1px solid #FF6D00 !important;">
                        </div>
                        <!--invoice body-->
                        <div class="col-12 mb-4">
                            <div class="row">
                                <div class="col-6 ps-4">
                                    <h5>INVOICE TO :</h5>
                                    <h2>
                                        Rashmika Jayasooriya
                                    </h2>
                                    <span class="fw-bold">74/20, Jaya Road,Udahamullah</span><br/>
                                    <span class="fw-bold text-decoration-underline" style="color: #FF6D00;">uvindurashmika20010405@outlook.com</span><br/>
                                </div>
                                <div class="col-6 text-end mt-4 pe-4">
                                    <h1>INVOICE 616b0d</h1>
                                    <span class="fw-bold">Date of Invoice :</span>&nbsp;
                                    <span class="fw-bold">2021-10-16</span>
                                </div>
                            </div>
                        </div>
                        <!--table-->
                        <div class="col-12">
                            <div class="table-responsive mt-3 scrollbar">
                                <table class="table table-striped table-hover table-light">
                                    <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col" class="text-nowrap">Ordered Item Details</th>
                                        <th scope="col">Purchased Date</th>
                                        <th scope="col">Unit Price</th>
                                        <th scope="col">Quantity</th>
                                        <th scope="col">Products Total Price</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php
                                    for($i=0;$i<3;$i++){
                                        ?>
                                    <tr>
                                        <td scope="row"><?php echo $i+1; ?></td>
                                        <td>
                                            <ul>
                                                <li>Product Name:- Sonoff Smart Home ZigBee Bridge Temperature Humidity
                                                    Motion Door Window Sensor
                                                </li>
                                                <li>Product Description:- Lorem ipsum dolor sit amet.</li>
                                            </ul>
                                        </td>
                                        <td>2001/04/05</td>
                                        <td>Rs.2500.00</td>
                                        <td>2 units</td>
                                        <td>Rs.5500.00</td>
                                    </tr>
                                    <?php
                                    }
                                    ?>
                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <td colspan="3" class="border-0"></td>
                                        <td colspan="2" class="fs-5 text-end">SUBTOTAL</td>
                                        <td class="fs-5 text-end">Rs.16500.00</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" class="border-0"></td>
                                        <td colspan="2" class="fs-5 text-end "
                                            style="border-color: #FF6D00 !important;">Discount
                                        </td>
                                        <td class="fs-5 text-end" style="border-color: #FF6D00 !important;">Rs.1000.00
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" class="border-0"></td>
                                        <td colspan="2" class="fs-5 text-end border-0 "
                                            style="color: #FF6D00 !important;">GRAND TOTAL
                                        </td>
                                        <td class="fs-5 text-end border-0 " style="color: #FF6D00 !important;">
                                            Rs.15500.00
                                        </td>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
                            <div class="col-4 ms-5" style="margin-top:-100px; margin-bottom: 50px;">
                                <span class="fs-1">Thank You!</span>
                            </div>
                        </div>
                        <!--invoice notice -->
                        <div class="col-12 mt-3 mb-3 rounded"
                             style="background-color: #ff6f0075; border-left: #FF6D00 solid 5px;">
                            <div class="row">
                                <div class="col-12 mt-3 mb-3">
                                    <label class="form-label fs-5 fw-bold ps-4">Notice :</label>
                                    <label class="form-label fs-5">Purchased items can be return before 7 days of
                                        delivery.</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <hr class="" style="border:1px solid #FF6D00 !important;">
                        </div>
                        <div class="col-12 mb-3 text-center">
                            <label class="form-label fs-6 text-black-50">
                                Invoice was created in a computer and is valid without the Signature and Seal.
                            </label>
                        </div>
                        <div id="editor"></div>
                    </div>
                </div>
            </div>
        </div>
    </layout:put>
</layout:extends>