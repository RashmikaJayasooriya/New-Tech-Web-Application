categoriesSelect();
// subCategoriesSelect();
// brandSelect();
// Front end
// ///////////////////////////////////////
function categoriesSelect() {
    $.ajax({
        type: "GET", // Use GET or POST depending on your server-side code
        url: "getCategory", // Replace with the actual URL to fetch data
        dataType: "json",
        success: function (data) {
            // Clear the current options
            $("#productCategorySelect").empty();

            // Add a default option
            $("#productCategorySelect").append('<option selected>Select a Category</option>');

            // Add new options based on the received data
            $.each(data, function (index, category) {
                $("#productCategorySelect").append('<option value="' + category.id + '">' + category.name + '</option>');
            });
        },
        error: function (error) {
            console.error("Error fetching data:", error);
        }
    });
}

document.querySelector("#productCategorySelect").addEventListener('change', (evt) => {
    // alert(evt.target.value);
    if (evt.target.value === "Select a Category") {
        $("#productSubCategorySelect").empty();
        $("#productSubCategorySelect").append('<option selected>Select a Category To Get Sub-Categories</option>');
    } else {
        subCategoriesSelect(evt.target.value);
    }

});

document.querySelector("#productSubCategorySelect").addEventListener('change', (evt) => {
    // alert(evt.target.value);
    if (evt.target.value === "Select a Category") {
        $("#productBrandSelect").empty();
        $("#productBrandSelect").append('<option selected>Select a Sub-Category To Get Brands</option>');
    } else {
        brandSelect(evt.target.value);
    }

});

function subCategoriesSelect(categoryId) {
    $.ajax({
        type: "GET", // Use GET or POST depending on your server-side code
        url: "getSubCategoryRelateToCategory?categoryId=" + categoryId, // Replace with the actual URL to fetch data
        dataType: "json",
        success: function (data) {
            // Clear the current options
            $("#productSubCategorySelect").empty();

            // Add a default option
            $("#productSubCategorySelect").append('<option selected>Select a Sub-Category</option>');

            // Add new options based on the received data
            $.each(data, function (index, subCategory) {
                $("#productSubCategorySelect").append('<option value="' + subCategory.id + '">' + subCategory.name + '</option>');
            });
        },
        error: function (error) {
            console.error("Error fetching data:", error);
        }
    });
}

function brandSelect(subCategoryId) {
    $.ajax({
        type: "GET", // Use GET or POST depending on your server-side code
        url: "getBrandRelateToSubCategory?subCategoryId=" + subCategoryId, // Replace with the actual URL to fetch data
        dataType: "json",
        success: function (data) {
            // Clear the current options
            $("#productBrandSelect").empty();

            // Add a default option
            $("#productBrandSelect").append('<option selected>Select a Brand</option>');

            // Add new options based on the received data
            $.each(data, function (index, brand) {
                $("#productBrandSelect").append('<option value="' + brand.id + '">' + brand.name + '</option>');
            });
        },
        error: function (error) {
            console.error("Error fetching data:", error);
        }
    });
}

// ///////////////////////////////////////

// Product Add Tab Navigation Start
document.addEventListener("DOMContentLoaded", function () {
    var nextTabButtons = document.querySelectorAll(".next-tab");
    var prevTabButtons = document.querySelectorAll(".prev-tab");

    nextTabButtons.forEach(function (button) {
        button.addEventListener("click", function () {
            var currentTabId = button.getAttribute("data-tab2");
            var currentTabPane = document.querySelector(`#${currentTabId}`);

            if (validateTabFields(currentTabPane)) {
                var tabId = button.getAttribute("data-tab");
                var tabLink = document.querySelector(`#nav-tab a[href="#${tabId}"]`);

                var fromtabId = button.getAttribute("data-tab2");
                var fromtabLink = document.querySelector(
                    `#nav-tab a[href="#${fromtabId}"]`);

                if (tabLink && fromtabLink) {
                    tabLink.classList.remove('disabled');
                    fromtabLink.classList.add('disabled');
                    tabLink.click();
                }
            } else {
                alert('Please fill in all required fields before proceeding.');
            }
        });
    });

    prevTabButtons.forEach(function (button) {
        button.addEventListener("click", function () {
            var tabId = button.getAttribute("data-tab");
            var tabLink = document.querySelector(`#nav-tab a[href="#${tabId}"]`);

            var fromtabId = button.getAttribute("data-tab2");
            var fromtabLink = document.querySelector(`#nav-tab a[href="#${fromtabId}"]`);

            if (tabLink && fromtabLink) {
                tabLink.classList.remove('disabled');
                fromtabLink.classList.add('disabled');
                tabLink.click();
            }
        });
    });

    function validateTabFields(tabPane) {
        var inputs = tabPane.querySelectorAll('input, select, textarea');
        // alert(inputs.length);
        for (var i = 0; i < inputs.length; i++) {
            var input = inputs[i];


            if (input.hasAttribute('required')) {
                // alert(input.value);
                if (input.tagName.toLowerCase() === 'select') {
                    if (input.value.indexOf('Select') !== -
                        1) { // Check the select input contains Select as the value
                        // return false;
                        return true;
                    }
                } else if (!input.value) {
                    // return false;
                    return true;
                }
            }
        }
        return true;
    }


});
// Product Add Tab Navigation End

//Product Add Images Part and Variant Part Start


document.addEventListener("DOMContentLoaded", function () {
    // Reusable function to handle image preview display
    function toggleImagePreview(size, button) {
        // Find the closest variant container element
        const variantContainer = button.closest('.image-row-card');

        // Search for the image-preview element within the variant container
        const imagePreview = variantContainer.querySelector(`.image-preview[data-size="${size}"]`);

        if (imagePreview.style.display === "block") {
            imagePreview.style.display = "none";
        } else {
            imagePreview.style.display = "block";
        }
    }


    // Attach event listener for preview buttons
    const imageRow = document.querySelector('.image-row');

    imageRow.addEventListener('click', function (event) {
        // Handle click on preview buttons
        const target = event.target;
        if (target.classList.contains('previewBtn')) {
            const size = target.getAttribute('data-size');
            toggleImagePreview(size, target);
        }
    });


});

// Reusable function to handle image file input change
function handleFileInputChange(fileInput, size, element) {
    const file = fileInput.files[0];

    if (file) {
        const reader = new FileReader();

        reader.onload = function (e) {
            const img = new Image();
            img.src = e.target.result;

            img.onload = function () {
                if (img.width <= size && img.height <= size) {
                    displayImage(img, size, element);
                } else {
                    cropAndDisplayImage(img, size, element);
                }
            };
        };

        reader.readAsDataURL(file);
    } else {
        clearImagePreview(size, element);
    }
}

// Reusable function to handle cropping and displaying images
function cropAndDisplayImage(img, size, element) {
    const canvas = document.createElement('canvas');
    const ctx = canvas.getContext('2d');

    // Set canvas dimensions to the specified size
    canvas.width = size;
    canvas.height = size;

    // Calculate the aspect ratio
    const aspectRatio = img.width / img.height;

    // Determine the new dimensions for cropping
    let newWidth, newHeight;
    if (aspectRatio >= 1) {
        newWidth = size;
        newHeight = size / aspectRatio;
    } else {
        newWidth = size * aspectRatio;
        newHeight = size;
    }

    // Calculate the position to center the image in the canvas
    const x = (canvas.width - newWidth) / 2;
    const y = (canvas.height - newHeight) / 2;

    // Draw the cropped image on the canvas
    ctx.drawImage(img, x, y, newWidth, newHeight);

    // Display the canvas as an image
    displayImage(canvas, size, element);
}


// Reusable function to display images
function displayImage(image, size, element) {
    clearImagePreview(size, element);
    // const imagePreview = element.querySelector(`.image-preview[data-size="${size}"]`);
    const imagePreview = document.querySelector(`.${element}[data-size="${size}"] .image-preview[data-size="${size}"]`)
    imagePreview.appendChild(image);
}

// Reusable function to clear image previews
function clearImagePreview(size, element) {
    // const imagePreview = element.querySelector(`.image-preview[data-size="${size}"]`);
    const imagePreview = document.querySelector(`.${element}[data-size="${size}"] .image-preview[data-size="${size}"]`)
    imagePreview.innerHTML = '';
}


function onFileAdded(inputElement) {

    const allowedExtensions = /(\.png|\.jpg|\.jpeg)$/i;

    // Check if at least one file is selected
    if (inputElement.files.length === 0) {
        alert('Please select an image file.');
        inputElement.value = ''; // Clear the file input
        return;
    }

    // Check if only one file is selected
    else if (inputElement.files.length > 1) {
        alert('Please select only one image file.');
        inputElement.value = ''; // Clear the file input
        return;
    }

    // Check if the selected file is an image
    else if (!allowedExtensions.exec(inputElement.files[0].name)) {
        alert('Please select a valid image file (PNG, JPG, or JPEG).');
        inputElement.value = ''; // Clear the file input
        return;
    } else {
        // Access the ID of the input element
        const inputId = inputElement.id;

        // Access the value of the input element (the selected file)
        const selectedFile = inputElement.files[0];

        // Do something with the ID and selected file if needed
        console.log(`Input ID: ${inputId}`);
        console.log(`Selected File: ${selectedFile.name}`);
        const size = extractNumericPart(inputId);
        console.log(size);

        // Extract the "custom-file" part from the ID
        const customFilePart = extractCustomFilePart(inputId);

        handleFileInputChange(inputElement, size, customFilePart);
    }

}

function extractNumericPart(id) {
    const match = id.match(/\d+/); // Extracts one or more digits from the id
    return match ? match[0] : null; // Retrieves the first matched group (the numeric part)
}

function extractCustomFilePart(id) {
    const parts = id.split('custom-');
    return parts.length > 1 ? 'custom-' + parts[1] : null;
}


// Product Add Variant Start
// let variantCount = 1; // Initialize the variant count
//
// const container = document.querySelector('.image-row');
// const addVariantButton = document.querySelector('.add-variant-btn');
//
// function removeVariant(variantId) {
//     const variantToRemove = document.querySelector(`#${variantId}`);
//     container.removeChild(variantToRemove);
//     variantCount--; // Update the variant count
// }
let variantCount = 0; // Initialize the variant count

const container = document.querySelector('.image-row');
const addVariantButton = document.querySelector('.add-variant-btn');

function removeVariant(variantId) {
    const variantToRemove = document.querySelector(`#${variantId}`);
    container.removeChild(variantToRemove);
    variantCount--; // Update the variant count
}

addVariantButton.addEventListener('click', function () {
    variantCount++; // Increment the variant count
    const variantId = `variant${variantCount}`; // Generate the new variant ID

    // Create a new variant card
    const newVariant = document.createElement('div');
    newVariant.className = 'col-12 image-row-card card mb-3 mt-1';
    newVariant.id = variantId;

    const cardBody = document.createElement('div');
    cardBody.className = 'card-body variant-card';

    const imagePickerDiv = document.createElement('div');
    imagePickerDiv.id = `image_picker-${variantId}`;
    imagePickerDiv.className='row';
    // Initialize the image picker here

    const productColorLabel = document.createElement('label');
    productColorLabel.htmlFor = `productColorSelect-${variantId}`;
    productColorLabel.className = 'form-label';
    productColorLabel.innerText = 'Product Color Related to the Image';

    // const productColorSelect = document.createElement('select');
    // productColorSelect.className = 'form-select';
    // productColorSelect.id = `productColorSelect-${variantId}`;
    // productColorSelect.required = true;

    const variantSelect = document.querySelector('#productColorSelect'); // Get the original variant card
    const clone = variantSelect.cloneNode(true);
    clone.id = `productColorSelect-${variantId}`;


    // const selectOption = document.createElement('option');
    // selectOption.value = '';
    // selectOption.innerText = 'Select a Product Color';
    // productColorSelect.appendChild(selectOption);

    // const selectOption2 = document.createElement('option');
    // selectOption2.value = '';
    // selectOption2.innerText = 'Select a Product Color';
    // productColorSelect.appendChild(selectOption2);

    cardBody.appendChild(imagePickerDiv);
    cardBody.appendChild(productColorLabel);
    cardBody.appendChild(clone);

    const removeButton = document.createElement('button');
    removeButton.innerText = 'Remove Variant';
    removeButton.className = 'btn btn-danger btn-sm';
    removeButton.addEventListener('click', () => removeVariant(variantId));

    cardBody.appendChild(removeButton);

    newVariant.appendChild(cardBody);

    container.appendChild(newVariant); // Append the new variant card to the container

    // Initialize the image picker for the new variant
    $(`#image_picker-${variantId}`).spartanMultiImagePicker({
        fieldName: `imageUpload[]`,
        // maxCount: 1,
    });
});

//Product Add Images Part and Variant Part End

$("#image_picker").spartanMultiImagePicker({
    fieldName: 'imageUpload[]',
    // maxCount: 1,
});

///////////////////////Back End

//Product Add
document.getElementById("saveProduct").addEventListener("click", function () {

    var productDetails = {
        productCategorySelectValue: document.getElementById("productCategorySelect").value,
        productSubCategorySelectValue: document.getElementById("productSubCategorySelect").value,
        productBrandSelectValue: document.getElementById("productBrandSelect").value,
        productTitleValue: document.getElementById("productTitle").value,
        productDescriptionValue: document.getElementById("productDescription").value,
        productSKUValue: document.getElementById("productSKU").value,
        productPriceValue: document.getElementById("productPrice").value,
        productInitQtyValue: document.getElementById("productInitQty").value,
        productMinStockThreshValue: document.getElementById("productMinStockThresh").value,
        // productColorSelectValue: document.getElementById("productColorSelect").value,
    };

    fetch("a/addProduct", {
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        method: "POST",
        body: JSON.stringify(productDetails)
    }).then(response => response.json())
        .then(data => {
            uploadImages(data.pid);
        })
        // .then(text => {
        //     console.log(text);
        //     alert(text);
        //
        //     document.getElementById("productCategorySelect").value = "Select a Category";
        //     document.getElementById("productSubCategorySelect").value = "Select a Sub-Category";
        //     document.getElementById("productBrandSelect").value = "Select a Brand";
        //     document.getElementById("productTitle").value = "";
        //     document.getElementById("productDescription").value = "";
        //     document.getElementById("productSKU").value = "";
        //     document.getElementById("productPrice").value = "";
        //     document.getElementById("productInitQty").value = "";
        //     document.getElementById("productMinStockThresh").value = "";
        //     // document.getElementById("productColorSelect").value = "Select a Product Color";
        //
        //     var prevTabButtons = document.querySelectorAll(".prev-tab");
        //     var prevTabButtonsArray = Array.from(prevTabButtons).reverse();
        //
        //     prevTabButtonsArray.forEach(function (button) {
        //         button.click();
        //     });
        // })
        .catch(error => {
            console.error('Error:', error);
        });
})

function uploadImages(id) {
    let formData = new FormData();
    // formData.append("",)
    let inputsCard = document.querySelectorAll(".image-row-card");
    formData.append("noOfFileContainers[]", `${inputsCard.length}`);

    inputsCard.forEach(function (card) {
        let inputC = card.querySelectorAll('input[type="file"]');
        formData.append("noOfInputsInFileContainer[]", `${inputC.length - 1}`);
    });

    let inputFile = document.querySelectorAll('input[type="file"]');
    inputFile.forEach((input, index) => {
        if (input.files.length > 0) {
            let file = input.files[0];
            formData.append("file[]", file);
        }
    });

    // let colorSelects=document.querySelectorAll('#productColorSelect');

    //
    //
    //
    //
    // check ^ in id
    let colorSelects = document.querySelectorAll('[id^="productColorSelect"]');

    colorSelects.forEach(function (select) {
        formData.append("variantColors[]", select.value);
    })

    // inputsCard.forEach(function (card) {
    //     let inputsi = card.querySelectorAll('input[type="file"]');
    //
    //     inputsi.forEach((input, index) => {
    //         if (input.files.length > 0) {
    //             let file = input.files[0];
    //             formData.append(`file[${index}]`, file);
    //         }
    //     });
    // });

// To check the appended files in the formData, you can use:
    formData.forEach((value, key) => {
        console.log(key, value);
    });



    // inputs.forEach((input, index) => {
    //     if (index !== 0 && index !== inputs.length - 1) {
    //         let file = input.files[0];
    //         formData.append("file[]", file);
    //     }
    // });

    fetch('a/upload-image/'+id, {
        method: 'post',
        body: formData
    }).then(response => response.json())
        .then(data => {
            console.log(data);
            // window.location.href='${BASE_URL}admin/product';
        })
}