<%--
  Created by IntelliJ IDEA.
  User: ccl
  Date: 3/24/2021
  Time: 2:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="../template/Head-1.jsp"></jsp:include>
<jsp:include page="../template/Logo-2.jsp"></jsp:include>
<jsp:include page="../template/Navbar-3.jsp"></jsp:include>
<jsp:include page="../template/LeftNav-4.jsp"></jsp:include>

<!-- Content -->

<div class="page-content">

    <div class="container-fluid">

        <!-- Page-Title -->
        <div class="row">
            <div class="col-sm-12">
                <div class="page-title-box">
                    <div class="float-right">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0);">Amezia</a></li>
                            <li class="breadcrumb-item"><a href="javascript:void(0);">Pages</a></li>
                            <li class="breadcrumb-item active">Starter</li>
                        </ol>
                    </div>
                    <h4 class="page-title">Starter</h4>
                </div>
                <!-- Contentbegin -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="mt-0"></h5>
                                <div class="">
                                    <div class="alert alert-dark bg-dark text-white border-0 mb-0 p-3" role="alert">
                                        <h4 class="alert-heading mt-0 font-18">Kontaktbogen erstellen</h4>
                                        <p class="mb-2">Einen Kontaktbogen nach Vorgaben erstellen</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--end row-->
                <form class="form" role="form" method="post" action="/Kontaktseite" enctype="multipart/form-data">
                <div class="row">

                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="mt-0">Logo hochladen</h5>
                                <p class="text-muted font-13 mb-4">Falls vorhanden</p>
                                <div class="checkbox my-2">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" name="logo" value="hasLogo" id="logo" data-parsley-multiple="groups" data-parsley-mincheck="2">
                                        <label class="custom-control-label" for="logo">Logo hochladen?</label>
                                    </div>
                                </div>
                                <input type="file" name="fileToUpload" id="input-file-now" class="dropify" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="mt-0">Werden körpernahe Dienstleistungen ohne Maske angeboten?</h5>
                                <div class="general-label">

                                    <div class="form-group row">
                                        <div class="col-md-9">
                                            <div class="checkbox my-2">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" value="checked" name="checkBoxBart" id="customCheck01" data-parsley-multiple="groups" data-parsley-mincheck="2">
                                                    <label class="custom-control-label" for="customCheck01">Bartschnitt</label>
                                                </div>
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" value="checked" name="checkBoxMakeup" id="customCheck02" data-parsley-multiple="groups" data-parsley-mincheck="2">
                                                    <label class="custom-control-label" for="customCheck02">Makeup</label>
                                                </div>
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" value="checked" name="checkBoxKosmetik" id="customCheck03" data-parsley-multiple="groups" data-parsley-mincheck="2">
                                                    <label class="custom-control-label" for="customCheck03">Kosmetik</label>
                                                </div>
                                            </div>
                                        </div> <!--end row-->
                                    </div>
                                </div>
                            </div>
                        </div> <!-- end col -->
                        <div class="row">

                            <div class="col-12">
                                <div class="card m-b-20">
                                    <div class="card-body">

                                        <h5 class="mt-0">Impressum Ihrer Seite</h5>
                                        <p class="text-muted font-13 mb-4">Das Impressum wird auf Ihrem Kontaktbogen ausgegeben.</p>

                                        <textarea id="elm1" name="textArea"></textarea>


                                    </div>
                                </div>
                            </div> <!-- end col -->

                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card ">
                                    <div class="card-body">
                                        <div class="button-items">
                                            <button type="submit"  class="btn btn-success btn-sm btn-block">Kontaktbogen-Seite erstellen</button>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>


                    </div>
                </form>

         </div>
        </div>
    </div>

    <jsp:include page="../template/Footer-5.jsp"></jsp:include>
