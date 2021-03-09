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
                            <input type="text" class="form-control" id="strasse" name="strasse" placeholder="Straße und Hausnummer" required>
                        </div>
                    </div>
                    <div class="row g-3" style="margin-top: 2px">
                        <div class="col-3">
                            <input type="number" class="form-control" id="plz" name="plz" placeholder="PLZ" aria-label="PLZ" required>
                        </div>
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Ort" name="ort" id="ort" aria-label="Ort" required>
                        </div>
                    </div>
                    <div class="mb-3" style="margin-top: 10px">
                        <input type="text" class="form-control" id="telenummer" name="telenummer" placeholder="Telefonnummer" required>
                    </div>
                    <div class="alert alert-danger" role="alert">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="Zugestimmt" name="checkBoxCovid" id="covid" required>
                            <label class="form-check-label" for="covid">
                                Covid19 Krankheitssymptome
                            </label>
                        </div>
                        Ich versichere, dass ich nicht an Covid19 –typischen Krankheitssymptomen (v.a. Fieber, Husten und Atemnot, Geschmacks- und Geruchsstörungen) leide, außerdem versichere ich, dass ich nicht unter Quarantäne gestellt bin.
                    </div>
                    <div class="alert alert-danger" role="alert">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="Zugestimmt" name="checkBoxDatenschutz" id="datenschutz" required>
                            <label class="form-check-label" for="datenschutz">
                                Datenschutzhinweis gelesen
                            </label>
                        </div>
                        Die Verarbeitung Ihrer Daten erfolgt auf Grundlage von Art. 6 Abs. 1 c), d), e) DSGVO und Art. 9 Abs. 2 DSGVO. Die Verarbeitung ist erforderlich, um Beschäftigte im Friseurbetrieb zu schützen und ggf. Kontaktpersonen von an Covid-19 erkrankten Personen ausfindig zu machen und rechtzeitig verständigen zu können. Somit dient die Verarbeitung Ihrer Gesundheit und der Ihrer Mitmenschen.
                        Ihre Daten werden erforderlichenfalls an das zuständige Gesundheitsamt weitergegeben.
                        Ihre Daten werden gelöscht, sobald sie für ihre Erhebung nicht mehr erforderlich sind. Sie haben das Recht auf Auskunft über die bei uns gespeicherten Daten. Sie haben das Recht auf Berichtigung, Löschung und Einschränkung der Verarbeitung unter den in Art. 16 bis 18 DSGVO genannten Voraussetzungen. Ihnen steht ein Beschwerderecht bei der Aufsichtsbehörde zu.
                    </div>


                    <div class="alert alert-danger" role="alert">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="Bestätigt" name="checkBoxBart" id="bart">
                            <label class="form-check-label" for="bart">
                                Bartschnitt
                            </label>
                        </div>
                        Ich bestätige, dass ich einen negativen Corona-Test vom heutigen Tag vorgezeigt habe.
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
