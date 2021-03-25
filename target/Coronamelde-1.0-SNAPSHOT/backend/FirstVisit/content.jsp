<%--
  Created by IntelliJ IDEA.
  User: ccl
  Date: 3/23/2021
  Time: 11:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <jsp:include page="../template/Head-1.jsp"></jsp:include>
    <jsp:include page="../template/Logo-2.jsp"></jsp:include>
    <jsp:include page="../template/Navbar-3.jsp"></jsp:include>

    <!-- Page Content-->
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
                    <!-- Content -->

                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="mt-0">Einrichtung Ihres Accounts</h5>
                                    <div class="">
                                        <div class="alert alert-dark bg-dark border-0 text-white mb-0 p-3" role="alert">
                                            <h4 class="alert-heading mt-0 font-18">Fast geschafft!</h4>
                                            <p class="mb-2">Es fehlen nur noch ein paar wichtige Informationen für uns.</p>
                                            <p class="mb-0">Nachdem die Einrichtung Ihres Accounts abgeschlossen ist, können Sie loslegen.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!--end row-->

                    <div class="col-12">

                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-body">
                                    <form id="form-horizontal" class="form-horizontal form-wizard-wrapper" action="/Einrichten" method="post">
                                        <h3>Personenbezogene Daten</h3>
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label for="nachname" class="col-lg-3 col-form-label">Nachname</label>
                                                        <div class="col-lg-9">
                                                            <input id="nachname" name="nachname" type="text" class="form-control" required>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label for="vorname" class="col-lg-3 col-form-label">Vorname</label>
                                                        <div class="col-lg-9">
                                                            <input id="vorname" name="vorname" type="text" class="form-control" required>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label for="email" class="col-lg-3 col-form-label">Email</label>
                                                        <div class="col-lg-9">
                                                            <input id="email" name="email" type="text" class="form-control" required>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label for="telefon" class="col-lg-3 col-form-label">Telefon</label>
                                                        <div class="col-lg-9">
                                                            <input id="telefon" name="telefon" type="text" class="form-control" required>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <h3>Firmenbezogene Daten</h3>
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label for="firmenname" class="col-lg-3 col-form-label">Firmenname</label>
                                                        <div class="col-lg-9">
                                                            <input id="firmenname" name="firmenname" type="text" value="<%= request.getAttribute("firmenname") %>" class="form-control" required>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label for="ort" class="col-lg-3 col-form-label">Ort</label>
                                                        <div class="col-lg-9">
                                                            <input id="ort" name="ort" type="text" class="form-control" required>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label for="strasse" class="col-lg-3 col-form-label">Straße</label>
                                                        <div class="col-lg-9">
                                                            <input id="strasse" name="strasse" type="text" class="form-control" required>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label for="plz" class="col-lg-3 col-form-label">PLZ</label>
                                                        <div class="col-lg-9">
                                                            <input id="plz" name="plz" type="number" class="form-control" required>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </fieldset>
                                        <h3>Bank Details</h3>
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label for="txtNameCard" class="col-lg-3 col-form-label">Name on Card</label>
                                                        <div class="col-lg-9">
                                                            <input id="txtNameCard" name="txtNameCard" type="text" class="form-control">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label for="ddlCreditCardType" class="col-lg-3 col-form-label">Credit Card Type</label>
                                                        <div class="col-lg-9">
                                                            <select id="ddlCreditCardType" name="ddlCreditCardType" class="form-control">
                                                                <option value="">--Please Select--</option>
                                                                <option value="AE">American Express</option>
                                                                <option value="VI">Visa</option>
                                                                <option value="MC">MasterCard</option>
                                                                <option value="DI">Discover</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label for="txtCreditCardNumber" class="col-lg-3 col-form-label">Credit Card Number</label>
                                                        <div class="col-lg-9">
                                                            <input id="txtCreditCardNumber" name="txtCreditCardNumber" type="text" class="form-control">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label for="txtCardVerificationNumber" class="col-lg-3 col-form-label">Card Verification Number</label>
                                                        <div class="col-lg-9">
                                                            <input id="txtCardVerificationNumber" name="txtCardVerificationNumber" type="text" class="form-control">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label for="txtExpirationDate" class="col-lg-3 col-form-label">Expiration Date</label>
                                                        <div class="col-lg-9">
                                                            <input id="txtExpirationDate" name="txtExpirationDate" type="text" class="form-control">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <h3>Confirm Detail</h3>
                                        <fieldset>
                                            <div class="p-3">
                                                <div class="custom-control custom-checkbox my-3">
                                                    <input type="checkbox" class="custom-control-input" name="checkBox" value="true" id="customCheck1" required>
                                                    <label class="custom-control-label" for="customCheck1">Ich stimme zu!</label>
                                                    <button class="btn-lg" type="submit"> Ich Stimme zu! </button>
                                                </div>
                                            </div>
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>

                    </div><!--end row-->

            </div>
            <!-- end page title end breadcrumb -->


        </div><!-- container -->


    <jsp:include page="../template/Footer-5.jsp"></jsp:include>
