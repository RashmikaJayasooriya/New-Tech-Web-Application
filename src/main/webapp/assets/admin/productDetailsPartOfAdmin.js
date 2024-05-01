//Back End

// Product update
document.addEventListener("DOMContentLoaded", function () {
    const updateButtons = document.querySelectorAll(".update-button");

    updateButtons.forEach(function (button) {
        button.addEventListener("click", function () {
            const modal = document.querySelector("#staticBackdrop");

            const productId = button.getAttribute("data-product-id");
            const productName = button.getAttribute("data-product-name");
            const selectedCategoryId = button.getAttribute("data-selected-category-id");
            const categoryValue = button.getAttribute("data-category-value");
            const selectedSubCategoryId = button.getAttribute("data-sub-category-id");
            const subCategory = button.getAttribute("data-sub-category");
            const brandName = button.getAttribute("data-brand-name");
            const brandId = button.getAttribute("data-brand-name-id");
            const description = button.getAttribute("data-description");
            const price = button.getAttribute("data-price");
            const stockQuantity = button.getAttribute("data-stock-quantity");
            const sku = button.getAttribute("data-sku");
            const minStock = button.getAttribute("data-minStock");
            const colorId = button.getAttribute("data-color");
            const status = button.getAttribute("data-status");

            // Populate the modal's input fields with the product details

            const modalTitle = modal.querySelector(".modal-title");
            const productIdInput = modal.querySelector("#productIdInput");
            const productNameInput = modal.querySelector("#productNameInput");
            const categorySelectModal = modal.querySelector("#productCategorySelectModal");
            const categoryValueInput = modal.querySelector("#categoryValueInput");
            const subCategoryInput = modal.querySelector("#subCategoryInput");
            const subCategorySelectModal = modal.querySelector("#productSubCategorySelectModal");
            const brandNameInput = modal.querySelector("#brandNameInput");
            const brandSelectModal = modal.querySelector("#productBrandSelectModal");
            const descriptionInput = modal.querySelector("#descriptionInput");
            const priceInput = modal.querySelector("#priceInput");
            const stockQuantityInput = modal.querySelector("#stockQuantityInput");
            const skuInput = modal.querySelector("#skuInput");
            const minStockThreshInput = modal.querySelector("#minStockThreshInput");
            const colorSelectInput = modal.querySelector("#productColorSelectModal");
            const statusInput = modal.querySelector("#statusInput");

            modalTitle.innerText = "Product Update";
            productIdInput.value = productId;
            productNameInput.value = productName;
            console.log(selectedCategoryId);
            categorySelectModal.value = selectedCategoryId;
            // categoryValueInput.value = categoryValue;
            // subCategoryInput.value = subCategory;
            console.log(selectedSubCategoryId);
            subCategorySelectModal.value = selectedSubCategoryId;
            // brandNameInput.value = brandName;
            console.log(brandId);
            brandSelectModal.value = brandId;
            descriptionInput.value = description;
            priceInput.value = price;
            stockQuantityInput.value = stockQuantity;
            skuInput.value = sku;
            minStockThreshInput.value = minStock;
            colorSelectInput.value = colorId;
            statusInput.value = status;
        });
    });
});

document.getElementById("updateProduct").addEventListener("click", function () {
    const modal = document.querySelector("#staticBackdrop");

    var productDetails = {
        productId: modal.querySelector("#productIdInput").value,
        productCategorySelectValue: modal.querySelector("#productCategorySelectModal").value,
        productSubCategorySelectValue: modal.querySelector("#productSubCategorySelectModal").value,
        productBrandSelectValue: modal.querySelector("#productBrandSelectModal").value,
        productTitleValue: modal.querySelector("#productNameInput").value,
        productDescriptionValue: modal.querySelector("#descriptionInput").value,
        productSKUValue: modal.querySelector("#skuInput").value,
        productPriceValue: modal.querySelector("#priceInput").value,
        productInitQtyValue: modal.querySelector("#stockQuantityInput").value,
        productMinStockThreshValue: modal.querySelector("#minStockThreshInput").value,
        productColorSelectValue: modal.querySelector("#productColorSelectModal").value,
    };

    fetch("updateProduct", {
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        method: "PUT",
        body: JSON.stringify(productDetails)
    }).then(response => response.text())
        .then(text => {
            console.log(text);
            alert(text);
            if (text === "Product Updated Successfully") {
                document.getElementById('closeButton').click();
                location.reload();

            }
        })
        .catch(error => {
            console.error('Error:', error);
        });
})

document.getElementById("searchProduct").addEventListener("click", function () {
    const queryParams = new URLSearchParams();
    queryParams.append('productName', document.getElementById("searchName").value || '');
    queryParams.append('productDescription', document.getElementById("searchDescription").value || '');
    queryParams.append('productCategory', document.getElementById("searchCategory").value || '');
    queryParams.append('productSubCategory', document.getElementById("searchSubCategory").value || '');
    queryParams.append('productBrand', document.getElementById("searchBrand").value || '');

    fetch("searchProduct?" + queryParams.toString(), {
        method: "GET"
    })
        .then(response => response.text()) // Convert response to text
        .then(data => {
            // Log the response to the console
            console.log(data);
            document.getElementById("productBody").innerHTML = data;
            console.log("OK")
        })
        .catch(error => {
            console.error('Error:', error);
        })
})

document.addEventListener("DOMContentLoaded", function () {
    // Find all elements with the class "product-delete"
    const deleteButtons = document.querySelectorAll(".product-delete");

    // Add a click event listener to each delete button
    deleteButtons.forEach(function (button) {
        button.addEventListener("click", function (event) {
            // Prevent the default behavior of the anchor tag
            event.preventDefault();

            // Get the product ID from the "id" attribute of the clicked element
            const productId = button.id;

            fetch(`deleteProduct/${productId}`, {
                method: "DELETE",
            })
                // .then(response => {
                //     if (response.ok) {
                //         console.log("Product deleted successfully");
                //     } else {
                //         console.error("Failed to delete product");
                //     }
                // })
                // .catch(error => {
                //     console.error("Error:", error);
                // })
                .then(response => response.text()) // Convert response to text
                .then(data => {
                    // Log the response to the console
                    alert(data);
                    console.log("OK")
                    location.reload();
                })
                .catch(error => {
                    console.error('Error:', error);
                })
        });
    });
});