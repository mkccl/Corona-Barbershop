package Servlets.Backend;

import TemplateKontaktformular.TemplateKontaktformular;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.Iterator;
import java.util.List;

@WebServlet(name = "KontaktCreateFile", urlPatterns = "/Kontaktseite")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10,      // 10 MB
        maxRequestSize = 1024 * 1024 * 100)   // 100 MB
public class KontaktCreateFile extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        if(session.getAttribute("firmenname").equals("NULL"))
            response.sendRedirect("index.jsp");

        // Erstellen von Ordner und File
        File folder = new File("F:/Programme/Tomcat9/webapps/ROOT/kontaktformular/" + session.getAttribute("firmenname"));
        File file = new File("F:/Programme/Tomcat9/webapps/ROOT/kontaktformular/" + session.getAttribute("firmenname") + "/" + "index.jsp");

        if(folder.exists())
            System.out.println("Ordner existiert");
        else{
            folder.mkdirs();
            System.out.println("Ordner wurde neu erstellt");
        }

        if(file.exists())
            System.out.println("File existiert");
        else{
            try{
                file.createNewFile();
            }
            catch (IOException e){
                e.printStackTrace();
            }
        }

        // Parameter besorgen
        String checkBoxBart = request.getParameter("checkBoxBart");
        String checkBoxMakeup = request.getParameter("checkBoxMakeup");
        String checkBoxKosmetik = request.getParameter("checkBoxKosmetik");


        //get the file chosen by the user
        try{
            Part filePart = request.getPart("fileToUpload");
            if(request.getParameter("logo").equals("hasLogo")){
                if(filePart.getSubmittedFileName().endsWith(".jpg") || filePart.getSubmittedFileName().endsWith(".png")){

                    InputStream fileInputStream = filePart.getInputStream();
                    File fileToSave = new File("F:/Programme/Tomcat9/webapps/ROOT/kontaktformular/"+ session.getAttribute("firmenname") + "/" + filePart.getSubmittedFileName());
                    Files.copy(fileInputStream, fileToSave.toPath(), StandardCopyOption.REPLACE_EXISTING);


                }
                else{
                    //the file was not a JPG or PNG
                    response.getOutputStream().println("<p>Please only upload JPG or PNG files.</p>");
                    response.getOutputStream().println("<p>Upload another file <a href=\"http://localhost:8080/index.html\">here</a>.</p>");
                }
            }

            // HTML schreiben
            TemplateKontaktformular template = new TemplateKontaktformular();
            try {
                FileWriter myWriter = new FileWriter("F:/Programme/Tomcat9/webapps/ROOT/kontaktformular/" + session.getAttribute("firmenname") + "/" + "index.jsp");

                // Seite hat Logo und keine körpernahe Dienstleistungen an
                if(request.getParameter("logo").equals("hasLogo")){
                    myWriter.write(template.TemplateOneWithoutExtra(filePart.getSubmittedFileName()));
                    myWriter.close();
                }

                System.out.println("Successfully wrote to the file.");
            } catch (IOException e) {
                System.out.println("An error occurred.");
                e.printStackTrace();
            }

        }catch (NullPointerException ignored){

        }

    }
    protected void doGet (HttpServletRequest request, HttpServletResponse response) throws
    ServletException, IOException {

    }
}
