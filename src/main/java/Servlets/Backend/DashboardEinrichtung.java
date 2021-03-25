package Servlets.Backend;

import SQL.SQLHelper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "DashboardEinrichtung", urlPatterns = "/Einrichten")
public class DashboardEinrichtung extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //Session
        HttpSession session = request.getSession();
        SQLHelper sqlHelper = new SQLHelper();

        // Personenbezogene Daten
        String nachname = request.getParameter("nachname");
        String vorname = request.getParameter("vorname");
        String email = request.getParameter("email");
        String telefon = request.getParameter("telefon");

        // Firmenbezogene Daten
        String firmenname = request.getParameter("firmenname");
        String ort = request.getParameter("ort");
        String strasse = request.getParameter("strasse");
        String plz = request.getParameter("plz");

        String checkBox = request.getParameter("checkBox");


        boolean isUpdated = sqlHelper.updateUser("" + session.getAttribute("id_auth_user"), firmenname, email, strasse, plz, ort, telefon, nachname, vorname);

        if(isUpdated) {
            System.out.println("user updated");
            response.sendRedirect("/Dashboard");
        }
        if(!checkBox.equals("true")){
            response.sendRedirect("index.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }
}
