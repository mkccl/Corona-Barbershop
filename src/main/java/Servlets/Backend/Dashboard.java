package Servlets.Backend;

import Helper.CurrentDate;
import SQL.SQLHelper;
import Test.Printer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Dashboard", urlPatterns = "/Dashboard")
public class Dashboard extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        /**
         * Prüfen ob die Flag in der Datenbank 1 entspricht.
         * Falls ja muss ein Setup ausgeführt werden.
         *
         */
        HttpSession session = request.getSession();
        SQLHelper sqlHelper = new SQLHelper();
        CurrentDate date = new CurrentDate();

        /**
         * Session
         */
        if(session.getAttribute("firmenname").equals("NULL"))
            response.sendRedirect("index.jsp");
        session.getAttribute("id_auth_user");
        session.getAttribute("erstellungsDatum");

        /**
         * Falls @param userFlag == 0
         * Konfiguration muss ausgeführt werden.
         */
        if(session.getAttribute("setupFlag").equals("0")){
            RequestDispatcher dispatcher = request.getRequestDispatcher("backend/FirstVisit/content.jsp");
            request.setAttribute("setupFlag", "false");
            request.setAttribute("email", session.getAttribute("email"));
            request.setAttribute("firmenname", session.getAttribute("firmenname"));
            dispatcher.forward(request, response);
        }
        else{
            // Content und Verwaltung der Seite
            RequestDispatcher dispatcher = request.getRequestDispatcher("backend/content/startseite.jsp");
            request.setAttribute("firmenname", session.getAttribute("firmenname"));
            request.setAttribute("email", session.getAttribute("email"));
            request.setAttribute("erstellungsDatum", session.getAttribute("erstellungsDatum"));
            // User dateFlag 1
            int counterDeletedUser = sqlHelper.deleteUserWithFlag((String)session.getAttribute("id_auth_user"));
            int notificationCounter = 0;

            // Notification verwaltung
            if(counterDeletedUser > 0)
                ++notificationCounter;


            System.out.println("Counter im Dashboard " + counterDeletedUser);

            request.setAttribute("notificationCounter", notificationCounter);
            request.setAttribute("counterDeletedUser", counterDeletedUser);


            // Letzter call
            dispatcher.forward(request, response);

        }


    }

}
