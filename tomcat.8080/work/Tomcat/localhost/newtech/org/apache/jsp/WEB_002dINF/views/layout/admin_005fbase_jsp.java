/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.7
 * Generated at: 2023-10-13 07:34:14 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.layout;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;
import com.newtech.util.HibernateUtil;
import org.hibernate.Session;
import java.util.Locale;
import java.util.List;

public final class admin_005fbase_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/C:/Users/uvind/.m2/repository/lk/callidora/jsp/jsp-template-inheritance/1.0.1/jsp-template-inheritance-1.0.1.jar!/META-INF/jsp-inheritance.tld", Long.valueOf(1692219220000L));
    _jspx_dependants.put("file:/C:/Users/uvind/.m2/repository/lk/callidora/jsp/jsp-template-inheritance/1.0.1/jsp-template-inheritance-1.0.1.jar", Long.valueOf(1692244256642L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.util.List");
    _jspx_imports_classes.add("java.util.Locale");
    _jspx_imports_classes.add("org.hibernate.Session");
    _jspx_imports_classes.add("com.newtech.util.HibernateUtil");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!doctype html>\r\n");
      out.write("<html lang=\"en\" data-bs-theme=\"auto\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("    <meta name=\"author\" content=\"D.U.R.P. Jayasooriya\">\r\n");
      out.write("    <title>New Tech Admin</title>\r\n");
      out.write("    <!--Bootstrap CSS--V5.3-->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${assets}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/frameworks/css/bootstrapV5.3.min.css\">\r\n");
      out.write("    <!--Bootstrap icons-->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css\">\r\n");
      out.write("    <!--Font awesome icons-->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css\">\r\n");
      out.write("    <!-- Custom styles -->\r\n");
      out.write("    <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${admin_assets}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/Admin.css\" rel=\"stylesheet\">\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body class=\"scrollbar\">\r\n");
      out.write("<div class=\"container-fluid p-0\">\r\n");
      out.write("    <div class=\"row m-0\">\r\n");
      out.write("        <div class=\"col-12 p-0\">\r\n");
      out.write("            <nav class=\"navbar navbar-dark navbar-custom mb-0\" aria-label=\"Dark offcanvas navbar\">\r\n");
      out.write("                <div class=\"container-fluid\">\r\n");
      out.write("                    ");
      out.write("\r\n");
      out.write("                    <div class=\"bg-light mt-2 ms-md-3 ms-1\"><img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${assets}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/images/logo/New Tech (6).png\"></div>\r\n");
      out.write("                    <div class=\"col-6 d-none d-md-block\">\r\n");
      out.write("                        <form class=\"d-flex\" role=\"search\">\r\n");
      out.write("                            <div class=\"input-group\">\r\n");
      out.write("                                <span class=\"input-group-text mx-0 pe-1 border-0\" id=\"basic-addon1\"><i class=\"bi bi-search\"></i></span>\r\n");
      out.write("                                <input type=\"search\" class=\"form-control form-control-sm border-0\" style=\"box-shadow: none;\" placeholder=\"Search...\" aria-label=\"search\" aria-describedby=\"search\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <ul class=\"list-unstyled d-flex gap-3 m-0 justify-content-center\">\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a class=\"icon-link link-light fs-5 mt-2\" type=\"button\" id=\"offcanvasLink\" data-bs-toggle=\"offcanvas\" data-bs-target=\"#offcanvasNavbarDark\" aria-controls=\"offcanvasNavbarDark\" aria-label=\"Toggle navigation\">\r\n");
      out.write("                                <i class=\"bi bi-grid-3x3-gap-fill\"></i>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"#\" class=\" icon-link link-light fs-5 mt-2\">\r\n");
      out.write("                                <i class=\"bi bi-bell-fill\"></i>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <div class=\" bg-danger rounded-circle overflow-hidden bg-danger\">\r\n");
      out.write("                                <a href=\"#\">\r\n");
      out.write("                                    <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${assets}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/images/userProfImgs/one.jpeg\" class=\"rounded-circle\" style=\"width: 45px;\">\r\n");
      out.write("                                </a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li><a href=\"adminlogin\" class=\"icon-link link-light fs-5 mt-2\">\r\n");
      out.write("                            <i class=\"bi bi-box-arrow-right\"></i>\r\n");
      out.write("                        </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                    ");
      out.write("\r\n");
      out.write("                    ");
      out.write("\r\n");
      out.write("                    <div class=\"offcanvas offcanvas-start text-bg-dark\" tabindex=\"-1\" id=\"offcanvasNavbarDark\" aria-labelledby=\"offcanvasNavbarDarkLabel\">\r\n");
      out.write("                        <div class=\"offcanvas-header\">\r\n");
      out.write("\r\n");
      out.write("                            <button type=\"button\" class=\"btn-close btn-close-white ms-auto\" data-bs-dismiss=\"offcanvas\" aria-label=\"Close\">\r\n");
      out.write("                            </button>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"offcanvas-body\">\r\n");
      out.write("                            <ul class=\"navbar-nav justify-content-end flex-grow-1 pe-3 lh-lg\" style=\"font-size: 18px;\">\r\n");
      out.write("                                <li class=\"nav-item\">\r\n");
      out.write("                                    <a class=\"nav-link active\" aria-current=\"page\" href=\"#\" id=\"dashboard\"><i class=\"fa-solid fa-house\"></i> &nbsp;&nbsp; Dashboard</a>\r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li class=\"nav-item\">\r\n");
      out.write("                                    <a class=\"nav-link\" aria-current=\"page\" href=\"#\" id=\"customerManagement\"><i class=\"fa-solid fa-user-gear\"></i> &nbsp; Customers Management</a>\r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li class=\"nav-item\">\r\n");
      out.write("                                    <a class=\"nav-link\" data-bs-toggle=\"collapse\" aria-current=\"page\" href=\"#productcollapse\" role=\"button\" aria-expanded=\"false\" aria-controls=\"collapseExample\"><i class=\"bi bi-box-seam-fill\"></i> &nbsp;&nbsp; Product Management</a>\r\n");
      out.write("                                    <div class=\"collapse\" id=\"productcollapse\">\r\n");
      out.write("                                        <div class=\"collapse-div\">\r\n");
      out.write("                                            <ul class=\"collapse-div-items text-light\">\r\n");
      out.write("                                                <li><a class=\"collapse-div-item\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("admin/category-setup-product\" id=\"productCategory\">Product Category Setup</a></li>\r\n");
      out.write("                                                <li><a class=\"collapse-div-item\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("admin/view-product\" id=\"productDetails\">Product Details</a></li>\r\n");
      out.write("                                                <li><a class=\"collapse-div-item\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("admin/add-product\" id=\"productAdd\">Product Add</a></li>\r\n");
      out.write("                                            </ul>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </li>\r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li class=\"nav-item\">\r\n");
      out.write("                                    <a class=\"nav-link\" aria-current=\"page\" href=\"#\"><i class=\"fa-solid fa-briefcase\"></i> &nbsp;&nbsp; General Management</a>\r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li class=\"nav-item\">\r\n");
      out.write("                                    <a class=\"nav-link\" aria-current=\"page\" href=\"#\"><i class=\"fa-solid fa-cart-shopping\"></i> &nbsp;&nbsp; Order Management</a>\r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li class=\"nav-item\">\r\n");
      out.write("                                    <a class=\"nav-link\" aria-current=\"page\" href=\"#\"><i class=\"fa-solid fa-pen\"></i>\r\n");
      out.write("                                        &nbsp;&nbsp; Content Management</a>\r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li class=\"nav-item\">\r\n");
      out.write("                                    <a class=\"nav-link\" aria-current=\"page\" href=\"#\"><i class=\"fa-regular fa-folder-open\"></i> &nbsp;&nbsp; Reports\r\n");
      out.write("                                        Management</a>\r\n");
      out.write("                                </li>\r\n");
      out.write("\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    ");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </nav>\r\n");
      out.write("        </div>\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("        ");
      if (_jspx_meth_layout_005fblock_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      if (_jspx_meth_layout_005fblock_005f1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("<!--Popper JS-->\r\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js\"></script>\r\n");
      out.write("<!--Bootstrap JS--V5.3-->\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${assets}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/frameworks/js/bootstrapV5.3.bundle.min.js\"></script>\r\n");
      out.write("<!--Apexcharts JS-->\r\n");
      out.write("<!-- <script src=\"https://cdn.jsdelivr.net/npm/apexcharts\"></script> -->\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${assets}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/frameworks/js/apexcharts.js\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${admin_assets}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/Admin.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
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

  private boolean _jspx_meth_layout_005fblock_005f0(jakarta.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    jakarta.servlet.jsp.PageContext pageContext = _jspx_page_context;
    //  layout:block
    lk.callidora.jsp.inheritance.BlockTag _jspx_th_layout_005fblock_005f0 = new lk.callidora.jsp.inheritance.BlockTag();
    _jsp_getInstanceManager().newInstance(_jspx_th_layout_005fblock_005f0);
    try {
      _jspx_th_layout_005fblock_005f0.setJspContext(_jspx_page_context);
      // /WEB-INF/views/layout/admin_base.jsp(116,8) name = name type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_layout_005fblock_005f0.setName("contents");
      _jspx_th_layout_005fblock_005f0.doTag();
    } finally {
      _jsp_getInstanceManager().destroyInstance(_jspx_th_layout_005fblock_005f0);
    }
    return false;
  }

  private boolean _jspx_meth_layout_005fblock_005f1(jakarta.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    jakarta.servlet.jsp.PageContext pageContext = _jspx_page_context;
    //  layout:block
    lk.callidora.jsp.inheritance.BlockTag _jspx_th_layout_005fblock_005f1 = new lk.callidora.jsp.inheritance.BlockTag();
    _jsp_getInstanceManager().newInstance(_jspx_th_layout_005fblock_005f1);
    try {
      _jspx_th_layout_005fblock_005f1.setJspContext(_jspx_page_context);
      // /WEB-INF/views/layout/admin_base.jsp(121,0) name = name type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_layout_005fblock_005f1.setName("scripts");
      _jspx_th_layout_005fblock_005f1.doTag();
    } finally {
      _jsp_getInstanceManager().destroyInstance(_jspx_th_layout_005fblock_005f1);
    }
    return false;
  }
}
