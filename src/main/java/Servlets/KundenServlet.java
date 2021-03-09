package Servlets;

import SQL.SQLHelper;
import com.sun.org.apache.xpath.internal.operations.Bool;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "KundenServlet", urlPatterns = "/done")
public class KundenServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        SQLHelper sqlHelper = new SQLHelper();

        sqlHelper.setVname(request.getParameter("vorname"));
        sqlHelper.setNname(request.getParameter("nachname"));
        sqlHelper.setStrasse(request.getParameter("strasse"));
        sqlHelper.setPlz(request.getParameter("plz"));
        sqlHelper.setOrt(request.getParameter("ort"));
        sqlHelper.setTele(request.getParameter("telenummer"));
        sqlHelper.setCheckBoxBart(request.getParameter("checkBoxBart"));
        sqlHelper.setCheckBoxCovid(request.getParameter("checkBoxCovid"));
        sqlHelper.setCheckBoxDatenschutz(request.getParameter("checkBoxDatenschutz"));

        if(request.getParameter("checkBoxCovid").equals("null") || request.getParameter("checkBoxDatenschutz").equals("null"))
            response.sendRedirect("index.jsp");



        try {
            sqlHelper.createUser();

            // Output in Form von HTML
            PrintWriter out = response.getWriter();
            out.println("<html>");
            out.println("<head> <title>Fertig</title><link href=\"css/bootstrap.min.css\" rel=\"stylesheet\"></head>");
            out.println("<body>");
            out.println("<div class=\"alert alert-success\" role=\"alert\">\n" +
                    "        <h4 class=\"alert-heading\">Vielen Dank!</h4>\n" +
                    "        <p>Deine Daten werden für 10 Tage gespeichert und anschließend automatisch gelöscht.</p>\n" +
                    "        <hr>\n" +
                    "        <p class=\"mb-0\">Solltest du noch weitere Fragen haben, dann sprech einfach einen Mitarbeiter an.</p>\n" +
                    "\n" +
                    "    </div>");

            out.println("<div class=\"card\" style=\"width: 18rem;\">");
            out.println("<ul class=\"list-group list-group-flush\">");
            out.println("<div class=\"alert alert-primary\" role=\"alert\">\n" +
                    "  Sie können die Seite schließen nachdem sie die Seite einem Mitarbeiter gezeigt haben.\n" +
                    "</div>");
            out.println("<li class=\"list-group-item\"> Vorname: " + sqlHelper.getVname() + "</li>");
            out.println("<li class=\"list-group-item\"> Nachname: " + sqlHelper.getNname() + "</li>");
            out.println("<li class=\"list-group-item\"> Straße: " + sqlHelper.getStrasse() + "</li>");
            out.println("<li class=\"list-group-item\"> PLZ: " + sqlHelper.getPlz() + "</li>");
            out.println("<li class=\"list-group-item\"> Ort: " + sqlHelper.getOrt() + "</li>");
            out.println("<li class=\"list-group-item\"> Telefon: " + sqlHelper.getTele() + "</li>");
            out.println("<li class=\"list-group-item\"> Datenschutz: " + sqlHelper.getCheckBoxDatenschutz()+ "</li>");
            out.println("<li class=\"list-group-item\"> Kein Covid: " + sqlHelper.getCheckBoxCovid() + "</li>");

            if(!sqlHelper.getCheckBoxBart().equals("null"))
                out.println("<li class=\"list-group-item\"> Covid-Test Bartschnitt: " + sqlHelper.getCheckBoxBart() + "</li>");

            out.println("</ul></div>");
            out.println("</body>");
            out.println("</html>");


        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("nicht geklappt");
            response.sendRedirect("ups.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
