<%--
  Created by IntelliJ IDEA.
  User: ccl
  Date: 3/8/2021
  Time: 2:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/print.js"></script>
    <script src="js/printForm.js"></script>
</head>
<body>


    <form method="" action="#" id="form1">

        <div class="alert alert-success" role="alert" id="print">
            <h4 class="alert-heading">Vielen Dank!</h4>
            <p>Deine Daten werden für 21 Tage gespeichert und anschließend automatisch gelöscht.</p>
            <hr>
            <p class="mb-0">Solltest du noch weitere Fragen haben, dann sprech einfach einen Mitarbeiter an.</p>

        </div>
    </form>

    <button type="button" onclick="window.print()">
        Print Form
    </button>


</body>
</html>
