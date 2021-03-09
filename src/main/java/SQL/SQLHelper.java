package SQL;

import Helper.CurrentDate;
import org.omg.CORBA.Current;

import java.sql.*;
import java.util.Currency;

public class SQLHelper {


    private String vname, nname, tele, ort, plz, strasse, checkBoxDatenschutz, checkBoxBart, checkBoxCovid;

    SQLSecrets secrets = new SQLSecrets();
    CurrentDate date = new CurrentDate();

    /**
     *
     * Diese Methode baut eine Datenbankverbindung über
     * die Secret-Klasse auf.
     *
     *
     * */
    public SQLHelper(){

    }
    public boolean updateUser(){







        try{
            Class.forName(secrets.getDriverName());
            Connection con = DriverManager.getConnection(secrets.getConnectionURL(),secrets.getConnectionLoginName(), secrets.getConnectionLoginPassword());
            Statement statement = con.createStatement();
            String updateUser = "UPDATE datenerhebung_eingang SET dateFlag = 'outdated' WHERE ";

            statement.executeUpdate(updateUser);

            con.close();
            return true;
        }
        catch (ClassNotFoundException | SQLException cnfe){
            System.out.println(cnfe);
            return false;
        }

    }
    public boolean deleteOutdatedUser(){

        try{
            Class.forName(secrets.getDriverName());
            Connection con = DriverManager.getConnection(secrets.getConnectionURL(),secrets.getConnectionLoginName(), secrets.getConnectionLoginPassword());
            Statement statement = con.createStatement();
            String deleteUser = "DELETE FROM datenerhebung_eingang WHERE dateFlag = 'outdated'";

            statement.executeUpdate(deleteUser);

            con.close();
            return true;
        }
        catch (ClassNotFoundException | SQLException cnfe){
            System.out.println(cnfe);
            return false;
        }
    }

    public boolean createUser() throws ClassNotFoundException {

        try{
            Class.forName(secrets.getDriverName());
            Connection con = DriverManager.getConnection(secrets.getConnectionURL(),secrets.getConnectionLoginName(), secrets.getConnectionLoginPassword());
            Statement statement = con.createStatement();

            statement.executeUpdate(String.format("INSERT INTO datenerhebung_eingang(vorname, nachname, ort, straße, plz, tele, erfassungs_datum, datenschutz_zugestimmt, kein_Covid, covid_Test_Bartschnitt ) " + "VALUES ('%s' , '%s' , '%s' , '%s' , '%s' , '%s' , '%s', '%s', '%s', '%s')"
                    , vname,nname,ort,strasse,plz,tele,date.getCurrentDate(), checkBoxDatenschutz, checkBoxCovid, checkBoxBart));

            con.close();
            return true;
        }
        catch (ClassNotFoundException | SQLException cnfe){
            System.out.println(cnfe);
            return false;
        }

    }


    public String getCheckBoxBart() {
        return checkBoxBart;
    }

    public String getCheckBoxCovid() {
        return checkBoxCovid;
    }

    public String getCheckBoxDatenschutz() {
        return checkBoxDatenschutz;
    }

    public void setCheckBoxDatenschutz(String checkBoxDatenschutz) {
        this.checkBoxDatenschutz = checkBoxDatenschutz;
    }

    public void setCheckBoxCovid(String checkBoxCovid) {
        this.checkBoxCovid = checkBoxCovid;
    }

    public void setCheckBoxBart(String checkBoxBart) {
        this.checkBoxBart = checkBoxBart;
    }

    public void setNname(String nname) {
        this.nname = nname;
    }

    public String getNname() {
        return nname;
    }

    public void setOrt(String ort) {
        this.ort = ort;
    }

    public String getOrt() {
        return ort;
    }

    public void setPlz(String plz) {
        this.plz = plz;
    }

    public String getPlz() {
        return plz;
    }

    public String getStrasse() {
        return strasse;
    }

    public void setStrasse(String strasse) {
        this.strasse = strasse;
    }

    public String getTele() {
        return tele;
    }

    public void setTele(String tele) {
        this.tele = tele;
    }

    public String getVname() {
        return vname;
    }

    public void setVname(String vname) {
        this.vname = vname;
    }
}
