<%--
  Created by IntelliJ IDEA.
  User: ccl
  Date: 3/6/2021
  Time: 12:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-sm">
                <h1>Informationsblatt für Friseurkunden</h1>
                </br>
                <p>Coronabedingt dürfen wir nur unter strengen Auflagen unsere Friseurdienstleistung anbieten.
                    Dazu gehört, dass wir Ihre Kontaktdaten erfassen müssen:
                </p>
                <form class="row g-3 needs-validation" action="/done" method="post">
                    <div class="row g-3">
                        <div class="col">
                            <input type="text" class="form-control" id="vorname" name="vorname" placeholder="Vorname" aria-label="Vorname" required>
                        </div>
                        <div class="col">
                            <input type="text" class="form-control" id="nachname" name="nachname" placeholder="Nachname" aria-label="Nachname" required>
                        </div>
                    </div>
                    <div class="row g-3" style="margin-top: 2px">
                        <div class="mb-3">
                            <input type="text" class="form-control" id="strasse" placeholder="Straße" required>
                        </div>
                    </div>
                    <div class="row g-3" style="margin-top: 2px">
                        <div class="col-3">
                            <input type="number" class="form-control" id="plz" placeholder="PLZ" aria-label="PLZ" required>
                        </div>
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Ort" aria-label="Ort" required>
                        </div>
                    </div>
                    <div class="mb-3" style="margin-top: 10px">
                        <input type="text" class="form-control" id="telenummer" placeholder="Telefonnummer" required>
                    </div>
                    <div class="alert alert-danger" role="alert">
                        Ich versichere, dass ich nicht an Covid19 –typischen Krankheitssymptomen (v.a. Fieber, Husten und Atemnot, Geschmacks- und Geruchsstörungen) leide, außerdem versichere ich, dass ich nicht unter Quarantäne gestellt bin.
                    </div>
                    <div class="mb-3">
                        <input type="text" class="form-control" id="unterschrift" placeholder="Unterschrift Kunde" required>
                    </div>
                    <!-- Modal Trigger -->
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        Datenschutzrechtliche Hinweise
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Datenschutzrechtliche Hinweise:</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    Die Verarbeitung Ihrer Daten erfolgt auf Grundlage von Art. 6 Abs. 1 c), d), e) DSGVO und Art. 9 Abs. 2 DSGVO. Die Verarbeitung ist erforderlich, um Beschäftigte im Friseurbetrieb zu schützen und ggf. Kontaktpersonen von an Covid-19 erkrankten Personen ausfindig zu machen und rechtzeitig verständigen zu können. Somit dient die Verarbeitung Ihrer Gesundheit und der Ihrer Mitmenschen.
                                    Ihre Daten werden erforderlichenfalls an das zuständige Gesundheitsamt weitergegeben.
                                    Ihre Daten werden gelöscht, sobald sie für ihre Erhebung nicht mehr erforderlich sind. Sie haben das Recht auf Auskunft über die bei uns gespeicherten Daten. Sie haben das Recht auf Berichtigung, Löschung und Einschränkung der Verarbeitung unter den in Art. 16 bis 18 DSGVO genannten Voraussetzungen. Ihnen steht ein Beschwerderecht bei der Aufsichtsbehörde zu.

                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <button class="btn btn-primary" type="submit">Bestätigen</button>
                    </div>
            </form>
        </div>
        </div>
    </div>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/validation.js"></script>

</body>
</html>
