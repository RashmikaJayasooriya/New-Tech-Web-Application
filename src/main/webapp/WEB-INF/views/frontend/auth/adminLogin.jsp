<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New-Tech | Admin Sign-In</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
          integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
          crossorigin="anonymous" referrerpolicy="no-referrer"
    />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="assets/frameworks/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/frameworks/css/style.css">

</head>

<body class="">
<div class="container-fluid">
    <div class="row vh-100"
         style="background-image: url(assets/images/otherAppImages/se\ \(4\).png); background-size: contain; background-position: left; background-repeat: no-repeat;">
        <div class="offset-md-7 col-12 col-md-5">
            <div class="row align-content-center text-center vh-100"
                 style="background-color:rgba(235, 228, 228, 0.613); ">
                <div class="col-12 mb-2">
                    <img src="assets/images/logo/New Tech (4).png" alt="">
                    <h2 class="head-text">Welcome <span>Admin Sign In..!!</span></h2>
                </div>
                <div class="col-12 mb-3">
                    <p>To Keep Login to the Admin Account, Please Login With Your Admin Email and Password that is
                        Provided By the Developer.
                    </p>
                </div>
                <div>
                    <!-- Email input -->
                    <div class="form-outline mb-4 d-flex position-relative">
                        <input type="email" id="adminEmail" class="form-control bi bi-shield-lock-fill"
                               placeholder="Email Address"/>
                        <span><a href="#" class="text-decoration-none link-dark"><i
                                class="fa-solid fa-at position-absolute"
                                style="right: 19px; bottom: 10px; font-size: 18px;"></i></a></span>
                    </div>

                    <!-- Password input -->
                    <div class="form-outline mb-4 d-flex position-relative">
                        <input type="password" id="aminPassword" class="form-control" placeholder="Password"/>
                        <span><a href="#" class="text-decoration-none link-dark"><i
                                class="fa-solid fa-eye position-absolute"
                                style="right: 19px; bottom: 10px; font-size: 18px;"></i></a></span>
                    </div>

                    <!-- Submit button -->
                    <div class="offset-md-3 col-12 col-md-6 d-grid">
                        <button type="submit" class="btn btn-transparent shadow-none btn-orange btn-block mb-4"
                                id="adminSignIn">Admin Sign In
                        </button>
                        <button class="btn btn-transparent shadow-none btn-orange btn-block mb-4" type="button"
                                disabled="" id="signuploadingButton" style="display: none">
                            <span class="spinner-border spinner-border-sm" aria-hidden="true"></span>
                            <span role="status">Loading...</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    document.getElementById("adminSignIn").addEventListener("click", function () {
        var emailRegex = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/;

        if (document.getElementById("adminEmail").value === "") {
            alert("Please Fill Out Your email");
        } else if (!emailRegex.test(document.getElementById("adminEmail").value)) {
            alert("The email is not valid");
        } else if (document.getElementById("aminPassword").value === "") {
            alert("Please Fill Out Your Password");
        } else if (document.getElementById("aminPassword").value.length < 8) {
            alert("Password Must Contain Athleast 8 Characters");
        } else {
            // the loader element
            const loader = document.getElementById("signuploadingButton");
            const normButton = document.getElementById("adminSignIn");
            // Display the loader
            loader.style.display = "block";
            normButton.style.display = "none";

            var adminDetails = {
                email: document.getElementById("adminEmail").value,
                password: document.getElementById("aminPassword").value
            }

            fetch('adminauth', {
                headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json'
                },
                method: "POST",
                body: JSON.stringify(adminDetails)
            })
                .then(response => response.text()) // Convert response to text
                .then(text => {
                    console.log(text);
                    alert(text);
                    // Redirect to the Home Page
                    window.location.href = 'http://localhost:8080/newtech/admin';
                })
                .catch(error => {
                    console.error('Error:', error);
                }).finally(() => {
                // Hide the loader
                loader.style.display = "none";
                normButton.style.display = "block";
            });
        }
    });
</script>
<script src="assets/frameworks/js/bootstrap.bundle.min.js"></script>
</body>

</html>
