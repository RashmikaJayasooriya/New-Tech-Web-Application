<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New-Tech | Login</title>
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
    <div class="row vh-100" id="loginSection">
        <div class="col-7 d-none d-md-block">
            <div class="row">
                <div class="col-12 vh-100"
                     style="background-image: url(assets/images/otherAppImages/ux-ui-design.svg); background-position: center; background-size: contain; background-repeat: no-repeat; image-rendering: auto;"></div>
            </div>
        </div>
        <div class="col-12 col-md-5">
            <div class="row align-content-center text-center vh-100">
                <div class="col-12 mb-2">
                    <h2 class="head-text">Welcome Back :)</h2>
                </div>
                <div class="col-12 mb-3">
                    <p>To Keep Connected With Us Please Login With Your Personal Information By Email and Password.</p>
                </div>
                <div>
                    <!-- Email input -->
                    <div class="form-outline mb-4 d-flex position-relative">
                        <input type="email" id="username" class="form-control bi bi-shield-lock-fill"
                               placeholder="Email Address"/>
                        <span><a href="#" class="text-decoration-none link-dark"><i
                                class="fa-solid fa-at position-absolute"
                                style="right: 19px; bottom: 10px; font-size: 18px;"></i></a></span>
                    </div>

                    <!-- Password input -->
                    <div class="form-outline mb-4 d-flex position-relative">
                        <input type="password" id="userPassword" class="form-control" placeholder="Password"/>
                        <span><a href="#" class="text-decoration-none link-dark"><i
                                class="fa-solid fa-eye position-absolute"
                                style="right: 19px; bottom: 10px; font-size: 18px;"></i></a></span>
                    </div>

                    <!-- 2 column grid layout for inline styling -->
                    <div class="row mb-4">
                        <div class="col d-flex justify-content-center">
                            <!-- Checkbox -->
                            <div class="form-check">
                                <input class="shadow-none form-check-input" type="checkbox" value="" id="form2Example34"
                                       checked/>
                                <label class="form-check-label" for="form2Example34"> Remember me </label>
                            </div>
                        </div>

                        <div class="col">
                            <!-- Simple link -->
                            <a href="#!" style="color: orange;">Forgot password?</a>
                        </div>
                    </div>

                    <!-- Submit button -->
                    <div class="col-12 d-grid">
                        <button class="btn btn-transparent shadow-none btn-orange btn-block mb-4" id="sign-in">Sign in
                        </button>
                        <button class="btn btn-transparent shadow-none btn-orange btn-block mb-4" type="button"
                                disabled="" id="signinloadingButton" style="display: none">
                            <span class="spinner-border spinner-border-sm" aria-hidden="true"></span>
                            <span role="status">Loading...</span>
                        </button>
                    </div>

                    <!-- Register buttons -->
                    <div class="text-center">
                        <p>Not a member? <a href="#!" style="color: orange;" onclick="toggleView();">Register</a></p>
                        <p>or sign up with:</p>
                        <button type="button" class="btn btn-transparent btn-orange btn-socialMedia btn-floating mx-1">
                            <i class="fab fa-facebook-f"></i>
                        </button>

                        <button type="button"
                                class="btn btn-transparent shadow-none btn-orange btn-socialMedia btn-floating mx-1">
                            <i class="fab fa-google"></i>
                        </button>

                        <button type="button"
                                class="btn btn-transparent shadow-none btn-orange btn-socialMedia btn-floating mx-1">
                            <i class="fab fa-twitter"></i>
                        </button>

                        <button type="button"
                                class="btn btn-transparent shadow-none btn-orange btn-socialMedia btn-floating mx-1">
                            <i class="fab fa-github"></i>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row min-vh-100 d-none" id="signUpSection">
        <div class="col-12 col-md-5">
            <div class="row align-content-center text-center min-vh-100 my-4 my-md-0 ">
                <div class="col-12 mb-0">
                    <h2 class="head-text">Welcome To new-Tech</h2>
                </div>
                <div class="col-12 mb-0">
                    <p>To Get Access to Your Orders, Wishlists and Recommendations Please Sign Up By Providing Your
                        Informations to the System.</p>
                </div>
                <div class="col-12">

                    <!-- 2 column grid layout with text inputs for the first and last names -->
                    <div class="row mb-4">
                        <div class="col">
                            <div class="form-outline">
                                <input type="text" id="firstName" class="form-control" placeholder="First Name"/>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-outline">
                                <input type="text" id="lastName" class="form-control" placeholder="Last Name"/>
                            </div>
                        </div>
                    </div>

                    <!-- Email input -->
                    <div class="form-outline mb-4">
                        <input type="email" id="email" class="form-control" placeholder="Email"/>
                    </div>

                    <!-- Password input -->
                    <div class="form-outline mb-4 d-flex position-relative">
                        <input type="password" id="password" class="form-control" placeholder="Password"/>
                        <span><a href="#" class="text-decoration-none link-dark"><i
                                class="fa-solid fa-eye position-absolute"
                                style="right: 19px; bottom: 10px; font-size: 18px;"></i></a></span>
                    </div>
                    <!-- Mobile input -->
                    <div class="form-outline mb-4">
                        <input type="number" id="mobile" class="form-control" placeholder="Mobile"/>
                    </div>
                    <!-- Gender input-->
                    <div class="form-check form-check-inline">
                        <label>Gender :</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="gender" value="male" checked/>
                        <label class="form-check-label">Male</label>
                    </div>

                    <div class="form-check form-check-inline mb-4">
                        <input class="form-check-input" type="radio" name="gender" value="female"/>
                        <label class="form-check-label">Female</label>
                    </div>

                    <!-- Submit button -->
                    <div class="col-12 d-grid">
                        <button class="btn btn-transparent shadow-none btn-orange btn-block mb-4" id="sign-up">Sign up
                        </button>
                        <button class="btn btn-transparent shadow-none btn-orange btn-block mb-4" type="button"
                                disabled="" id="signuploadingButton" style="display: none">
                            <span class="spinner-border spinner-border-sm" aria-hidden="true"></span>
                            <span role="status">Loading...</span>
                        </button>
                    </div>

                    <!-- Register buttons -->
                    <div class="text-center">
                        <p>Already have an account? <a href="#!" style="color: orange;"
                                                       onclick="toggleView();">Login</a></p>
                        <p>or sign up with:</p>
                        <button type="button"
                                class="btn btn-transparent shadow-none btn-orange btn-socialMedia  btn-floating mx-1">
                            <i class="fab fa-facebook-f"></i>
                        </button>

                        <button type="button"
                                class="btn btn-transparent shadow-none btn-orange btn-socialMedia btn-floating mx-1">
                            <i class="fab fa-google"></i>
                        </button>

                        <button type="button"
                                class="btn btn-transparent shadow-none btn-orange btn-socialMedia btn-floating mx-1">
                            <i class="fab fa-twitter"></i>
                        </button>

                        <button type="button"
                                class="btn btn-transparent shadow-none btn-orange btn-socialMedia btn-floating mx-1">
                            <i class="fab fa-github"></i>
                        </button>
                    </div>

                </div>
            </div>
        </div>
        <div class="col-7 d-none d-md-block">
            <div class="row">
                <div class="col-12 vh-100"
                     style="background-image: url(assets/images/otherAppImages/se\ \(2\).png); background-position: center; background-size: cover; background-repeat: no-repeat; image-rendering: auto;"></div>
            </div>
        </div>
    </div>
</div>
<script src="assets/frameworks/js/script.js"></script>
<script src="assets/frameworks/js/bootstrap.bundle.min.js"></script>
<script>
    <%--    SIGNUP--%>
    document.getElementById('sign-up').addEventListener('click', function () {
        let firstName = document.getElementById("firstName").value;
        let lastName = document.getElementById("lastName").value;
        let email = document.getElementById("email").value;
        let password = document.getElementById("password").value;
        let mobile = document.getElementById("mobile").value;
        let gender = document.querySelector('input[name="gender"]:checked');
        let genderValue = gender.value;
        console.log("Selected Gender: " + genderValue);

        var emailRegex = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/;

        if (firstName === "") {
            alert("Please Fill Out Your First Name");
        } else if (lastName === "") {
            alert("Please Fill Out Your Last Name");
        } else if (email === "") {
            alert("Please Fill Out Your email");
        } else if (!emailRegex.test(email)) {
            alert("The email is not valid");
        } else if (document.getElementById("password").value === "") {
            alert("Please Fill Out Your Password");
        } else if (password.length < 8) {
            alert("Password Must Contain Athleast 8 Characters");
        } else if (mobile === "") {
            alert("Please Fill Out Your Mobile Number");
        } else if (mobile.length != 10) {
            alert("Mobile No Must Contain 10 Numbers");
        } else {
            // the loader element
            const loader = document.getElementById("signuploadingButton");
            const normButton = document.getElementById("sign-up");
            // Display the loader
            loader.style.display = "block";
            normButton.style.display = "none";

            let form = {
                first_name: firstName,
                last_name: lastName,
                email: email,
                password: password,
                mobile: mobile,
                gender: genderValue,
            }
            fetch(${BASE_URL}'register',
                {
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json'
                    },
                    method: "POST",
                    body: JSON.stringify(form)
                })
                .then(response => response.text())
                .then(text => {
                    console.log(text);
                    alert(text);
                    // Redirect to the Home Page
                    toggleView();
                    // window.location.href = 'http://localhost:8080/newtech/login';
                })
                .catch(function (res) {
                    console.log(res)
                }).finally(() => {
                // Hide the loader
                loader.style.display = "none";
                normButton.style.display = "block";
            });
        }
    });


    // SIGNIN
    document.getElementById('sign-in').addEventListener('click', function () {
        let email = document.getElementById("username").value;
        let password = document.getElementById("userPassword").value;

        var emailRegex = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/;

        if (email === "") {
            alert("Please Fill Out Your email");
        } else if (!emailRegex.test(email)) {
            alert("The email is not valid");
        } else if (document.getElementById("userPassword").value === "") {
            alert("Please Fill Out Your Password");
        } else if (password.length < 8) {
            alert("Password Must Contain Athleast 8 Characters");
        } else {
            // the loader element
            const loader = document.getElementById("signinloadingButton");
            const normButton = document.getElementById("sign-in");
            // Display the loader
            loader.style.display = "block";
            normButton.style.display = "none";

            let form = {
                email: email,
                password: password
            }


            fetch(${BASE_URL}'auth',
                {
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json'
                    },
                    method: "POST",
                    body: JSON.stringify(form)
                })
                .then(response => response.text())
                .then(text => {
                    console.log(text);
                    alert(text);
                    // Redirect to the Home Page
                    window.location.href = 'http://localhost:8080/newtech/';
                })
                .catch(function (res) {
                    console.log(res)
                }).finally(() => {
                // Hide the loader
                loader.style.display = "none";
                normButton.style.display = "block";
            });
        }
    });
</script>
</body>

</html>