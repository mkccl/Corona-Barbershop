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
                                <h1 class="mt-0">Erstellen eines Kontaktformulars</h1>
                                <div class="">
                                    <div class="alert alert-dark bg-dark text-white mb-0 p-3 border-0" role="alert">
                                        <h4 class="alert-heading mt-0 font-18">Well done!</h4>
                                        <p class="mb-2">Im Moment bieten wir 2 verschiedene Versionen für ein Kontaktformular an.</p>
                                        <ul class="list-unstyled">
                                            <li><p class="mb-0">1: Kontaktformular ohne Körpernahe Tätigkeit</p></li>
                                            <li><p class="mb-0">2: Kontaktformular mit Körpernahe Tätigkeit</p></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--end row-->
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
                    <div class="col-md-12 col-lg-8">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="mt-0">Ein Standart Formular. Es behinhaltet alle nötigen Daten.</h5>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">Custom Select</label>
                                    <div class="col-sm-10">
                                        <select class="custom-select">
                                            <option selected></option>
                                            <option value="1">Ohne körpernahe Tätigkeiten</option>
                                            <option value="2">Mit körpernahe Tätigkeiten</option>
                                        </select>
                                    </div>
                                </div>
                                <p class="font-13 mb-4 text-muted"> Extra Informationen </p>
                                <div class="accordion" id="accordionOne">
                                    <div class="card mb-0 ">
                                        <div class="card-header" id="headingOne">
                                            <h5 class="my-0">
                                                <button class="btn btn-link ml-1 mb-0 py-2" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                    <i class="mdi mdi-help-circle font-20 text-pink mr-2"></i> Kontaktformular ohne körpernahe Tätigkeit
                                                </button>
                                            </h5>
                                        </div>

                                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionOne">
                                            <div class="card-body">
                                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
                                                <img src="assets/images/bg-barber-main.jpg" alt="" width="600px" height="800px">
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="accordion" id="accordionTwo">
                                    <div class="card mb-0 ">
                                        <div class="card-header" id="headingTwo">
                                            <h5 class="my-0">
                                                <button class="btn btn-link ml-1 mb-0 py-2" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                                                    <i class="mdi mdi-help-circle font-20 text-pink mr-2"></i> Kontaktformular ohne körpernahe Tätigkeit
                                                </button>
                                            </h5>
                                        </div>

                                        <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordionTwo">
                                            <div class="card-body">
                                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
                                                <img src="assets/images/bg-barber-main.jpg" alt="" width="600px" height="800px">
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="card m-b-20">
                            <div class="card-body">
                                <h5 class="mt-0">Impressum Ihrer Seite</h5>
                                <p class="text-muted font-13 mb-4"></p>
                                <textarea id="elm1" name="textArea"></textarea>
                            </div>
                        </div>
                        <button type="button" class="btn btn-soft-dark waves-effect waves-light" data-toggle="modal" data-animation="bounce" data-target=".bs-example-modal-lg">Informationen zum IMPRESSUM</button>
                        <!--  Modal content for the above example -->
                        <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title align-self-center mt-0" id="myLargeModalLabel">Informationen zum IMPRESSUM</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                    </div>
                                    <div class="modal-body">
                                        <p>Grundlage für diese Abmahnungen finden sich im Telemediengesetz (kurz TMG) Jede geschäftlich genützte  Homepage muss eine so genannte "Anbieterkennzeichnung" enthalten in der folgende Dinge aufgeführt sind:</p>
                                        <p>Namen und Anschriftdes Anbieters;</p>
                                        <p>bei juristischen Personen auch der oder die Vertretungsberechtigten eingetragene Handelsgesellschaften, Vereine, Genossenschaften und Partnerschaften müssen ihre Registernummer nennen.</p>
                                        <p class="text-danger">E-Mail-Adresse ist für alle Pflicht</p>
                                        <p>Umsatzsteuer-Identifikationsnummer</p>
                                        <p>Handwerksbetriebe sollten zusätzlich ihre Kammerzugehörigkeit und Mitgliedschaft in Berufsverbänden angeben.</p>
                                        <p class="text-danger">Wichtig:</p>
                                        <p>diese Angaben müssen „leicht erkennbar, unmittelbar erreichbar und verfügbar" sein. Das kann durch Angaben auf der Startseite oder durch ein direkt erreichbares Impressum im Menü erfolgen.</p>
                                        <p class="text-danger">Bei Nichtbeachtung der genannten Informationspflichten können auch  Bußgelder können verhängt werden.</p>
                                    </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal-dialog -->
                        </div><!-- /.modal -->

                    </div>
                    <div class="col-md-12 col-lg-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="mt-0">Sie haben spezielle Design wünsche?</h5>
                                <p class="text-muted font-13 mb-4">Keine Sorge! Wir kümmern uns darum.</p>
                                <form>
                                    <div class="form-group row">
                                        <div class="col-sm-12 col-lg-6  mo-b-15">
                                            <input class="form-control" type="text" id="name" placeholder="Name">
                                        </div>
                                        <div class="col-sm-12 col-lg-6">
                                            <input class="form-control" type="email" id="example-email-input3" placeholder="Email">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <div class="col-sm-12">
                                            <input class="form-control" type="text" id="subject2" placeholder="Subject">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="4" placeholder="Your message"></textarea>
                                    </div>
                                    <button type="submit" class="btn btn-secondary btn-block px-4">Send Email</button>
                                </form>
                            </div>
                        </div>
                    </div><!--end col-->
                    <div class="col-12">

                    </div> <!-- end col -->

                </div><!--end row-->


            </div>
        </div>
    </div>

    <jsp:include page="../template/Footer-5.jsp"></jsp:include>

