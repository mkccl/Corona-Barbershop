package Test;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class Printer {

    public Object printWriterModal(HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();

        out.println("Das ist ein Test");
        System.out.println("Steht irgendwo auf der Page");

        return null;
    }
}
