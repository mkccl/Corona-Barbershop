package Test;

import Helper.CurrentDate;
import SQL.SQLHelper;
import SQL.SQLSecrets;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class CreateTestUsers {

    /**
     * Aus Testzwecken Kunden anlegen.
     *
     */

    public static void main(String[] args) {


        for (int i = 0; i < 10; i++){
            createUser("Michael", "Krause", "Weißenhorn", "Geranienweg 38b", "89264", "0324289234", "true", "true", "true", 23);
            i++;
        }

        //deleteUserWithDateFlag();

    }

    public static void deleteUserWithDateFlag(){

        SQLSecrets secrets = new SQLSecrets();
        CurrentDate date = new CurrentDate();

        try{
            Class.forName(secrets.getDriverName());
            Connection con = DriverManager.getConnection(secrets.getConnectionURL(),secrets.getConnectionLoginName(), secrets.getConnectionLoginPassword());
            Statement statement = con.createStatement();
            statement.executeUpdate(String.format("DELETE FROM datenerhebung_eingang WHERE straße = 'Geranienweg 38b'  "));

            con.close();
        }
        catch (ClassNotFoundException | SQLException cnfe){
            System.out.println(cnfe);

        }
    }

    public static void createUser(String vname, String nname, String ort, String strasse, String plz, String tele, String checkBoxDatenschutz, String checkBoxCovid, String checkBoxBart, int idAuthUser){

        SQLSecrets secrets = new SQLSecrets();
        CurrentDate date = new CurrentDate();


        try{
            Class.forName(secrets.getDriverName());
            Connection con = DriverManager.getConnection(secrets.getConnectionURL(),secrets.getConnectionLoginName(), secrets.getConnectionLoginPassword());
            Statement statement = con.createStatement();

            statement.executeUpdate(String.format("INSERT INTO datenerhebung_eingang(vorname, nachname, ort, straße, plz, tele, erfassungs_datum, datenschutz_zugestimmt, kein_Covid, covid_Test_Bartschnitt, id_auth_user ) " + "VALUES ('%s' , '%s' , '%s' , '%s' , '%s' , '%s' , '%s', '%s', '%s', '%s', '%s')"
                    , vname,nname,ort,strasse,plz,tele,date.getCurrentDate(), checkBoxDatenschutz, checkBoxCovid, checkBoxBart, idAuthUser ));

            con.close();
        }
        catch (ClassNotFoundException | SQLException cnfe){
            System.out.println(cnfe);

        }

    }

}
