<%--
  Created by IntelliJ IDEA.
  User: michaelkrause
  Date: 27.03.21
  Time: 14:10
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
    <link rel="shortcut icon" href="assets/images/favicon.ico">

    <link href="assets/plugins/select2/select2.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/plugins/tagsinput/jquery.tagsinput.css" rel="stylesheet" />
    <link href="assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">
    <link href="assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
    <link href="assets/plugins/bootstrap-touchspin/css/jquery.bootstrap-touchspin.min.css" rel="stylesheet" />

    <!-- App css -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/metismenu.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/style.css" rel="stylesheet" type="text/css" />

</head>

<body>
<!-- Page Content-->
<div class="page-content">
    <form class="form-horizontal my-4" method="post" action="/auth-login">
    <div class="container-fluid">
            <div class="row">
                <img src="/media/33d6a3_54874a9dcb61459cb6eb79a47a5f5674.png" class="rounded mx-auto d-block" alt="..." style="width: 241px ; height: 161px" >
            </div>
            <h1>Kontaktbogen</h1>
            <div class="row">
                <div class="col-xl-12">
                    <div class="card">
                        <div class="card-body bootstrap-select-1">
                            <h5 class="mt-0">Personenbezogene Daten</h5>
                            <p class="text-muted font-13 mb-4"></p>
                            <div class="row">
                                <div class="col-md-12 col-xl-4">
                                    <div class="form-group row">
                                        <label for="text-name" class="col-sm-2 col-form-label">Name</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" type="text" value="" name="nachname" id="text-name" placeholder="Name" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 col-xl-5">
                                    <div class="form-group row">
                                        <label for="text-vname" class="col-sm-2 col-form-label">Vorname</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" type="text" value="" name="vorname" id="text-vname" placeholder="Vorname" required>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 col-xl-4">
                                    <div class="form-group row">
                                        <label for="text-strasse" class="col-sm-2 col-form-label">Straße</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" type="text" value="" name="strasse" id="text-strasse" placeholder="Straße" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 col-xl-5">
                                    <div class="form-group row">
                                        <label for="text-hsnr" class="col-sm-2 col-form-label">Hausnummer</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" type="text" value="" name="hausnummer" id="text-hsnr" placeholder="HSNR" required>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-12 col-xl-4">
                                    <div class="form-group row">
                                        <label for="text-plz" class="col-sm-2 col-form-label">PLZ</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" type="number" value="" name="plz" id="text-plz" placeholder="00000" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 col-xl-5">
                                    <div class="form-group row">
                                        <label for="text-ort" class="col-sm-2 col-form-label">Ort</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" type="text" value="" name="ort" id="text-ort" placeholder="Wohnort" required>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-md-12 col-xl-4">
                                    <div class="form-group row">
                                        <label for="text-telefon" class="col-sm-2 col-form-label">Telefon</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" type="text" value="" name="telefon" id="text-telefon" placeholder="" required>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                    <div class="card">
                        <div class="card-body bootstrap-select-1">
                            <p class="text-muted font-13 mb-4"></p>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="">
                                                <div class="alert alert-primary mb-0 p-3" role="alert">
                                                    <h4 class="alert-heading mt-0 font-18">Covid19 Krankheitssymptome</h4>
                                                    <div class="custom-control custom-checkbox my-3">
                                                        <input type="checkbox" class="custom-control-input" id="customCheck1" required>
                                                        <label class="custom-control-label" for="customCheck1"><p class="mb-2">Ich versichere, dass ich nicht an Covid19 –typischen Krankheitssymptomen (v.a. Fieber, Husten und Atemnot, Geschmacks- und Geruchsstörungen) leide, außerdem versichere ich, dass ich nicht unter Quarantäne gestellt bin. </p></label>
                                                    </div>
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
                                            <div class="">
                                                <div class="alert alert-primary mb-0 p-3" role="alert">
                                                    <h4 class="alert-heading mt-0 font-18">Datenschutzhinweis gelesen </h4>
                                                    <div class="custom-control custom-checkbox my-3">
                                                        <input type="checkbox" class="custom-control-input" id="customCheck2" required>
                                                        <label class="custom-control-label" for="customCheck2"><p class="mb-2">Die Verarbeitung Ihrer Daten erfolgt auf Grundlage von Art. 6 Abs. 1 c), d), e) DSGVO und Art. 9 Abs. 2 DSGVO. Die Verarbeitung ist erforderlich, um Beschäftigte im Friseurbetrieb zu schützen und ggf. Kontaktpersonen von an Covid-19 erkrankten Personen ausfindig zu machen und rechtzeitig verständigen zu können. Somit dient die Verarbeitung Ihrer Gesundheit und der Ihrer Mitmenschen.
                                                            Ihre Daten werden erforderlichenfalls an das zuständige Gesundheitsamt weitergegeben.
                                                            Ihre Daten werden gelöscht, sobald sie für ihre Erhebung nicht mehr erforderlich sind. Sie haben das Recht auf Auskunft über die bei uns gespeicherten Daten. Sie haben das Recht auf Berichtigung, Löschung und Einschränkung der Verarbeitung unter den in Art. 16 bis 18 DSGVO genannten Voraussetzungen. Ihnen steht ein Beschwerderecht bei der Aufsichtsbehörde zu. </p></label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!--end row-->

                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body">
                                    <button type="submit" class="btn btn-primary btn-lg btn-block">Block level button</button>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </form>

</div><!-- container -->

<!-- sample modal content -->
<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title align-self-center mt-0" id="myModalLabel">Modal Heading</h5>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body">
                <h4>Overflowing text to show scroll behavior</h4>
                <p>Cras mattis consectetur purus sit amet fermentum.
                    Cras justo odio, dapibus ac facilisis in,
                    egestas eget quam. Morbi leo risus, porta ac
                    consectetur ac, vestibulum at eros.</p>
                <p>Praesent commodo cursus magna, vel scelerisque
                    nisl consectetur et. Vivamus sagittis lacus vel
                    augue laoreet rutrum faucibus dolor auctor.</p>
                <p>Aenean lacinia bibendum nulla sed consectetur.
                    Praesent commodo cursus magna, vel scelerisque
                    nisl consectetur et. Donec sed odio dui. Donec
                    ullamcorper nulla non metus auctor
                    fringilla.</p>
                <p>Cras mattis consectetur purus sit amet fermentum.
                    Cras justo odio, dapibus ac facilisis in,
                    egestas eget quam. Morbi leo risus, porta ac
                    consectetur ac, vestibulum at eros.</p>
                <p>Praesent commodo cursus magna, vel scelerisque
                    nisl consectetur et. Vivamus sagittis lacus vel
                    augue laoreet rutrum faucibus dolor auctor.</p>
                <p>Aenean lacinia bibendum nulla sed consectetur.
                    Praesent commodo cursus magna, vel scelerisque
                    nisl consectetur et. Donec sed odio dui. Donec
                    ullamcorper nulla non metus auctor
                    fringilla.</p>
                <p>Cras mattis consectetur purus sit amet fermentum.
                    Cras justo odio, dapibus ac facilisis in,
                    egestas eget quam. Morbi leo risus, porta ac
                    consectetur ac, vestibulum at eros.</p>
                <p>Praesent commodo cursus magna, vel scelerisque
                    nisl consectetur et. Vivamus sagittis lacus vel
                    augue laoreet rutrum faucibus dolor auctor.</p>
                <p>Aenean lacinia bibendum nulla sed consectetur.
                    Praesent commodo cursus magna, vel scelerisque
                    nisl consectetur et. Donec sed odio dui. Donec
                    ullamcorper nulla non metus auctor
                    fringilla.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-light waves-effect" data-dismiss="modal">SCHLIEßEN</button>
            </div>

        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<footer class="footer text-center text-sm-left">
    © 2021 Coronamelde - <a href="" data-toggle="modal" data-target="#myModal">IMPRESSUM</a> <span class="text-muted d-none d-sm-inline-block float-right">Crafted with <i class="mdi mdi-heart text-danger"></i> by ccl</span>
</footer>
</div>
<!-- end page content -->
</div>
<!-- end page-wrapper -->


<!-- jQuery  -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/metisMenu.min.js"></script>
<script src="assets/js/waves.min.js"></script>
<script src="assets/js/jquery.slimscroll.min.js"></script>

<script src="assets/plugins/moment/moment.js"></script>
<script src="assets/plugins/select2/select2.min.js"></script>
<script src="assets/plugins/tagsinput/jquery.tagsinput.min.js"></script>
<script src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
<script src="assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<script src="assets/plugins/bootstrap-touchspin/js/jquery.bootstrap-touchspin.min.js"></script>
<script src="assets/plugins/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>


<!-- Plugins Init js -->
<script src="assets/pages/jquery.form-advanced.init.js"></script>

<!-- App js -->
<script src="assets/js/app.js"></script>

</body>
</html>
