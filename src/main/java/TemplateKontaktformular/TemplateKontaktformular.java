package TemplateKontaktformular;

public class TemplateKontaktformular {


    public String TemplateWithLogo(String logo){

        String template = "<%@ page contentType=\"text/html;charset=UTF-8\" language=\"java\" %>\n" +
                "<html>\n" +
                "<head>\n" +
                "    <title>Title</title>\n" +
                "    <link href=\"../../assets/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n" +
                "    <meta charset=\"utf-8\"/>\n" +
                "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=20.0\">\n" +
                "</head>\n" +
                "<body>\n" +
                "    <div class=\"container\">\n" +
                "\n" +
                "        <img src=\"" + logo + "\" class=\"rounded mx-auto d-block\" alt=\"...\" style=\"width: 241px ; height: 161px\" >\n" +
                "\n" +
                "\n" +
                "        <div class=\"row\">\n" +
                "            <div class=\"col-sm\">\n" +
                "                <figure class=\"text-center\" style=\"margin-top: 10px\">\n" +
                "                    <h1>Kontaktdatenerfassung</h1>\n" +
                "                </figure>\n" +
                "\n" +
                "                </br>\n" +
                "                <p>Coronabedingt dürfen wir nur unter strengen Auflagen unsere Friseurdienstleistungen anbieten.\n" +
                "                    Dazu gehört, dass wir deine Kontaktdaten erfassen müssen:\n" +
                "                </p>\n" +
                "                <form class=\"row g-3 needs-validation\" action=\"/done\" method=\"post\">\n" +
                "                    <div class=\"row g-3\">\n" +
                "                        <div class=\"col\">\n" +
                "                            <input type=\"text\" class=\"form-control\" id=\"vorname\" name=\"vorname\" placeholder=\"Vorname\" aria-label=\"Vorname\" required>\n" +
                "                        </div>\n" +
                "                        <div class=\"col\">\n" +
                "                            <input type=\"text\" class=\"form-control\" id=\"nachname\" name=\"nachname\" placeholder=\"Nachname\" aria-label=\"Nachname\" required>\n" +
                "                        </div>\n" +
                "                    </div>\n" +
                "                    <div class=\"row g-3\" style=\"margin-top: 2px\">\n" +
                "                        <div class=\"mb-3\">\n" +
                "                            <input type=\"text\" class=\"form-control\" id=\"strasse\" name=\"strasse\" placeholder=\"Straße und Hausnummer\" required>\n" +
                "                        </div>\n" +
                "                    </div>\n" +
                "                    <div class=\"row g-3\" style=\"margin-top: 2px\">\n" +
                "                        <div class=\"col-3\">\n" +
                "                            <input type=\"number\" class=\"form-control\" id=\"plz\" name=\"plz\" placeholder=\"PLZ\" aria-label=\"PLZ\" required>\n" +
                "                        </div>\n" +
                "                        <div class=\"col\">\n" +
                "                            <input type=\"text\" class=\"form-control\" placeholder=\"Ort\" name=\"ort\" id=\"ort\" aria-label=\"Ort\" required>\n" +
                "                        </div>\n" +
                "                    </div>\n" +
                "                    <div class=\"mb-3\" style=\"margin-top: 10px\">\n" +
                "                        <input type=\"text\" class=\"form-control\" id=\"telenummer\" name=\"telenummer\" placeholder=\"Telefonnummer\" required>\n" +
                "                    </div>\n" +
                "                    <div class=\"alert alert-danger\" role=\"alert\">\n" +
                "                        <div class=\"form-check\">\n" +
                "                            <input class=\"form-check-input\" type=\"checkbox\" value=\"Zugestimmt\" name=\"checkBoxCovid\" id=\"covid\" required>\n" +
                "                            <label class=\"form-check-label\" for=\"covid\">\n" +
                "                                Covid19 Krankheitssymptome\n" +
                "                            </label>\n" +
                "                        </div>\n" +
                "                        Ich versichere, dass ich nicht an Covid19 –typischen Krankheitssymptomen (v.a. Fieber, Husten und Atemnot, Geschmacks- und Geruchsstörungen) leide, außerdem versichere ich, dass ich nicht unter Quarantäne gestellt bin.\n" +
                "                    </div>\n" +
                "                    <div class=\"alert alert-danger\" role=\"alert\">\n" +
                "                        <div class=\"form-check\">\n" +
                "                            <input class=\"form-check-input\" type=\"checkbox\" value=\"Zugestimmt\" name=\"checkBoxDatenschutz\" id=\"datenschutz\" required>\n" +
                "                            <label class=\"form-check-label\" for=\"datenschutz\">\n" +
                "                                Datenschutzhinweis gelesen\n" +
                "                            </label>\n" +
                "                        </div>\n" +
                "                        Die Verarbeitung Ihrer Daten erfolgt auf Grundlage von Art. 6 Abs. 1 c), d), e) DSGVO und Art. 9 Abs. 2 DSGVO. Die Verarbeitung ist erforderlich, um Beschäftigte im Friseurbetrieb zu schützen und ggf. Kontaktpersonen von an Covid-19 erkrankten Personen ausfindig zu machen und rechtzeitig verständigen zu können. Somit dient die Verarbeitung Ihrer Gesundheit und der Ihrer Mitmenschen.\n" +
                "                        Ihre Daten werden erforderlichenfalls an das zuständige Gesundheitsamt weitergegeben.\n" +
                "                        Ihre Daten werden gelöscht, sobald sie für ihre Erhebung nicht mehr erforderlich sind. Sie haben das Recht auf Auskunft über die bei uns gespeicherten Daten. Sie haben das Recht auf Berichtigung, Löschung und Einschränkung der Verarbeitung unter den in Art. 16 bis 18 DSGVO genannten Voraussetzungen. Ihnen steht ein Beschwerderecht bei der Aufsichtsbehörde zu.\n" +
                "                    </div>\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "                    <div class=\"col-12\">\n" +
                "                        <button class=\"btn btn-primary\" type=\"submit\">Bestätigen</button>\n" +
                "                    </div>\n" +
                "            </form>\n" +
                "        </div>\n" +
                "            <footer>\n" +
                "                <figure class=\"text-center\" style=\"margin-top: 10px\">\n" +
                "                    <blockquote class=\"blockquote\">\n" +
                "                        <p>Copyright 2021 - <a href=\"https://www.the-barbershop-hannover.com/impressum\">Impressum</a></p>\n" +
                "                    </blockquote>\n" +
                "                </figure>\n" +
                "            </footer>\n" +
                "\n" +
                "\n" +
                "        </div>\n" +
                "    </div>\n" +
                "    <script src=\"../../assets/bootstrap/js/bootstrap.bundle.min.js\"></script>\n" +
                "    <script src=\"../../assets/bootstrap/js/validation.js\"></script>\n" +
                "\n" +
                "</body>\n" +
                "</html>";

        return template;
    }

    public String TemplateWithoutLogo(){
        String template = "<%@ page contentType=\"text/html;charset=UTF-8\" language=\"java\" %>\n" +
                "<html>\n" +
                "<head>\n" +
                "    <title>Title</title>\n" +
                "    <link href=\"../../css/bootstrap.min.css\" rel=\"stylesheet\">\n" +
                "    <meta charset=\"utf-8\"/>\n" +
                "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=20.0\">\n" +
                "</head>\n" +
                "<body>\n" +
                "    <div class=\"container\">\n" +
                "\n" +
                "        <img src=\" \" class=\"rounded mx-auto d-block\" alt=\"...\" style=\"width: 241px ; height: 161px\" >\n" +
                "\n" +
                "\n" +
                "        <div class=\"row\">\n" +
                "            <div class=\"col-sm\">\n" +
                "                <figure class=\"text-center\" style=\"margin-top: 10px\">\n" +
                "                    <h1>Kontaktdatenerfassung</h1>\n" +
                "                </figure>\n" +
                "\n" +
                "                </br>\n" +
                "                <p>Coronabedingt dürfen wir nur unter strengen Auflagen unsere Friseurdienstleistungen anbieten.\n" +
                "                    Dazu gehört, dass wir deine Kontaktdaten erfassen müssen:\n" +
                "                </p>\n" +
                "                <form class=\"row g-3 needs-validation\" action=\"/done\" method=\"post\">\n" +
                "                    <div class=\"row g-3\">\n" +
                "                        <div class=\"col\">\n" +
                "                            <input type=\"text\" class=\"form-control\" id=\"vorname\" name=\"vorname\" placeholder=\"Vorname\" aria-label=\"Vorname\" required>\n" +
                "                        </div>\n" +
                "                        <div class=\"col\">\n" +
                "                            <input type=\"text\" class=\"form-control\" id=\"nachname\" name=\"nachname\" placeholder=\"Nachname\" aria-label=\"Nachname\" required>\n" +
                "                        </div>\n" +
                "                    </div>\n" +
                "                    <div class=\"row g-3\" style=\"margin-top: 2px\">\n" +
                "                        <div class=\"mb-3\">\n" +
                "                            <input type=\"text\" class=\"form-control\" id=\"strasse\" name=\"strasse\" placeholder=\"Straße und Hausnummer\" required>\n" +
                "                        </div>\n" +
                "                    </div>\n" +
                "                    <div class=\"row g-3\" style=\"margin-top: 2px\">\n" +
                "                        <div class=\"col-3\">\n" +
                "                            <input type=\"number\" class=\"form-control\" id=\"plz\" name=\"plz\" placeholder=\"PLZ\" aria-label=\"PLZ\" required>\n" +
                "                        </div>\n" +
                "                        <div class=\"col\">\n" +
                "                            <input type=\"text\" class=\"form-control\" placeholder=\"Ort\" name=\"ort\" id=\"ort\" aria-label=\"Ort\" required>\n" +
                "                        </div>\n" +
                "                    </div>\n" +
                "                    <div class=\"mb-3\" style=\"margin-top: 10px\">\n" +
                "                        <input type=\"text\" class=\"form-control\" id=\"telenummer\" name=\"telenummer\" placeholder=\"Telefonnummer\" required>\n" +
                "                    </div>\n" +
                "                    <div class=\"alert alert-danger\" role=\"alert\">\n" +
                "                        <div class=\"form-check\">\n" +
                "                            <input class=\"form-check-input\" type=\"checkbox\" value=\"Zugestimmt\" name=\"checkBoxCovid\" id=\"covid\" required>\n" +
                "                            <label class=\"form-check-label\" for=\"covid\">\n" +
                "                                Covid19 Krankheitssymptome\n" +
                "                            </label>\n" +
                "                        </div>\n" +
                "                        Ich versichere, dass ich nicht an Covid19 –typischen Krankheitssymptomen (v.a. Fieber, Husten und Atemnot, Geschmacks- und Geruchsstörungen) leide, außerdem versichere ich, dass ich nicht unter Quarantäne gestellt bin.\n" +
                "                    </div>\n" +
                "                    <div class=\"alert alert-danger\" role=\"alert\">\n" +
                "                        <div class=\"form-check\">\n" +
                "                            <input class=\"form-check-input\" type=\"checkbox\" value=\"Zugestimmt\" name=\"checkBoxDatenschutz\" id=\"datenschutz\" required>\n" +
                "                            <label class=\"form-check-label\" for=\"datenschutz\">\n" +
                "                                Datenschutzhinweis gelesen\n" +
                "                            </label>\n" +
                "                        </div>\n" +
                "                        Die Verarbeitung Ihrer Daten erfolgt auf Grundlage von Art. 6 Abs. 1 c), d), e) DSGVO und Art. 9 Abs. 2 DSGVO. Die Verarbeitung ist erforderlich, um Beschäftigte im Friseurbetrieb zu schützen und ggf. Kontaktpersonen von an Covid-19 erkrankten Personen ausfindig zu machen und rechtzeitig verständigen zu können. Somit dient die Verarbeitung Ihrer Gesundheit und der Ihrer Mitmenschen.\n" +
                "                        Ihre Daten werden erforderlichenfalls an das zuständige Gesundheitsamt weitergegeben.\n" +
                "                        Ihre Daten werden gelöscht, sobald sie für ihre Erhebung nicht mehr erforderlich sind. Sie haben das Recht auf Auskunft über die bei uns gespeicherten Daten. Sie haben das Recht auf Berichtigung, Löschung und Einschränkung der Verarbeitung unter den in Art. 16 bis 18 DSGVO genannten Voraussetzungen. Ihnen steht ein Beschwerderecht bei der Aufsichtsbehörde zu.\n" +
                "                    </div>\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "                    <div class=\"col-12\">\n" +
                "                        <button class=\"btn btn-primary\" type=\"submit\">Bestätigen</button>\n" +
                "                    </div>\n" +
                "            </form>\n" +
                "        </div>\n" +
                "            <footer>\n" +
                "                <figure class=\"text-center\" style=\"margin-top: 10px\">\n" +
                "                    <blockquote class=\"blockquote\">\n" +
                "                        <p>Copyright 2021 - <a href=\"https://www.the-barbershop-hannover.com/impressum\">Impressum</a></p>\n" +
                "                    </blockquote>\n" +
                "                </figure>\n" +
                "            </footer>\n" +
                "\n" +
                "\n" +
                "        </div>\n" +
                "    </div>\n" +
                "    <script src=\"../../assets/js/bootstrap.bundle.min.js\"></script>\n" +
                "    <script src=\"../../js/validation.js\"></script>\n" +
                "\n" +
                "</body>\n" +
                "</html>";

        return template;
    }

    public String TemplateWithoutLogoWithExtra(){
            String template = "<%@ page contentType=\"text/html;charset=UTF-8\" language=\"java\" %>\n" +
                    "<html>\n" +
                    "<head>\n" +
                    "    <title>Title</title>\n" +
                    "    <link href=\"../../css/bootstrap.min.css\" rel=\"stylesheet\">\n" +
                    "    <meta charset=\"utf-8\"/>\n" +
                    "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=20.0\">\n" +
                    "</head>\n" +
                    "<body>\n" +
                    "    <div class=\"container\">\n" +
                    "\n" +
                    "        <img src=\" \" class=\"rounded mx-auto d-block\" alt=\"...\" style=\"width: 241px ; height: 161px\" >\n" +
                    "\n" +
                    "\n" +
                    "        <div class=\"row\">\n" +
                    "            <div class=\"col-sm\">\n" +
                    "                <figure class=\"text-center\" style=\"margin-top: 10px\">\n" +
                    "                    <h1>Kontaktdatenerfassung</h1>\n" +
                    "                </figure>\n" +
                    "\n" +
                    "                </br>\n" +
                    "                <p>Coronabedingt dürfen wir nur unter strengen Auflagen unsere Friseurdienstleistungen anbieten.\n" +
                    "                    Dazu gehört, dass wir deine Kontaktdaten erfassen müssen:\n" +
                    "                </p>\n" +
                    "                <form class=\"row g-3 needs-validation\" action=\"/done\" method=\"post\">\n" +
                    "                    <div class=\"row g-3\">\n" +
                    "                        <div class=\"col\">\n" +
                    "                            <input type=\"text\" class=\"form-control\" id=\"vorname\" name=\"vorname\" placeholder=\"Vorname\" aria-label=\"Vorname\" required>\n" +
                    "                        </div>\n" +
                    "                        <div class=\"col\">\n" +
                    "                            <input type=\"text\" class=\"form-control\" id=\"nachname\" name=\"nachname\" placeholder=\"Nachname\" aria-label=\"Nachname\" required>\n" +
                    "                        </div>\n" +
                    "                    </div>\n" +
                    "                    <div class=\"row g-3\" style=\"margin-top: 2px\">\n" +
                    "                        <div class=\"mb-3\">\n" +
                    "                            <input type=\"text\" class=\"form-control\" id=\"strasse\" name=\"strasse\" placeholder=\"Straße und Hausnummer\" required>\n" +
                    "                        </div>\n" +
                    "                    </div>\n" +
                    "                    <div class=\"row g-3\" style=\"margin-top: 2px\">\n" +
                    "                        <div class=\"col-3\">\n" +
                    "                            <input type=\"number\" class=\"form-control\" id=\"plz\" name=\"plz\" placeholder=\"PLZ\" aria-label=\"PLZ\" required>\n" +
                    "                        </div>\n" +
                    "                        <div class=\"col\">\n" +
                    "                            <input type=\"text\" class=\"form-control\" placeholder=\"Ort\" name=\"ort\" id=\"ort\" aria-label=\"Ort\" required>\n" +
                    "                        </div>\n" +
                    "                    </div>\n" +
                    "                    <div class=\"mb-3\" style=\"margin-top: 10px\">\n" +
                    "                        <input type=\"text\" class=\"form-control\" id=\"telenummer\" name=\"telenummer\" placeholder=\"Telefonnummer\" required>\n" +
                    "                    </div>\n" +
                    "                    <div class=\"alert alert-danger\" role=\"alert\">\n" +
                    "                        <div class=\"form-check\">\n" +
                    "                            <input class=\"form-check-input\" type=\"checkbox\" value=\"Zugestimmt\" name=\"checkBoxCovid\" id=\"covid\" required>\n" +
                    "                            <label class=\"form-check-label\" for=\"covid\">\n" +
                    "                                Covid19 Krankheitssymptome\n" +
                    "                            </label>\n" +
                    "                        </div>\n" +
                    "                        Ich versichere, dass ich nicht an Covid19 –typischen Krankheitssymptomen (v.a. Fieber, Husten und Atemnot, Geschmacks- und Geruchsstörungen) leide, außerdem versichere ich, dass ich nicht unter Quarantäne gestellt bin.\n" +
                    "                    </div>\n" +
                    "                    <div class=\"alert alert-danger\" role=\"alert\">\n" +
                    "                        <div class=\"form-check\">\n" +
                    "                            <input class=\"form-check-input\" type=\"checkbox\" value=\"Zugestimmt\" name=\"checkBoxDatenschutz\" id=\"datenschutz\" required>\n" +
                    "                            <label class=\"form-check-label\" for=\"datenschutz\">\n" +
                    "                                Datenschutzhinweis gelesen\n" +
                    "                            </label>\n" +
                    "                        </div>\n" +
                    "                        Die Verarbeitung Ihrer Daten erfolgt auf Grundlage von Art. 6 Abs. 1 c), d), e) DSGVO und Art. 9 Abs. 2 DSGVO. Die Verarbeitung ist erforderlich, um Beschäftigte im Friseurbetrieb zu schützen und ggf. Kontaktpersonen von an Covid-19 erkrankten Personen ausfindig zu machen und rechtzeitig verständigen zu können. Somit dient die Verarbeitung Ihrer Gesundheit und der Ihrer Mitmenschen.\n" +
                    "                        Ihre Daten werden erforderlichenfalls an das zuständige Gesundheitsamt weitergegeben.\n" +
                    "                        Ihre Daten werden gelöscht, sobald sie für ihre Erhebung nicht mehr erforderlich sind. Sie haben das Recht auf Auskunft über die bei uns gespeicherten Daten. Sie haben das Recht auf Berichtigung, Löschung und Einschränkung der Verarbeitung unter den in Art. 16 bis 18 DSGVO genannten Voraussetzungen. Ihnen steht ein Beschwerderecht bei der Aufsichtsbehörde zu.\n" +
                    "                    </div>\n" +
                    "\n" +
                    "\n" +
                    "                    <div class=\"alert alert-danger\" role=\"alert\">\n" +
                    "                        <div class=\"form-check\">\n" +
                    "                            <input class=\"form-check-input\" type=\"checkbox\" value=\"Bestätigt\" name=\"checkBoxBart\" id=\"bart\">\n" +
                    "                            <label class=\"form-check-label\" for=\"bart\">\n" +
                    "                                Bartschnitt\n" +
                    "                            </label>\n" +
                    "                        </div>\n" +
                    "                        Ich bestätige, dass ich einen negativen Corona-Test vom heutigen Tag vorgezeigt habe.\n" +
                    "                    </div>\n" +
                    "\n" +
                    "\n" +
                    "                    <div class=\"col-12\">\n" +
                    "                        <button class=\"btn btn-primary\" type=\"submit\">Bestätigen</button>\n" +
                    "                    </div>\n" +
                    "            </form>\n" +
                    "        </div>\n" +
                    "            <footer>\n" +
                    "                <figure class=\"text-center\" style=\"margin-top: 10px\">\n" +
                    "                    <blockquote class=\"blockquote\">\n" +
                    "                        <p>Copyright 2021 - <a href=\"https://www.the-barbershop-hannover.com/impressum\">Impressum</a></p>\n" +
                    "                    </blockquote>\n" +
                    "                </figure>\n" +
                    "            </footer>\n" +
                    "\n" +
                    "\n" +
                    "        </div>\n" +
                    "    </div>\n" +
                    "    <script src=\"../../assets/js/bootstrap.bundle.min.js\"></script>\n" +
                    "    <script src=\"../../js/validation.js\"></script>\n" +
                    "\n" +
                    "</body>\n" +
                    "</html>";

            return template;
    }

    public String TemplateWithLogoWithExtra(String logo) {
        String template = "<%@ page contentType=\"text/html;charset=UTF-8\" language=\"java\" %>\n" +
                "<html>\n" +
                "<head>\n" +
                "    <title>Title</title>\n" +
                "    <link href=\"../../css/bootstrap.min.css\" rel=\"stylesheet\">\n" +
                "    <meta charset=\"utf-8\"/>\n" +
                "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=20.0\">\n" +
                "</head>\n" +
                "<body>\n" +
                "    <div class=\"container\">\n" +
                "\n" +
                "        <img src=\"" + logo + "\" class=\"rounded mx-auto d-block\" alt=\"...\" style=\"width: 241px ; height: 161px\" >\n" +
                "\n" +
                "\n" +
                "        <div class=\"row\">\n" +
                "            <div class=\"col-sm\">\n" +
                "                <figure class=\"text-center\" style=\"margin-top: 10px\">\n" +
                "                    <h1>Kontaktdatenerfassung</h1>\n" +
                "                </figure>\n" +
                "\n" +
                "                </br>\n" +
                "                <p>Coronabedingt dürfen wir nur unter strengen Auflagen unsere Friseurdienstleistungen anbieten.\n" +
                "                    Dazu gehört, dass wir deine Kontaktdaten erfassen müssen:\n" +
                "                </p>\n" +
                "                <form class=\"row g-3 needs-validation\" action=\"/done\" method=\"post\">\n" +
                "                    <div class=\"row g-3\">\n" +
                "                        <div class=\"col\">\n" +
                "                            <input type=\"text\" class=\"form-control\" id=\"vorname\" name=\"vorname\" placeholder=\"Vorname\" aria-label=\"Vorname\" required>\n" +
                "                        </div>\n" +
                "                        <div class=\"col\">\n" +
                "                            <input type=\"text\" class=\"form-control\" id=\"nachname\" name=\"nachname\" placeholder=\"Nachname\" aria-label=\"Nachname\" required>\n" +
                "                        </div>\n" +
                "                    </div>\n" +
                "                    <div class=\"row g-3\" style=\"margin-top: 2px\">\n" +
                "                        <div class=\"mb-3\">\n" +
                "                            <input type=\"text\" class=\"form-control\" id=\"strasse\" name=\"strasse\" placeholder=\"Straße und Hausnummer\" required>\n" +
                "                        </div>\n" +
                "                    </div>\n" +
                "                    <div class=\"row g-3\" style=\"margin-top: 2px\">\n" +
                "                        <div class=\"col-3\">\n" +
                "                            <input type=\"number\" class=\"form-control\" id=\"plz\" name=\"plz\" placeholder=\"PLZ\" aria-label=\"PLZ\" required>\n" +
                "                        </div>\n" +
                "                        <div class=\"col\">\n" +
                "                            <input type=\"text\" class=\"form-control\" placeholder=\"Ort\" name=\"ort\" id=\"ort\" aria-label=\"Ort\" required>\n" +
                "                        </div>\n" +
                "                    </div>\n" +
                "                    <div class=\"mb-3\" style=\"margin-top: 10px\">\n" +
                "                        <input type=\"text\" class=\"form-control\" id=\"telenummer\" name=\"telenummer\" placeholder=\"Telefonnummer\" required>\n" +
                "                    </div>\n" +
                "                    <div class=\"alert alert-danger\" role=\"alert\">\n" +
                "                        <div class=\"form-check\">\n" +
                "                            <input class=\"form-check-input\" type=\"checkbox\" value=\"Zugestimmt\" name=\"checkBoxCovid\" id=\"covid\" required>\n" +
                "                            <label class=\"form-check-label\" for=\"covid\">\n" +
                "                                Covid19 Krankheitssymptome\n" +
                "                            </label>\n" +
                "                        </div>\n" +
                "                        Ich versichere, dass ich nicht an Covid19 –typischen Krankheitssymptomen (v.a. Fieber, Husten und Atemnot, Geschmacks- und Geruchsstörungen) leide, außerdem versichere ich, dass ich nicht unter Quarantäne gestellt bin.\n" +
                "                    </div>\n" +
                "                    <div class=\"alert alert-danger\" role=\"alert\">\n" +
                "                        <div class=\"form-check\">\n" +
                "                            <input class=\"form-check-input\" type=\"checkbox\" value=\"Zugestimmt\" name=\"checkBoxDatenschutz\" id=\"datenschutz\" required>\n" +
                "                            <label class=\"form-check-label\" for=\"datenschutz\">\n" +
                "                                Datenschutzhinweis gelesen\n" +
                "                            </label>\n" +
                "                        </div>\n" +
                "                        Die Verarbeitung Ihrer Daten erfolgt auf Grundlage von Art. 6 Abs. 1 c), d), e) DSGVO und Art. 9 Abs. 2 DSGVO. Die Verarbeitung ist erforderlich, um Beschäftigte im Friseurbetrieb zu schützen und ggf. Kontaktpersonen von an Covid-19 erkrankten Personen ausfindig zu machen und rechtzeitig verständigen zu können. Somit dient die Verarbeitung Ihrer Gesundheit und der Ihrer Mitmenschen.\n" +
                "                        Ihre Daten werden erforderlichenfalls an das zuständige Gesundheitsamt weitergegeben.\n" +
                "                        Ihre Daten werden gelöscht, sobald sie für ihre Erhebung nicht mehr erforderlich sind. Sie haben das Recht auf Auskunft über die bei uns gespeicherten Daten. Sie haben das Recht auf Berichtigung, Löschung und Einschränkung der Verarbeitung unter den in Art. 16 bis 18 DSGVO genannten Voraussetzungen. Ihnen steht ein Beschwerderecht bei der Aufsichtsbehörde zu.\n" +
                "                    </div>\n" +
                "\n" +
                "\n" +
                "                    <div class=\"alert alert-danger\" role=\"alert\">\n" +
                "                        <div class=\"form-check\">\n" +
                "                            <input class=\"form-check-input\" type=\"checkbox\" value=\"Bestätigt\" name=\"checkBoxBart\" id=\"bart\">\n" +
                "                            <label class=\"form-check-label\" for=\"bart\">\n" +
                "                                Bartschnitt\n" +
                "                            </label>\n" +
                "                        </div>\n" +
                "                        Ich bestätige, dass ich einen negativen Corona-Test vom heutigen Tag vorgezeigt habe.\n" +
                "                    </div>\n" +
                "\n" +
                "\n" +
                "                    <div class=\"col-12\">\n" +
                "                        <button class=\"btn btn-primary\" type=\"submit\">Bestätigen</button>\n" +
                "                    </div>\n" +
                "            </form>\n" +
                "        </div>\n" +
                "            <footer>\n" +
                "                <figure class=\"text-center\" style=\"margin-top: 10px\">\n" +
                "                    <blockquote class=\"blockquote\">\n" +
                "                        <p>Copyright 2021 - <a href=\"https://www.the-barbershop-hannover.com/impressum\">Impressum</a></p>\n" +
                "                    </blockquote>\n" +
                "                </figure>\n" +
                "            </footer>\n" +
                "\n" +
                "\n" +
                "        </div>\n" +
                "    </div>\n" +
                "    <script src=\"../../assets/js/bootstrap.bundle.min.js\"></script>\n" +
                "    <script src=\"../../js/validation.js\"></script>\n" +
                "\n" +
                "</body>\n" +
                "</html>";

        return template;
    }
}
