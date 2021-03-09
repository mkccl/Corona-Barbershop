package Servlets;

import Helper.CurrentDate;
import SQL.SQLHelper;
import SQL.SQLSecrets;
import Secrets.PasswordLogin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.text.ParseException;

@WebServlet(name = "LogInServlet", urlPatterns = "/login")
public class LogInServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        SQLSecrets secrets = new SQLSecrets();
        SQLHelper sqlHelper = new SQLHelper();
        PrintWriter out = response.getWriter();
        PasswordLogin login = new PasswordLogin();
        CurrentDate date = new CurrentDate();

        boolean isUserLoggedIn = false;

        String erfassungdatum;
        int counter = 0;

        if(request.getParameter("loginname").equals(login.getLoginname()) && request.getParameter("password").equals(login.getPassword()))
            isUserLoggedIn = true;

        // Page Content
        if(isUserLoggedIn){

            out.println("<html>");
            out.println("<head>\n" +
                    "    <!-- Required meta tags -->\n" +
                    "    <meta charset=\"utf-8\">\n" +
                    "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n" +
                    "\n" +
                    "    <!-- Bootstrap CSS -->\n" +
                    "    <link href=\"../css/bootstrap.min.css\" rel=\"stylesheet\">\n" +
                    "\n" +
                    "    <title>Hello, world!</title>\n" +
                    "</head>");
            out.println("<body>");
            out.println("<div class=\"container\">");

            // Table
            out.println("<table class=\"table\">");
            out.println("<thead>\n" +
                    "        <tr>\n" +
                    "            <th scope=\"col\">id</th>\n" +
                    "            <th scope=\"col\">Vorname</th>\n" +
                    "            <th scope=\"col\">Nachname</th>\n" +
                    "            <th scope=\"col\">Straße</th>\n" +
                    "            <th scope=\"col\">PLZ</th>\n" +
                    "            <th scope=\"col\">Ort</th>\n" +
                    "            <th scope=\"col\">Telefonnummer</th>\n" +
                    "            <th scope=\"col\">Erstellungsdatum</th>\n" +
                    "            <th scope=\"col\">Datenschutz zugestimmt</th>\n" +
                    "            <th scope=\"col\">Kein Covid</th>\n" +
                    "            <th scope=\"col\">Covid-Test Bartschnitt</th>\n" +
                    "            <th scope=\"col\">Status</th>\n" +
                    "        </tr>\n" +
                    "        </thead>");
            out.println("<tbody>");

            try{
                Class.forName(secrets.getDriverName());
                Connection con = DriverManager.getConnection(secrets.getConnectionURL(),secrets.getConnectionLoginName(), secrets.getConnectionLoginPassword());
                Statement statement = con.createStatement();

                ResultSet rs = statement.executeQuery("SELECT * FROM datenerhebung_eingang");

                while (rs.next()){


                    out.println("<tr>");
                    out.println("<th scope=\"row\">" + rs.getInt("id") +"</th>");
                    out.println("<th>" + rs.getString("vorname") + "</th>");
                    out.println("<th>" + rs.getString("nachname") + "</th>");
                    out.println("<th>" + rs.getString("ort") + "</th>");
                    out.println("<th>" + rs.getString("straße") + "</th>");
                    out.println("<th>" + rs.getString("plz") + "</th>");
                    out.println("<th>" + rs.getString("tele") + "</th>");
                    out.println("<th>" + rs.getString("erfassungs_datum") + "</th>");
                    out.println("<th>" + rs.getString("datenschutz_zugestimmt") + "</th>");
                    out.println("<th>" + rs.getString("kein_Covid") + "</th>");
                    out.println("<th>" + rs.getString("covid_Test_Bartschnitt") + "</th>");

                    erfassungdatum = rs.getString("erfassungs_datum");

                    if(date.getDateValidation(erfassungdatum))
                        out.println("<th>Outdated</th>");

                    /*
                    *
                    * if(date.getDayInMilli(date.getCurrentDate()) > date.getDayInMilli(erfassungdatum)){
                        if(date.getDayInMilli(erfassungdatum) < System.currentTimeMillis() - 1814400000L)

                    }
                    *
                    * */



                    out.println("</tr>");


                }

                out.println("</tbody>");
                out.println("</table>");

                // Modal für outdated Datensätze



                out.println("<script src=\"../js/jquery.js\"></script>");
                out.println("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0\" crossorigin=\"anonymous\"></script>\n" +
                        "\n" +
                        "</body>\n" +
                        "</html>");

            } catch (ClassNotFoundException | SQLException | ParseException e) {
                System.out.println(e);
            }
        }
        else
            response.sendRedirect("index.jsp");



    }


}
