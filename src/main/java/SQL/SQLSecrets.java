package SQL;

public class SQLSecrets {


    public SQLSecrets(){

    }

    public String getConnectionURL(){
        return "jdbc:mysql://127.0.0.1:3306/datenerhebung_eingang";
    }

    public String getConnectionLoginName(){
        return "root";
    }
    public String getConnectionLoginPassword(){
        return "jessy123";
    }
    public String getDriverName(){
        return "com.mysql.cj.jdbc.Driver";
    }

    public String getLoginName(){
        return " root ";
    }
    public String getLoginPassword(){
        return " jessy123 ";
    }
}
