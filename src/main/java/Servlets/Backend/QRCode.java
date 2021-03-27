package Servlets.Backend;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;

@WebServlet(name = "QRCode" , urlPatterns = "/QR-Code")
public class QRCode extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        if(session.getAttribute("firmenname").equals("NULL"))
            response.sendRedirect("index.jsp");

        File folder1 = new File("../webapps/ROOT/kontaktformular/barbershop");
        File file1 = new File("../webapps/ROOT/kontaktformular/barbershop/index.jsp");

        if(folder1.exists())
            System.out.println("Ordner existiert");
        else{
            folder1.mkdirs();
            System.out.println(folder1.getAbsolutePath());
            System.out.println("Ordner wurde neu erstellt");
        }
        if(file1.exists()){
            System.out.println("Datei existiert");
        }
        else{
            try{
                file1.createNewFile();
            }catch (IOException e){
                System.out.println("File nicht gefunden");
                //e.printStackTrace();
            }
        }


    }
}
