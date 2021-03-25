<%--
  Created by IntelliJ IDEA.
  User: ccl
  Date: 3/23/2021
  Time: 4:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta charset="utf-8" />
    <title>Amezia - Responsive Bootstrap 4 Admin Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A premium admin dashboard template by themesbrand" name="description" />
    <meta content="Themesbrand" name="author" />

    <!-- App favicon -->
    <link rel="shortcut icon" href="assets/images/favicon.ico">


    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="assets/css/frontend/bootstrap.min.css" type="text/css">

    <!--Material Icon -->
    <link rel="stylesheet" type="text/css" href="assets/css/frontend/materialdesignicons.min.css" />

    <!-- Custom  Css -->
    <link rel="stylesheet" type="text/css" href="assets/css/frontend/style.css" />

</head>
<body>

<!--Navbar Start-->
<nav class="navbar navbar-expand-lg fixed-top navbar-custom sticky sticky-dark">
    <div class="container">
        <!-- LOGO -->
        <div class="">
            <a href="index.html" class="logo">
                        <span>
                            <img src="assets/images/logo-sm.png" alt="logo-small" class="logo-sm">
                        </span>
                <span>
                            <img src="assets/images/logo.png" alt="logo-large" class="logo-lg">
                        </span>
            </a>
        </div>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <i class="mdi mdi-menu"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav ml-auto navbar-center" id="mySidenav">
                <li class="nav-item active">
                    <a href="#home" class="nav-link">Home</a>
                </li>
                <li class="nav-item">
                    <a href="#features" class="nav-link">Features</a>
                </li>
                <li class="nav-item">
                    <a href="#pricing" class="nav-link">Pricings</a>
                </li>
                <li class="nav-item">
                    <a href="#faq" class="nav-link">FAQ</a>
                </li>
                <li class="nav-item">
                    <a href="#contact" class="nav-link">Contact</a>
                </li>
                <li class="nav-item">
                    <a href="auth/auth-login.jsp" class="nav-link">Login</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- Navbar End -->

<section class="section bg-home-img" id="home">
    <div class="home-center">
        <div class="home-desc-center">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 mx-auto d-flex justify-content-center">
                        <div class="home-title text-center align-self-center">
                            <h1 class="pt-2">A Multipurpose Bootstrap 4 Admin Dashboard</h1>
                            <h5 class="home-desc pt-4 mx-auto">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</h5>
                            <div class="mt-5">
                                <a href="javascript: void(0);" class="btn btn-light btn-lg px-4 ">Get start now</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>



<section class="section pb-0" id="features">
    <div class="container">
        <div class="row">
            <div class="col-md-5 mx-auto text-center mb-5">
                <i class="mdi mdi-creation text-primary font-20 mr-2"></i>
                <h3 class="mb-3 title">Features of Amezia</h3>
                <p class="text-muted font-14">All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="card shadow-inset">
                    <div class="card-body">
                        <div class="features-cantain text-center">
                            <i class="mdi mdi-account-multiple-plus font-24 bg-soft-pink"></i>
                            <h4 class="mb-3">Team Management</h4>
                            <p class="text-muted">If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card shadow-inset">
                    <div class="card-body">
                        <div class="features-cantain text-center">
                            <i class="mdi mdi-google-wallet font-24 bg-soft-warning"></i>
                            <h4 class="mb-3">Project Management</h4>
                            <p class="text-muted">All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card shadow-inset">
                    <div class="card-body">
                        <div class="features-cantain text-center">
                            <i class="mdi mdi-forum font-24 bg-soft-success"></i>
                            <h4 class="mb-3">Command Communication</h4>
                            <p class="text-muted">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="section">
    <div class="container">

        <div class="row ">
            <div class="col-md-5 mr-auto align-self-center">
                <div class="">
                    <h3 class="font-weight-normal mb-3">Poworfull Deals</h3>
                    <p class="text-muted">
                        Contrary to popular belief,
                        Lorem Ipsum is not simply random text.
                        It has roots in a piece of
                        classical Latin literature from 45 BC,
                        making it over 2000 years old.
                    </p>
                    <p class="font-16 mb-1 text-muted"><i class="mdi mdi-check-circle-outline text-success font-20 mr-2"></i> Easily structure and navigate</p>
                    <p class="text-muted font-16"><i class="mdi mdi-check-circle-outline text-success font-20 mr-2"></i>Trusted Developers by doing your work</p>

                    <a class="btn btn-danger px-3 text-white">Learn more <i class="mdi mdi-arrow-right ml-1"></i></a>
                </div>
            </div>
            <div class="col-md-6 text-center">
                <img src="assets/images/features/1.svg" alt="" class="img-fluid">
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 text-center">
                <img src="assets/images/features/2.svg" alt="" class="img-fluid">
            </div>
            <div class="col-md-5 ml-auto align-self-center">
                <div class="">
                    <h3 class="font-weight-normal mb-3">Never lose a project</h3>
                    <p class="text-muted">
                        Contrary to popular belief,
                        Lorem Ipsum is not simply random text.
                        It has roots in a piece of
                        classical Latin literature from 45 BC,
                        making it over 2000 years old.
                    </p>
                    <p class="text-muted font-16 mb-1"><i class="mdi mdi-check-circle-outline text-success font-20 mr-2"></i> Easily structure and navigate</p>
                    <p class="text-muted font-16"><i class="mdi mdi-check-circle-outline text-success font-20 mr-2"></i>Trusted Developers by doing your work</p>

                    <a class="btn btn-danger px-3 text-white">Learn more <i class="mdi mdi-arrow-right ml-1"></i></a>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="section bg-primary" id="cta">
    <div class="container">
        <div class="row">
            <div class="col-md-10 mx-auto text-center">
                <h2 class="text-white">We make Responsive, Clean and Creative design.</h2>
                <p class="text-white my-4 font-18">Do you want to buy AMEZIA admin ?</p>
                <a href="javascript: void(0);" class="btn btn-light py-2 px-3">Purchase Now</a>
            </div>
        </div>
    </div>
</section>




<section class="section" id="pricing">
    <div class="container">
        <div class="row">
            <div class="col-md-5 mx-auto text-center mb-5">
                <i class="mdi mdi-diamond text-primary font-20 mr-2"></i>
                <h3 class="mb-3 title">Pricing of Amezia</h3>
                <p class="text-muted font-14">All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 col-lg-4">
                <div class="card pricing-card">
                    <div class="card-body">
                        <div class="pricingTable">
                            <span class="pricing-icon"><i class="mdi mdi-rocket bg-primary text-white"></i></span>
                            <h5 class="py-3 m-0 text-primary">Single License</h5>
                            <h3 class="amount mt-2 mb-2">$26<small class="font-10 text-muted">/license</small></h3>
                            <ul class="list-unstyled pricing-content">
                                <li>30GB Disk Space</li>
                                <li>30 Email Accounts</li>
                                <li>30GB Monthly Bandwidth</li>
                                <li>10 Subdomains</li>
                                <li>10 Domains</li>
                            </ul>
                            <a href="javascript: void(0);" class="btn btn-primary px-4">Purchase</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12 col-lg-4">
                <div class="card pricing-card">
                    <div class="card-body">
                        <div class="pricingTable">
                            <span class="pricing-icon"><i class="mdi mdi-email bg-danger text-white"></i></span>
                            <h5 class="py-3 m-0 text-danger">Multiple License</h5>
                            <h3 class="amount mt-2 mb-2">$129<small class="font-10 text-muted">/license</small></h3>
                            <ul class="list-unstyled pricing-content">
                                <li>50GB Disk Space</li>
                                <li>50 Email Accounts</li>
                                <li>50GB Monthly Bandwidth</li>
                                <li>15 Subdomains</li>
                                <li>15 Domains</li>
                            </ul>
                            <a href="javascript: void(0);" class="btn btn-danger px-4">Purchase</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12 col-lg-4">
                <div class="card pricing-card">
                    <div class="card-body">
                        <div class="pricingTable">
                            <span class="pricing-icon"><i class="mdi mdi-umbrella bg-primary text-white"></i></span>
                            <h5 class="py-3 m-0 text-primary">Extended License</h5>
                            <h3 class="amount mt-2 mb-2">$999<small class="font-10 text-muted">/license</small></h3>
                            <ul class="list-unstyled pricing-content">
                                <li>80GB Disk Space</li>
                                <li>80 Email Accounts</li>
                                <li>80GB Monthly Bandwidth</li>
                                <li>20 Subdomains</li>
                                <li>20 Domains</li>
                            </ul>
                            <a href="javascript: void(0);" class="btn btn-primary px-4">Purchase</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="section bg-gray-100" id="faq">
    <div class="container">
        <div class="row">
            <div class="col-md-5 mx-auto text-center mb-5">
                <i class="mdi mdi-help-circle text-primary font-20 mr-2"></i>
                <h3 class="mb-3 title">Frequently Asked Questions</h3>
                <p class="text-muted font-14">All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.</p>
            </div>
            <div class="col-md-12 mb-5">
                <div class="text-center">
                    <button type="button" class="btn btn-success px-5" data-toggle="modal" data-target="#exampleModalform">
                        Have More Questions ?
                    </button>
                </div>
                <div class="">
                    <!-- Modal -->
                    <div class="modal fade" id="exampleModalform" tabindex="-1" role="dialog">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title align-self-center mt-0" id="exampleModalform1">Don't Worry ! Email us your Questions.</h5>

                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="field-1" class="control-label">Name</label>
                                                <input type="text" class="form-control" id="field-1" placeholder="John">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="field-2" class="control-label">Email</label>
                                                <input type="email" class="form-control" id="field-2" placeholder=john@exemple>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="field-3" class="control-label">Subject</label>
                                                <input type="text" class="form-control" id="field-3" placeholder="Subject">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group no-margin">
                                                <label for="field-4" class="control-label">Yuor Message</label>
                                                <textarea class="form-control" id="field-4" placeholder="Write something ..." style="margin-top: 0px; margin-bottom: 0px; height: 137px;"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                    <button type="button" class="btn btn-success">Send message</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-5">
                <p class="text-uppercase font-13 text-danger mb-1"><b>for user</b></p>
                <h4 class="">What is Amezia ?</h4>
                <p class="text-muted font-14">You want customer to your store.
                    Easily publish your coupans
                    and when a user has manage to catch one
                    of your coupens, the coupens will be deducted from
                    your coupens account at Clooger.
                </p>
                <hr class="my-4">

                <p class="text-uppercase font-13 text-danger mb-1"><b>for user</b></p>
                <h4 class="">How it works ?</h4>
                <p class="text-muted font-14">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look.
                </p>
                <hr class="my-4">
                <p class="text-uppercase font-13 text-danger mb-1"><b>for user</b></p>
                <h4 class="">Where do i begin ?</h4>
                <p class="text-muted font-14">You want customer to your store.
                    Easily publish your coupans
                    and when a user has manage to catch one
                    of your coupens, the coupens will be deducted from
                    your coupens account at Clooger.
                </p>
            </div>

            <div class="col-md-5 ml-auto">
                <p class="text-uppercase font-13 text-danger mb-1"><b>for user</b></p>
                <h4 class="">How do i create a refund request ?</h4>
                <p class="text-muted font-14">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.
                </p>
                <hr class="my-4">
                <p class="text-uppercase font-13 text-danger mb-1"><b>for user</b></p>
                <h4 class="">Is there any discount coupons available ?</h4>
                <p class="text-muted font-14">All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words.
                </p>
                <hr class="my-4">
                <p class="text-uppercase font-13 text-danger mb-1"><b>for user</b></p>
                <h4 class="">How it works ?</h4>
                <p class="text-muted font-14">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto.
                </p>
            </div>
        </div>
    </div>
</section>
<section class="section bg-img" id="testimonial">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 mx-auto">
                <div class="mb-0">
                    <div class="card-body testi-carousel">
                        <div class="text-center">
                            <i class="mdi mdi-format-quote-close text-primary font-40 "></i>
                        </div>
                        <div id="carouselExampleFade2" class="carousel slide carousel-fade" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <div class="text-center">
                                        <p class="font-18 px-4">
                                            <i> " It is a long established fact that a reader will be distracted by
                                                the readable content of a page when looking at its layout.
                                                The point of using Lorem Ipsum is that it has a more-or-less
                                                normal distribution of letters, as opposed to using. "</i>
                                        </p>
                                        <div class="">
                                            <img src="images/users/user-1.jpg" alt="" class="rounded-circle pb-2" width="50">
                                            <p class="mb-0 text-primary"><b>- Mary K. Myers</b></p>
                                            <small class="text-muted">CEO Facebook</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="text-center">
                                        <p class="font-18 px-4">
                                            <i>" Where does it come from?
                                                Contrary to popular belief, Lorem Ipsum is not simply random text.
                                                It has roots in a piece of classical Latin literature from 45 BC,
                                                making it over 2000 years look even slightly believable use popular belief,old. "</i>
                                        </p>
                                        <div class="">
                                            <img src="images/users/user-2.jpg" alt="" class="rounded-circle pb-2" width="50">
                                            <p class="mb-0 text-primary"><b>- Michael C. Rios</b></p>
                                            <small class="text-muted">CEO Facebook</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="text-center">
                                        <p class="font-18 px-4">
                                            <i>" There are many variations of passages of Lorem Ipsum available,
                                                but the majority have suffered alteration in some form, by injected humour,
                                                or randomised words which don't look even slightly believable.
                                                If you are going to use a passage of Lorem Ipsum. "</i>
                                        </p>
                                        <div class="">
                                            <img src="images/users/user-3.jpg" alt="" class="rounded-circle pb-2" width="50">
                                            <p class="mb-0 text-primary"><b>- Lisa D. Pullen</b></p>
                                            <small class="text-muted">CEO Facebook</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-md-2">
                <div class="client-img text-center">
                    <img src="assets/images/clients/6.png" alt="" class="img-fluid">
                </div>
            </div>
            <div class="col-md-2">
                <div class="client-img text-center">
                    <img src="assets/images/clients/5.png" alt="" class="img-fluid">
                </div>
            </div>
            <div class="col-md-2">
                <div class="client-img text-center">
                    <img src="assets/images/clients/4.png" alt="" class="img-fluid">
                </div>
            </div>
            <div class="col-md-2">
                <div class="client-img text-center">
                    <img src="assets/images/clients/3.png" alt="" class="img-fluid">
                </div>
            </div>
            <div class="col-md-2">
                <div class="client-img text-center">
                    <img src="assets/images/clients/2.png" alt="" class="img-fluid">
                </div>
            </div>
            <div class="col-md-2">
                <div class="client-img text-center">
                    <img src="assets/images/clients/1.png" alt="" class="img-fluid">
                </div>
            </div>
        </div>
    </div>
</section>

<section class="section" id="contact">
    <div class="container">
        <div class="row">
            <div class="col-md-5 mx-auto text-center mb-5">
                <i class="mdi mdi-headset text-primary font-20 mr-2"></i>
                <h3 class="mb-3 title">Get In Touch</h3>
                <p class="text-muted font-14">All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.</p>
            </div>
        </div>

        <form class="">
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="username">Name</label>
                        <input type="text" class="form-control" id="username" required="">
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="useremail">Email address</label>
                        <input type="email" class="form-control" id="useremail" required="">
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="subject">Subject</label>
                        <input type="text" class="form-control" id="subject" required="">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="message">Message</label>
                        <textarea class="form-control" rows="5"  id="message"></textarea>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 text-right">
                    <button type="submit" class="btn btn-primary px-5 py-2">Send Message</button>
                </div>
            </div>
        </form>
    </div>
</section>

<section class="section bg-dark" id="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <p class="text-uppercase text-white">Help center</p>
                <ul class="list-unstyled company-sub-menu">
                    <li><a href="javascript: void(0);">Accounting </a></li>
                    <li><a href="javascript: void(0);">Billing</a></li>
                    <li><a href="javascript: void(0);">General Question</a></li>
                </ul>
            </div>
            <div class="col-md-2">
                <p class="text-uppercase text-white">about mention</p>
                <ul class="list-unstyled company-sub-menu">
                    <li><a href="javascript: void(0);">About Us  </a></li>
                    <li><a href="javascript: void(0);">Press</a></li>
                    <li><a href="javascript: void(0);">Job Opening</a></li>
                    <li><a href="javascript: void(0);">Term</a></li>
                    <li><a href="javascript: void(0);">Privacy</a></li>
                </ul>
            </div>
            <div class="col-md-2">
                <p class="text-uppercase text-white">ressources</p>
                <ul class="list-unstyled company-sub-menu">
                    <li><a href="javascript: void(0);">Blog</a></li>
                    <li><a href="javascript: void(0);">Help Center</a></li>
                    <li><a href="javascript: void(0);">Academy </a></li>
                    <li><a href="javascript: void(0);">Video Tutorial</a></li>
                    <li><a href="javascript: void(0);">Monitoring Grader </a></li>
                    <li><a href="javascript: void(0);">Mention API</a></li>
                </ul>
            </div>
            <div class="col-md-2">
                <p class="text-uppercase text-white">more info</p>
                <ul class="list-unstyled company-sub-menu">
                    <li><a href="javascript: void(0);">Pricing</a></li>
                    <li><a href="javascript: void(0);">For Marketing</a></li>
                    <li><a href="javascript: void(0);">For CEOs </a></li>
                    <li><a href="javascript: void(0);">For Agencies</a></li>
                    <li><a href="javascript: void(0);">Our Apps</a></li>
                </ul>
            </div>
            <div class="col-md-3">
                <p class="text-uppercase text-white">Contact Us</p>
                <p class="contact-add">Europe: +1 00 22 55 4</p>
                <p class="contact-add">US: +1 46 45 78 96 2</p>
                <p class="contact-add">support@mention.com</p>
                <p class="contact-add">sitemap</p>
                <ul class="footer-icons list-unstyled list-inline m-t-50">
                    <li class="list-inline-item"><a href="javascript: void(0);" class="facebook-back-color"><i class="mdi mdi-facebook"></i></a></li>
                    <li class="list-inline-item"><a href="javascript: void(0);" class="twitter-back-color"><i class="mdi mdi-twitter"></i></a></li>
                    <li class="list-inline-item"><a href="javascript: void(0);" class="google-pluse-back-color"><i class="mdi mdi-google-plus"></i></a></li>
                    <li class="list-inline-item"><a href="javascript: void(0);" class="linkedin-back-color"><i class="mdi mdi-linkedin"></i></a></li>
                </ul>
            </div>
        </div>
        <div class="col-md-12 text-center">
            <p class="text-muted font-14 mb-0 mt-5">
                Copyright © 2018 Amezia. Created by Themesbrand
            </p>
        </div>
    </div>
</section>


<!-- JAVASCRIPTS -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.easing.min.js"></script>
<script src="assets/js/scrollspy.min.js"></script>
<script src="assets/js/app.js"></script>
</body>
</html>