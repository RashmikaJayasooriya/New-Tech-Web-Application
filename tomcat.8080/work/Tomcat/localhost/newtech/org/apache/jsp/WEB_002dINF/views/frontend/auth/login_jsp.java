/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.7
 * Generated at: 2023-10-03 03:28:01 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.frontend.auth;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile jakarta.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public boolean getErrorOnELNotFound() {
    return false;
  }

  public jakarta.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final jakarta.servlet.http.HttpServletRequest request, final jakarta.servlet.http.HttpServletResponse response)
      throws java.io.IOException, jakarta.servlet.ServletException {

    if (!jakarta.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final jakarta.servlet.jsp.PageContext pageContext;
    jakarta.servlet.http.HttpSession session = null;
    final jakarta.servlet.ServletContext application;
    final jakarta.servlet.ServletConfig config;
    jakarta.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    jakarta.servlet.jsp.JspWriter _jspx_out = null;
    jakarta.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>New-Tech | Login</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css\"\r\n");
      out.write("          integrity=\"sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==\"\r\n");
      out.write("          crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\"\r\n");
      out.write("    />\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.0/font/bootstrap-icons.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/frameworks/css/bootstrap.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/frameworks/css/style.css\">\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body class=\"\">\r\n");
      out.write("<div class=\"container-fluid\">\r\n");
      out.write("    <div class=\"row vh-100\" id=\"loginSection\">\r\n");
      out.write("        <div class=\"col-7 d-none d-md-block\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-12 vh-100\"\r\n");
      out.write("                     style=\"background-image: url(assets/images/otherAppImages/ux-ui-design.svg); background-position: center; background-size: contain; background-repeat: no-repeat; image-rendering: auto;\"></div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"col-12 col-md-5\">\r\n");
      out.write("            <div class=\"row align-content-center text-center vh-100\">\r\n");
      out.write("                <div class=\"col-12 mb-2\">\r\n");
      out.write("                    <h2 class=\"head-text\">Welcome Back :)</h2>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-12 mb-3\">\r\n");
      out.write("                    <p>To Keep Connected With Us Please Login With Your Personal Information By Email and Password.</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div>\r\n");
      out.write("                    <!-- Email input -->\r\n");
      out.write("                    <div class=\"form-outline mb-4 d-flex position-relative\">\r\n");
      out.write("                        <input type=\"email\" id=\"username\" class=\"form-control bi bi-shield-lock-fill\"\r\n");
      out.write("                               placeholder=\"Email Address\"/>\r\n");
      out.write("                        <span><a href=\"#\" class=\"text-decoration-none link-dark\"><i\r\n");
      out.write("                                class=\"fa-solid fa-at position-absolute\"\r\n");
      out.write("                                style=\"right: 19px; bottom: 10px; font-size: 18px;\"></i></a></span>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <!-- Password input -->\r\n");
      out.write("                    <div class=\"form-outline mb-4 d-flex position-relative\">\r\n");
      out.write("                        <input type=\"password\" id=\"userPassword\" class=\"form-control\" placeholder=\"Password\"/>\r\n");
      out.write("                        <span><a href=\"#\" class=\"text-decoration-none link-dark\"><i\r\n");
      out.write("                                class=\"fa-solid fa-eye position-absolute\"\r\n");
      out.write("                                style=\"right: 19px; bottom: 10px; font-size: 18px;\"></i></a></span>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <!-- 2 column grid layout for inline styling -->\r\n");
      out.write("                    <div class=\"row mb-4\">\r\n");
      out.write("                        <div class=\"col d-flex justify-content-center\">\r\n");
      out.write("                            <!-- Checkbox -->\r\n");
      out.write("                            <div class=\"form-check\">\r\n");
      out.write("                                <input class=\"shadow-none form-check-input\" type=\"checkbox\" value=\"\" id=\"form2Example34\"\r\n");
      out.write("                                       checked/>\r\n");
      out.write("                                <label class=\"form-check-label\" for=\"form2Example34\"> Remember me </label>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"col\">\r\n");
      out.write("                            <!-- Simple link -->\r\n");
      out.write("                            <a href=\"#!\" style=\"color: orange;\">Forgot password?</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <!-- Submit button -->\r\n");
      out.write("                    <div class=\"col-12 d-grid\">\r\n");
      out.write("                        <button class=\"btn btn-transparent shadow-none btn-orange btn-block mb-4\" id=\"sign-in\">Sign in\r\n");
      out.write("                        </button>\r\n");
      out.write("                        <button class=\"btn btn-transparent shadow-none btn-orange btn-block mb-4\" type=\"button\"\r\n");
      out.write("                                disabled=\"\" id=\"signinloadingButton\" style=\"display: none\">\r\n");
      out.write("                            <span class=\"spinner-border spinner-border-sm\" aria-hidden=\"true\"></span>\r\n");
      out.write("                            <span role=\"status\">Loading...</span>\r\n");
      out.write("                        </button>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <!-- Register buttons -->\r\n");
      out.write("                    <div class=\"text-center\">\r\n");
      out.write("                        <p>Not a member? <a href=\"#!\" style=\"color: orange;\" onclick=\"toggleView();\">Register</a></p>\r\n");
      out.write("                        <p>or sign up with:</p>\r\n");
      out.write("                        <button type=\"button\" class=\"btn btn-transparent btn-orange btn-socialMedia btn-floating mx-1\">\r\n");
      out.write("                            <i class=\"fab fa-facebook-f\"></i>\r\n");
      out.write("                        </button>\r\n");
      out.write("\r\n");
      out.write("                        <button type=\"button\"\r\n");
      out.write("                                class=\"btn btn-transparent shadow-none btn-orange btn-socialMedia btn-floating mx-1\">\r\n");
      out.write("                            <i class=\"fab fa-google\"></i>\r\n");
      out.write("                        </button>\r\n");
      out.write("\r\n");
      out.write("                        <button type=\"button\"\r\n");
      out.write("                                class=\"btn btn-transparent shadow-none btn-orange btn-socialMedia btn-floating mx-1\">\r\n");
      out.write("                            <i class=\"fab fa-twitter\"></i>\r\n");
      out.write("                        </button>\r\n");
      out.write("\r\n");
      out.write("                        <button type=\"button\"\r\n");
      out.write("                                class=\"btn btn-transparent shadow-none btn-orange btn-socialMedia btn-floating mx-1\">\r\n");
      out.write("                            <i class=\"fab fa-github\"></i>\r\n");
      out.write("                        </button>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"row min-vh-100 d-none\" id=\"signUpSection\">\r\n");
      out.write("        <div class=\"col-12 col-md-5\">\r\n");
      out.write("            <div class=\"row align-content-center text-center min-vh-100 my-4 my-md-0 \">\r\n");
      out.write("                <div class=\"col-12 mb-0\">\r\n");
      out.write("                    <h2 class=\"head-text\">Welcome To new-Tech</h2>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-12 mb-0\">\r\n");
      out.write("                    <p>To Get Access to Your Orders, Wishlists and Recommendations Please Sign Up By Providing Your\r\n");
      out.write("                        Informations to the System.</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-12\">\r\n");
      out.write("\r\n");
      out.write("                    <!-- 2 column grid layout with text inputs for the first and last names -->\r\n");
      out.write("                    <div class=\"row mb-4\">\r\n");
      out.write("                        <div class=\"col\">\r\n");
      out.write("                            <div class=\"form-outline\">\r\n");
      out.write("                                <input type=\"text\" id=\"firstName\" class=\"form-control\" placeholder=\"First Name\"/>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col\">\r\n");
      out.write("                            <div class=\"form-outline\">\r\n");
      out.write("                                <input type=\"text\" id=\"lastName\" class=\"form-control\" placeholder=\"Last Name\"/>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <!-- Email input -->\r\n");
      out.write("                    <div class=\"form-outline mb-4\">\r\n");
      out.write("                        <input type=\"email\" id=\"email\" class=\"form-control\" placeholder=\"Email\"/>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <!-- Password input -->\r\n");
      out.write("                    <div class=\"form-outline mb-4 d-flex position-relative\">\r\n");
      out.write("                        <input type=\"password\" id=\"password\" class=\"form-control\" placeholder=\"Password\"/>\r\n");
      out.write("                        <span><a href=\"#\" class=\"text-decoration-none link-dark\"><i\r\n");
      out.write("                                class=\"fa-solid fa-eye position-absolute\"\r\n");
      out.write("                                style=\"right: 19px; bottom: 10px; font-size: 18px;\"></i></a></span>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!-- Mobile input -->\r\n");
      out.write("                    <div class=\"form-outline mb-4\">\r\n");
      out.write("                        <input type=\"number\" id=\"mobile\" class=\"form-control\" placeholder=\"Mobile\"/>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!-- Gender input-->\r\n");
      out.write("                    <div class=\"form-check form-check-inline\">\r\n");
      out.write("                        <label>Gender :</label>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-check form-check-inline\">\r\n");
      out.write("                        <input class=\"form-check-input\" type=\"radio\" name=\"gender\" value=\"male\" checked/>\r\n");
      out.write("                        <label class=\"form-check-label\">Male</label>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"form-check form-check-inline mb-4\">\r\n");
      out.write("                        <input class=\"form-check-input\" type=\"radio\" name=\"gender\" value=\"female\"/>\r\n");
      out.write("                        <label class=\"form-check-label\">Female</label>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <!-- Submit button -->\r\n");
      out.write("                    <div class=\"col-12 d-grid\">\r\n");
      out.write("                        <button class=\"btn btn-transparent shadow-none btn-orange btn-block mb-4\" id=\"sign-up\">Sign up\r\n");
      out.write("                        </button>\r\n");
      out.write("                        <button class=\"btn btn-transparent shadow-none btn-orange btn-block mb-4\" type=\"button\"\r\n");
      out.write("                                disabled=\"\" id=\"signuploadingButton\" style=\"display: none\">\r\n");
      out.write("                            <span class=\"spinner-border spinner-border-sm\" aria-hidden=\"true\"></span>\r\n");
      out.write("                            <span role=\"status\">Loading...</span>\r\n");
      out.write("                        </button>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <!-- Register buttons -->\r\n");
      out.write("                    <div class=\"text-center\">\r\n");
      out.write("                        <p>Already have an account? <a href=\"#!\" style=\"color: orange;\"\r\n");
      out.write("                                                       onclick=\"toggleView();\">Login</a></p>\r\n");
      out.write("                        <p>or sign up with:</p>\r\n");
      out.write("                        <button type=\"button\"\r\n");
      out.write("                                class=\"btn btn-transparent shadow-none btn-orange btn-socialMedia  btn-floating mx-1\">\r\n");
      out.write("                            <i class=\"fab fa-facebook-f\"></i>\r\n");
      out.write("                        </button>\r\n");
      out.write("\r\n");
      out.write("                        <button type=\"button\"\r\n");
      out.write("                                class=\"btn btn-transparent shadow-none btn-orange btn-socialMedia btn-floating mx-1\">\r\n");
      out.write("                            <i class=\"fab fa-google\"></i>\r\n");
      out.write("                        </button>\r\n");
      out.write("\r\n");
      out.write("                        <button type=\"button\"\r\n");
      out.write("                                class=\"btn btn-transparent shadow-none btn-orange btn-socialMedia btn-floating mx-1\">\r\n");
      out.write("                            <i class=\"fab fa-twitter\"></i>\r\n");
      out.write("                        </button>\r\n");
      out.write("\r\n");
      out.write("                        <button type=\"button\"\r\n");
      out.write("                                class=\"btn btn-transparent shadow-none btn-orange btn-socialMedia btn-floating mx-1\">\r\n");
      out.write("                            <i class=\"fab fa-github\"></i>\r\n");
      out.write("                        </button>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"col-7 d-none d-md-block\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-12 vh-100\"\r\n");
      out.write("                     style=\"background-image: url(assets/images/otherAppImages/se\\ \\(2\\).png); background-position: center; background-size: cover; background-repeat: no-repeat; image-rendering: auto;\"></div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<script src=\"assets/frameworks/js/script.js\"></script>\r\n");
      out.write("<script src=\"assets/frameworks/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("    document.getElementById('sign-up').addEventListener('click', function () {\r\n");
      out.write("        let firstName = document.getElementById(\"firstName\").value;\r\n");
      out.write("        let lastName = document.getElementById(\"lastName\").value;\r\n");
      out.write("        let email = document.getElementById(\"email\").value;\r\n");
      out.write("        let password = document.getElementById(\"password\").value;\r\n");
      out.write("        let mobile = document.getElementById(\"mobile\").value;\r\n");
      out.write("        let gender = document.querySelector('input[name=\"gender\"]:checked');\r\n");
      out.write("        let genderValue = gender.value;\r\n");
      out.write("        console.log(\"Selected Gender: \" + genderValue);\r\n");
      out.write("\r\n");
      out.write("        var emailRegex = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$/;\r\n");
      out.write("\r\n");
      out.write("        if (firstName === \"\") {\r\n");
      out.write("            alert(\"Please Fill Out Your First Name\");\r\n");
      out.write("        } else if (lastName === \"\") {\r\n");
      out.write("            alert(\"Please Fill Out Your Last Name\");\r\n");
      out.write("        } else if (email === \"\") {\r\n");
      out.write("            alert(\"Please Fill Out Your email\");\r\n");
      out.write("        } else if (!emailRegex.test(email)) {\r\n");
      out.write("            alert(\"The email is not valid\");\r\n");
      out.write("        } else if (document.getElementById(\"password\").value === \"\") {\r\n");
      out.write("            alert(\"Please Fill Out Your Password\");\r\n");
      out.write("        } else if (password.length < 8) {\r\n");
      out.write("            alert(\"Password Must Contain Athleast 8 Characters\");\r\n");
      out.write("        } else if (mobile === \"\") {\r\n");
      out.write("            alert(\"Please Fill Out Your Mobile Number\");\r\n");
      out.write("        } else if (mobile.length != 10) {\r\n");
      out.write("            alert(\"Mobile No Must Contain 10 Numbers\");\r\n");
      out.write("        } else {\r\n");
      out.write("            // the loader element\r\n");
      out.write("            const loader = document.getElementById(\"signuploadingButton\");\r\n");
      out.write("            const normButton = document.getElementById(\"sign-up\");\r\n");
      out.write("            // Display the loader\r\n");
      out.write("            loader.style.display = \"block\";\r\n");
      out.write("            normButton.style.display = \"none\";\r\n");
      out.write("\r\n");
      out.write("            let form = {\r\n");
      out.write("                first_name: firstName,\r\n");
      out.write("                last_name: lastName,\r\n");
      out.write("                email: email,\r\n");
      out.write("                password: password,\r\n");
      out.write("                mobile: mobile,\r\n");
      out.write("                gender: genderValue,\r\n");
      out.write("            }\r\n");
      out.write("            fetch(");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("'register',\r\n");
      out.write("                {\r\n");
      out.write("                    headers: {\r\n");
      out.write("                        'Accept': 'application/json',\r\n");
      out.write("                        'Content-Type': 'application/json'\r\n");
      out.write("                    },\r\n");
      out.write("                    method: \"POST\",\r\n");
      out.write("                    body: JSON.stringify(form)\r\n");
      out.write("                })\r\n");
      out.write("                .then(response => response.text())\r\n");
      out.write("                .then(text => {\r\n");
      out.write("                    console.log(text);\r\n");
      out.write("                    alert(text);\r\n");
      out.write("                    // Redirect to the Home Page\r\n");
      out.write("                    toggleView();\r\n");
      out.write("                    // window.location.href = 'http://localhost:8080/newtech/login';\r\n");
      out.write("                })\r\n");
      out.write("                .catch(function (res) {\r\n");
      out.write("                    console.log(res)\r\n");
      out.write("                }).finally(() => {\r\n");
      out.write("                // Hide the loader\r\n");
      out.write("                loader.style.display = \"none\";\r\n");
      out.write("                normButton.style.display = \"block\";\r\n");
      out.write("            });\r\n");
      out.write("        }\r\n");
      out.write("    });\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    // SIGNIN\r\n");
      out.write("    document.getElementById('sign-in').addEventListener('click', function () {\r\n");
      out.write("        let email = document.getElementById(\"username\").value;\r\n");
      out.write("        let password = document.getElementById(\"userPassword\").value;\r\n");
      out.write("\r\n");
      out.write("        var emailRegex = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$/;\r\n");
      out.write("\r\n");
      out.write("        if (email === \"\") {\r\n");
      out.write("            alert(\"Please Fill Out Your email\");\r\n");
      out.write("        } else if (!emailRegex.test(email)) {\r\n");
      out.write("            alert(\"The email is not valid\");\r\n");
      out.write("        } else if (document.getElementById(\"userPassword\").value === \"\") {\r\n");
      out.write("            alert(\"Please Fill Out Your Password\");\r\n");
      out.write("        } else if (password.length < 8) {\r\n");
      out.write("            alert(\"Password Must Contain Athleast 8 Characters\");\r\n");
      out.write("        } else {\r\n");
      out.write("            // the loader element\r\n");
      out.write("            const loader = document.getElementById(\"signinloadingButton\");\r\n");
      out.write("            const normButton = document.getElementById(\"sign-in\");\r\n");
      out.write("            // Display the loader\r\n");
      out.write("            loader.style.display = \"block\";\r\n");
      out.write("            normButton.style.display = \"none\";\r\n");
      out.write("\r\n");
      out.write("            let form = {\r\n");
      out.write("                email: email,\r\n");
      out.write("                password: password\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            fetch(");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("'auth',\r\n");
      out.write("                {\r\n");
      out.write("                    headers: {\r\n");
      out.write("                        'Accept': 'application/json',\r\n");
      out.write("                        'Content-Type': 'application/json'\r\n");
      out.write("                    },\r\n");
      out.write("                    method: \"POST\",\r\n");
      out.write("                    body: JSON.stringify(form)\r\n");
      out.write("                })\r\n");
      out.write("                .then(response => response.text())\r\n");
      out.write("                .then(text => {\r\n");
      out.write("                    console.log(text);\r\n");
      out.write("                    alert(text);\r\n");
      out.write("                    // Redirect to the Home Page\r\n");
      out.write("                    window.location.href = 'http://localhost:8080/newtech/';\r\n");
      out.write("                })\r\n");
      out.write("                .catch(function (res) {\r\n");
      out.write("                    console.log(res)\r\n");
      out.write("                }).finally(() => {\r\n");
      out.write("                // Hide the loader\r\n");
      out.write("                loader.style.display = \"none\";\r\n");
      out.write("                normButton.style.display = \"block\";\r\n");
      out.write("            });\r\n");
      out.write("        }\r\n");
      out.write("    });\r\n");
      out.write("</script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof jakarta.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
