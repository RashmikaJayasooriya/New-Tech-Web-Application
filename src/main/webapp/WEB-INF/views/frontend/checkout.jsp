<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<layout:extends name="base">
  <layout:put block="contents">
    <div class="container-fluid p-0">
      <div class="row-fluid m-0">

        <div class="col-12 text-center my-3">
          <!-- BreadCrumb -->
          <div class="col-12 ps-4 mt-3">
            <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
              <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item"><a href="/newtech/">Home</a></li>
                <li class="breadcrumb-item"><a href="cart">Cart</a></li>
                <li class="breadcrumb-item active" aria-current="page">Checkout</li>
              </ol>
            </nav>
          </div>
          <span class="fw-bold fs-3"><i class="bi bi-info-circle-fill"></i> Checkout</span>
        </div>
        <div class="col-12">
          <div class="card">
            <div class="card-body">
              <div class="row d-flex justify-content-center pb-5">
                <div class="col-md-8 col-xl-8 mb-4 mb-md-0">
                  <div class="row">
                    <div class="col-12">
                      <!-- chechout info start -->
                      <p class="fs-4 fw-bold">Billing Details</p>
                      <div class="row g-3">
                        <div class="col-md-6">
                          <label class="form-label">First Name</label>
                          <input type="text" class="form-control" id="">
                        </div>
                        <div class="col-md-6">
                          <label class="form-label">Last Name</label>
                          <input type="text" class="form-control" id="">
                        </div>
                        <div class="col-md-6">
                          <label class="form-label">Phone Number 1</label>
                          <input type="text" class="form-control" id="">
                        </div>
                        <div class="col-md-6">
                          <label class="form-label">Phone Number 2</label>
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
                          <label for="inputAddress" class="form-label">Order Notes (Optional)</label>
                          <textarea class="form-control" placeholder="Notes about your order, eg:- special notes for delivery" id=""></textarea>
                        </div>
                      </div>
                      <!-- chechout info end -->
                    </div>
                  </div>
                </div>
                <div class="col-md-4 col-xl-4 offset-xl-0">
                  <div class="row mx-0">
                    <!-- Total Price Summary Card -->
                    <div class="col-12 px-0 mb-5">
                      <div class="rounded d-flex flex-column p-2 mt-3 shadow shadow-lg" style="background-color: #f8f9fa;">
                        <div class="p-2 me-3">
                          <h4 class="h4 fw-semibold">Summary of Your Order</h4>
                        </div>

                        <div class="px-2 pt-3 me-3">
                          <p class="fs-5 h5 fw-semibold lh-1">Products</p>
                          <hr>
                        </div>
                        <div class="px-2 d-flex">
                          <div class="col-8">Palm Jacket x 2</div>
                          <div class="ms-auto">$186.76</div>
                        </div>
                        <div class="px-2 d-flex">
                          <div class="col-8">Palm Jacket x 2</div>
                          <div class="ms-auto">$1000.00</div>
                        </div>
                        <div class="p-2 d-flex h6">
                          <div class="col-8">Sub Total</div>
                          <div class="ms-auto">$1186.76</div>
                        </div>

                        <div class="px-2 pt-3 me-3">
                          <p class="fs-5 h5 fw-semibold lh-1">Shipping</p>
                          <hr>
                        </div>
                        <div class="px-2 d-flex">
                          <div class="col-8">Freight Charges</div>
                          <div class="ms-auto">$1000.00</div>
                        </div>
                        <div class="p-2 d-flex h6">
                          <div class="col-8">Total Tax exclusive</div>
                          <div class="ms-auto">$1186.76</div>
                        </div>

                        <div class="px-2 pt-3 me-3">
                          <p class="fs-5 h5 fw-semibold lh-1">Tax</p>
                          <hr>
                        </div>
                        <div class="px-2 d-flex">
                          <div class="col-8">Freight Charges</div>
                          <div class="ms-auto">$1000.00</div>
                        </div>
                        <div class="p-2 d-flex h6">
                          <div class="col-8">Total Tax Inclusive</div>
                          <div class="ms-auto">$1186.76</div>
                        </div>

                        <div class="border-top px-2 mx-2"></div>
                        <div class="p-2 d-flex pt-3">
                          <div class="col-8 h5"><b>Total</b></div>
                          <div class="ms-auto"><b class="text-success h5">$1186.00</b></div>
                        </div>
                        <div class="border-top px-2 mx-2"></div>

                        <div class="px-2 pt-3 me-3">
                          <p class="fs-5 h5 fw-semibold lh-1">Payment Methods</p>
                          <hr>
                        </div>

                        <div class="px-2">
                          <div class="accordion" id="accordionExample">
                            <div class="accordion-item  border border-0">
                                                        <span class="accordion-header">
                                                            <input type="radio" name="accordionRadio" class="accordion-radio" id="radioOne">
                                                            <label class="accordion-label" for="radioOne">Direct Bank Transfer</label>
                                                        </span>
                              <div id="collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                  Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order will not be shipped until the funds have cleared in our account.
                                </div>
                              </div>
                            </div>
                            <div class="accordion-item  border border-0">
                                                        <span class="accordion-header ">
                                                            <input type="radio" name="accordionRadio" class="accordion-radio" id="radioTwo">
                                                            <label class="accordion-label" for="radioTwo">Check Payments</label>
                                                        </span>
                              <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                  Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.
                                </div>
                              </div>
                            </div>
                            <div class="accordion-item  border border-0">
                                                        <span class="accordion-header">
                                                            <input type="radio" name="accordionRadio" class="accordion-radio" id="radioThree">
                                                            <label class="accordion-label" for="radioThree">Cash on Delivery</label>
                                                        </span>
                              <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                  Pay with cash upon delivery.
                                </div>
                              </div>
                            </div>
                            <div class="accordion-item  border border-0">
                                                        <span class="accordion-header">
                                                            <input type="radio" name="accordionRadio" class="accordion-radio" id="radioFour">
                                                            <label class="accordion-label" for="radioFour">Paypal</label>
                                                        </span>
                              <div id="collapseFour" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                  Pay via PayPal, you can pay with your credit cart if you don't have a PayPal account.
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>

                        <div class="p-4 d-flex d-grid">
                          <button class="btn btn-danger offset-1 col-10">Place the Order</button>
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
  <layout:put block="baseStyle" type="REPLACE">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
    <!-- <script src="assets/frameworks/js/bootstrap.bundle.min.js"></script> -->
    <script>
      const radioButtons = document.querySelectorAll('.accordion-radio');
      radioButtons.forEach((radioButton) => {
        radioButton.addEventListener('change', function() {
          const targetCollapseId = this.getAttribute('id').replace('radio', 'collapse');
          const targetCollapse = document.getElementById(targetCollapseId);
          const accordion = new bootstrap.Collapse(targetCollapse);
          accordion.toggle();
        });
      });
    </script>
  </layout:put>
</layout:extends>
