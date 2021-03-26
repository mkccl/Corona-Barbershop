package Servlets.Backend;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "Kontaktformular" , urlPatterns = "/Kontaktformular")
public class Kontaktformular extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        RequestDispatcher dispatcher = request.getRequestDispatcher("backend/content/kontaktformularerstellung.jsp");
        request.setAttribute("id_auth_user", session.getAttribute("id_auth_user"));
        request.setAttribute("email", session.getAttribute("email"));
        request.setAttribute("firmenname", session.getAttribute("firmenname"));
        dispatcher.forward(request, response);

        

    }
}
