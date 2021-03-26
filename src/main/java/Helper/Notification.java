package Helper;

public class Notification {

    public Object notificationbarHot(Object notificationCounter){
        if(notificationCounter == null)
            return "0";
        else
            return notificationCounter;
    }

    public String notificationbar(Object counterDeletedUser){
        if(counterDeletedUser != null)
            return "<a href=\"javascript:void(0);\" class=\"dropdown-item notify-item active\">\n" +
                "                        <div class=\"notify-icon bg-success\"><i class=\"mdi mdi-cart-outline\"></i></div>\n" +
                "                        <p class=\"notify-details\">Datensätze veraltet<small class=\"text-muted\">Es wurden (" + counterDeletedUser +  ") Datensätze entfernt </small></p>\n" +
                "                    </a>";
        else
            return "";

    }


}
