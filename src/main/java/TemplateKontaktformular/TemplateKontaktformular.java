package TemplateKontaktformular;

public class TemplateKontaktformular {


    public String TemplateOneWithoutExtra(String logo){
        String template = "<%--\n" +
                "  Created by IntelliJ IDEA.\n" +
                "  User: michaelkrause\n" +
                "  Date: 27.03.21\n" +
                "  Time: 14:10\n" +
                "  To change this template use File | Settings | File Templates.\n" +
                "--%>\n" +
                "<%@ page contentType=\"text/html;charset=UTF-8\" language=\"java\" %>\n" +
                "<!DOCTYPE html>\n" +
                "<html lang=\"en\">\n" +
                "<head>\n" +
                "    <meta charset=\"utf-8\" />\n" +
                "    <title>Amezia - Responsive Bootstrap 4 Admin Dashboard</title>\n" +
                "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n" +
                "    <meta content=\"A premium admin dashboard template by themesbrand\" name=\"description\" />\n" +
                "    <meta content=\"Themesbrand\" name=\"author\" />\n" +
                "\n" +
                "    <!-- App favicon -->\n" +
                "    <link rel=\"shortcut icon\" href=\"assets/images/favicon.ico\">\n" +
                "\n" +
                "    <link href=\"assets/plugins/select2/select2.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n" +
                "    <link href=\"assets/plugins/tagsinput/jquery.tagsinput.css\" rel=\"stylesheet\" />\n" +
                "    <link href=\"assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.min.css\" rel=\"stylesheet\">\n" +
                "    <link href=\"assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css\" rel=\"stylesheet\">\n" +
                "    <link href=\"assets/plugins/bootstrap-touchspin/css/jquery.bootstrap-touchspin.min.css\" rel=\"stylesheet\" />\n" +
                "\n" +
                "    <!-- App css -->\n" +
                "    <link href=\"assets/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n" +
                "    <link href=\"assets/css/icons.css\" rel=\"stylesheet\" type=\"text/css\" />\n" +
                "    <link href=\"assets/css/metismenu.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n" +
                "    <link href=\"assets/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\n" +
                "\n" +
                "</head>\n" +
                "\n" +
                "<body>\n" +
                "<!-- Page Content-->\n" +
                "<div class=\"page-content\">\n" +
                "    <form class=\"form-horizontal my-4\" method=\"post\" action=\"/auth-login\">\n" +
                "    <div class=\"container-fluid\">\n" +
                "            <div class=\"row\">\n" +
                "                <img src=\"" + logo + "\" class=\"rounded mx-auto d-block\" alt=\"...\" style=\"width: 241px ; height: 161px\" >\n" +
                "            </div>\n" +
                "            <h1>Kontaktbogen</h1>\n" +
                "            <div class=\"row\">\n" +
                "                <div class=\"col-xl-12\">\n" +
                "                    <div class=\"card\">\n" +
                "                        <div class=\"card-body bootstrap-select-1\">\n" +
                "                            <h5 class=\"mt-0\">Personenbezogene Daten</h5>\n" +
                "                            <p class=\"text-muted font-13 mb-4\"></p>\n" +
                "                            <div class=\"row\">\n" +
                "                                <div class=\"col-md-12 col-xl-4\">\n" +
                "                                    <div class=\"form-group row\">\n" +
                "                                        <label for=\"text-name\" class=\"col-sm-2 col-form-label\">Name</label>\n" +
                "                                        <div class=\"col-sm-10\">\n" +
                "                                            <input class=\"form-control\" type=\"text\" value=\"\" name=\"nachname\" id=\"text-name\" placeholder=\"Name\" required>\n" +
                "                                        </div>\n" +
                "                                    </div>\n" +
                "                                </div>\n" +
                "                                <div class=\"col-md-12 col-xl-5\">\n" +
                "                                    <div class=\"form-group row\">\n" +
                "                                        <label for=\"text-vname\" class=\"col-sm-2 col-form-label\">Vorname</label>\n" +
                "                                        <div class=\"col-sm-10\">\n" +
                "                                            <input class=\"form-control\" type=\"text\" value=\"\" name=\"vorname\" id=\"text-vname\" placeholder=\"Vorname\" required>\n" +
                "                                        </div>\n" +
                "                                    </div>\n" +
                "                                </div>\n" +
                "                            </div>\n" +
                "                            <div class=\"row\">\n" +
                "                                <div class=\"col-md-12 col-xl-4\">\n" +
                "                                    <div class=\"form-group row\">\n" +
                "                                        <label for=\"text-strasse\" class=\"col-sm-2 col-form-label\">Straße</label>\n" +
                "                                        <div class=\"col-sm-10\">\n" +
                "                                            <input class=\"form-control\" type=\"text\" value=\"\" name=\"strasse\" id=\"text-strasse\" placeholder=\"Straße\" required>\n" +
                "                                        </div>\n" +
                "                                    </div>\n" +
                "                                </div>\n" +
                "                                <div class=\"col-md-12 col-xl-5\">\n" +
                "                                    <div class=\"form-group row\">\n" +
                "                                        <label for=\"text-hsnr\" class=\"col-sm-2 col-form-label\">Hausnummer</label>\n" +
                "                                        <div class=\"col-sm-10\">\n" +
                "                                            <input class=\"form-control\" type=\"text\" value=\"\" name=\"hausnummer\" id=\"text-hsnr\" placeholder=\"HSNR\" required>\n" +
                "                                        </div>\n" +
                "                                    </div>\n" +
                "                                </div>\n" +
                "\n" +
                "                            </div>\n" +
                "                            <div class=\"row\">\n" +
                "                                <div class=\"col-md-12 col-xl-4\">\n" +
                "                                    <div class=\"form-group row\">\n" +
                "                                        <label for=\"text-plz\" class=\"col-sm-2 col-form-label\">PLZ</label>\n" +
                "                                        <div class=\"col-sm-10\">\n" +
                "                                            <input class=\"form-control\" type=\"number\" value=\"\" name=\"plz\" id=\"text-plz\" placeholder=\"00000\" required>\n" +
                "                                        </div>\n" +
                "                                    </div>\n" +
                "                                </div>\n" +
                "                                <div class=\"col-md-12 col-xl-5\">\n" +
                "                                    <div class=\"form-group row\">\n" +
                "                                        <label for=\"text-ort\" class=\"col-sm-2 col-form-label\">Ort</label>\n" +
                "                                        <div class=\"col-sm-10\">\n" +
                "                                            <input class=\"form-control\" type=\"text\" value=\"\" name=\"ort\" id=\"text-ort\" placeholder=\"Wohnort\" required>\n" +
                "                                        </div>\n" +
                "                                    </div>\n" +
                "                                </div>\n" +
                "\n" +
                "                            </div>\n" +
                "\n" +
                "                            <div class=\"row\">\n" +
                "                                <div class=\"col-md-12 col-xl-4\">\n" +
                "                                    <div class=\"form-group row\">\n" +
                "                                        <label for=\"text-telefon\" class=\"col-sm-2 col-form-label\">Telefon</label>\n" +
                "                                        <div class=\"col-sm-10\">\n" +
                "                                            <input class=\"form-control\" type=\"text\" value=\"\" name=\"telefon\" id=\"text-telefon\" placeholder=\"\" required>\n" +
                "                                        </div>\n" +
                "                                    </div>\n" +
                "                                </div>\n" +
                "                            </div>\n" +
                "                        </div>\n" +
                "\n" +
                "\n" +
                "                    </div>\n" +
                "                    <div class=\"card\">\n" +
                "                        <div class=\"card-body bootstrap-select-1\">\n" +
                "                            <p class=\"text-muted font-13 mb-4\"></p>\n" +
                "                            <div class=\"row\">\n" +
                "                                <div class=\"col-lg-12\">\n" +
                "                                    <div class=\"card\">\n" +
                "                                        <div class=\"card-body\">\n" +
                "                                            <div class=\"\">\n" +
                "                                                <div class=\"alert alert-primary mb-0 p-3\" role=\"alert\">\n" +
                "                                                    <h4 class=\"alert-heading mt-0 font-18\">Covid19 Krankheitssymptome</h4>\n" +
                "                                                    <div class=\"custom-control custom-checkbox my-3\">\n" +
                "                                                        <input type=\"checkbox\" class=\"custom-control-input\" id=\"customCheck1\" required>\n" +
                "                                                        <label class=\"custom-control-label\" for=\"customCheck1\"><p class=\"mb-2\">Ich versichere, dass ich nicht an Covid19 –typischen Krankheitssymptomen (v.a. Fieber, Husten und Atemnot, Geschmacks- und Geruchsstörungen) leide, außerdem versichere ich, dass ich nicht unter Quarantäne gestellt bin. </p></label>\n" +
                "                                                    </div>\n" +
                "                                                </div>\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                    </div>\n" +
                "                                </div>\n" +
                "                            </div><!--end row-->\n" +
                "                            <div class=\"row\">\n" +
                "                                <div class=\"col-lg-12\">\n" +
                "                                    <div class=\"card\">\n" +
                "                                        <div class=\"card-body\">\n" +
                "                                            <div class=\"\">\n" +
                "                                                <div class=\"alert alert-primary mb-0 p-3\" role=\"alert\">\n" +
                "                                                    <h4 class=\"alert-heading mt-0 font-18\">Datenschutzhinweis gelesen </h4>\n" +
                "                                                    <div class=\"custom-control custom-checkbox my-3\">\n" +
                "                                                        <input type=\"checkbox\" class=\"custom-control-input\" id=\"customCheck2\" required>\n" +
                "                                                        <label class=\"custom-control-label\" for=\"customCheck2\"><p class=\"mb-2\">Die Verarbeitung Ihrer Daten erfolgt auf Grundlage von Art. 6 Abs. 1 c), d), e) DSGVO und Art. 9 Abs. 2 DSGVO. Die Verarbeitung ist erforderlich, um Beschäftigte im Friseurbetrieb zu schützen und ggf. Kontaktpersonen von an Covid-19 erkrankten Personen ausfindig zu machen und rechtzeitig verständigen zu können. Somit dient die Verarbeitung Ihrer Gesundheit und der Ihrer Mitmenschen.\n" +
                "                                                            Ihre Daten werden erforderlichenfalls an das zuständige Gesundheitsamt weitergegeben.\n" +
                "                                                            Ihre Daten werden gelöscht, sobald sie für ihre Erhebung nicht mehr erforderlich sind. Sie haben das Recht auf Auskunft über die bei uns gespeicherten Daten. Sie haben das Recht auf Berichtigung, Löschung und Einschränkung der Verarbeitung unter den in Art. 16 bis 18 DSGVO genannten Voraussetzungen. Ihnen steht ein Beschwerderecht bei der Aufsichtsbehörde zu. </p></label>\n" +
                "                                                    </div>\n" +
                "                                                </div>\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                    </div>\n" +
                "                                </div>\n" +
                "                            </div><!--end row-->\n" +
                "\n" +
                "                        </div>\n" +
                "                    </div>\n" +
                "                    <div class=\"row\">\n" +
                "                        <div class=\"col-lg-12\">\n" +
                "                            <div class=\"card\">\n" +
                "                                <div class=\"card-body\">\n" +
                "                                    <button type=\"submit\" class=\"btn btn-primary btn-lg btn-block\">Block level button</button>\n" +
                "                                </div>\n" +
                "                            </div>\n" +
                "                        </div>\n" +
                "                    </div>\n" +
                "\n" +
                "                </div>\n" +
                "            </div>\n" +
                "\n" +
                "        </div>\n" +
                "    </form>\n" +
                "\n" +
                "</div><!-- container -->\n" +
                "\n" +
                "<!-- sample modal content -->\n" +
                "<div id=\"myModal\" class=\"modal fade\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\n" +
                "    <div class=\"modal-dialog\">\n" +
                "        <div class=\"modal-content\">\n" +
                "            <div class=\"modal-header\">\n" +
                "                <h5 class=\"modal-title align-self-center mt-0\" id=\"myModalLabel\">Modal Heading</h5>\n" +
                "                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">×</button>\n" +
                "            </div>\n" +
                "            <div class=\"modal-body\">\n" +
                "                <h4>Overflowing text to show scroll behavior</h4>\n" +
                "                <p>Cras mattis consectetur purus sit amet fermentum.\n" +
                "                    Cras justo odio, dapibus ac facilisis in,\n" +
                "                    egestas eget quam. Morbi leo risus, porta ac\n" +
                "                    consectetur ac, vestibulum at eros.</p>\n" +
                "                <p>Praesent commodo cursus magna, vel scelerisque\n" +
                "                    nisl consectetur et. Vivamus sagittis lacus vel\n" +
                "                    augue laoreet rutrum faucibus dolor auctor.</p>\n" +
                "                <p>Aenean lacinia bibendum nulla sed consectetur.\n" +
                "                    Praesent commodo cursus magna, vel scelerisque\n" +
                "                    nisl consectetur et. Donec sed odio dui. Donec\n" +
                "                    ullamcorper nulla non metus auctor\n" +
                "                    fringilla.</p>\n" +
                "                <p>Cras mattis consectetur purus sit amet fermentum.\n" +
                "                    Cras justo odio, dapibus ac facilisis in,\n" +
                "                    egestas eget quam. Morbi leo risus, porta ac\n" +
                "                    consectetur ac, vestibulum at eros.</p>\n" +
                "                <p>Praesent commodo cursus magna, vel scelerisque\n" +
                "                    nisl consectetur et. Vivamus sagittis lacus vel\n" +
                "                    augue laoreet rutrum faucibus dolor auctor.</p>\n" +
                "                <p>Aenean lacinia bibendum nulla sed consectetur.\n" +
                "                    Praesent commodo cursus magna, vel scelerisque\n" +
                "                    nisl consectetur et. Donec sed odio dui. Donec\n" +
                "                    ullamcorper nulla non metus auctor\n" +
                "                    fringilla.</p>\n" +
                "                <p>Cras mattis consectetur purus sit amet fermentum.\n" +
                "                    Cras justo odio, dapibus ac facilisis in,\n" +
                "                    egestas eget quam. Morbi leo risus, porta ac\n" +
                "                    consectetur ac, vestibulum at eros.</p>\n" +
                "                <p>Praesent commodo cursus magna, vel scelerisque\n" +
                "                    nisl consectetur et. Vivamus sagittis lacus vel\n" +
                "                    augue laoreet rutrum faucibus dolor auctor.</p>\n" +
                "                <p>Aenean lacinia bibendum nulla sed consectetur.\n" +
                "                    Praesent commodo cursus magna, vel scelerisque\n" +
                "                    nisl consectetur et. Donec sed odio dui. Donec\n" +
                "                    ullamcorper nulla non metus auctor\n" +
                "                    fringilla.</p>\n" +
                "            </div>\n" +
                "            <div class=\"modal-footer\">\n" +
                "                <button type=\"button\" class=\"btn btn-light waves-effect\" data-dismiss=\"modal\">SCHLIEßEN</button>\n" +
                "            </div>\n" +
                "\n" +
                "        </div><!-- /.modal-content -->\n" +
                "    </div><!-- /.modal-dialog -->\n" +
                "</div><!-- /.modal -->\n" +
                "<footer class=\"footer text-center text-sm-left\">\n" +
                "    © 2021 Coronamelde - <a href=\"\" data-toggle=\"modal\" data-target=\"#myModal\">IMPRESSUM</a> <span class=\"text-muted d-none d-sm-inline-block float-right\">Crafted with <i class=\"mdi mdi-heart text-danger\"></i> by ccl</span>\n" +
                "</footer>\n" +
                "</div>\n" +
                "<!-- end page content -->\n" +
                "</div>\n" +
                "<!-- end page-wrapper -->\n" +
                "\n" +
                "\n" +
                "<!-- jQuery  -->\n" +
                "<script src=\"assets/js/jquery.min.js\"></script>\n" +
                "<script src=\"assets/js/bootstrap.bundle.min.js\"></script>\n" +
                "<script src=\"assets/js/metisMenu.min.js\"></script>\n" +
                "<script src=\"assets/js/waves.min.js\"></script>\n" +
                "<script src=\"assets/js/jquery.slimscroll.min.js\"></script>\n" +
                "\n" +
                "<script src=\"assets/plugins/moment/moment.js\"></script>\n" +
                "<script src=\"assets/plugins/select2/select2.min.js\"></script>\n" +
                "<script src=\"assets/plugins/tagsinput/jquery.tagsinput.min.js\"></script>\n" +
                "<script src=\"assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js\"></script>\n" +
                "<script src=\"assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js\"></script>\n" +
                "<script src=\"assets/plugins/bootstrap-touchspin/js/jquery.bootstrap-touchspin.min.js\"></script>\n" +
                "<script src=\"assets/plugins/bootstrap-inputmask/bootstrap-inputmask.min.js\"></script>\n" +
                "\n" +
                "\n" +
                "<!-- Plugins Init js -->\n" +
                "<script src=\"assets/pages/jquery.form-advanced.init.js\"></script>\n" +
                "\n" +
                "<!-- App js -->\n" +
                "<script src=\"assets/js/app.js\"></script>\n" +
                "\n" +
                "</body>\n" +
                "</html>\n";


        return template;
    }

}
