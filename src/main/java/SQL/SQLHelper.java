package SQL;

import Helper.CurrentDate;

import java.sql.*;
import java.text.ParseException;


public class SQLHelper {


    private String vname;
    private String nname;
    private String tele;
    private String ort;
    private String plz;
    private String strasse;
    private String checkBoxDatenschutz;
    private String checkBoxBart;
    private String checkBoxCovid;


    SQLSecrets secrets = new SQLSecrets();
    CurrentDate date = new CurrentDate();

    /**
     * Diese Methode baut eine Datenbankverbindung über
     * die Secret-Klasse auf.
     **/
    public SQLHelper(){

    }


    public int deleteUserWithFlag(String idAuthUser){
        int counter = 0;
        try{
            Class.forName(secrets.getDriverName());
            Connection con = DriverManager.getConnection(secrets.getConnectionURL(),secrets.getConnectionLoginName(), secrets.getConnectionLoginPassword());
            Statement statement = con.createStatement();
            ResultSet rs = statement.executeQuery(String.format("SELECT * FROM datenerhebung_eingang WHERE id_auth_user = '%s'" , idAuthUser));
            while (rs.next()){
                if(date.getDateValidation(rs.getString("erfassungs_datum")))
                    updateDateFlag(rs.getInt("id"), 1, idAuthUser);
                deleteUserWithDateFlag(idAuthUser, rs.getInt("id"));
                counter++;
            }
            return counter;

        } catch (ClassNotFoundException | SQLException | ParseException e) {
            System.out.println(e);
        }

        return 0;
    }
    /**
     * Diese Methode holt sich alle Daten aus der Datenbank mit der id_auth_user
     *
     * @param idAuthUser
     * @return
     */
    public int getAllDataFromUser(int idAuthUser){
        String[] userDaten;
        int counter = 0;
        try{
            Class.forName(secrets.getDriverName());
            Connection con = DriverManager.getConnection(secrets.getConnectionURL(),secrets.getConnectionLoginName(), secrets.getConnectionLoginPassword());
            Statement statement = con.createStatement();
            ResultSet rs = statement.executeQuery(String.format("SELECT * FROM datenerhebung_eingang WHERE dateFlag = 1 AND id_auth_user = '%s'", idAuthUser));
            while (rs.next()){
                 rs.getInt("id");


                counter++;
            }
            return counter;
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }

        return counter;
    }


    /**
     * Diese Methode wird ausgeführt bei der erst-Einrichtung eines Nutzeraccounts
     * und updatet die auth_user-Flag
     *
     * @param idAuthUser
     * @param firmenname
     * @param email
     * @param strasse
     * @param plz
     * @param ort
     * @param telefon
     * @param nachname
     * @param vorname
     * @return
     */
    public boolean updateUser(String idAuthUser, String firmenname, String email, String strasse, String plz, String ort, String telefon, String nachname, String vorname){

        try{
            Class.forName(secrets.getDriverName());
            Connection con = DriverManager.getConnection(secrets.getConnectionURL(),secrets.getConnectionLoginName(), secrets.getConnectionLoginPassword());
            Statement statement = con.createStatement();
            String updateUser = String.format("UPDATE auth_user SET firmenname = '%s' , email = '%s' , straße = '%s' , plz = '%s' , ort = '%s', telefon = '%s', setupFlag = 1 , nachname = '%s' , vorname = '%s' WHERE id_auth_user = %s" ,
                  firmenname, email, strasse, plz, ort, telefon, nachname, vorname, idAuthUser);
            statement.executeUpdate(updateUser);
            con.close();
            return true;
        }
        catch (ClassNotFoundException | SQLException cnfe){
            System.out.println(cnfe);
            return false;
        }
    }

    public int getUserAlreadyExist(String email){
        int counter = 0;
        try{
            Class.forName(secrets.getDriverName());
            Connection con = DriverManager.getConnection(secrets.getConnectionURL(),secrets.getConnectionLoginName(), secrets.getConnectionLoginPassword());
            Statement statement = con.createStatement();
            ResultSet rs = statement.executeQuery(String.format("SELECT * FROM auth_user WHERE email = '%s'", email));
            while (rs.next()){
                counter++;
            }
            return counter;
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
        return counter;
    }

    /**
     * Diese Klasse ist für Testzwecke und sollte nicht im Programm verwendet werden.
     *
     * @param firmenname
     * @param email
     * @param passwort
     * @param setupFlag
     * @return
     */
    public boolean createNewUserTest(String firmenname, String email, String passwort, int setupFlag){

        try{
            Class.forName(secrets.getDriverName());
            Connection con = DriverManager.getConnection(secrets.getConnectionURL(),secrets.getConnectionLoginName(), secrets.getConnectionLoginPassword());
            Statement statement = con.createStatement();

            statement.executeUpdate(String.format("INSERT INTO auth_user(firmenname, email, passwort, erstellungsDatum, setupFlag ) " + "VALUES ('%s' , '%s' , '%s' , '%s', '%s')"
                    , firmenname, email , passwort, date.getCurrentDate(), setupFlag));

            con.close();
            return true;
        }
        catch (ClassNotFoundException | SQLException cnfe){
            System.out.println(cnfe);
            return false;
        }

    }

    /**
     * Diese Methode holt sich das Passwort von der EMail
     *
     * @param email
     * @return
     */
    public String[] getUserData(String email){

        String[] userData = new String[5];

        try{
            Class.forName(secrets.getDriverName());
            Connection con = DriverManager.getConnection(secrets.getConnectionURL(),secrets.getConnectionLoginName(), secrets.getConnectionLoginPassword());
            Statement statement = con.createStatement();
            ResultSet rs = statement.executeQuery(String.format("SELECT * FROM auth_user WHERE email = '%s'" , email));
            while (rs.next()){
                userData[0] = "" + rs.getInt("id_auth_user");
                userData[1] = rs.getString("passwort");
                userData[2] = "" + rs.getInt("setupFlag");
                userData[3] = rs.getString("firmenname");
                userData[4] = rs.getString("erstellungsDatum");
            }
            return userData;

        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }

        return null;
    }


    /**
     * Diese Methode legt einen User an.
     *
     * @param firmenname
     * @param email
     * @param passwort
     * @return
     */
    public boolean createNewUser(String firmenname, String email, String passwort, int setupFlag){

        try{
            Class.forName(secrets.getDriverName());
            Connection con = DriverManager.getConnection(secrets.getConnectionURL(),secrets.getConnectionLoginName(), secrets.getConnectionLoginPassword());
            Statement statement = con.createStatement();

            statement.executeUpdate(String.format("INSERT INTO auth_user(firmenname, email, passwort, erstellungsDatum, setupFlag ) " + "VALUES ('%s' , '%s' , '%s' , '%s', '%s')"
                    , firmenname, email.toLowerCase() , passwort, date.getCurrentDate(), setupFlag));

            con.close();
            return true;
        }
        catch (ClassNotFoundException | SQLException cnfe){
            System.out.println(cnfe);
            return false;
        }

    }

    public void deleteUserWithDateFlag(String idAuthUser, int idUser){

        try{
            Class.forName(secrets.getDriverName());
            Connection con = DriverManager.getConnection(secrets.getConnectionURL(),secrets.getConnectionLoginName(), secrets.getConnectionLoginPassword());
            Statement statement = con.createStatement();
            statement.executeUpdate(String.format("DELETE FROM datenerhebung_eingang WHERE dateFlag = 1 AND id_auth_user = '%s' AND id = '%s' ", idAuthUser, idUser));

            con.close();
        }
        catch (ClassNotFoundException | SQLException cnfe){
            System.out.println(cnfe);

        }
    }

    /**
     * Diese Methode nimmt die idAuthUser und besorgt sich alle Daten
     * die älter als 21 Tage sind und markiert sie zum löschen
     *
     * @param idAuthUser
     * @return
     */
    public int fetchDateFlag(String idAuthUser){
        int counter = 0;
        try{
            Class.forName(secrets.getDriverName());
            Connection con = DriverManager.getConnection(secrets.getConnectionURL(),secrets.getConnectionLoginName(), secrets.getConnectionLoginPassword());
            Statement statement = con.createStatement();
            ResultSet rs = statement.executeQuery(String.format("SELECT * FROM datenerhebung_eingang WHERE dateFlag = 1 AND id_auth_user = %s", idAuthUser));
            while (rs.next()){
                int id = rs.getInt("id");
                counter++;
            }
            return counter;
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }

        return counter;
    }

    /**
     * Diese Methode ändert den dateFlag von jedem.
     * Demnach sind Kunden deren Datum älter als 21 Tage sind als true zu bezeichen
     * und werdem im folgendem zum löschen freigegeben.
     *
     * @param id
     * @param status
     * @return
     */
    public boolean updateDateFlag(int id, int status, String idAuthUser){

        try{
            Class.forName(secrets.getDriverName());
            Connection con = DriverManager.getConnection(secrets.getConnectionURL(),secrets.getConnectionLoginName(), secrets.getConnectionLoginPassword());
            Statement statement = con.createStatement();
            String updateUser = String.format("UPDATE datenerhebung_eingang SET dateFlag = '%s' WHERE id= %s AND id_auth_user = '%s'" , status, id , idAuthUser );
            statement.executeUpdate(updateUser);
            con.close();
            return true;
        }
        catch (ClassNotFoundException | SQLException cnfe){
            System.out.println(cnfe);
            return false;
        }
    }

    public boolean createUser(){

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
