<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<tbody class="table-group-divider">
<c:forEach items="${searchResult}" var="product">
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
               class="action-icon text-danger mx-1 text-decoration-none"
               data-bs-toggle="tooltip" data-bs-placement="top" title="Block">
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
</tbody>