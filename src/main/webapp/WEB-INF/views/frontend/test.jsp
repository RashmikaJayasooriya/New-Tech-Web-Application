<%--
  Created by IntelliJ IDEA.
  User: uvind
  Date: 10/3/2023
  Time: 12:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Odd Or Even</title>
    <link rel="stylesheet" href="assets/frameworks/css/bootstrapV5.3.min.css">
</head>
<body>


<div class="container-fluid">
    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <label for="" class="form-label">Enter a Number</label>
                <input type="number" class="form-control" id="numberValue" placeholder="number">
            </div>
        </div>
        <div>
            <button class="btn btn-primary mb-5" id="numberSubmit">Submit Value</button>
        </div>
        <div class="col-12">
            <div class="row">
                <div class="col-6">
                    <table class="table table-striped-columns table-dark" id="oddTable">
                        <tr>
                            <th >
                                Odd Table
                            </th>
                        </tr>
                    </table>
                </div>
                <div class="col-6">
                    <table class="table table-striped-columns table-dark" id="evenTable">
                        <tr>
                            <th>
                                Even
                            </th>
                        </tr>
                    </table>
                </div>
            </div>
        </div>

    </div>
</div>


<script src="assets/frameworks/js/bootstrapV5.3.bundle.min.js"></script>
<script src="assets/admin/test.js"></script>
</body>
</html>
