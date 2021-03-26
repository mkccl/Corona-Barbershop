
<%@ page import="java.sql.*" %>
<%@ page import="SQL.SQLSecrets" %>

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
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">

                                <h5 class="mt-0">Buttons example</h5>
                                <p class="text-muted font-13 mb-4">The Buttons extension for DataTables
                                    provides a common set of options, API methods and styling to display
                                    buttons on a page that will interact with a DataTable. The core library
                                    provides the based framework upon which plug-ins can built.
                                </p>
                                <div class="table-responsive">
                                    <table id="datatable-buttons" class="table table-striped table-bordered w-100">
                                        <thead>
                                        <tr>
                                            <th>id</th>
                                            <th>Vorname</th>
                                            <th>Nachname</th>
                                            <th>Ort</th>
                                            <th>Straße</th>
                                            <th>PLZ</th>
                                            <th>Telefon</th>
                                            <th>Datum</th>
                                            <th>Datenschutz</th>
                                            <th>Covid</th>
                                            <th>Covid-Test Bartschnitt</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <%
                                            SQLSecrets secrets = new SQLSecrets();
                                            int counter = 0;
                                            try{
                                                Class.forName(secrets.getDriverName());
                                                Connection con = DriverManager.getConnection(secrets.getConnectionURL(),secrets.getConnectionLoginName(), secrets.getConnectionLoginPassword());
                                                Statement statement = con.createStatement();
                                                ResultSet rs = statement.executeQuery(String.format("SELECT * FROM datenerhebung_eingang WHERE id_auth_user = '%s'", request.getAttribute("id_auth_user")));
                                                while (rs.next()){
                                                    out.println("<tr>");
                                                    out.println("<td>" + rs.getInt("id") + "</td>");
                                                    out.println("<td>" + rs.getString("vorname") + "</td>");
                                                    out.println("<td>" + rs.getString("nachname") + "</td>");
                                                    out.println("<td>" + rs.getString("ort") + "</td>");
                                                    out.println("<td>" + rs.getString("straße") + "</td>");
                                                    out.println("<td>" + rs.getString("plz") + "</td>");
                                                    out.println("<td>" + rs.getString("tele") + "</td>");
                                                    out.println("<td>" + rs.getString("erfassungs_datum") + "</td>");
                                                    out.println("<td>" + rs.getString("datenschutz_zugestimmt") + "</td>");
                                                    out.println("<td>" + rs.getString("kein_Covid") + "</td>");
                                                    out.println("<td>" + rs.getString("covid_Test_Bartschnitt") + "</td>");
                                                    out.println("</tr>");
                                                    counter++;
                                                }
                                            } catch (ClassNotFoundException | SQLException e) {
                                                System.out.println(e);
                                            }
                                        %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div> <!-- end col -->
                </div> <!-- end row -->
            </div>
        </div>
    </div>

    <jsp:include page="../template/Footer-5.jsp"></jsp:include>
