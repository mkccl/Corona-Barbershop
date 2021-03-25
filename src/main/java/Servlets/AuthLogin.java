package Servlets;

import SQL.SQLHelper;
import at.favre.lib.crypto.bcrypt.BCrypt;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "AuthLogin", urlPatterns = "/auth-login")
public class AuthLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        SQLHelper sqlHelper = new SQLHelper();

        /**
         * Prüfen ob User vorhanden ist.
         * Prüfen ob User Email mit dem User Passwort übereinstimmt.
         * Falls dies der Fall sollte, wird der User auf das Dashboard über eine Session und mit Cookies geleitet.
         *
         * Weitere Daten werden im Dashboard zur Verfügung gestellt.
         */

        String passwortPlain = request.getParameter("passwort");
        String email = request.getParameter("email");

        String[] userData;
        userData = sqlHelper.getUserData(email);


        BCrypt.Result result = BCrypt.verifyer().verify(passwortPlain.toCharArray(), userData[1]);


        if(result.verified){

            // Session wird gestartet bevor User auf das Dashboard kommt.
            HttpSession session = request.getSession();
            System.out.println("Passwort ist korrekt");
            session.setAttribute("email", email);
            session.setAttribute("id_auth_user", userData[0]);
            session.setAttribute("setupFlag", userData[2]);
            session.setAttribute("firmenname", userData[3]);
            session.setAttribute("erstellungsDatum", userData[4]);


            response.sendRedirect("/Dashboard");
        }
        else{

            System.out.println("Falsches Passwort");
            response.sendRedirect("index.jsp");

        }

    }
}


