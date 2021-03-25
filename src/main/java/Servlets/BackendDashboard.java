package Servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "BackendDashboard", urlPatterns = "/backend-dashboard")
public class BackendDashboard extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        String n = (String)session.getAttribute("email");
        System.out.println("Session email in POST");
        System.out.println(n);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        String n = (String)session.getAttribute("email");
        System.out.println("Session email in GET");
        System.out.println(n);

    }
}
