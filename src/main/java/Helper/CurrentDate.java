package Helper;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CurrentDate {


    public CurrentDate(){

    }

    /**
     * Diese Methode gibt den Zeitstempel zurück
     * */
    public String getCurrentDate(){
        SimpleDateFormat format = new SimpleDateFormat("dd.MM.yyyy");
        Date date = new Date(System.currentTimeMillis());
        return format.format(date);
    }

    public boolean getDateValidation(String erfassungdatum) throws ParseException {
        if(getDayInMilli(getCurrentDate()) > getDayInMilli(erfassungdatum)){
            if(getDayInMilli(erfassungdatum) < System.currentTimeMillis() - 1814400000L)
                return true;
        }
        return false;
    }

    public Long getDayInMilli(String myDate) throws ParseException {

        SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy");
        Date date = sdf.parse(myDate);
        long millis = date.getTime();
        return millis;
    }

    public String getDatePlusTen(){

        SimpleDateFormat format = new SimpleDateFormat("dd.MM.yyyy");
        Date date = new Date(System.currentTimeMillis());

        // 1 Tag hat 86,400,000 Milliseconds
        // 10 Tage = 86,400,000 * 10 = 864000000
        Date dateLater = new Date((long) (System.currentTimeMillis() - 1814400000L));

        String currentDate = format.format(date);
        String dateLatest = format.format(dateLater);
        return currentDate + " | " + dateLatest;
    }

}
