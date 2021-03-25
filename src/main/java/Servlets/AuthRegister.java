package Servlets;

import SQL.SQLHelper;
import at.favre.lib.crypto.bcrypt.BCrypt;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AuthRegister", urlPatterns = "/auth-register")
public class AuthRegister extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Daten werden validiert und in die Datenbank gespeichert.
        // User wird anschließend auf die Startseite weiter geleitet.

        SQLHelper sqlHelper = new SQLHelper();

        if(!request.getParameter("firstPassword").equals(request.getParameter("secondPassword")))
            response.sendRedirect("register.jsp");


        // Prüfen ob email oder Firmenname schon verwendet wird.
        if(sqlHelper.getUserAlreadyExist(request.getParameter("email").toLowerCase()) <= 0){
            // Ein neuer User wird in die Datenbank geschrieben
            // User-Flag steht auf 0. Somit wird ein Setup im Dashboard ausgeführt.
            String hashString = BCrypt.withDefaults().hashToString(12, request.getParameter("firstPassword").toCharArray());
            boolean createNewUser = sqlHelper.createNewUser(request.getParameter("firmenname"), request.getParameter("email"), hashString, 0);
            if(createNewUser){
                response.sendRedirect("auth/auth-login.jsp");
                System.out.println("User wurde in die Datenbank geschrieben");
            }
            else{
                System.out.println("Fehler in der Datenbank");
                response.sendRedirect("auth/auth-register.jsp");
            }
        }
        else{
            System.out.println("User existiert bereits");
            response.sendRedirect("auth/auth-register.jsp");
        }








    }

}
