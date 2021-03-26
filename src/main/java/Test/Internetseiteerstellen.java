package Test;

import java.io.File;
import java.io.IOException;

public class Internetseiteerstellen {

    public static void main(String[] args){

        File folder1 = new File("webapp/kontaktformular/barbershop");
        File file1 = new File("../../webapp/kontaktformular/barbershop/index.jsp");

        if(folder1.exists())
            System.out.println("Ordner existiert");
        else{
            folder1.mkdirs();
            System.out.println("Ordner wurde neu erstellt");
        }
        if(file1.exists())
            System.out.println("File existiert");
        else{
            try{
                file1.createNewFile();
            }
            catch (IOException e){
                e.printStackTrace();
            }
        }

    }
}
