<%--
  Created by IntelliJ IDEA.
  User: ccl
  Date: 3/23/2021
  Time: 4:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Amezia - Responsive Bootstrap 4 Admin Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A premium admin dashboard template by themesbrand" name="description" />
    <meta content="Themesbrand" name="author" />

    <!-- App favicon -->
    <link rel="shortcut icon" href="../assets/images/favicon.ico">

    <!-- App css -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/css/icons.css" rel="stylesheet" type="text/css" />
    <link href="../assets/css/metismenu.min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/css/style.css" rel="stylesheet" type="text/css" />

</head>

<body class="body-dark">

<!-- Resister page -->
<div class="row">
    <div class="col-lg-3 pr-0">
        <div class="card mb-0 shadow-none">
            <div class="card-body">

                <h3 class="text-center m-0">
                    <a href="index.html" class="logo logo-admin"><img src="../assets/images/logo-sm.png" height="60" alt="logo" class="my-3"></a>
                </h3>

                <div class="px-3">
                    <h4 class="text-muted font-18 mb-2 text-center">Free Register</h4>
                    <p class="text-muted text-center">Get your free Amezia account now.</p>

                    <form class="form-horizontal my-4" action="/auth-register" method="post">

                        <div class="form-group">
                            <label for="firmennamen">Firmenname</label>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1"><i class="fa fa-user-o"></i></span>
                                </div>
                                <input type="text" class="form-control" id="firmennamen" name="firmenname" placeholder="Firmennamen" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="email">Email Adresse</label>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon2"><i class="fa fa-envelope-o"></i></span>
                                </div>
                                <input type="text" class="form-control" id="email" name="email" placeholder="Email" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="userpassword">Passwort</label>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon3"><i class="fa fa-lock"></i></span>
                                </div>
                                <input type="password" class="form-control" id="userpassword" name="firstPassword" placeholder="Enter password" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="userpassword">Passwort wiederholen</label>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon4"><i class="fa fa-key"></i></span>
                                </div>
                                <input type="password" class="form-control" id="confirmpassword" name="secondPassword" placeholder="Confirm password" required>
                            </div>
                        </div>

                        <div class="form-group row mt-4">
                            <div class="col-sm-12">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="customControlInline">
                                    <label class="custom-control-label" for="customControlInline">
                                        <span class="font-13 text-muted mb-0">By registering you agree to the Amezia <a href="#" class="text-primary">Terms of Use</a></span>
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form-group mb-0 row">
                            <div class="col-12 mt-2">
                                <button class="btn btn-primary btn-block waves-effect waves-light" type="submit">Register <i class="fa fa-sign-in ml-1"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="m-3 text-center p-3 text-primary">
                    <h4 class="">Already have an account ? </h4>
                    <p class="font-13">Login <span>Amezia</span> Now</p>
                    <a href="#" class="btn btn-secondary waves-effect waves-light">Log In</a>
                </div>
                <div class="mt-4 text-center">
                    <p class="mb-0">?? 2018-2019 Amezia. Crafted with <i class="mdi mdi-heart text-danger"></i> by Themesbrand</p>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-9 p-0 h-100vh d-flex justify-content-center">
        <div class="accountbg d-flex align-items-center">
            <div class="account-title text-center text-white">
                <h4 class="mt-3">Welcome To <span class="text-warning">AMEZIA</span> </h4>
                <h1 class="">Let's Get Started</h1>
                <p class="font-14 mt-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam laoreet tellus ut tincidunt euismod.</p>
                <div class="border w-25 mx-auto border-warning"></div>
            </div>
        </div>
    </div>
</div>
<!-- End Register page -->


<!-- jQuery  -->
<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/bootstrap.bundle.min.js"></script>
<script src="../assets/js/metisMenu.min.js"></script>
<script src="../assets/js/waves.min.js"></script>
<script src="../assets/js/jquery.slimscroll.min.js"></script>

<!-- App js -->
<script src="../assets/js/app.js"></script>

</body>
</html>