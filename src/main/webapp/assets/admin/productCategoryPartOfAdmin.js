// when start these methods start
subCategoriesSelect();
subCategoriesSelectB();
categoriesSelect();
technicalSpecificationSelect();
brandSelect();


// front end
function categoriesSelect() {
    $.ajax({
        type: "GET", // Use GET or POST depending on your server-side code
        url: "getCategory", // Replace with the actual URL to fetch data
        dataType: "json",
        success: function (data) {
            // Clear the current options
            $("#combineCategory").empty();

            // Add a default option
            $("#combineCategory").append('<option selected>Select a Category</option>');

            // Add new options based on the received data
            $.each(data, function (index, category) {
                $("#combineCategory").append('<option value="' + category.id + '">' + category.name + '</option>');
            });
        },
        error: function (error) {
            console.error("Error fetching data:", error);
        }
    });
}

function subCategoriesSelect() {
    $.ajax({
        type: "GET", // Use GET or POST depending on your server-side code
        url: "getSubCategory", // Replace with the actual URL to fetch data
        dataType: "json",
        success: function (data) {
            // Clear the current options
            $("#setupSubcategory").empty();

            // Add a default option
            $("#setupSubcategory").append('<option selected>Select a Sub-Category</option>');

            // Add new options based on the received data
            $.each(data, function (index, subCategory) {
                $("#setupSubcategory").append('<option value="' + subCategory.id + '">' + subCategory.name + '</option>');
            });
        },
        error: function (error) {
            console.error("Error fetching data:", error);
        }
    });
}

function technicalSpecificationSelect() {
    $.ajax({
        type: "GET", // Use GET or POST depending on your server-side code
        url: "getTechnicalSpecification", // Replace with the actual URL to fetch data
        dataType: "json",
        success: function (data) {
            // Clear the current options
            $("#setupTechnicalSpecification").empty();

            // Add a default option
            $("#setupTechnicalSpecification").append('<option selected>Select a Technical Specification</option>');

            // Add new options based on the received data
            $.each(data, function (index, technicalSpecification) {
                $("#setupTechnicalSpecification").append('<option value="' + technicalSpecification.id + '">' + technicalSpecification.name + '</option>');
            });
        },
        error: function (error) {
            console.error("Error fetching data:", error);
        }
    });
}

function subCategoriesSelectB() {

    $.ajax({
        type: "GET", // Use GET or POST depending on your server-side code
        url: "getSubCategory", // Replace with the actual URL to fetch data
        dataType: "json",
        success: function (data) {
            // Clear the current options
            $("#setupSubCategoryForBS").empty();

            // Add a default option
            $("#setupSubCategoryForBS").append('<option selected>Select a Sub-Category</option>');

            // Add new options based on the received data
            $.each(data, function (index, subCategoryB) {
                $("#setupSubCategoryForBS").append('<option value="' + subCategoryB.id + '">' + subCategoryB.name + '</option>');
            });
        },
        error: function (error) {
            console.error("Error fetching data:", error);
        }
    });
}

function brandSelect() {
    $.ajax({
        type: "GET", // Use GET or POST depending on your server-side code
        url: "getBrand", // Replace with the actual URL to fetch data
        dataType: "json",
        success: function (data) {
            // Clear the current options
            $("#setupBrandForBS").empty();

            // Add a default option
            $("#setupBrandForBS").append('<option selected>Select a Brand</option>');

            // Add new options based on the received data
            $.each(data, function (index, brand) {
                $("#setupBrandForBS").append('<option value="' + brand.id + '">' + brand.name + '</option>');
            });
        },
        error: function (error) {
            console.error("Error fetching data:", error);
        }
    });
}

// Toasts for the Brands and SubCategories
const selectedSubcategoriesIdForBS = [];
const selectedNamesForBS = [];// array to keep track of selected names
const toastElementsForBS = [];
$(document).ready(function () {
    $('#setupSubCategoryForBS').on('change', function () {
        const selectedOption = $(this).find(':selected');
        const selectedName = selectedOption.text();
        const selectedId = selectedOption.val();

        if (selectedName === 'Select a Sub-Category') {
            return; // Skip adding a toast for this option
        }

        // Check if the selected name already exists in the array
        if (selectedNamesForBS.includes(selectedName)) {
            return; // Skip adding a toast with a duplicate name
        }

        selectedNamesForBS.push(selectedName); // Add the selected name to the array
        selectedSubcategoriesIdForBS.push(selectedId);

        // Create a new toast element for each selection
        const newToast = $('#toastElementForBS').clone();
        newToast.find('#toastNameForBS').text(selectedName);

        // Add the new toast to the toast container (e.g., a div with id "toastContainer")
        $('#toastContainerForBS').append(newToast);

        newToast.find('.btn-close').on('click', function () {
            const toastName = newToast.find('#toastNameForBS').text();
            const index = selectedNamesForBS.indexOf(toastName);

            if (index !== -1) {
                selectedSubcategoriesIdForBS.splice(index, 1);
                selectedNamesForBS.splice(index, 1); // Remove the name from the array
                toastElementsForBS.splice(index, 1); // Remove the toast element from the array
                newToast.toast('hide');
            }
        });

        // Add the new toast element to the array
        toastElementsForBS.push(newToast);

        // Show the new toast
        newToast.toast('show');
    });
});

// Toasts for the technical specifications and SubCategories
const selectedTechnicalSpecificationId = [];
const selectedNames = [];// array to keep track of selected names
const toastElements = []; // array to keep track of toast elements
$(document).ready(function () {
    $('#setupTechnicalSpecification').on('change', function () {
        const selectedOption = $(this).find(':selected');
        const selectedName = selectedOption.text();
        const selectedId = selectedOption.val();


        if (selectedName === 'Select a Technical Specification') {
            return; // Skip adding a toast for this option
        }

        // Check if the selected name already exists in the array
        if (selectedNames.includes(selectedName)) {
            return; // Skip adding a toast with a duplicate name
        }

        selectedNames.push(selectedName); // Add the selected name to the array
        selectedTechnicalSpecificationId.push(selectedId);

        // Create a new toast element for each selection
        const newToast = $('#toastElement').clone();
        newToast.find('#toastName').text(selectedName);

        // Add the new toast to the toast container (e.g., a div with id "toastContainer")
        $('#toastContainer').append(newToast);

        // Add an event listener to the close button
        newToast.find('.btn-close').on('click', function () {
            const toastName = newToast.find('#toastName').text();
            const index = selectedNames.indexOf(toastName);

            if (index !== -1) {
                selectedTechnicalSpecificationId.splice(index, 1);
                selectedNames.splice(index, 1); // Remove the name from the array
                toastElements.splice(index, 1); // Remove the toast element from the array
                newToast.toast('hide');
            }
        });

        // Add the new toast element to the array
        toastElements.push(newToast);

        // Show the new toast
        newToast.toast('show');
    });
});


// $(document).ready(function () {
//     $('#setupTechnicalSpecification').on('change', function () {
//         let i=1;
//         const selectedOption = $(this).find(':selected');
//         const selectedName = selectedOption.text();
//
//         let newToasts = {};
//
//         // Create a new toast element for each selection
//         newToasts['newToast' + i] = $('#toastElement').clone();
//         newToasts['newToast' + i].find('#toastName').text(selectedName);
//
//         // Add the new toast to the toast container (e.g., a div with id "toastContainer")
//         $('#toastContainer').append(newToasts['newToast' + i]);
//
//         // Show the new toast
//         newToasts['newToast' + i].toast('show');
//     });
// });
// $(document).ready(function () {
//     $('#setupTechnicalSpecification').on('change', function () {
//         const selectedOption = $(this).find(':selected');
//         const selectedName = selectedOption.text();
//
//         // Set the text of the toast message
//         $('#toastName').text(selectedName);
//
//         // Show the toast
//         $('#toastElement').toast('show');
//     });
// });


//Back end

// Category Add
document.getElementById("saveCategory").addEventListener("click", function () {
    var categoryDetails = {
        name: document.getElementById("categoryName").value,
        description: document.getElementById("categoryDescription").value
    };

    fetch("categoryAdd", {
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        method: "post",
        body: JSON.stringify(categoryDetails)
    })
        .then(response => response.text())
        .then(text => {
            console.log(text);
            alert(text);
            document.getElementById("categoryName").value = "";
            document.getElementById("categoryDescription").value = "";
            categoriesSelect();
        })
        .catch(error => {
            console.error('Error:', error);
        });

})

// Brand Add
document.getElementById("saveBrand").addEventListener("click", function () {
    var brandDetails = {
        name: document.getElementById("brandName").value,
        description: document.getElementById("brandDescription").value
    };

    fetch("brandAdd", {
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        method: "post",
        body: JSON.stringify(brandDetails)
    })
        .then(response => response.text())
        .then(text => {
            console.log(text);
            alert(text);
            document.getElementById("brandName").value = "";
            document.getElementById("brandDescription").value = "";
        })
        .catch(error => {
            console.error('Error:', error);
        });

})

// Sub-Category Add
document.getElementById("saveSubCategory").addEventListener("click", function () {
    var subCategoryDetails = {
        name: document.getElementById("subCategoryName").value,
        categoryValue: document.getElementById("combineCategory").value,
        description: document.getElementById("subCategoryDescription").value
    };

    fetch("subCategoryAdd", {
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        method: "post",
        body: JSON.stringify(subCategoryDetails)
    })
        .then(response => response.text())
        .then(text => {
            console.log(text);
            alert(text);
            document.getElementById("subCategoryName").value = "";
            document.getElementById("combineCategory").value = "Select a Category";
            document.getElementById("subCategoryDescription").value = "";
        })
        .catch(error => {
            console.error('Error:', error);
        });

});

//Technical Specifications Add
document.getElementById("saveTechnicalSpecification").addEventListener("click", function () {

    var technicalSpecificationDetails = {
        technicalSpecificationValues: document.getElementById("technicalSpecification").value.split(",")
    };

    fetch("technicalSpecificationAdd", {
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        method: "post",
        body: JSON.stringify(technicalSpecificationDetails)
    })
        .then(response => response.text())
        .then(text => {
            console.log(text);
            alert(text);
            document.getElementById("setupTechnicalSpecification").value = "";
        })
        .catch(error => {
            console.error('Error:', error);
        });
})

document.getElementById("addtechnicalSpecificationsToSubCategory").addEventListener("click", function () {

    var technicalSpecificationDetails = {
        subCategoryValue: document.getElementById("setupSubcategory").value,
        technicalSpecificationValues: selectedTechnicalSpecificationId
    };

    fetch("technicalSpecificationToSubCategoryAdd", {
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        method: "post",
        body: JSON.stringify(technicalSpecificationDetails)
    })
        .then(response => response.text())
        .then(text => {
            console.log(text);
            alert(text);
            document.getElementById("setupSubcategory").value = "Select a Sub-Category";
            document.getElementById("setupTechnicalSpecification").value = "Select a Technical Specification";
            for (let i = toastElements.length - 1; i >= 0; i--) {
                const toastElement = toastElements[i];
                toastElement.toast('hide');
                selectedNames.pop();
                selectedTechnicalSpecificationId.pop();
                toastElements.pop();
            }
        })
        .catch(error => {
            console.error('Error:', error);
        });

});

document.getElementById("addSubCategoryToBrand").addEventListener("click", function () {

    var subCategoryForBrandDetails = {
        brandValue: document.getElementById("setupBrandForBS").value,
        subCategoriesValues: selectedSubcategoriesIdForBS
    };

    fetch("subCategoryToBrandAdd", {
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        method: "post",
        body: JSON.stringify(subCategoryForBrandDetails)
    })
        .then(response => response.text())
        .then(text => {
            console.log(text);
            alert(text);
            document.getElementById("setupBrandForBS").value = "Select a Brand";
            document.getElementById("setupSubCategoryForBS").value = "Select a Sub-Category";
            for (let i = toastElementsForBS.length - 1; i >= 0; i--) {
                const toastElement = toastElementsForBS[i];
                toastElement.toast('hide');
                selectedNamesForBS.pop();
                selectedSubcategoriesIdForBS.pop();
                toastElementsForBS.pop();
            }

        })
        .catch(error => {
            console.error('Error:', error);
        });

});