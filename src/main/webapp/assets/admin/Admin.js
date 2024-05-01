// /////////////////////////////////// Menu
//start
var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
    return new bootstrap.Tooltip(tooltipTriggerEl)
})
//end

// Menu Navigation Start
// window.onload = function () {
//     const offcanvasLink = document.getElementById('offcanvasLink');
//
//     const link1 = document.getElementById('dashboard');
//     const link2 = document.getElementById('customerManagement');
//     const link3 = document.getElementById('productDetails');
//     const link4 = document.getElementById('productAdd');
//     const link5 = document.getElementById('productCategory');
//
//     const dashboardBody = document.querySelector('.dashboard-body');
//     const customerBody = document.querySelector('.customer-body');
//     const productBody = document.querySelector('.product-body');
//     const productAddBody = document.querySelector('.product-add-body');
//     const productCategoryBody = document.querySelector('.product-category-body');
//
//
//     // Remove the d-none class from customer-body and add it to dashboard-body
//     dashboardBody.classList.add('d-none');
//     customerBody.classList.add('d-none');
//     productBody.classList.remove('d-none');
//     productAddBody.classList.add('d-none');
//     productCategoryBody.classList.add('d-none');
//
//     //Remove the active class from customer link in offcanvas and add it to dashboard link
//     link2.classList.remove('active');
//     link1.classList.remove('active');
//     link3.classList.add('active');
//     link4.classList.remove('active');
//     link5.classList.remove('active');
//
// }


// Get the link elements and div elements
// const offcanvasLink = document.getElementById('offcanvasLink');
//
// const link1 = document.getElementById('dashboard');
// const link2 = document.getElementById('customerManagement');
// const link3 = document.getElementById('productDetails');
// const link4 = document.getElementById('productAdd');
// const link5 = document.getElementById('productCategory');
//
// const dashboardBody = document.querySelector('.dashboard-body');
// const customerBody = document.querySelector('.customer-body');
// const productBody = document.querySelector('.product-body');
// const productAddBody = document.querySelector('.product-add-body');
// const productCategoryBody = document.querySelector('.product-category-body');
//
// // Add event listener to link1
// link1.addEventListener('click', function (event) {
//     event.preventDefault(); // Prevent the default behavior of the link
//
//     // Remove the d-none class from dashboard-body and add it to customer-body
//     dashboardBody.classList.remove('d-none');
//     customerBody.classList.add('d-none');
//     productBody.classList.add('d-none');
//     productAddBody.classList.add('d-none');
//     productCategoryBody.classList.add('d-none');
//
//     //Remove the active class from dashboard link in offcanvas and add it to customer link
//     link1.classList.add('active');
//     link2.classList.remove('active');
//     link3.classList.remove('active');
//     link4.classList.remove('active');
//     link5.classList.remove('active');
//
//     // Trigger click event on offcanvasLink
//     offcanvasLink.click();
// });
//
// // Add event listener to link2
// link2.addEventListener('click', function (event) {
//     event.preventDefault(); // Prevent the default behavior of the link
//
//     // Remove the d-none class from customer-body and add it to dashboard-body
//     dashboardBody.classList.add('d-none');
//     customerBody.classList.remove('d-none');
//     productBody.classList.add('d-none');
//     productAddBody.classList.add('d-none');
//     productCategoryBody.classList.add('d-none');
//
//     //Remove the active class from customer link in offcanvas and add it to dashboard link
//     link2.classList.add('active');
//     link1.classList.remove('active');
//     link3.classList.remove('active');
//     link4.classList.remove('active');
//     link5.classList.remove('active');
//
//     // Trigger click event on offcanvasLink
//     offcanvasLink.click();
// });
//
// link3.addEventListener('click', function (event) {
//     event.preventDefault(); // Prevent the default behavior of the link
//
//     // Remove the d-none class from customer-body and add it to dashboard-body
//     dashboardBody.classList.add('d-none');
//     customerBody.classList.add('d-none');
//     productBody.classList.remove('d-none');
//     productAddBody.classList.add('d-none');
//     productCategoryBody.classList.add('d-none');
//
//     //Remove the active class from customer link in offcanvas and add it to dashboard link
//     link2.classList.remove('active');
//     link1.classList.remove('active');
//     link3.classList.add('active');
//     link4.classList.remove('active');
//     link5.classList.remove('active');
//
//     // Trigger click event on offcanvasLink
//     offcanvasLink.click();
// });
//
// link4.addEventListener('click', function (event) {
//     event.preventDefault(); // Prevent the default behavior of the link
//
//     // Remove the d-none class from customer-body and add it to dashboard-body
//     dashboardBody.classList.add('d-none');
//     customerBody.classList.add('d-none');
//     productBody.classList.add('d-none');
//     productAddBody.classList.remove('d-none');
//     productCategoryBody.classList.add('d-none');
//
//     //Remove the active class from customer link in offcanvas and add it to dashboard link
//     link2.classList.remove('active');
//     link1.classList.remove('active');
//     link3.classList.remove('active');
//     link4.classList.add('active');
//     link5.classList.remove('active');
//
//     // Trigger click event on offcanvasLink
//     offcanvasLink.click();
// });
//
// link5.addEventListener('click', function (event) {
//     event.preventDefault(); // Prevent the default behavior of the link
//
//     // Remove the d-none class from customer-body and add it to dashboard-body
//     dashboardBody.classList.add('d-none');
//     customerBody.classList.add('d-none');
//     productBody.classList.add('d-none');
//     productAddBody.classList.add('d-none');
//     productCategoryBody.classList.remove('d-none');
//
//     //Remove the active class from customer link in offcanvas and add it to dashboard link
//     link2.classList.remove('active');
//     link1.classList.remove('active');
//     link3.classList.remove('active');
//     link4.classList.remove('active');
//     link5.classList.add('active');
//
//     // Trigger click event on offcanvasLink
//     offcanvasLink.click();
// });
// Menu Navigation End

// ////////////////////////////////// Charts
//Sales Options Chart start
// const salesOptions = {
//     chart: {
//         type: "line",
//         stacked: true,
//         animations: {
//             enabled: true,
//             easing: 'linear',
//             // speed: 800,
//             // animateGradually: {
//             // enabled: true,
//             // delay: 150
//             // },
//             dynamicAnimation: {
//                 // enabled: true,
//                 speed: 1000
//             }
//         },
//         dropShadow: {
//             enabled: true,
//             opacity: 0.3,
//             blur: 5,
//             left: -7,
//             top: 22
//         },
//         foreColor: 'white',
//         toolbar: {
//             show: false
//         },
//         zoom: {
//             enabled: false
//         },
//         width: '100%',
//         height: '100%'
//     },
//     colors: ['#EA1756', '#3178FC', '#f02fc2'],
//     stroke: {
//         // curve:"smooth",
//         curve: 'straight',
//         width: 5
//     },
//     dataLabels: {
//         enabled: false
//     },
//     grid: {
//         borderColor: "#40475D",
//         padding: {
//             left: 0,
//             right: 0
//         }
//     },
//     markers: {
//         size: 0,
//         hover: {
//             size: 0
//         }
//     },
//     series: [{
//         name: "Last Week Sales",
//         data: [100, 1500, 1300, 1800, 1800, 2000, 2200]
//     },
//         {
//             name: "This Week Sales",
//             data: [1800, 2000, 2200, 2400, 1200, 1500, 1300]
//         }
//     ],
//     xaxis: {
//         axisTicks: {
//             color: '#333'
//         },
//         axisBorder: {
//             color: "#333"
//         },
//         // type: 'category',
//         categories: ["Mon", "Tue", "Wed", "Thur", "Fri", "Sat", "Sun"]
//     },
//     yaxis: {
//         min: 0
//     },
//     fill: {
//         type: 'gradient',
//         gradient: {
//             gradientToColors: ['#CD5005', '#935ED5', '#6094ea'],
//             // shade: 'dark',
//             // type: 'vertical',
//             // shadeIntensity: 0.5,
//             // inverseColors: false,
//             // opacityFrom: 1,
//             // opacityTo: 0.8,
//             // stops: [0, 100]
//         },
//     },
//     tooltip: {
//         theme: 'dark'
//     },
//     // title: {
//     //     text: undefined,
//     //     align: 'left',
//     //     margin: 10,
//     //     offsetX: 0,
//     //     offsetY: 0,
//     //     floating: false,
//     //     style: {
//     //         fontSize: '14px',
//     //         fontWeight: 'bold',
//     //         fontFamily: undefined,
//     //         color: 'white'
//     //     },
//     // },
//     title: {
//         text: 'Processes',
//         align: 'left',
//         style: {
//             fontSize: '12px'
//         }
//     },
//     subtitle: {
//         text: '20',
//         floating: true,
//         align: 'right',
//         offsetY: 0,
//         style: {
//             fontSize: '22px'
//         }
//     },
//     legend: {
//         show: true,
//         floating: true,
//         horizontalAlign: 'left',
//         onItemClick: {
//             toggleDataSeries: false
//         },
//         position: 'top',
//         offsetY: -28,
//         offsetX: 60
//     },
//     responsive: [{
//         breakpoint: 480,
//         options: {
//             chart: {
//                 width: "100%"
//             }
//         }
//     }],
//     // theme: {
//     //     mode: 'light',
//     //     palette: 'palette1',
//     //     monochrome: {
//     //         enabled: false,
//     //         color: '#255aee',
//     //         shadeTo: 'light',
//     //         shadeIntensity: 0.65
//     //     },
//     // },
//     // forecastDataPoints: {
//     //     count: 0,
//     //     fillOpacity: 0.5,
//     //     strokeWidth: undefined,
//     //     dashArray: 4,
//     // },
//     grid: {
//         // show: true,
//         // borderColor: '#e0e0e0',
//         // opacity: 0.5,
//         // strokeDashArray: 7,
//         position: 'back',
//         // xaxis: {
//         //     lines: {
//         //         show: false
//         //     }
//         // },
//         // yaxis: {
//         //     lines: {
//         //         show: true
//         //     }
//         // },
//         // row: {
//         //     colors: undefined,
//         //     opacity: 0.5
//         // },
//         // column: {
//         //     colors: undefined,
//         //     opacity: 0.5
//         // },
//         // padding: {
//         //     top: 0,
//         //     right: 0,
//         //     bottom: 0,
//         //     left: 0
//         // },
//     }
//
// };
//
// const salesChart = new ApexCharts(document.querySelector("#salesChart"), salesOptions);
//
// salesChart.render();
//
// //Sales Options Chart end
//
// //Top 10 Product Chart start
// // Example data for the top 10 products
// const productsData = [{
//     name: "Product A",
//     value: 500
// },
//     {
//         name: "Product B",
//         value: 400
//     },
//     {
//         name: "Product C",
//         value: 350
//     },
//     {
//         name: "Product D",
//         value: 300
//     },
//     {
//         name: "Product E",
//         value: 250
//     },
//     {
//         name: "Product F",
//         value: 200
//     },
//     {
//         name: "Product G",
//         value: 150
//     },
//     {
//         name: "Product H",
//         value: 100
//     },
//     {
//         name: "Product I",
//         value: 75
//     },
//     {
//         name: "Product J",
//         value: 50
//     },
// ];
//
// // Create the chart
// const chart = new ApexCharts(document.querySelector("#chart"), {
//     series: [{
//         name: "Top Products",
//         data: productsData.map((product) => product.value),
//     },],
//     title: {
//         text: 'Load Average',
//         align: 'left',
//         style: {
//             fontSize: '12px'
//         }
//     },
//     subtitle: {
//         text: '20%',
//         floating: true,
//         align: 'right',
//         offsetY: 0,
//         style: {
//             fontSize: '22px'
//         }
//     },
//     xaxis: {
//         categories: productsData.map((product) => product.name),
//         axisTicks: {
//             color: '#333'
//         },
//         axisBorder: {
//             color: "#333"
//         }
//     },
//     chart: {
//         type: "bar",
//         height: 350,
//         toolbar: {
//             show: false,
//         },
//         foreColor: '#fff',
//         width: '100%',
//         height: '100%',
//         zoom: {
//             enabled: false
//         }
//     },
//     colors: ['#FCCF31', '#17ead9', '#f02fc2'],
//     fill: {
//         type: 'gradient',
//         gradient: {
//             gradientToColors: ['#F55555', '#6078ea', '#6094ea'],
//             shade: 'dark',
//             type: 'vertical',
//             shadeIntensity: 0.5,
//             inverseColors: false,
//             opacityFrom: 1,
//             opacityTo: 0.8,
//             stops: [0, 100]
//         }
//     },
//     stroke: {
//         width: 0,
//         // colors: ["white"]
//     },
//     dataLabels: {
//         enabled: false
//     },
//     grid: {
//         borderColor: "#40475D",
//     },
//     // theme: {
//     //     mode: 'light',
//     //     palette: 'palette1',
//     //     monochrome: {
//     //         enabled: false,
//     //         color: '#255aee',
//     //         shadeTo: 'light',
//     //         shadeIntensity: 0.65
//     //     },
//     // },
//     // plotOptions: {
//     //     bar: {
//     //         horizontal: false,
//     //     },
//     // },
//     tooltip: {
//         theme: 'dark',
//         y: {
//             formatter: function (val) {
//                 return "$" + val + "K";
//             },
//         },
//     },
//     legend: {
//         show: true
//     },
// });
//
//
// // Render the chart
// chart.render();
// //Top 10 Product Chart end
//
// //Sales Progress Chart Start
// var options = {
//     chart: {
//         height: 400,
//         type: 'radialBar',
//         foreColor: "#73B7BC",
//     },
//     colors: ['#0091A0'],
//     plotOptions: {
//         radialBar: {
//             hollow: {
//                 // size: '70%',
//                 margin: 5,
//                 size: '48%',
//                 background: 'transparent',
//             },
//             track: {
//                 show: true,
//                 background: '#40475D',
//                 strokeWidth: '10%',
//                 opacity: 1,
//                 margin: 3, // margin is in pixels
//             },
//             dataLabels: {
//                 show: true,
//                 name: {
//                     offsetY: -10,
//                     fontSize: '22px',
//                 },
//                 value: {
//                     color: '#73B7BC',
//                     fontSize: '36px',
//                     fontWeight: 'bold',
//                     offsetY: 10,
//                 },
//                 total: {
//                     show: true,
//                     label: 'Progress',
//                     formatter: function (w) {
//                         return '50%';
//                     }
//                 }
//             }
//         }
//     },
//     // fill: {
//     //     type: 'gradient',
//     //     gradient: {
//     //         inverseColors: false,
//     //         gradientToColors: ['#6078ea']
//     //     }
//     // },
//     fill: {
//         type: 'gradient',
//         gradient: {
//             shade: 'dark',
//             type: 'horizontal',
//             shadeIntensity: 0.5,
//             gradientToColors: ['#31FC5F'],
//             inverseColors: false,
//             opacityFrom: 1,
//             opacityTo: 1,
//             stops: [20, 100]
//         }
//     },
//     series: [100],
//     labels: ['Progress'],
// };
//
// var progress = new ApexCharts(document.querySelector("#progress"), options);
// progress.render();
// //Sales Progress Chart End
//
// //Categories Chart Start
// let optionDonut = {
//     chart: {
//         type: 'donut',
//         width: '100%',
//         height: 400,
//         foreColor: 'white',
//     },
//     dataLabels: {
//         enabled: false,
//     },
//     plotOptions: {
//         pie: {
//             customScale: 0.8,
//             donut: {
//                 size: '75%',
//             },
//             // offsetY: 20,
//         },
//         stroke: {
//             colors: undefined
//         }
//     },
//
//     // colors: colorPalette,
//
//     series: [21, 23, 19, 14, 6],
//     labels: ['Clothing', 'Food Products', 'Electronics', 'Kitchen Utility', 'Gardening'],
//     legend: {
//         position: 'top',
//         offsetY: '0px'
//     }
// };
//
// var donut = new ApexCharts(document.querySelector("#chart-donut"), optionDonut);
// donut.render();
// //Categories Chart Start
//
// //Purchases v. Sales Chart Start
// /*  Radar Chart */
// let option3 = {
//     chart: {
//         height: 380,
//         type: 'radar',
//         foreColor: 'grey',
//     },
//     plotOptions: {
//         radar: {
//             polygons: {
//                 strokeColor: '#e8e8e8',
//                 fill: {
//                     colors: ['#f8f8f8', '#fff']
//                 }
//             }
//         }
//     },
//     markers: {
//         size: 5,
//         hover: {
//             size: 10
//         }
//     },
//     series: [{
//         name: 'Sales',
//         data: [45, 52, 38, 24, 33, 10, 73, 27, 91, 23, 24, 81]
//     },
//         {
//             name: 'Purchase',
//             data: [26, 21, 20, 6, 8, 15, 29, 62, 65, 52, 74, 93]
//         }
//     ],
//     labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'Octomber', 'November', 'December']
// };
//
// let chart3 = new ApexCharts(document.querySelector('#chart-radar'), option3);
// chart3.render();
// //Purchases v. Sales Chart End

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ------------------------------------------------------------------------------------------------------------------------------------------------


//-------------------------------------------------------------------------------------------------------------------------------------------------------




//Admin Sign in


// document.getElementById("saveProduct").addEventListener("click", function () {
//     const formData = new FormData();
//     console.log(variantCount.toString());
//     // formData.append("variantCount", variantCount.toString());
//     formData.append("name","Rashmika");
//
//     // Get all elements with name="{...}[]"
//     var Files1024Elements = document.querySelectorAll('input[name="1024Files[]"]');
//     var Files400Elements = document.querySelectorAll('input[name="400Files[]"]');
//     var Files80Elements = document.querySelectorAll('input[name="80Files[]"]');
//
//     // Create an array to store the values
//     var values1024 = [];
//     var values400 = [];
//     var values80 = [];
//
//     // Loop through the elements and append each file to the FormData
//     for (var i = 0; i < Files1024Elements.length; i++) {
//         const fileInput = Files1024Elements[i];
//         const file = fileInput.files[0]; // Get the selected file
//
//         if (file) {
//             // formData.append("files1024[]", file, file.name); // Append the file to the FormData
//         }
//     }
//
//     for (var i = 0; i <  Files400Elements.length; i++) {
//         const fileInput = Files400Elements[i];
//         const file = fileInput.files[0]; // Get the selected file
//         if (file) {
//             // formData.append("files400[]", file, file.name); // Append the file to the FormData
//         }
//     }
//
//     for (var i = 0; i <  Files80Elements.length; i++) {
//         const fileInput = Files80Elements[i];
//         const file = fileInput.files[0]; // Get the selected file
//         if (file) {
//             // formData.append("files80[]", file, file.name); // Append the file to the FormData
//         }
//     }
//
//     // Now you can send this FormData to your Java backend using AJAX or fetch API
//
//     // Example using fetch API:
//     fetch('addProduct', {
//         headers:{
//             "Content-Type": "application/x-www-form-urlencoded"
//         },
//         method: 'POST',
//         body: formData
//     })
//         .then(response => {
//             // Handle the response from the server
//         })
//         .catch(error => {
//             console.error('Error:', error);
//         });
// });
// document.getElementById("saveProduct").addEventListener("click", function () {
//     const formData = new FormData();
//     formData.append("name", "John Doe");
//     // formData.append('email', 'johndoe@example.com');
//
//     fetch('addProduct', {
//         headers:{
//           "Content-Type":"application/x-www-form-urlencoded"
//         },
//         method: 'POST',
//         body: formData
//     })
//         .then(response => {
//             // Handle the response from the Java controller
//             console.log(response);
//         })
//         .catch(error => {
//             console.error('Error:', error);
//         });
// });


//Sample
// document.getElementById("categorySubCategoryCombine").addEventListener("click",function () {
//     var combinationDetails={
//         category:document.getElementById("combineCategory").value,
//         subCategory:document.getElementById("combineSubCategory").value,
//         description:document.getElementById("combineDescription").value
//     };
//
//     fetch('combine', {
//         method: 'POST',
//         headers: {
//             'Content-Type': 'application/x-www-form-urlencoded'
//         },
//         body: new URLSearchParams({
//             category: document.getElementById("combineCategory").value,
//             subCategory: document.getElementById("combineSubCategory").value,
//             description: document.getElementById("combineDescription").value
//         }).toString()
//     })
//
//         .then(response=>response.text())
//         .then(text=>{
//             console.log(text);
//             alert(text);
//             document.getElementById("combineCategory").value="Select a Category";
//             document.getElementById("combineSubCategory").value="Select a Sub Category";
//             document.getElementById("combineDescription").value="";
//         })
//
// })
//
// @POST
// @Path("/combine")
// public void categorySubCategoryCombine(@FormParam("category") String category, @FormParam("subCategory") String subCategory, @FormParam("description") String description) {
//     System.out.println("-----------------Category-SubCategory-Combine------------------");
//     System.out.println(category+"-"+subCategory+"-"+description);
//
// }