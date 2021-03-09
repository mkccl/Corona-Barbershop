package Test;

import Helper.CurrentDate;

import java.text.ParseException;

public class Test {

    public static void main(String[] args) throws ParseException {

        CurrentDate date = new CurrentDate();


        System.out.println("Date: ");
        System.out.println(date.getDatePlusTen());

        System.out.println("Day: " + System.currentTimeMillis());


        System.out.println("! " + date.getDayInMilli("08.03.2021"));


        // Zeit 10 Tage zuvor
        long timeBefor = System.currentTimeMillis() - 864000000;
        // Date in befor 10 Days
        if(date.getDayInMilli("08.03.2021") > date.getDayInMilli("02.02.2021")){
            System.out.println("More than 10 Days difference");
        }
        else
            System.out.println("First Case no");
        if(date.getDayInMilli("08.03.2021") >= 1613924902092L){
            System.out.println("More than 10 Days difference");
        }
        else
            System.out.println("Second Case no");


    }
}
