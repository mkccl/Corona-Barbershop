package Servlets.Backend;

import SQL.SQLHelper;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "Datensaetze" , urlPatterns = "/daten")
public class Datensaetze extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        SQLHelper sqlHelper = new SQLHelper();

        //String id_auth_user = (String)session.getAttribute("id_auth_user");

        RequestDispatcher dispatcher = request.getRequestDispatcher("backend/content/daten.jsp");
        request.setAttribute("id_auth_user", session.getAttribute("id_auth_user"));
        request.setAttribute("email", session.getAttribute("email"));
        request.setAttribute("firmenname", session.getAttribute("firmenname"));
        dispatcher.forward(request, response);

    }
}
